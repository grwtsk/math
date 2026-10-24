# positive_fixed_direction_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:210b900b-230b-69a3-7ce6-2b8c9c9ff1d9",
  "kind": "theorem",
  "lexical_name": "positive_fixed_direction_le",
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
  "slug": "positive-fixed-direction-le--55b080158bdcc1d6833fb49e",
  "source": {
    "blob": "858743a8b2e38b9af25fdcd9ada216e4d1189490",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 23,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloor/Variantab81279b349669dd7dcb53a45e95f90553a61638366bc5e5199f7a37bba28626.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55b080158bdcc1d6833fb49e7fba9660ee8b9a3f6dc53bcdb2ecd1789b4e28f3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloor/Variantab81279b349669dd7dcb53a45e95f90553a61638366bc5e5199f7a37bba28626.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:210b900b-230b-69a3-7ce6-2b8c9c9ff1d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_fixed_direction_le (B : E →L[ℂ] E) (hB : B.IsPositive)
    (r e : E) (he : e ≠ 0) (hBe : B e = e) :
    ‖inner ℂ r e‖ ^ 2 / ‖e‖ ^ 2 ≤ (inner ℂ r (B r)).re := by
  let q : ℝ := ‖e‖ ^ 2
  let c : ℂ := inner ℂ e r
  let v : E := (q : ℂ) • r - c • e
  have hq : 0 < q := sq_pos_of_pos (norm_pos_iff.mpr he)
  have hee : inner ℂ e e = (q : ℂ) := by
    calc
      inner ℂ e e = (‖e‖ : ℂ) ^ 2 := inner_self_eq_norm_sq_to_K e
      _ = (q : ℂ) := (Complex.ofReal_pow ‖e‖ 2).symm
  have her : inner ℂ e (B r) = c := by
    rw [← hB.inner_left_eq_inner_right, hBe]
  have hre : inner ℂ r e = conj c := (inner_conj_symm r e).symm
  have hquad : inner ℂ v (B v) =
      (q : ℂ) ^ 2 * inner ℂ r (B r) - (q : ℂ) * (conj c * c) := by
    simp only [v, map_sub, map_smul, inner_sub_left, inner_sub_right,
      inner_smul_left, inner_smul_right, Complex.conj_ofReal, hBe, her, hre, hee]
    ring
  have hp := hB.re_inner_nonneg_right v
  change 0 ≤ (inner ℂ v (B v)).re at hp
  rw [hquad, ← Complex.normSq_eq_conj_mul_self] at hp
  simp only [← Complex.ofReal_pow, Complex.sub_re, Complex.mul_re, Complex.ofReal_re,
    Complex.ofReal_im, zero_mul, sub_zero, Complex.normSq_eq_norm_sq] at hp
  have hn : ‖c‖ = ‖inner ℂ r e‖ := by rw [hre, Complex.norm_conj]
  rw [hn] at hp
  apply (div_le_iff₀ hq).2
  change ‖inner ℂ r e‖ ^ 2 ≤ (inner ℂ r (B r)).re * q
  nlinarith

variable [CompleteSpace E]

/-- A vector in the original operator's kernel is fixed by the regularized inverse. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloor/Variantab81279b349669dd7dcb53a45e95f90553a61638366bc5e5199f7a37bba28626.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloor/Variantab81279b349669dd7dcb53a45e95f90553a61638366bc5e5199f7a37bba28626.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `858743a8b2e38b9af25fdcd9ada216e4d1189490` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
