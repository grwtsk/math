# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M56616c69646174696f6e2f4272616964436f6e666f726d616e63652e6c65616e.Variantc7dfc379e34c610a14f39edcb954f3a1ef2d76cb90b2025376255e4893a14467

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `927df198674d43a03d2d0220649143088ede7af4` · SHA-256 `ac1dfeebd81c3cd11e0269569e8254baf562d6852b29276e06f657efe27bba00`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TreeValidation.Variant91ce3b54f02703dcece856d66aa349d65ed35cae3618794b23c248c698ffb46a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"91ce3b54f02703dcece856d66aa349d65ed35cae3618794b23c248c698ffb46a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TreeValidation.Variant91ce3b54f02703dcece856d66aa349d65ed35cae3618794b23c248c698ffb46a","mathematical_subject":"Computation.DataStructures","original_sha256":"91ce3b54f02703dcece856d66aa349d65ed35cae3618794b23c248c698ffb46a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit1/Bit0/Bit1/Bit1/Bit0/Bit0/Bit0/M56616c69646174696f6e2f4272616964436f6e666f726d616e63652e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit0.Bit0.Bit0.Bit0.Bit1.Bit1.M506970656c696e652f43656e7465722f42726169645461786f6e6f6d792e6c65616e
import Think.Bit0.Bit1.Bit1.Bit0.Bit1.Bit1.Bit0.M56616c69646174696f6e2f42726169644d6f64756c65436f6e74726163742e6c65616e

/- source-tree-label: STL1|L|addr=11011000|role=proof_code_atom|slug=validation-braidconformance|owner=canonical_owner|core=Validation/BraidConformance.lean|leaf=M56616c69646174696f6e2f4272616964436f6e666f726d616e63652e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TreeValidation.Variant91ce3b54f02703dcece856d66aa349d65ed35cae3618794b23c248c698ffb46a

set_option autoImplicit false

namespace Think.Braid.Validation

structure TreeValidation where
  modules : List ModuleContract
  refusals : List RefusalCode

def nonclaimsClosed (c : ModuleContract) : Prop :=
  ∀ nonclaim ∈ Think.Braid.Law.requiredNonclaims, nonclaim ∈ c.nonclaims

def coordinateFilesFromModules (v : TreeValidation) : List CoordinateFile :=
  v.modules.map (fun m =>
    { coordinateId := m.tripleId ++ ":" ++ m.moduleName,
      rustFile := m.moduleName })

def V0_assigned_or_refused (v : TreeValidation) : Prop :=
  ∀ m ∈ v.modules, m.refusals ≠ [] ∨ m.residue.disposition ≠ .openObstruction

def V1_one_primary_responsibility (v : TreeValidation) : Prop :=
  ∀ m ∈ v.modules, m.moduleName ≠ ""

def V2_one_primary_triple (v : TreeValidation) : Prop :=
  ∀ m ∈ v.modules, m.tripleId ≠ ""

def V3_triple_in_declared_braid (v : TreeValidation) : Prop :=
  ∀ m ∈ v.modules, m.tripleId ∈ Think.Braid.Taxonomy.declaredTripleIds

def V4_module_local_residue (v : TreeValidation) : Prop :=
  ∀ m ∈ v.modules, m.residue.reason ≠ ""

def V5_module_local_refusal (v : TreeValidation) : Prop :=
  ∀ m ∈ v.modules, m.refusals ≠ []

def V6_finite_witness_only (v : TreeValidation) : Prop :=
  ∀ m ∈ v.modules, m.witness = .finiteWitnessOnly

def V7_nonclaims_closed (v : TreeValidation) : Prop :=
  ∀ m ∈ v.modules, nonclaimsClosed m

def V8_injective_coordinate_file (xs : List CoordinateFile) : Prop :=
  xs.Nodup ∧
  (xs.map CoordinateFile.coordinateId).Nodup ∧
  (xs.map CoordinateFile.rustFile).Nodup

def V8_tree_coordinate_file (v : TreeValidation) : Prop :=
  V8_injective_coordinate_file (coordinateFilesFromModules v)

def V9_unassigned_emits_refusal (v : TreeValidation) : Prop :=
  ∀ m ∈ v.modules, m.tripleId = "" → m.refusals ≠ []

def moduleLocallyGrounded (m : ModuleContract) : Prop :=
  m.moduleName ≠ "" ∧
  m.tripleId ≠ "" ∧
  m.residue.reason ≠ "" ∧
  m.refusals ≠ [] ∧
  m.witness = .finiteWitnessOnly ∧
  nonclaimsClosed m

def V10_not_registry_string_only (v : TreeValidation) : Prop :=
  ∀ m ∈ v.modules, moduleLocallyGrounded m

end Think.Braid.Validation
```
