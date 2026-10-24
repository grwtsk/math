# induced_to_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91a7136cc7b39e609f8becbf9e0785069bb2610d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1200,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/47de73fc60746ec4c31fa6e3fcb6d7fe8fbbcf5dbc88c0471fc017040a26467f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:83c0d123-8b68-bcf5-487b-3ff97fbf35e8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:826c7ca2-15e8-fa98-45ca-1374039caa88",
  "kind": "theorem",
  "lexical_name": "induced_to_pi",
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
  "slug": "induced-to-pi--f31e4dd8ea69420e8319f9f9",
  "source": {
    "blob": "91a7136cc7b39e609f8becbf9e0785069bb2610d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1208,
    "line": 1200,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant47de73fc60746ec4c31fa6e3fcb6d7fe8fbbcf5dbc88c0471fc017040a26467f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f31e4dd8ea69420e8319f9f9e184eefad204f0ee739d549f683e9c9170387d8f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variant47de73fc60746ec4c31fa6e3fcb6d7fe8fbbcf5dbc88c0471fc017040a26467f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:826c7ca2-15e8-fa98-45ca-1374039caa88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1200–1208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induced_to_pi {X : Type*} (f : X → ∀ i, A i) :
    induced f Pi.topologicalSpace = ⨅ i, induced (f · i) inferInstance := by
  simp_rw [Pi.topologicalSpace, induced_iInf, induced_compose, Function.comp_def]

/-- Suppose `A i` is a family of topological spaces indexed by `i : ι`, and `X` is a type
endowed with a family of maps `f i : X → A i` for every `i : ι`, hence inducing a
map `g : X → Π i, A i`. This lemma shows that infimum of the topologies on `X` induced by
the `f i` as `i : ι` varies is simply the topology on `X` induced by `g : X → Π i, A i`
where `Π i, A i` is endowed with the usual product topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variant47de73fc60746ec4c31fa6e3fcb6d7fe8fbbcf5dbc88c0471fc017040a26467f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variant47de73fc60746ec4c31fa6e3fcb6d7fe8fbbcf5dbc88c0471fc017040a26467f.lean#L1200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91a7136cc7b39e609f8becbf9e0785069bb2610d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
