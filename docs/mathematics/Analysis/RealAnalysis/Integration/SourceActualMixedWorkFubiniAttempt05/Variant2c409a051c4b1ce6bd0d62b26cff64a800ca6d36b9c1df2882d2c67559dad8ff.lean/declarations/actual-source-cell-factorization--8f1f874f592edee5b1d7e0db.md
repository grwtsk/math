# actual_source_cell_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c612d6a-fcf9-1fdb-8cbc-9876c9251048",
  "kind": "theorem",
  "lexical_name": "actual_source_cell_factorization",
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
  "slug": "actual-source-cell-factorization--8f1f874f592edee5b1d7e0db",
  "source": {
    "blob": "20088cb8a06d593170bbe0d32f1baf219b1ec673",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 182,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubiniAttempt05/Variant2c409a051c4b1ce6bd0d62b26cff64a800ca6d36b9c1df2882d2c67559dad8ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f1f874f592edee5b1d7e0db4fe22e6cdb1dd6d7d578dc899280195fa8b680e3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubiniAttempt05/Variant2c409a051c4b1ce6bd0d62b26cff64a800ca6d36b9c1df2882d2c67559dad8ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c612d6a-fcf9-1fdb-8cbc-9876c9251048`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_source_cell_factorization
    {A : ℝ} (hA : 0 < A) (l b k : ℝ) (hlb : l ≤ b) (hk : 0 < k) :
    (∫ t in l..b, ∫ u in k..(k + 1), ∫ v : ℝ,
      errorExp t * normalizedTest explicitSecondDerivative A (v - t) *
        (normalizedTest explicitSecondDerivative A (v + Real.log u) /
          (u * Real.sqrt u))) =
      ∫ v : ℝ,
        (∫ t in l..b, errorExp t * normalizedTest explicitSecondDerivative A (v - t)) *
          (∫ u in k..(k + 1), normalizedTest explicitSecondDerivative A (v + Real.log u) /
            (u * Real.sqrt u)) :=
  cell_fubini_factorization _ (normalizedTest_contDiff A hA).continuous
    hlb hk (source_tsupport_subset hA)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubiniAttempt05/Variant2c409a051c4b1ce6bd0d62b26cff64a800ca6d36b9c1df2882d2c67559dad8ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubiniAttempt05/Variant2c409a051c4b1ce6bd0d62b26cff64a800ca6d36b9c1df2882d2c67559dad8ff.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20088cb8a06d593170bbe0d32f1baf219b1ec673` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
