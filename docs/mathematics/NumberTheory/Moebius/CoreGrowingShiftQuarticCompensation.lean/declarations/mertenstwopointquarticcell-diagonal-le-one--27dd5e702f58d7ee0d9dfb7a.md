# mertensTwoPointQuarticCell_diagonal_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:911f751a-60d2-9ac5-5ad0-2079255b962e",
  "kind": "theorem",
  "lexical_name": "mertensTwoPointQuarticCell_diagonal_le_one",
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
  "slug": "mertenstwopointquarticcell-diagonal-le-one--27dd5e702f58d7ee0d9dfb7a",
  "source": {
    "blob": "3518dbff04192d80d5d1cbf70d56011fab2cb8e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 77,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticCompensation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27dd5e702f58d7ee0d9dfb7a3fcb1395a55eb0f4f32187fb9f849e0712fff4e3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftQuarticCompensation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:911f751a-60d2-9ac5-5ad0-2079255b962e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensTwoPointQuarticCell_diagonal_le_one
    (h a : ℕ) :
    mertensTwoPointQuarticCell h a a ≤ 1 := by
  rw [mertensTwoPointQuarticCell_diagonal_eq_sq]
  have hprod :
      |moebiusReal (a + 1) *
        moebiusReal (a + 1 + h)| ≤ (1 : ℝ) := by
    rw [abs_mul]
    exact mul_le_one
      (abs_nonneg _)
      (moebiusReal_abs_le_one (a + 1))
      (moebiusReal_abs_le_one (a + 1 + h))
  have habs :
      |moebiusReal (a + 1) *
        moebiusReal (a + 1 + h)| ≤ |(1 : ℝ)| := by
    simpa using hprod
  simpa using (sq_le_sq).2 habs

/-- The diagonal of one prefix is nonnegative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftQuarticCompensation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticCompensation.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3518dbff04192d80d5d1cbf70d56011fab2cb8e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
