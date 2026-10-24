# tendsto_set_integral_peak_smul_of_integrableOn_of_continuousWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b531355-bf90-33ca-5cab-a2b55032d92d",
  "kind": "theorem",
  "lexical_name": "tendsto_set_integral_peak_smul_of_integrableOn_of_continuousWithinAt",
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
  "slug": "tendsto-set-integral-peak-smul-of-integrableon-of-continuouswithinat--294eb144ff967df794317878",
  "source": {
    "blob": "b90cfa897ae7acdc1cdd0d9595a2cbb381859c43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 168,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PeakFunction/Variant69cccf5551bbaf8d46665138eae8a066c8e8037086db0cbf13c6df98730a21c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:294eb144ff967df7943178781d7ba1fcef3722f86228ea05db9685d316b2855f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PeakFunction/Variant69cccf5551bbaf8d46665138eae8a066c8e8037086db0cbf13c6df98730a21c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b531355-bf90-33ca-5cab-a2b55032d92d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_set_integral_peak_smul_of_integrableOn_of_continuousWithinAt (hs : MeasurableSet s)
    (h's : μ s ≠ ∞) (hnφ : ∀ᶠ i in l, ∀ x ∈ s, 0 ≤ φ i x)
    (hlφ : ∀ u : Set α, IsOpen u → x₀ ∈ u → TendstoUniformlyOn φ 0 l (s \ u))
    (hiφ : (fun i => ∫ x in s, φ i x ∂μ) =ᶠ[l] 1) (hmg : IntegrableOn g s μ)
    (hcg : ContinuousWithinAt g s x₀) :
    Tendsto (fun i : ι => ∫ x in s, φ i x • g x ∂μ) l (𝓝 (g x₀)) := by
  let h := g - fun _ => g x₀
  have A :
    Tendsto (fun i : ι => (∫ x in s, φ i x • h x ∂μ) + (∫ x in s, φ i x ∂μ) • g x₀) l
      (𝓝 (0 + (1 : ℝ) • g x₀)) := by
    refine' Tendsto.add _ (Tendsto.smul (tendsto_const_nhds.congr' hiφ.symm) tendsto_const_nhds)
    apply tendsto_set_integral_peak_smul_of_integrableOn_of_continuousWithinAt_aux hs hnφ hlφ hiφ
    · apply Integrable.sub hmg
      apply integrableOn_const.2
      simp only [h's.lt_top, or_true_iff]
    · simp only [Pi.sub_apply, sub_self]
    · exact hcg.sub continuousWithinAt_const
  simp only [one_smul, zero_add] at A
  refine' Tendsto.congr' _ A
  filter_upwards [integrableOn_peak_smul_of_integrableOn_of_continuousWithinAt hs hlφ hiφ hmg hcg,
    hiφ] with i hi h'i
  simp only [Pi.sub_apply, smul_sub]
  rw [integral_sub hi, integral_smul_const, sub_add_cancel]
  exact Integrable.smul_const (integrable_of_integral_eq_one h'i) _
#align tendsto_set_integral_peak_smul_of_integrable_on_of_continuous_within_at tendsto_set_integral_peak_smul_of_integrableOn_of_continuousWithinAt

/-- If a continuous function `c` realizes its maximum at a unique point `x₀` in a compact set `s`,
then the sequence of functions `(c x) ^ n / ∫ (c x) ^ n` is a sequence of peak functions
concentrating around `x₀`. Therefore, `∫ (c x) ^ n * g / ∫ (c x) ^ n` converges to `g x₀` if `g` is
integrable on `s` and continuous at `x₀`.

Version assuming that `μ` gives positive mass to all neighborhoods of `x₀` within `s`.
For a less precise but more usable version, see
`tendsto_set_integral_pow_smul_of_unique_maximum_of_isCompact_of_continuousOn`.
 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PeakFunction/Variant69cccf5551bbaf8d46665138eae8a066c8e8037086db0cbf13c6df98730a21c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PeakFunction/Variant69cccf5551bbaf8d46665138eae8a066c8e8037086db0cbf13c6df98730a21c1.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b90cfa897ae7acdc1cdd0d9595a2cbb381859c43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
