# prescribed_horizon_realization_exceeds_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ae56916-fa2d-2e43-7619-a90f860f268c",
  "kind": "theorem",
  "lexical_name": "prescribed_horizon_realization_exceeds_polynomial",
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
  "slug": "prescribed-horizon-realization-exceeds-polynomial--6a63b13425bd1516c65ff768",
  "source": {
    "blob": "1bcf3f7d36074fae6a1360dbf88f960510396329",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 68,
    "path": "GRWTSK/Analysis/InnerProductSpace/CausalRealizationPolynomialObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a63b13425bd1516c65ff7689b712fb235f2fac36e6374add322022002dc16b6",
  "verification": {
    "reference": "docs/verification/Analysis/InnerProductSpace/CausalRealizationPolynomialObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ae56916-fa2d-2e43-7619-a90f860f268c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prescribed_horizon_realization_exceeds_polynomial (C : ℝ) (d : ℕ)
    {A : ℝ} (hC : 0 ≤ C) (hA : 1 ≤ A)
    (beyond : C * ((d + 1).factorial : ℝ) < A)
    (map : Lp ℝ 2 (volume : Measure ℝ) →L[ℝ] Lp ℝ 2 (volume : Measure ℝ))
    (realizes : map (originalWindowL2 (2 * A) (Nat.floor (Real.exp (2 * A)))) =
      prescribedSourceL2 A (lt_of_lt_of_le (by norm_num : (0 : ℝ) < 1) hA)
        (Nat.floor (Real.exp (2 * A)))) :
    C * (1 + A) ^ d < ‖map‖ := by
  have positive : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have horizon : 1 ≤ 2 * A := by linarith
  have threshold : 2 * C * ((d + 1).factorial : ℝ) < 2 * A := by linarith
  have cost := last_label_realization_exceeds_polynomial C d hC positive
    horizon threshold map realizes
  have polynomial : C * (1 + A) ^ d ≤ C * (1 + 2 * A) ^ d :=
    mul_le_mul_of_nonneg_left
      (pow_le_pow_left₀ (by linarith : (0 : ℝ) ≤ 1 + A) (by linarith) d) hC
  exact polynomial.trans_lt cost

/-- The coefficient and degree are fixed; the allowed scale set is explicitly unbounded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/InnerProductSpace/CausalRealizationPolynomialObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/InnerProductSpace/CausalRealizationPolynomialObstruction.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bcf3f7d36074fae6a1360dbf88f960510396329` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
