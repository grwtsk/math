# discoverOne_edges_declared

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8bb7dc9-5bc9-46da-8c81-4af8a689c528",
  "kind": "theorem",
  "lexical_name": "discoverOne_edges_declared",
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
  "slug": "discoverone-edges-declared--316a04bb05183ad30d1c38fc",
  "source": {
    "blob": "5ee03bb91de28e3e98bd49d9766d07ce897af612",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 437,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Varianteabcc8b64b8345c887a413993d77b1555cbe9ac04ec734e32656227f22ce9a19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:316a04bb05183ad30d1c38fc6463b6f76b82f534ead4bbb99d81b9b8d211450f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Route/Varianteabcc8b64b8345c887a413993d77b1555cbe9ac04ec734e32656227f22ce9a19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8bb7dc9-5bc9-46da-8c81-4af8a689c528`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem discoverOne_edges_declared
    (contract : RoutingContract Host EdgeId)
    (state : RouteState Host EdgeId)
    (edge : DeclaredEdge Host EdgeId)
    (stateValid : DiscoveryEdgesDeclared contract state)
    (edgeDeclared : edge ∈ contract.edges) :
    DiscoveryEdgesDeclared contract (discoverOne state edge) := by
  unfold DiscoveryEdgesDeclared at stateValid ⊢
  intro edgeId member
  by_cases seen : edge.target ∈ state.visited
  · simp only [discoverOne, seen, if_true] at member
    exact stateValid edgeId member
  · simp only [discoverOne, seen, if_false, List.mem_append,
      List.mem_singleton] at member
    rcases member with old | rfl
    · exact stateValid edgeId old
    · exact ⟨edge, edgeDeclared, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Route/Varianteabcc8b64b8345c887a413993d77b1555cbe9ac04ec734e32656227f22ce9a19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Varianteabcc8b64b8345c887a413993d77b1555cbe9ac04ec734e32656227f22ce9a19.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ee03bb91de28e3e98bd49d9766d07ce897af612` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
