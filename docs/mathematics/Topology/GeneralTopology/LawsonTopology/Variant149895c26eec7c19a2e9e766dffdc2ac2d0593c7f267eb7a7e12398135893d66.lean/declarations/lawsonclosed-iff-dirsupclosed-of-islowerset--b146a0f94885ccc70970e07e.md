# lawsonClosed_iff_dirSupClosed_of_isLowerSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98d603ce-199e-fcb0-3dc6-9402b70423eb",
  "kind": "lemma",
  "lexical_name": "lawsonClosed_iff_dirSupClosed_of_isLowerSet",
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
  "slug": "lawsonclosed-iff-dirsupclosed-of-islowerset--b146a0f94885ccc70970e07e",
  "source": {
    "blob": "cb872cafaefeac6a580716df9922a7d5d895a3fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 223,
    "path": "GRWTSK/Topology/GeneralTopology/LawsonTopology/Variant149895c26eec7c19a2e9e766dffdc2ac2d0593c7f267eb7a7e12398135893d66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b146a0f94885ccc70970e07e88ccbd8e5875b9c6c31d820b6c8ca31831c3abfd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LawsonTopology/Variant149895c26eec7c19a2e9e766dffdc2ac2d0593c7f267eb7a7e12398135893d66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98d603ce-199e-fcb0-3dc6-9402b70423eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lawsonClosed_iff_dirSupClosed_of_isLowerSet (s : Set α) (h : IsLowerSet s) :
    IsClosed[L] s ↔ DirSupClosed s := by
  rw [lawsonClosed_iff_scottClosed_of_isLowerSet L S _ h,
    @IsScott.isClosed_iff_isLowerSet_and_dirSupClosed]
  simp_all

end Preorder

namespace IsLawson
variable [PartialOrder α] [TopologicalSpace α] [IsLawson α]

set_option backward.isDefEq.respectTransparency false in
/-- The Lawson topology on a partial order is T₁. -/
-- see Note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LawsonTopology/Variant149895c26eec7c19a2e9e766dffdc2ac2d0593c7f267eb7a7e12398135893d66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LawsonTopology/Variant149895c26eec7c19a2e9e766dffdc2ac2d0593c7f267eb7a7e12398135893d66.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb872cafaefeac6a580716df9922a7d5d895a3fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
