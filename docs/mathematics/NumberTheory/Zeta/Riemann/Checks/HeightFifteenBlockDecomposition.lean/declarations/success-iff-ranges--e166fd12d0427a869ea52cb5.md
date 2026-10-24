# success_iff_ranges

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd512e3a-235b-d780-0f73-76799d495cdc",
  "kind": "theorem",
  "lexical_name": "success_iff_ranges",
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
  "slug": "success-iff-ranges--e166fd12d0427a869ea52cb5",
  "source": {
    "blob": "06b3aa7f3cbe130682a62541f829a7973e7cd18d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 115,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e166fd12d0427a869ea52cb5a583ec24c2b1ff78ce8a820694a916e3c5bd67e5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd512e3a-235b-d780-0f73-76799d495cdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem success_iff_ranges : Success ↔
    allRange directTest 0 edges = true ∧ sumRange directTerm 0 edges = 1 := by
  have hg : RationalRectangleCount.lower.1 < (RationalRectangleCount.upper 15).1 ∧
      RationalRectangleCount.lower.2 < (RationalRectangleCount.upper 15).2 := by
    norm_num [RationalRectangleCount.lower,RationalRectangleCount.upper]
  change JetRectangleCount.evaluateBox _ _ edges marks plans image = some 1 ↔ _
  rw [JetRectangleCount.evaluateBox_eq_some_iff]
  constructor
  · rintro ⟨_,_,h⟩
    have hs := (JetContourBlocks.old_evaluate_iff _ _ _ _ _).mp h
    refine ⟨?_,?_⟩
    · simpa only [allRange_refines] using hs.2.1
    · simpa only [sumRange_refines] using hs.2.2
  · rintro ⟨hall,hsum⟩
    refine ⟨hg,mesh_shape.2,(JetContourBlocks.old_evaluate_iff _ _ _ _ _).mpr ?_⟩
    refine ⟨header,?_,?_⟩
    · simpa only [allRange_refines] using hall
    · simpa only [sumRange_refines] using hsum

/-- Exact completeness of the decomposition. A block's integer is just its
signed contribution; it is not required to be nonnegative or be a loop index. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06b3aa7f3cbe130682a62541f829a7973e7cd18d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
