# shortFactorialMellin_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d04c7d3-982b-9833-e2c1-ac543b8260ff",
  "kind": "theorem",
  "lexical_name": "shortFactorialMellin_integral",
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
  "slug": "shortfactorialmellin-integral--cec8b93ebb00d26e4f5cd99a",
  "source": {
    "blob": "9e4bf48b7619584d233240b490ec314109fb4bed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 89,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/09cbb6c5eeefc7448f04SourceActualFactorialMellinTransport/Variantb7e5cbbd2e2ca0a2b168fc4bb75292ac85f875a6c4bdd2d96afa5e4807588ff8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cec8b93ebb00d26e4f5cd99a09650bf9fe5e4ecdc1387a748fd7eb63438de93e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/09cbb6c5eeefc7448f04SourceActualFactorialMellinTransport/Variantb7e5cbbd2e2ca0a2b168fc4bb75292ac85f875a6c4bdd2d96afa5e4807588ff8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d04c7d3-982b-9833-e2c1-ac543b8260ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shortFactorialMellin_integral (U : ℕ) :
    (∫ x in Ioi (0 : ℝ), shortFactorialDefect U x * x ^ (-(3 : ℝ) / 2)) =
      2 * fullPositiveKappa 1 *
        (∑ d ∈ Finset.Icc 1 U, realMoebius d / Real.sqrt (d : ℝ)) := by
  unfold shortFactorialDefect
  simp_rw [Finset.sum_mul]
  rw [integral_finsetSum]
  · simp_rw [mul_assoc, integral_const_mul]
    simp_rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro d hd
    have hdpos : 0 < (d : ℝ) := by
      exact_mod_cast (by have := (Finset.mem_Icc.mp hd).1; omega : 0 < d)
    rw [scaledFactorialMellin_integral hdpos]
    ring
  · intro d hd
    have hdpos : 0 < (d : ℝ) := by
      exact_mod_cast (by have := (Finset.mem_Icc.mp hd).1; omega : 0 < d)
    simpa only [mul_assoc] using (scaledFactorialMellin_integrable hdpos).const_mul
      (realMoebius d)

/-- The actual first-kappa signed half inventory is the exact factorial-defect moment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/09cbb6c5eeefc7448f04SourceActualFactorialMellinTransport/Variantb7e5cbbd2e2ca0a2b168fc4bb75292ac85f875a6c4bdd2d96afa5e4807588ff8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/09cbb6c5eeefc7448f04SourceActualFactorialMellinTransport/Variantb7e5cbbd2e2ca0a2b168fc4bb75292ac85f875a6c4bdd2d96afa5e4807588ff8.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e4bf48b7619584d233240b490ec314109fb4bed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
