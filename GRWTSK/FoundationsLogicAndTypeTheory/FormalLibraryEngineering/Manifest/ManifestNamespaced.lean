-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RustReducerKernel.Variantdd7d69d7423e039698f799e3d2f9b8c443013e3f3d1d58c6a0ca4eedbd352127","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dd7d69d7423e039698f799e3d2f9b8c443013e3f3d1d58c6a0ca4eedbd352127","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RustReducerKernel.Variantdd7d69d7423e039698f799e3d2f9b8c443013e3f3d1d58c6a0ca4eedbd352127","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"dd7d69d7423e039698f799e3d2f9b8c443013e3f3d1d58c6a0ca4eedbd352127","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/RustCodegen/Manifest.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Data.Json

/-!
# Rust-oriented reducer manifests and conformance fixtures

This module serializes the metadata needed to implement and audit one proved
reducer.  The manifest retains representation IDs, framing requirements,
local order and cycle data, model epoch, Lean theorem names, conformance digest,
and an explicit authority classification.

`emitRustSource` emits the small deterministic `u64` fixture used by the test
suite.  It derives phase from a caller-supplied shared sequence and contains no
independently mutable sequence.  Lean proves the semantics of `ReducerIR` and
the certificate's factor equations; it does **not** prove rustc correct or make
generated machine code a second theorem authority.  Generated Rust is an
implementation refinement target, not an additional theorem authority.  CI
must compile the fixture and compare it with Lean-emitted conformance vectors.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RustReducerKernel.Variantdd7d69d7423e039698f799e3d2f9b8c443013e3f3d1d58c6a0ca4eedbd352127

namespace DAF.RustCodegen

/-- Serializable Rust kernels supported by the practical fixture generator. -/
inductive RustReducerKernel
  | identity
  | sequenceModulo (modulus : Nat)
  deriving Repr, DecidableEq

deriving instance Lean.ToJson for RustReducerKernel

/-- One evaluator input/output pair retained for cross-language conformance. -/
structure ConformanceVector where
  input : Nat
  output : Nat
  deriving Repr, DecidableEq

deriving instance Lean.ToJson for ConformanceVector

/-- Complete metadata carried alongside a generated reducer artifact. -/
structure Manifest where
  formatVersion : Nat
  globalStateRepresentationId : String
  observerResolutionId : String
  inputShape : List Nat
  outputShape : List Nat
  payloadFramingRequirements : List String
  reducerIR : String
  kernel : RustReducerKernel
  localTransitionId : String
  localOrder : Nat
  cycleEulerFactorData : List (Nat × Nat)
  globalModelEpoch : Nat
  leanModule : String
  leanTheoremNames : List String
  conformanceVectorDigest : String
  authorityClassification : String
  conformanceVectors : List ConformanceVector
  deriving Repr

deriving instance Lean.ToJson for Manifest

/-- Execute the restricted practical Rust-kernel model in Lean. -/
def RustReducerKernel.eval : RustReducerKernel → Nat → Nat
  | .identity, input => input
  | .sequenceModulo modulus, input => input % modulus

/-- Produce exact conformance vectors from the Lean-side kernel evaluator. -/
def makeConformanceVectors
    (kernel : RustReducerKernel)
    (inputs : List Nat) : List ConformanceVector :=
  inputs.map fun input => ⟨input, kernel.eval input⟩

/-- Serialize the complete artifact manifest as deterministic compact JSON. -/
def emitRustManifest (manifest : Manifest) : String :=
  Lean.Json.compress (Lean.toJson manifest)

/-- Serialize the conformance corpus independently for test harnesses. -/
def emitConformanceVectors (manifest : Manifest) : String :=
  Lean.Json.compress (Lean.toJson manifest.conformanceVectors)

private def rustKernelBody : RustReducerKernel → String
  | .identity => "input"
  | .sequenceModulo modulus =>
      if modulus = 0 then
        -- Rust panics on `% 0`; Lean's `Nat.mod` is total and returns zero.
        "0u64"
      else
        s!"input % {modulus}u64"

private def rustAssertions : List ConformanceVector → String
  | [] => ""
  | vector :: rest =>
      s!"    assert_eq!(reduce({vector.input}u64), {vector.output}u64);\n" ++
        rustAssertions rest

/--
Emit a deterministic Rust conformance fixture.  Shape and format checks are
explicit, local update consumes the externally supplied sequence, and phase is
always recomputed from that same sequence.
-/
def emitRustSource (manifest : Manifest) : String :=
  let inputLength := manifest.inputShape.head?.getD 0
  let outputLength := manifest.outputShape.head?.getD 0
  let phaseBody :=
    if manifest.localOrder = 0 then
      -- Match the total `Nat`/`ZMod 0` convention without emitting `% 0`.
      "0u64"
    else
      s!"sequence % {manifest.localOrder}u64"
  String.join [
    "// Generated reducer conformance fixture.\n",
    s!"pub const FORMAT_VERSION: u64 = {manifest.formatVersion}u64;\n",
    s!"pub const INPUT_LENGTH: usize = {inputLength}usize;\n",
    s!"pub const OUTPUT_LENGTH: usize = {outputLength}usize;\n",
    "\n",
    "pub fn check_version_and_shape(version: u64, input_length: usize, output_length: usize) -> bool {\n",
    "    version == FORMAT_VERSION && input_length == INPUT_LENGTH && output_length == OUTPUT_LENGTH\n",
    "}\n\n",
    "pub fn reduce(input: u64) -> u64 {\n",
    s!"    {rustKernelBody manifest.kernel}\n",
    "}\n\n",
    "pub fn phase(sequence: u64) -> u64 {\n",
    s!"    {phaseBody}\n",
    "}\n\n",
    "pub fn local_step(input: u64, shared_sequence: u64) -> (u64, u64) {\n",
    "    (reduce(input), phase(shared_sequence))\n",
    "}\n\n",
    "fn main() {\n",
    "    assert!(check_version_and_shape(FORMAT_VERSION, INPUT_LENGTH, OUTPUT_LENGTH));\n",
    rustAssertions manifest.conformanceVectors,
    "}\n"
  ]

end DAF.RustCodegen
