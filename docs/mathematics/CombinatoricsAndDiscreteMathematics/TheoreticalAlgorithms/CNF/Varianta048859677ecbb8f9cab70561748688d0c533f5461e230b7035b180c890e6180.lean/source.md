# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CNF.Varianta048859677ecbb8f9cab70561748688d0c533f5461e230b7035b180c890e6180

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a19dcde237955cc7102db8ec94a5d3fbc637d2f` · SHA-256 `652ca2bc42768b68f137cf3a7d59cc7d93218fcd45e59444d77b4dbb680d0d37`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
