# inf_splitMany

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:673559df-ac74-87e0-1203-74a92ac0cfe1",
  "kind": "theorem",
  "lexical_name": "inf_splitMany",
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
  "slug": "inf-splitmany--b72b051eeb436f676bd3d0b5",
  "source": {
    "blob": "5a1a3b75199761e6c692626bb2f32c35008c22ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 279,
    "path": "GRWTSK/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b72b051eeb436f676bd3d0b573589c01be1ca085f09d486e6e97b59402a4f92d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:673559df-ac74-87e0-1203-74a92ac0cfe1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inf_splitMany {I : Box ι} (π : Prepartition I) (s : Finset (ι × ℝ)) :
    π ⊓ splitMany I s = π.biUnion fun J => splitMany J s := by
  induction' s using Finset.induction_on with p s _ ihp
  · simp
  · simp_rw [splitMany_insert, ← inf_assoc, ihp, inf_split, biUnion_assoc]
#align box_integral.prepartition.inf_split_many BoxIntegral.Prepartition.inf_splitMany

/-- Let `s : Finset (ι × ℝ)` be a set of hyperplanes `{x : ι → ℝ | x i = r}` in `ι → ℝ` encoded as
pairs `(i, r)`. Suppose that this set contains all faces of a box `J`. The hyperplanes of `s` split
a box `I` into subboxes. Let `Js` be one of them. If `J` and `Js` have nonempty intersection, then
`Js` is a subbox of `J`.  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a1a3b75199761e6c692626bb2f32c35008c22ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
