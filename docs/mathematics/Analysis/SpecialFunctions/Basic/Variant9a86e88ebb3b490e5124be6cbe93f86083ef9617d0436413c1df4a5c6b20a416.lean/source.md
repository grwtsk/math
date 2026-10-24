# Complete source: GRWTSK.Analysis.SpecialFunctions.Basic.Variant9a86e88ebb3b490e5124be6cbe93f86083ef9617d0436413c1df4a5c6b20a416

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0908036b4fb4dc123caf39f42cc40b2783d587c` · SHA-256 `c7b64611005616df97e7c330a5cf60d666d5e444c4003f22573762e20057677f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.SpecialFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.SpecialFunctions.UnitInterval.Variantfac087cbef46917c7063edf210c7559393ea57050f97a36a895673ff78790864","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fac087cbef46917c7063edf210c7559393ea57050f97a36a895673ff78790864","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.SpecialFunctions.SourceCorpus.UnitInterval.Variantfac087cbef46917c7063edf210c7559393ea57050f97a36a895673ff78790864","mathematical_subject":"Analysis.SpecialFunctions","original_sha256":"fac087cbef46917c7063edf210c7559393ea57050f97a36a895673ff78790864","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/Bezier/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Mathlib.Analysis.SpecialFunctions.Bernstein
public import Mathlib.Data.Fin.Rev

/-!
# Bernstein coordinates for the Surface Bézier kernel

This module fixes the scalar conventions used by the rational Bézier layer.
It depends only on Mathlib's finite Bernstein theory and contains no braid,
tensor, prime, or GRH semantics.
-/


namespace GRWTSK.Analysis.SpecialFunctions.UnitInterval.Variantfac087cbef46917c7063edf210c7559393ea57050f97a36a895673ff78790864

public section

namespace Surface.Core.Bezier

noncomputable section

open scoped BigOperators unitInterval

/-- The closed parameter interval used by every checked Bézier segment. -/
abbrev UnitInterval := Set.Icc (0 : ℝ) 1

/-- Reflection of the unit parameter interval. -/
@[surface_novel, expose]
def reverseParameter (t : UnitInterval) : UnitInterval :=
  ⟨1 - t.1, sub_nonneg.mpr t.2.2, by linarith [t.2.1]⟩

@[surface_novel, simp]
theorem reverseParameter_val (t : UnitInterval) :
    (reverseParameter t).1 = 1 - t.1 :=
  rfl

@[surface_novel, surface_published, simp]
theorem reverseParameter_reverse (t : UnitInterval) :
    reverseParameter (reverseParameter t) = t := by
  apply Subtype.ext
  simp [reverseParameter]

/-- The `i`th Bernstein basis polynomial of degree `degree`, exposed on `ℝ`.

Mathlib's native `bernstein` is a continuous map on the unit interval.  The
raw formula is convenient for exact reparameterization identities. -/
@[expose]
def bernstein (degree : ℕ) (i : Fin (degree + 1)) (t : ℝ) : ℝ :=
  (Nat.choose degree i.1 : ℝ) * t ^ i.1 * (1 - t) ^ (degree - i.1)

@[surface_adapter, surface_published, simp]
theorem bernstein_coe (degree : ℕ) (i : Fin (degree + 1))
    (t : UnitInterval) :
    bernstein degree i t.1 = _root_.bernstein degree i t := by
  rw [_root_.bernstein_apply]
  rfl

@[surface_novel, surface_published]
theorem bernstein_nonneg (degree : ℕ) (i : Fin (degree + 1))
    (t : UnitInterval) :
    0 ≤ bernstein degree i t.1 := by
  rw [bernstein_coe]
  exact _root_.bernstein_nonneg

@[surface_novel, surface_published, simp]
theorem sum_bernstein (degree : ℕ) (t : UnitInterval) :
    ∑ i : Fin (degree + 1), bernstein degree i t.1 = 1 := by
  simpa only [bernstein_coe] using _root_.bernstein.probability degree t

@[surface_novel, surface_published, simp]
theorem bernstein_zero (degree : ℕ) (i : Fin (degree + 1)) :
    bernstein degree i 0 = if i = 0 then 1 else 0 := by
  by_cases hi : i = 0
  · subst i
    simp [bernstein]
  · have hval : i.1 ≠ 0 := fun h => hi (Fin.ext h)
    simp [bernstein, hi, hval]

@[surface_novel, surface_published, simp]
theorem bernstein_one (degree : ℕ) (i : Fin (degree + 1)) :
    bernstein degree i 1 = if i = Fin.last degree then 1 else 0 := by
  by_cases hi : i = Fin.last degree
  · subst i
    simp [bernstein]
  · have hval : i.1 ≠ degree := fun h => hi (Fin.ext h)
    have hlt : i.1 < degree := lt_of_le_of_ne i.is_le hval
    have hsub : degree - i.1 ≠ 0 := Nat.ne_of_gt (Nat.sub_pos_of_lt hlt)
    simp [bernstein, hi, hsub]

/-- Bernstein coordinates reverse when the parameter is reflected. -/
@[surface_novel, surface_published]
theorem bernstein_rev (degree : ℕ) (i : Fin (degree + 1)) (t : ℝ) :
    bernstein degree i.rev t = bernstein degree i (1 - t) := by
  have hsum := i.add_rev_cast
  have hrev : i.rev.1 = degree - i.1 := by omega
  rw [bernstein, bernstein, hrev]
  rw [Nat.choose_symm i.is_le]
  rw [Nat.sub_sub_self i.is_le]
  ring

end

end Surface.Core.Bezier

end
```
