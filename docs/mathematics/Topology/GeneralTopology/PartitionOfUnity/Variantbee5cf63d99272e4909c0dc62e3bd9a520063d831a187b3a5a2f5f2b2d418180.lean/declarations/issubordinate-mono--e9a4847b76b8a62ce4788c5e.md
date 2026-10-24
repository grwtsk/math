# IsSubordinate.mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d452942-4d24-fe97-f7ed-2f585a59e9fa",
  "kind": "theorem",
  "lexical_name": "IsSubordinate.mono",
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
  "slug": "issubordinate-mono--e9a4847b76b8a62ce4788c5e",
  "source": {
    "blob": "6e3294a9d2321c4e9ba1ce3c497bd285b98207c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 377,
    "path": "GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variantbee5cf63d99272e4909c0dc62e3bd9a520063d831a187b3a5a2f5f2b2d418180.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9a4847b76b8a62ce4788c5e8d153003738755724044a51d795661f24d2333fd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PartitionOfUnity/Variantbee5cf63d99272e4909c0dc62e3bd9a520063d831a187b3a5a2f5f2b2d418180.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d452942-4d24-fe97-f7ed-2f585a59e9fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSubordinate.mono {f : BumpCovering ι X s} {U V : ι → Set X} (hU : f.IsSubordinate U)
    (hV : ∀ i, U i ⊆ V i) : f.IsSubordinate V :=
  fun i => Subset.trans (hU i) (hV i)

/-- If `X` is a normal topological space and `U i`, `i : ι`, is a locally finite open covering of a
closed set `s`, then there exists a `BumpCovering ι X s` that is subordinate to `U`. If `X` is a
paracompact space, then the assumption `hf : LocallyFinite U` can be omitted, see
`BumpCovering.exists_isSubordinate`. This version assumes that `p : (X → ℝ) → Prop` is a predicate
that satisfies Urysohn's lemma, and provides a `BumpCovering` such that each function of the
covering satisfies `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PartitionOfUnity/Variantbee5cf63d99272e4909c0dc62e3bd9a520063d831a187b3a5a2f5f2b2d418180.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variantbee5cf63d99272e4909c0dc62e3bd9a520063d831a187b3a5a2f5f2b2d418180.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e3294a9d2321c4e9ba1ce3c497bd285b98207c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
