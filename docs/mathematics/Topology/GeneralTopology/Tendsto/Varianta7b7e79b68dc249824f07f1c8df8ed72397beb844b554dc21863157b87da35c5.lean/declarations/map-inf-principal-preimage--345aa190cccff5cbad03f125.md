# map_inf_principal_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dda3854d6a154b6568024ed5da75cf3763753cb6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 253,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fef43b63-6d8b-7088-bdb1-108caf8a5017",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d73f6d44-cf05-3a48-d3db-fb69c436aeba",
  "kind": "theorem",
  "lexical_name": "map_inf_principal_preimage",
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
  "slug": "map-inf-principal-preimage--345aa190cccff5cbad03f125",
  "source": {
    "blob": "dda3854d6a154b6568024ed5da75cf3763753cb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 253,
    "path": "GRWTSK/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:345aa190cccff5cbad03f125bea2a004034b80e2f26f3b7df966e92fb93c5c43",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d73f6d44-cf05-3a48-d3db-fb69c436aeba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_inf_principal_preimage {f : α → β} {s : Set β} {l : Filter α} :
    map f (l ⊓ 𝓟 (f ⁻¹' s)) = map f l ⊓ 𝓟 s :=
  Filter.ext fun t => by simp only [mem_map', mem_inf_principal, mem_setOf_eq, mem_preimage]

/-- If two filters are disjoint, then a function cannot tend to both of them along a non-trivial
filter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dda3854d6a154b6568024ed5da75cf3763753cb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
