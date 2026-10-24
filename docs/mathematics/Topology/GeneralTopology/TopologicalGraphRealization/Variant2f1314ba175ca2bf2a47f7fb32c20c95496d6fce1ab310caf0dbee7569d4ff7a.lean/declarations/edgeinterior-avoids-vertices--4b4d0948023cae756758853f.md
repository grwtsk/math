# edgeInterior_avoids_vertices

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1eebb7840fb703e8e1e9a609c479d59fee54161d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 291,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:667534b8-518e-ab34-eb58-7b2267a86ada",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:51ae28e4-b428-08ed-cdb0-e6cbbfcb9364",
  "kind": "theorem",
  "lexical_name": "edgeInterior_avoids_vertices",
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
  "slug": "edgeinterior-avoids-vertices--4b4d0948023cae756758853f",
  "source": {
    "blob": "1eebb7840fb703e8e1e9a609c479d59fee54161d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 291,
    "path": "GRWTSK/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b4d0948023cae756758853fb45a1f6d10b91adecd8939e334bf73ede2ed412c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51ae28e4-b428-08ed-cdb0-e6cbbfcb9364`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem edgeInterior_avoids_vertices
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge} {I : ClosedInterval.{uInterval}}
    {e : Edge} {x : GraphPoint G I}
    (he : EdgeInteriorPoint G I e x)
    {v : Vertex} (hv : vertexPoint G I v = x) : False := by
  rcases he with ⟨t, ht, htx⟩
  have hEq : edgePath G I e t = vertexPoint G I v := htx.trans hv.symm
  have hRel : GraphEndpointEqv G I
      (.edgePoint e t) (.vertex v) := Quotient.exact hEq
  have hTag : InteriorTag (Vertex := Vertex) e t (.vertex v) :=
    (graphEndpointEqv_preserves_interiorTag ht hRel).1 ⟨rfl, rfl⟩
  exact hTag

/-! ## Coproduct and quotient topologies -/

/--
The pre-realization topology.  The vertex summand is discrete (there is no
condition on vertex membership), while a set is open on the edge summand
exactly when its inverse image in every edge's interval copy is open.  This is
the coproduct of the discrete vertex space and the product of the discrete
edge-label space with the interval.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1eebb7840fb703e8e1e9a609c479d59fee54161d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
