-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToCNF.Variante105a86d293ba9c569ed3c73f0ee3fc87449eaa609359a037656ced1bd6c1c9f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e105a86d293ba9c569ed3c73f0ee3fc87449eaa609359a037656ced1bd6c1c9f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ToCNF.Variante105a86d293ba9c569ed3c73f0ee3fc87449eaa609359a037656ced1bd6c1c9f","mathematical_subject":"Foundations.Unclassified","original_sha256":"e105a86d293ba9c569ed3c73f0ee3fc87449eaa609359a037656ced1bd6c1c9f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Tree/CNF.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Formula.CNF
import Boolean.Tree.Compile


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToCNF.Variante105a86d293ba9c569ed3c73f0ee3fc87449eaa609359a037656ced1bd6c1c9f

namespace Boolean

universe u

namespace Tree

/-- Convert a Boolean tree into executable formula CNF. -/
def toCNF (p : Tree α) : Formula.CNF α :=
  Formula.toCNF (Tree.toFormula p)

@[simp] theorem eval_toCNF
    (ν : Valuation α)
    (p : Tree α) :
    Formula.CNF.eval ν (Tree.toCNF p) = Tree.eval ν p := by
  simp [Tree.toCNF]

end Tree

end Boolean
