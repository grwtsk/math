# goldbachSymmetricRealSingularIntegral_eq_main_add_correction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6201e1a9-fe22-2e48-d123-7cc5007d903a",
  "kind": "theorem",
  "lexical_name": "goldbachSymmetricRealSingularIntegral_eq_main_add_correction",
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
  "slug": "goldbachsymmetricrealsingularintegral-eq-main-add-correction--713d27363e96b84dea8025a6",
  "source": {
    "blob": "ebce207c21c404772dc3a7f87491ee18c58fbbae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 213,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:713d27363e96b84dea8025a6afa2dacacee1e07340dfebca770cbcbad8eed708",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6201e1a9-fe22-2e48-d123-7cc5007d903a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachSymmetricRealSingularIntegral_eq_main_add_correction
    (Q N q : ℕ) :
    goldbachSymmetricRealSingularIntegral Q N q =
      (goldbachSingularDiagonalMain Q N q : ℂ) +
        goldbachSingularOscillatoryCorrection Q N q := by
  rw [goldbachSymmetricRealSingularIntegral_eq_pairEvaluation,
    goldbachSingularPairBox_eq_diagonal_union_offDiagonal,
    Finset.sum_union
      (goldbachSingularDiagonalPairs_disjoint_offDiagonal N)]
  unfold goldbachSingularDiagonalMain
    goldbachSingularOscillatoryCorrection
  congr 1
  calc
    (∑ uv ∈ goldbachSingularDiagonalPairs N,
        (goldbachCharacterWindowValue
          (goldbachRationalArcRadius Q N q)
          (goldbachSingularPairFrequency N uv) : ℂ)) =
      ∑ _uv ∈ goldbachSingularDiagonalPairs N,
        ((2 * goldbachRationalArcRadius Q N q : ℝ) : ℂ) := by
          apply Finset.sum_congr rfl
          intro uv huv
          have hfreq :
              goldbachSingularPairFrequency N uv = 0 :=
            (goldbachSingularPairFrequency_eq_zero_iff
              ((goldbachSingularDiagonalPairs_subset_pairBox N) huv)).2
              (mem_goldbachSingularDiagonalPairs.mp huv)
          simp [hfreq, goldbachCharacterWindowValue]
    _ =
      ((2 * goldbachRationalArcRadius Q N q *
        (N + 1 : ℝ) : ℝ) : ℂ) := by
          simp [goldbachSingularDiagonalPairs, mul_comm]

/-- The finite oscillatory budget is nonnegative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebce207c21c404772dc3a7f87491ee18c58fbbae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
