# Complete source: GRWTSK.Algebra.LinearAlgebra.RuleEngine.Variant683f9bf5eeef92663f89f468d76b9698f6659e5fae4c9c5733e62b97cf8adc68

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7213c048ca2f4ee975edf46deb574f84be02fb2b` · SHA-256 `2289f8c9fce736f4ca7ad86f3ba6c47506a22c140dbaebde65da13249e89e86c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.BuiltinRuleId.Variant6c83d94156be4acda60d705816c81a70d908583a62de676f1e2a12e3b4eff372","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6c83d94156be4acda60d705816c81a70d908583a62de676f1e2a12e3b4eff372","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BuiltinRuleId.Variant6c83d94156be4acda60d705816c81a70d908583a62de676f1e2a12e3b4eff372","mathematical_subject":"Foundations.Unclassified","original_sha256":"6c83d94156be4acda60d705816c81a70d908583a62de676f1e2a12e3b4eff372","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Archive/RuleEngine.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Archive.IndexSpinRef
import Folder.Archive.PresentationRule
import Folder.Carrier.BinaryMatrixStream

/-!
# Folder.Archive.RuleEngine

Radiation role: archive-rule-engine
BinaryMatrix spine: This module applies presentation rules after index-spin atom realization to materialize BinaryMatrix layers.
Ontology: archive.rule_engine
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: infrastructure
-/


namespace GRWTSK.Algebra.LinearAlgebra.BuiltinRuleId.Variant6c83d94156be4acda60d705816c81a70d908583a62de676f1e2a12e3b4eff372

namespace Folder
namespace Archive

inductive BuiltinRuleId where
  | copy
  | identityPresentation
  | fixedpoint
deriving DecidableEq, Repr

structure RuleEngine where
  RuleId : Type
  decEqRuleId : DecidableEq RuleId
  resolve : RuleId → Option PresentationRule
  copyId : RuleId
  copy_resolves : resolve copyId = some copyRule

def copyRuleEngine : RuleEngine where
  RuleId := Unit
  decEqRuleId := inferInstance
  resolve := fun _ => some copyRule
  copyId := ()
  copy_resolves := rfl

structure LayerRecipe (A : MatrixAction) (E : RuleEngine) where
  ref : IndexSpinRef A
  rule : E.RuleId

def realizeLayerRecipe?
    (A : MatrixAction)
    (E : RuleEngine)
    (D : MatrixAtomDictionary)
    (r : LayerRecipe A E) :
    Option Carrier.BinaryMatrix :=
  match realizeIndexSpin? A D r.ref, E.resolve r.rule with
  | some M, some R => some (R.apply M)
  | _, _ => none

def realizeLayerRecipeAsStep?
    (A : MatrixAction)
    (E : RuleEngine)
    (D : MatrixAtomDictionary)
    (r : LayerRecipe A E)
    (input : Carrier.BinaryMatrix) :
    Option Carrier.BinaryMatrixStream.MatrixProofStep :=
  match realizeLayerRecipe? A E D r with
  | none => none
  | some output =>
      some
        { name := "realizeLayerRecipe"
          input := input
          output := output
          transition := fun _ => output
          realizes_transition := rfl }

theorem realize_copy_recipe
    (A : MatrixAction)
    (E : RuleEngine)
    (D : MatrixAtomDictionary)
    (r : IndexSpinRef A)
    (M : Carrier.BinaryMatrix)
    (hget : realizeIndexSpin? A D r = some M) :
    realizeLayerRecipe? A E D { ref := r, rule := E.copyId } = some M := by
  simp [realizeLayerRecipe?, hget, E.copy_resolves, copyRule]

theorem copyRuleEngine_realize
    (D : MatrixAtomDictionary)
    (r : IndexSpinRef copyAction)
    (M : Carrier.BinaryMatrix)
    (hget : realizeIndexSpin? copyAction D r = some M) :
    realizeLayerRecipe? copyAction copyRuleEngine D
      { ref := r, rule := copyRuleEngine.copyId } = some M := by
  exact realize_copy_recipe copyAction copyRuleEngine D r M hget

end Archive
end Folder
```
