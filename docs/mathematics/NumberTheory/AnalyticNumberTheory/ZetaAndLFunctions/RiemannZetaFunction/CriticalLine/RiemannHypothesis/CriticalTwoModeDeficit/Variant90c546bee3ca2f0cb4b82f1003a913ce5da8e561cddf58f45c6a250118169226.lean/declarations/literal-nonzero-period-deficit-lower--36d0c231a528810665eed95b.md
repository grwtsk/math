# literal_nonzero_period_deficit_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01468d05-c919-bb80-ffdc-61e981401dae",
  "kind": "theorem",
  "lexical_name": "literal_nonzero_period_deficit_lower",
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
  "slug": "literal-nonzero-period-deficit-lower--36d0c231a528810665eed95b",
  "source": {
    "blob": "aeaac330f4c3782ca8d01090ef12d05062a149c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 22,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalTwoModeDeficit/Variant90c546bee3ca2f0cb4b82f1003a913ce5da8e561cddf58f45c6a250118169226.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36d0c231a528810665eed95b2a22e6b7ace789334b73ee70cd2ef02f28b11dff",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalTwoModeDeficit/Variant90c546bee3ca2f0cb4b82f1003a913ce5da8e561cddf58f45c6a250118169226.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01468d05-c919-bb80-ffdc-61e981401dae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_nonzero_period_deficit_lower {α c t T : ℝ} (hc : 0 < c)
    (hbad : ∀ m : ℤ, m ≠ 0 → ∀ n : ℤ, c / |(m : ℝ)| ≤ |α * (m : ℝ) - (n : ℝ)|)
    (ht : 0 ≤ t) (htT : t ≤ T) (hT : 1 ≤ T) (hm : nearestPeriod t ≠ 0) :
    (4*c^2/(α^2+1)) / T^2 ≤ 2 - twoMode α t := by
  have hp := literal_nonzero_period_diophantine_price hbad ht htT hT hm
  have hp2 := pow_le_pow_left₀ (by positivity : (0 : ℝ) ≤ 2*Real.pi*c) hp 2
  have hs : (|α| * |periodResidual t| + |periodResidual (α*t)|)^2 ≤
      2*(α^2+1)*(periodResidual t^2+periodResidual (α*t)^2) := by
    simpa only [sq_abs] using
      weighted_pair_square_price |α| |periodResidual t| |periodResidual (α*t)|
  simp only [mul_pow] at hp2
  have hall := hp2.trans (mul_le_mul_of_nonneg_left hs (sq_nonneg T))
  have hr := literal_two_mode_residual_deficit α t
  rw [div_mul_eq_mul_div] at hr
  have hrpaid := (div_le_iff₀ (sq_pos_of_pos Real.pi_pos)).mp hr
  have ha : 0 < α^2+1 := by positivity
  have hTpos : 0 < T := by linarith
  have hrscaled := mul_le_mul_of_nonneg_left hrpaid (mul_nonneg ha.le (sq_nonneg T))
  have hpi : Real.pi^2 * (4*c^2) ≤
      Real.pi^2 * ((α^2+1)*T^2*(2-twoMode α t)) := by nlinarith
  have hcpaid := le_of_mul_le_mul_left hpi (sq_pos_of_pos Real.pi_pos)
  rw [div_div]
  apply (div_le_iff₀ (mul_pos ha (sq_pos_of_pos hTpos))).mpr
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalTwoModeDeficit/Variant90c546bee3ca2f0cb4b82f1003a913ce5da8e561cddf58f45c6a250118169226.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalTwoModeDeficit/Variant90c546bee3ca2f0cb4b82f1003a913ce5da8e561cddf58f45c6a250118169226.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aeaac330f4c3782ca8d01090ef12d05062a149c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
