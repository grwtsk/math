# PresentedGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e99d9ea978854238f0cd1f78bd091541cc4502fd28ee5665e319fdadbbf1037f",
  "kind": "def",
  "lexical_name": "PresentedGroup",
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
  "slug": "presentedgroup--5fa3e19b4243d1c857f1529d",
  "source": {
    "blob": "cf5559da244ba694450aae53f0f708cdcfb6b70e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 47,
    "path": "GRWTSK/Algebra/GroupTheory/PresentedGroup/Variant7d8821bbff16b6ebeaec3d96bece406797bf21208aed4b167cbf92eef90a21dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5fa3e19b4243d1c857f1529d62304c8e86b3885b5ec6b938b6abd3e3edacf5e7",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/PresentedGroup/Variant7d8821bbff16b6ebeaec3d96bece406797bf21208aed4b167cbf92eef90a21dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e99d9ea978854238f0cd1f78bd091541cc4502fd28ee5665e319fdadbbf1037f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PresentedGroup (rels : Set (FreeGroup α)) :=
  FreeGroup α ⧸ Subgroup.normalClosure rels
deriving Group

namespace PresentedGroup

/-- The canonical map from the free group on `α` to a presented group with generators `x : α`,
where `x` is mapped to its equivalence class under the given set of relations `rels` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/PresentedGroup/Variant7d8821bbff16b6ebeaec3d96bece406797bf21208aed4b167cbf92eef90a21dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/PresentedGroup/Variant7d8821bbff16b6ebeaec3d96bece406797bf21208aed4b167cbf92eef90a21dc.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf5559da244ba694450aae53f0f708cdcfb6b70e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
