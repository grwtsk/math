# Complete source: GRWTSK.Algebra.M506970656c696e652f4c65617665732f496d706f727465645468656f72656d2f436865626f74617.Variant414385384f25f547557d31f1bbca88f750cb5aa43ce0c9728e04edf123b7a3a4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d88131b94cdc062dde4a30609d08a03dc1e4a2fd` · SHA-256 `295579f9afaa4d477ea5d138cd0b648961e461d1477ced48501133f533e7b151`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.ChebotarevDensityTargetStatement.Variantab0b69d87663f69653d6ec19c2b5fc108d792f0c133b36cdae6c1b8614c13347","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ab0b69d87663f69653d6ec19c2b5fc108d792f0c133b36cdae6c1b8614c13347","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.ChebotarevDensityTargetStatement.Variantab0b69d87663f69653d6ec19c2b5fc108d792f0c133b36cdae6c1b8614c13347","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"ab0b69d87663f69653d6ec19c2b5fc108d792f0c133b36cdae6c1b8614c13347","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit0/Bit1/Bit1/Bit1/Bit1/Bit1/Bit0/Bit1/Bit0/M506970656c696e652f4c65617665732f496d706f727465645468656f72656d2f436865626f746172657644656e736974792e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

/- source-tree-label: STL1|L|addr=0011111010|role=proof_code_atom|slug=pipeline-leaves-importedtheorem-chebotarevdensity|owner=canonical_owner|core=Pipeline/Leaves/ImportedTheorem/ChebotarevDensity.lean|leaf=M506970656c696e652f4c65617665732f496d706f727465645468656f72656d2f436865626f746172657644656e736974792e6c65616e.lean -/


namespace GRWTSK.Algebra.ChebotarevDensityTargetStatement.Variantab0b69d87663f69653d6ec19c2b5fc108d792f0c133b36cdae6c1b8614c13347

set_option autoImplicit false

namespace Think.Pipeline.Leaves.ImportedTheorem.ChebotarevDensity

structure ChebotarevDensityTargetStatement where
  baseField : String
  finiteGaloisExtension : String
  galoisGroup : String
  conjugacyClass : String
  frobeniusCondition : String
  densityNotion : String
  densityValue : String
  hypotheses : List String
  conclusion : String
  deriving DecidableEq, Repr

def theoremTargetLeaf : String := "theorem_target_leaf"

def ChebotarevDensityTheoremForFiniteGaloisExtensions :
    ChebotarevDensityTargetStatement :=
  { baseField := "global field K"
    finiteGaloisExtension := "finite Galois extension L/K"
    galoisGroup := "Gal(L/K)"
    conjugacyClass := "conjugacy class C in Gal(L/K)"
    frobeniusCondition :=
      "unramified primes v of K whose Frobenius conjugacy class equals C"
    densityNotion := "Dirichlet density of unramified primes"
    densityValue := "|C| / |Gal(L/K)|"
    hypotheses :=
      [ "K is a global field",
        "L/K is finite and Galois",
        "C is a conjugacy class in Gal(L/K)",
        "ramified primes are excluded from the counted set" ]
    conclusion :=
      "The set of unramified primes v of K with Frobenius conjugacy class C has Dirichlet density |C| / |Gal(L/K)|." }

def chebotarevTheoremName : String :=
  "ChebotarevDensityTheoremForFiniteGaloisExtensions"

def chebotarevDensityTheoremStatus : String :=
  "chebotarev_checked_theorem_not_reached"

def chebotarevPermittedUsage : String :=
  "formal_target_and_residue_only"

def chebotarevResidueIfMissing : String :=
  "chebotarev_checked_theorem_not_reached"

def chebotarevNonClaims : List String :=
  [ "A Chebotarev theorem does not prove RH.",
    "A Chebotarev theorem does not prove BSD.",
    "A Chebotarev theorem does not prove PipelineToposBoundary.",
    "Importing a theorem is not repository settlement.",
    "External GitHub state is not proof authority.",
    "Referee output is not theorem authority.",
    "Codex output is not theorem authority.",
    "GPT output is not theorem authority.",
    "Carrier evidence is finite witness evidence only.",
    "Pipeline balance is not theorem proof." ]

theorem target_names_base_field :
    ChebotarevDensityTheoremForFiniteGaloisExtensions.baseField =
      "global field K" := by
  rfl

theorem target_names_density_value :
    ChebotarevDensityTheoremForFiniteGaloisExtensions.densityValue =
      "|C| / |Gal(L/K)|" := by
  rfl

theorem target_classified_as_theorem_target_leaf :
    theoremTargetLeaf = "theorem_target_leaf" := by
  rfl

theorem target_status_records_open_residue :
    chebotarevDensityTheoremStatus =
      "chebotarev_checked_theorem_not_reached" := by
  rfl

theorem target_usage_is_residue_only :
    chebotarevPermittedUsage = "formal_target_and_residue_only" := by
  rfl

theorem target_residue_names_missing_checked_theorem :
    chebotarevResidueIfMissing =
      "chebotarev_checked_theorem_not_reached" := by
  rfl

theorem proof_status_not_checked_theorem :
    chebotarevDensityTheoremStatus ≠ "checked_theorem" := by
  decide

end Think.Pipeline.Leaves.ImportedTheorem.ChebotarevDensity
```
