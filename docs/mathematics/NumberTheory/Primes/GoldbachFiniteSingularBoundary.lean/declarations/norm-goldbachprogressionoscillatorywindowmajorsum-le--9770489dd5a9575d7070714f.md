# norm_goldbachProgressionOscillatoryWindowMajorSum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc697ae1-7afa-2bbe-45da-93d93d0eee0e",
  "kind": "theorem",
  "lexical_name": "norm_goldbachProgressionOscillatoryWindowMajorSum_le",
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
  "slug": "norm-goldbachprogressionoscillatorywindowmajorsum-le--9770489dd5a9575d7070714f",
  "source": {
    "blob": "3b6b4a37c088704da25e5b250ed8979ea33665b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 144,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachFiniteSingularBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9770489dd5a9575d7070714fce6b86e7b2464c80fd7a4916682bb598bbfee758",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachFiniteSingularBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc697ae1-7afa-2bbe-45da-93d93d0eee0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_goldbachProgressionOscillatoryWindowMajorSum_le
    (Q N : ℕ) :
    ‖goldbachProgressionOscillatoryWindowMajorSum Q N‖ ≤
      goldbachProgressionOscillatoryWindowBudget Q N := by
  unfold goldbachProgressionOscillatoryWindowMajorSum
    goldbachProgressionOscillatoryWindowBudget
  calc
    ‖∑ aq ∈ goldbachRationalArcIndices Q,
        goldbachProgressionArithmeticCoefficient N aq.1 aq.2 *
          goldbachSingularOscillatoryCorrection Q N aq.2‖ ≤
      ∑ aq ∈ goldbachRationalArcIndices Q,
        ‖goldbachProgressionArithmeticCoefficient N aq.1 aq.2 *
          goldbachSingularOscillatoryCorrection Q N aq.2‖ :=
      norm_sum_le _ _
    _ ≤
      ∑ aq ∈ goldbachRationalArcIndices Q,
        goldbachSingularOscillatoryBudget Q N aq.2 := by
          apply Finset.sum_le_sum
          intro aq haq
          rw [norm_mul]
          calc
            ‖goldbachProgressionArithmeticCoefficient
                N aq.1 aq.2‖ *
                ‖goldbachSingularOscillatoryCorrection
                  Q N aq.2‖ ≤
              1 * goldbachSingularOscillatoryBudget Q N aq.2 := by
                exact mul_le_mul
                  (norm_goldbachProgressionArithmeticCoefficient_le_one haq)
                  (norm_goldbachSingularOscillatoryCorrection_le
                    Q N aq.2)
                  (norm_nonneg _)
                  (by norm_num)
            _ = goldbachSingularOscillatoryBudget Q N aq.2 := by
              ring

/-- A lower bound for the diagonal-window source loses at most the announced
complete oscillatory-window error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachFiniteSingularBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachFiniteSingularBoundary.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b6b4a37c088704da25e5b250ed8979ea33665b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
