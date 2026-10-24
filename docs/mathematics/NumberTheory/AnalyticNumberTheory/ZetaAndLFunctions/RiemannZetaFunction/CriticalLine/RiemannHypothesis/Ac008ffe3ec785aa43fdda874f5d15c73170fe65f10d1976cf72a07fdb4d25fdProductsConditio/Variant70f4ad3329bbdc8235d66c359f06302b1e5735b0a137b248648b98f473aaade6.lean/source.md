# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Ac008ffe3ec785aa43fdda874f5d15c73170fe65f10d1976cf72a07fdb4d25fdProductsConditio.Variant70f4ad3329bbdc8235d66c359f06302b1e5735b0a137b248648b98f473aaade6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5a07773f14a50274546f52bde78b755d3ec982c` · SHA-256 `9154ba0a924c1d00116f34f90290d61bf84e313315f49adbc1779eab969d6d13`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaTailRatioEqProduct.Variantac008ffe3ec785aa43fdda874f5d15c73170fe65f10d1976cf72a07fdb4d25fd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ac008ffe3ec785aa43fdda874f5d15c73170fe65f10d1976cf72a07fdb4d25fd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThetaTailRatioEqProduct.Variantac008ffe3ec785aa43fdda874f5d15c73170fe65f10d1976cf72a07fdb4d25fd","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"ac008ffe3ec785aa43fdda874f5d15c73170fe65f10d1976cf72a07fdb4d25fd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/ac/ac008ffe3ec785aa43fdda874f5d15c73170fe65f10d1976cf72a07fdb4d25fd--ProductsConditionalAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaTailSignRegularLowRank
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaTailRatioEqProduct.Variantac008ffe3ec785aa43fdda874f5d15c73170fe65f10d1976cf72a07fdb4d25fd

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open Set
open scoped BigOperators
noncomputable section

/-- Strict source-tail positivity makes the consecutive ratios telescope exactly. -/
theorem thetaTail_ratio_eq_product {r s : ℕ} (hrs : r ≤ s) {t : ℝ} (ht : 0 ≤ t) :
    thetaTail s t / thetaTail r t =
      ∏ j ∈ Finset.Ico r s, thetaTail (j + 1) t / thetaTail j t := by
  induction s, hrs using Nat.le_induction with
  | base => simp [(thetaTail_positive r ht).ne']
  | succ s hrs ih =>
    rw [Finset.prod_Ico_succ_top hrs, ← ih]
    field_simp [(thetaTail_positive r ht).ne', (thetaTail_positive s ht).ne']

/- The next declarations are scratch-only conditional assembly checks. The
maintained module will import the proved successor-ratio theorem and carry
none of this temporary premise. -/
section ConditionalAssembly

variable (hsucc : ∀ n : ℕ,
  AntitoneOn (fun t : ℝ => thetaTail (n + 1) t / thetaTail n t) (Ici 0))

include hsucc

/-- The pinned nonnegative-antitone finite-product API controls the whole telescope. -/
theorem thetaTail_ratio_product_antitone_of_succ (r s : ℕ) :
    AntitoneOn (fun t : ℝ =>
      ∏ j ∈ Finset.Ico r s, thetaTail (j + 1) t / thetaTail j t) (Ici 0) := by
  exact AntitoneOn.finsetProd (fun j _ => hsucc j)
    (fun j _ t ht => div_nonneg (thetaTail_nonnegative (j + 1) ht)
      (thetaTail_nonnegative j ht))

/-- Conditional assembly of arbitrary order ratios from the consecutive order result. -/
theorem thetaTail_div_antitone_of_succ {r s : ℕ} (hrs : r ≤ s) :
    AntitoneOn (fun t : ℝ => thetaTail s t / thetaTail r t) (Ici 0) := by
  intro x hx y hy hxy
  change thetaTail s y / thetaTail r y ≤ thetaTail s x / thetaTail r x
  rw [thetaTail_ratio_eq_product hrs hy, thetaTail_ratio_eq_product hrs hx]
  exact thetaTail_ratio_product_antitone_of_succ hsucc r s hx hy hxy

/-- The existing exact rank-two equivalence closes the determinant statement. -/
theorem thetaTailSignRegular_two_of_succ
    (q : Fin 2 ↪o ℕ) (t : Fin 2 ↪o ℝ) (ht : ∀ i, 0 ≤ t i) :
    0 ≤ (-1 : ℝ) ^ (2 * (2 - 1) / 2) *
      Matrix.det (fun i j => thetaTail (2 * q i) (t j)) := by
  apply (thetaTailSignRegular_two_iff_ratio q t ht).mpr
  have hq : 2 * q 0 ≤ 2 * q 1 :=
    Nat.mul_le_mul_left 2 (q.monotone (by decide : (0 : Fin 2) ≤ 1))
  exact thetaTail_div_antitone_of_succ hsucc hq (ht 0) (ht 1)
    (t.monotone (by decide : (0 : Fin 2) ≤ 1))

end ConditionalAssembly
end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift

open FormalResearch.RiemannHypothesis.ThetaPositiveLift
#check thetaTail_ratio_eq_product
#check thetaTail_ratio_product_antitone_of_succ
#check thetaTail_div_antitone_of_succ
#check thetaTailSignRegular_two_of_succ
#print axioms thetaTail_ratio_eq_product
#print axioms thetaTail_ratio_product_antitone_of_succ
#print axioms thetaTail_div_antitone_of_succ
#print axioms thetaTailSignRegular_two_of_succ
```
