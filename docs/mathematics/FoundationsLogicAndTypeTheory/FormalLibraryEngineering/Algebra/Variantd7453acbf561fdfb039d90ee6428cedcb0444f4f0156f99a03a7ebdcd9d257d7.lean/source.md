# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Algebra.Variantd7453acbf561fdfb039d90ee6428cedcb0444f4f0156f99a03a7ebdcd9d257d7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa4a4364a1c079620dca21b4e60b197d5da4111c` · SHA-256 `4b678c04130025acd0d7acdab4ea172563673c406c1917e997b30823a2cd45e3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Join.Variante51ac2b26fd1abff22ec1788afa2f1a5eb45899eb3c6764c6618d144cbf71338","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e51ac2b26fd1abff22ec1788afa2f1a5eb45899eb3c6764c6618d144cbf71338","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Join.Variante51ac2b26fd1abff22ec1788afa2f1a5eb45899eb3c6764c6618d144cbf71338","mathematical_subject":"Foundations.Unclassified","original_sha256":"e51ac2b26fd1abff22ec1788afa2f1a5eb45899eb3c6764c6618d144cbf71338","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Boolean/Formula/Algebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Boolean.Formula.Semantics

/-!
# Boolean algebra of formulas modulo semantics

The syntax itself is free, so these laws use semantic equivalence rather than
syntactic equality.  They close the exact dependency chain ending at the
retained `Algebra/Formula.lean` corpus module.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Join.Variante51ac2b26fd1abff22ec1788afa2f1a5eb45899eb3c6764c6618d144cbf71338

namespace Mathematics.Boolean.Formula

universe u

variable {α : Type u}

abbrev join : Formula α → Formula α → Formula α := Formula.disj
abbrev meet : Formula α → Formula α → Formula α := Formula.conj
abbrev compl : Formula α → Formula α := Formula.neg
abbrev bot : Formula α := Formula.falsum
abbrev top : Formula α := Formula.truth

theorem join_bot (p : Formula α) :
    Equivalent (.disj p .falsum) p := by
  intro ν
  cases hp : eval ν p <;> simp [eval, hp]

theorem meet_top (p : Formula α) :
    Equivalent (.conj p .truth) p := by
  intro ν
  cases hp : eval ν p <;> simp [eval, hp]

theorem join_idem (p : Formula α) :
    Equivalent (.disj p p) p := by
  intro ν
  cases hp : eval ν p <;> simp [eval, hp]

theorem meet_idem (p : Formula α) :
    Equivalent (.conj p p) p := by
  intro ν
  cases hp : eval ν p <;> simp [eval, hp]

theorem join_top (p : Formula α) :
    Equivalent (.disj p .truth) .truth := by
  intro ν
  cases hp : eval ν p <;> simp [eval, hp]

theorem meet_bot (p : Formula α) :
    Equivalent (.conj p .falsum) .falsum := by
  intro ν
  cases hp : eval ν p <;> simp [eval, hp]

theorem join_absorb (p q : Formula α) :
    Equivalent (.disj p (.conj p q)) p := by
  intro ν
  cases hp : eval ν p <;>
    cases hq : eval ν q <;>
    simp [eval, hp, hq]

theorem meet_absorb (p q : Formula α) :
    Equivalent (.conj p (.disj p q)) p := by
  intro ν
  cases hp : eval ν p <;>
    cases hq : eval ν q <;>
    simp [eval, hp, hq]

theorem join_meet_distrib (p q r : Formula α) :
    Equivalent
      (.disj p (.conj q r))
      (.conj (.disj p q) (.disj p r)) := by
  intro ν
  cases hp : eval ν p <;>
    cases hq : eval ν q <;>
    cases hr : eval ν r <;>
    simp [eval, hp, hq, hr]

theorem meet_join_distrib (p q r : Formula α) :
    Equivalent
      (.conj p (.disj q r))
      (.disj (.conj p q) (.conj p r)) := by
  intro ν
  cases hp : eval ν p <;>
    cases hq : eval ν q <;>
    cases hr : eval ν r <;>
    simp [eval, hp, hq, hr]

theorem join_compl (p : Formula α) :
    Equivalent (.disj p (.neg p)) .truth := by
  intro ν
  cases hp : eval ν p <;> simp [eval, hp]

theorem meet_compl (p : Formula α) :
    Equivalent (.conj p (.neg p)) .falsum := by
  intro ν
  cases hp : eval ν p <;> simp [eval, hp]

theorem compl_unique
    {p q : Formula α}
    (hJoin : Equivalent (.disj p q) .truth)
    (hMeet : Equivalent (.conj p q) .falsum) :
    Equivalent q (.neg p) := by
  intro ν
  have hJoinν := hJoin ν
  have hMeetν := hMeet ν
  cases hp : eval ν p <;>
    cases hq : eval ν q <;>
    simp [eval, hp, hq] at hJoinν hMeetν ⊢

theorem bot_ne_top :
    ¬ Equivalent (bot (α := α)) (top (α := α)) := by
  intro h
  have ht := h (fun _ => false)
  cases ht

end Mathematics.Boolean.Formula
```
