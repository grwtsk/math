# integral_min_eq_two_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c25c6869-ee9d-fd2f-a878-ab78e65f5d9f",
  "kind": "lemma",
  "lexical_name": "integral_min_eq_two_mul",
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
  "slug": "integral-min-eq-two-mul--ffceaed4c15b4883a1cd3479",
  "source": {
    "blob": "121cb65250c178f5ce5ae5c1e761d17ef7bf6083",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 297,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variantaa91c5f563bc4c7f31b0d213181fa288e454398be6c5608c8a77500c1f45ddd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffceaed4c15b4883a1cd3479bd84ab0c1e0af5ff0fb8bdb348d4655e081f0f0e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variantaa91c5f563bc4c7f31b0d213181fa288e454398be6c5608c8a77500c1f45ddd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c25c6869-ee9d-fd2f-a878-ab78e65f5d9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_min_eq_two_mul :
    ∫ θ in (0)..π, min d (θ.sin * l) = 2 * ∫ θ in (0)..π / 2, min d (θ.sin * l) := by
  rw [← intervalIntegral.integral_add_adjacent_intervals (b := π / 2) (c := π)]
  conv => lhs; arg 2; arg 1; intro θ; rw [← neg_neg θ, Real.sin_neg]
  · simp_rw [intervalIntegral.integral_comp_neg fun θ => min d (-θ.sin * l), ← Real.sin_add_pi,
      intervalIntegral.integral_comp_add_right (fun θ => min d (θ.sin * l)), neg_add_cancel,
      (by ring : -(π / 2) + π = π / 2), two_mul]
  all_goals exact intervalIntegrable_min_const_sin_mul d l _ _

include hd hl in
/--
The first of two adjacent integrals in the long case. In the range `(0)..(d / l).arcsin`, we
have that `θ.sin * l ≤ d`, and thus the integral is `∫ θ in (0)..(d / l).arcsin, θ.sin * l`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variantaa91c5f563bc4c7f31b0d213181fa288e454398be6c5608c8a77500c1f45ddd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variantaa91c5f563bc4c7f31b0d213181fa288e454398be6c5608c8a77500c1f45ddd9.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `121cb65250c178f5ce5ae5c1e761d17ef7bf6083` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
