# _root_.Set.PairwiseDisjoint.countable_of_nonempty_interior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b83ef8435af34618046ecb4b3b0b05f85d68e8f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 494,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/493185ec0b182c54fa0a77850ae0989a6bccc536f44030b83fb0a654bcb827f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8da7ca86-a6e6-de18-ce8f-67154adae0d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:43e5a7c8-fd5b-ef8b-56ed-c24410bffe81",
  "kind": "theorem",
  "lexical_name": "_root_.Set.PairwiseDisjoint.countable_of_nonempty_interior",
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
  "slug": "root-set-pairwisedisjoint-countable-of-nonempty-interior--9c5f08da01099266d295d77c",
  "source": {
    "blob": "b83ef8435af34618046ecb4b3b0b05f85d68e8f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 503,
    "line": 494,
    "path": "GRWTSK/Topology/GeneralTopology/Bases/Variant493185ec0b182c54fa0a77850ae0989a6bccc536f44030b83fb0a654bcb827f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c5f08da01099266d295d77c63c65e3d784eb4e5649a030451faf31b0a2336ef",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bases/Variant493185ec0b182c54fa0a77850ae0989a6bccc536f44030b83fb0a654bcb827f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43e5a7c8-fd5b-ef8b-56ed-c24410bffe81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 494–503.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Set.PairwiseDisjoint.countable_of_nonempty_interior [SeparableSpace α] {ι : Type*}
    {s : ι → Set α} {a : Set ι} (h : a.PairwiseDisjoint s)
    (ha : ∀ i ∈ a, (interior (s i)).Nonempty) : a.Countable :=
  (h.mono fun _ => interior_subset).countable_of_isOpen (fun _ _ => isOpen_interior) ha

/-- A set `s` in a topological space is separable if it is contained in the closure of a countable
set `c`. Beware that this definition does not require that `c` is contained in `s` (to express the
latter, use `TopologicalSpace.SeparableSpace s` or
`TopologicalSpace.IsSeparable (univ : Set s)`). In metric spaces, the two definitions are
equivalent, see `TopologicalSpace.IsSeparable.separableSpace`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bases/Variant493185ec0b182c54fa0a77850ae0989a6bccc536f44030b83fb0a654bcb827f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bases/Variant493185ec0b182c54fa0a77850ae0989a6bccc536f44030b83fb0a654bcb827f3.lean#L494).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b83ef8435af34618046ecb4b3b0b05f85d68e8f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
