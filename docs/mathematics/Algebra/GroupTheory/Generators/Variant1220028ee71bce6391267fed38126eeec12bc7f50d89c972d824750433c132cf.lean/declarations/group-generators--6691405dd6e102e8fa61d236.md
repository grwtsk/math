# Group.Generators

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:495e1db48b0ad8e9035c55b1171850d2f295af3dc5851540b2b740dfefb7ee15",
  "kind": "structure",
  "lexical_name": "Group.Generators",
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
  "slug": "group-generators--6691405dd6e102e8fa61d236",
  "source": {
    "blob": "a8e3f40f520d4979dd696f8fde6b00ecb6f15465",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 55,
    "path": "GRWTSK/Algebra/GroupTheory/Generators/Variant1220028ee71bce6391267fed38126eeec12bc7f50d89c972d824750433c132cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6691405dd6e102e8fa61d23633175d95a6256e16290bb0815ed2aa0329a95deb",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Generators/Variant1220028ee71bce6391267fed38126eeec12bc7f50d89c972d824750433c132cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:495e1db48b0ad8e9035c55b1171850d2f295af3dc5851540b2b740dfefb7ee15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Group.Generators (G : Type*) [Group G] (ι : Type*) where
  /-- The generating family itself: `val i` is the element of `G` indexed by `i : ι`. -/
  val : ι → G
  /-- The subgroup closure of the generators is the whole group. -/
  closure_eq_top : Subgroup.closure (Set.range val) = ⊤

namespace Group.Generators

variable (P : Group.Generators G ι)

/-- The canonical surjection from the free group on the generators to `G`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Generators/Variant1220028ee71bce6391267fed38126eeec12bc7f50d89c972d824750433c132cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Generators/Variant1220028ee71bce6391267fed38126eeec12bc7f50d89c972d824750433c132cf.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8e3f40f520d4979dd696f8fde6b00ecb6f15465` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
