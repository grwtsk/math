# mem_tangentConeAt_of_seq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "14b08a77f07a1828a90b11776a2c6a305aa1ddf6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a1f380676195f3930c2cf8817bb40835885c6b8d6471f5f3725db877a6fb123.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:267704b8-ae7f-86fa-1833-05f8261dd21f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ce2a653-b568-fc0f-51f3-1b507796a396",
  "kind": "theorem",
  "lexical_name": "mem_tangentConeAt_of_seq",
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
  "slug": "mem-tangentconeat-of-seq--4b74660c0ca29a14bbceefb5",
  "source": {
    "blob": "14b08a77f07a1828a90b11776a2c6a305aa1ddf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 96,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant8a1f380676195f3930c2cf8817bb40835885c6b8d6471f5f3725db877a6fb123.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b74660c0ca29a14bbceefb5ad9fa8602f08d3924a46355ac687c1059472fb34",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant8a1f380676195f3930c2cf8817bb40835885c6b8d6471f5f3725db877a6fb123.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ce2a653-b568-fc0f-51f3-1b507796a396`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_tangentConeAt_of_seq {α : Type*} (l : Filter α) [l.NeBot] (c : α → R) (d : α → E)
    (hd₀ : Tendsto d l (𝓝 0)) (hds : ∀ᶠ n in l, x + d n ∈ s)
    (hcd : Tendsto (fun n ↦ c n • d n) l (𝓝 y)) : y ∈ tangentConeAt R s x :=
  mem_tangentConeAt_of_frequently l c d hd₀ hds.frequently hcd

/-- If `y` belongs to the tangent cone of `s` at `x`, then there exist

- an index type `α` and a nontrivial filter `l` on `α`;
- a family of scalars `c n`, `n : α`, and a family of vectors `d n`, `n : α` such that
- `d n → 0` along `l`;
- `x + d n ∈ s` eventually along `l`;
- `c n • d n → y` along `l`.

In fact, one can take `α = R × E`, `c = Prod.fst`, and `d = Prod.snd`, but this is not important,
so the lemma statement hides these details.

This lemma provides a convenient way to unfold the definition of `tangentConeAt`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant8a1f380676195f3930c2cf8817bb40835885c6b8d6471f5f3725db877a6fb123.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant8a1f380676195f3930c2cf8817bb40835885c6b8d6471f5f3725db877a6fb123.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14b08a77f07a1828a90b11776a2c6a305aa1ddf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
