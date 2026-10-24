# cyclicDistance_Icc_sum_eq_cyclicStepBudget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e731b5c5-2b55-f99a-3fcf-77d539ca20b6",
  "kind": "theorem",
  "lexical_name": "cyclicDistance_Icc_sum_eq_cyclicStepBudget",
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
  "slug": "cyclicdistance-icc-sum-eq-cyclicstepbudget--6c6027d32cb4b8460bf3e7d7",
  "source": {
    "blob": "ffc561b844afbe7d9a09a18930ed1c0d5220e077",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 126,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteDistanceRegrouping.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c6027d32cb4b8460bf3e7d7c003a67e5da2d8ec73fc1d01824a9644b58d4e5f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteDistanceRegrouping.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e731b5c5-2b55-f99a-3fcf-77d539ca20b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclicDistance_Icc_sum_eq_cyclicStepBudget
    (X N : ℕ) :
    (∑ d ∈ Finset.Icc 0 (2 * X),
      4 * ((d : ℝ) *
        sampledTriangularKernelAtPeriod
          (fejerOctavePeriod X) N d))
      =
    nonAliasingFejerCyclicStepBudget X N := by
  unfold nonAliasingFejerCyclicStepBudget
    nonAliasingFejerPositiveFirstMoment
  have hIcc :
      Finset.Icc 0 (2 * X) =
        insert 0 (Finset.Icc 1 (2 * X)) := by
    rw [← Finset.insert_Icc_add_one_left_eq_Icc (Nat.zero_le (2 * X))]
  rw [hIcc, Finset.sum_insert]
  · simp
    rw [Finset.mul_sum]
  · simp

/-- Final finite cyclic-distance kernel pairing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteDistanceRegrouping.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteDistanceRegrouping.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffc561b844afbe7d9a09a18930ed1c0d5220e077` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
