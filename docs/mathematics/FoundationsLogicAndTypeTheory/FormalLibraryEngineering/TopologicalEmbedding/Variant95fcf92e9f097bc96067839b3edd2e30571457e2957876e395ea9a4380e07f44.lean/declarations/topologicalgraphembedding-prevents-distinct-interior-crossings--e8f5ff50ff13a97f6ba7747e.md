# topologicalGraphEmbedding_prevents_distinct_interior_crossings

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f07ee6cd-4f5c-8d6f-c8ef-b1ae281aaf32",
  "kind": "theorem",
  "lexical_name": "topologicalGraphEmbedding_prevents_distinct_interior_crossings",
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
  "slug": "topologicalgraphembedding-prevents-distinct-interior-crossings--e8f5ff50ff13a97f6ba7747e",
  "source": {
    "blob": "44b02a6a62e077a5de6b54c06aeb359ea8179b66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 129,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologicalEmbedding/Variant95fcf92e9f097bc96067839b3edd2e30571457e2957876e395ea9a4380e07f44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8f5ff50ff13a97f6ba7747ef70497fdddc3f082dfc75bddb380bea24a1f24c0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologicalEmbedding/Variant95fcf92e9f097bc96067839b3edd2e30571457e2957876e395ea9a4380e07f44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f07ee6cd-4f5c-8d6f-c8ef-b1ae281aaf32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem topologicalGraphEmbedding_prevents_distinct_interior_crossings
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge} {I : ClosedInterval.{uInterval}}
    {Y : Type uTarget} {TY : TopologicalSpaceLike Y}
    (E : TopologicalGraphEmbedding G I Y TY)
    {e f : Edge} (hef : e ≠ f)
    {t u : I.Point}
    (ht : I.interior t) (hu : I.interior u) :
    E.embedding.toFun (edgePath G I e t) ≠
      E.embedding.toFun (edgePath G I f u) := by
  intro hcross
  have hpoint : edgePath G I e t = edgePath G I f u :=
    E.embedding.injective hcross
  exact distinct_edgeInteriors_disjoint hef
    ⟨t, ht, rfl⟩ ⟨u, hu, hpoint.symm⟩

end FCRS.ControlledSpherical
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologicalEmbedding/Variant95fcf92e9f097bc96067839b3edd2e30571457e2957876e395ea9a4380e07f44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologicalEmbedding/Variant95fcf92e9f097bc96067839b3edd2e30571457e2957876e395ea9a4380e07f44.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44b02a6a62e077a5de6b54c06aeb359ea8179b66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
