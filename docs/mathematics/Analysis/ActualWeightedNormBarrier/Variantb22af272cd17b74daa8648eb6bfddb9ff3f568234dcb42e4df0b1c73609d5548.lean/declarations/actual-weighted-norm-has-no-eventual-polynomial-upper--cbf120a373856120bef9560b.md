# actual_weighted_norm_has_no_eventual_polynomial_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:035e5d6c-1c0b-df57-a83c-99002ff6c363",
  "kind": "theorem",
  "lexical_name": "actual_weighted_norm_has_no_eventual_polynomial_upper",
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
  "slug": "actual-weighted-norm-has-no-eventual-polynomial-upper--cbf120a373856120bef9560b",
  "source": {
    "blob": "e0fa3f06e6d9ded5b84614605f59a0a510297e5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 61,
    "path": "GRWTSK/Analysis/ActualWeightedNormBarrier/Variantb22af272cd17b74daa8648eb6bfddb9ff3f568234dcb42e4df0b1c73609d5548.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbf120a373856120bef9560b7d13a25855c54b3724d269195a090a7af357d35b",
  "verification": {
    "reference": "docs/verification/Analysis/ActualWeightedNormBarrier/Variantb22af272cd17b74daa8648eb6bfddb9ff3f568234dcb42e4df0b1c73609d5548.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:035e5d6c-1c0b-df57-a83c-99002ff6c363`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_weighted_norm_has_no_eventual_polynomial_upper {θ : ℝ} (hθ : 0 < θ) :
    ¬ EventuallyPolynomialUpper (fun A ↦ normPrice A θ) := by
  rintro ⟨m, D, R, _hD, _hR, hcap⟩
  have hevent : ∀ᶠ A : ℝ in atTop,
      512 * D * Real.exp (2 * θ) + 1 < Real.exp ((2 * θ) * A) / A ^ (m + 9) := by
    simpa only [Real.rpow_natCast] using
      (tendsto_exp_mul_div_rpow_atTop (m + 9 : ℕ) (2 * θ) (by positivity)).eventually
        (eventually_gt_atTop (512 * D * Real.exp (2 * θ) + 1))
  obtain ⟨S, hS⟩ := eventually_atTop.mp hevent
  let A := max S (max R 8)
  have hA8 : 8 ≤ A := (le_max_right R 8).trans (le_max_right S _)
  have hApos : 0 < A := by linarith
  have hAR : R ≤ A := (le_max_left R 8).trans (le_max_right S _)
  have hbig := (lt_div_iff₀ (pow_pos hApos (m + 9))).mp (hS A (le_max_left _ _))
  have hlower := full_actual_weighted_norm_lower hA8 hθ.le
  have hsmall := hlower.trans (hcap A hAR)
  have hpaid := (div_le_iff₀ (by positivity : 0 < 512 * A ^ 9)).mp hsmall
  have heq : Real.exp ((2 * θ) * A) =
      Real.exp (θ * (2 * A - 2)) * Real.exp (2 * θ) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have hmult := mul_le_mul_of_nonneg_right hpaid (Real.exp_pos (2 * θ)).le
  rw [heq, pow_add] at hbig
  nlinarith [mul_pos (pow_pos hApos m) (pow_pos hApos 9)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ActualWeightedNormBarrier/Variantb22af272cd17b74daa8648eb6bfddb9ff3f568234dcb42e4df0b1c73609d5548.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ActualWeightedNormBarrier/Variantb22af272cd17b74daa8648eb6bfddb9ff3f568234dcb42e4df0b1c73609d5548.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0fa3f06e6d9ded5b84614605f59a0a510297e5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
