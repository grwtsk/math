# coreGrowingShiftCollisionFreeCell_fourFormsPairwiseDistinct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef17dc58-f90a-852a-30b3-8ca407a9a4fa",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftCollisionFreeCell_fourFormsPairwiseDistinct",
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
  "slug": "coregrowingshiftcollisionfreecell-fourformspairwisedistinct--69eaaa23bc4b5b71ad0997eb",
  "source": {
    "blob": "cc617f674d7eed25359a3ede099d4978da6d86b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 135,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69eaaa23bc4b5b71ad0997eb496c815a99498bb8774c8c77cca5b8cfd67363fb",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef17dc58-f90a-852a-30b3-8ca407a9a4fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftCollisionFreeCell_fourFormsPairwiseDistinct
    {j t k b a : ℕ}
    (ha : a ∈ (Finset.range b).filter
      (fun a => b ≠ a + (harmonicShiftLower j t + k))) :
    MertensQuarticFourFormsPairwiseDistinct
      (harmonicShiftLower j t + k) a b := by
  have hab : a < b :=
    Finset.mem_range.mp (Finset.mem_filter.mp ha).1
  have hfree : b ≠ a + (harmonicShiftLower j t + k) :=
    (Finset.mem_filter.mp ha).2
  have hL : 1 ≤ harmonicShiftLower j t := by
    unfold harmonicShiftLower
    exact le_max_left _ _
  have hh : 0 < harmonicShiftLower j t + k := by omega
  exact
    mertensQuarticFourFormsPairwiseDistinct_of_collisionFree
      hh hab hfree

/-- Collision-line source in the original repeated-middle coordinates.  This
source must pay the visible positive diagonal assigned to it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticConnections.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc617f674d7eed25359a3ede099d4978da6d86b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
