# emitRustSource

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3ad67cfa98b5bb501f0fb9ff475acda2a8f279bec6c1857a4d35124377fb335",
  "kind": "def",
  "lexical_name": "emitRustSource",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "emitrustsource--945ff8c6c7775fe5e7f76799",
  "source": {
    "blob": "689c83f07b338cf85e5c274c95840b259e20629f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 108,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant5b665a0cb281d8d0092ea26cfcdc85250985da1bba8af81ef603f08cda862516.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:945ff8c6c7775fe5e7f76799b411cd6c44fb911117a0cd660273552795d71269",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant5b665a0cb281d8d0092ea26cfcdc85250985da1bba8af81ef603f08cda862516.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c3ad67cfa98b5bb501f0fb9ff475acda2a8f279bec6c1857a4d35124377fb335`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant5b665a0cb281d8d0092ea26cfcdc85250985da1bba8af81ef603f08cda862516.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Manifest/Variant5b665a0cb281d8d0092ea26cfcdc85250985da1bba8af81ef603f08cda862516.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `689c83f07b338cf85e5c274c95840b259e20629f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
