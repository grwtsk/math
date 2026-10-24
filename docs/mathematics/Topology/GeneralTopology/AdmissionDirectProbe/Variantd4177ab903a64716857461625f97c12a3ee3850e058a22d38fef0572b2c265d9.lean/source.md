# Complete source: GRWTSK.Topology.GeneralTopology.AdmissionDirectProbe.Variantd4177ab903a64716857461625f97c12a3ee3850e058a22d38fef0572b2c265d9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0bc42012458f6ae8d96207e04dff79241229d49d` · SHA-256 `76a49590d743490395b420651a0c03eb17d1aecc20081374d5c6686cd9637408`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.BridgeMultiplier.Variant10a1c4325f67be885f4f08df4af4c8bd3582868df6afbb88b913ce30263c402a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"10a1c4325f67be885f4f08df4af4c8bd3582868df6afbb88b913ce30263c402a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.BridgeMultiplier.Variant10a1c4325f67be885f4f08df4af4c8bd3582868df6afbb88b913ce30263c402a","mathematical_subject":"Topology.GeneralTopology","original_sha256":"10a1c4325f67be885f4f08df4af4c8bd3582868df6afbb88b913ce30263c402a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/AdmissionDirectProbe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SUCAS.BridgeMultiplier
import Mathlib.Analysis.Complex.CauchyIntegral
import Mathlib.MeasureTheory.Function.LocallyIntegrable


namespace GRWTSK.Topology.GeneralTopology.BridgeMultiplier.Variant10a1c4325f67be885f4f08df4af4c8bd3582868df6afbb88b913ce30263c402a

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SUCAS.Realization
open FormalResearch.SUCAS.BridgeAdmissibility

#check DifferentiableOn.analyticOnNhd
#check ContinuousAt.comp
#check AnalyticAt.deriv
#check AnalyticAt.div
#check Complex.Gamma_ne_zero
#check integrableOn_union
#check Continuous.locallyIntegrable
#check IsCompact.exists_bound_of_continuousOn

example : Continuous archimedeanMultiplier := by
  have ho : IsOpen {z : ℂ | 0 < z.re} :=
    Complex.continuous_re.isOpen_preimage _ isOpen_Ioi
  have hn (z : ℂ) (hz : 0 < z.re) : ∀ m : ℕ, z ≠ -m := by
    intro m hm
    have he := congrArg Complex.re hm
    simp only [Complex.neg_re, Complex.natCast_re] at he
    have hm0 : (0 : ℝ) ≤ m := Nat.cast_nonneg m
    linarith
  have hg : AnalyticOnNhd ℂ Complex.Gamma {z : ℂ | 0 < z.re} := by
    apply DifferentiableOn.analyticOnNhd _ ho
    intro z hz
    exact (Complex.differentiableAt_Gamma z (hn z hz)).differentiableWithinAt
  apply continuous_iff_continuousAt.mpr
  intro ξ
  have hz : 0 < ((1 / 4 : ℂ) + Complex.I * (ξ : ℂ) / 2).re := by simp
  have hc := ((hg _ hz).deriv.div (hg _ hz) (Complex.Gamma_ne_zero (hn _ hz))).continuousAt
  have hp : Continuous (fun ξ : ℝ ↦ (1 / 4 : ℂ) + Complex.I * (ξ : ℂ) / 2) := by fun_prop
  have hd : ContinuousAt Complex.digamma ((1 / 4 : ℂ) + Complex.I * (ξ : ℂ) / 2) := hc
  change ContinuousAt (fun ξ : ℝ ↦ (Complex.digamma ((1 / 4 : ℂ) + Complex.I * (ξ : ℂ) / 2)).re - Real.log Real.pi) ξ
  have hdcomp : ContinuousAt (fun ξ : ℝ ↦ Complex.digamma ((1 / 4 : ℂ) + Complex.I * (ξ : ℂ) / 2)) ξ :=
    hd.comp (f := fun ξ : ℝ ↦ (1 / 4 : ℂ) + Complex.I * (ξ : ℂ) / 2) hp.continuousAt
  exact (Complex.continuous_re.continuousAt.comp hdcomp).sub continuousAt_const
```
