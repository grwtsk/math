# discoverOutgoing_edges_declared

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7d16cfe-ee5f-f3dd-6232-63da9c917c0e",
  "kind": "theorem",
  "lexical_name": "discoverOutgoing_edges_declared",
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
  "slug": "discoveroutgoing-edges-declared--a25947803d3fa067b04f415a",
  "source": {
    "blob": "361aa0e4549e8cfeaf3671dbdda499cfa5aa6991",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 488,
    "line": 472,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variant43b590e7eec60604701ee0d08fc3b8b4b439ba675cff221e776ebf8285600cc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a25947803d3fa067b04f415a6d733543b69a18652f19b6df2fe262304d2d922e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Route/Variant43b590e7eec60604701ee0d08fc3b8b4b439ba675cff221e776ebf8285600cc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7d16cfe-ee5f-f3dd-6232-63da9c917c0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 472–488.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem discoverOutgoing_edges_declared
    (contract : RoutingContract Host EdgeId)
    (state : RouteState Host EdgeId)
    (edges : List (DeclaredEdge Host EdgeId))
    (stateValid : DiscoveryEdgesDeclared contract state)
    (edgesDeclared : ∀ edge ∈ edges, edge ∈ contract.edges) :
    DiscoveryEdgesDeclared contract (discoverOutgoing state edges) := by
  induction edges generalizing state with
  | nil => exact stateValid
  | cons edge tail ih =>
      simp only [discoverOutgoing, List.foldl_cons]
      apply ih (state := discoverOne state edge)
      · exact discoverOne_edges_declared contract state edge stateValid
          (edgesDeclared edge (by simp))
      · intro later member
        exact edgesDeclared later (by simp [member])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Route/Variant43b590e7eec60604701ee0d08fc3b8b4b439ba675cff221e776ebf8285600cc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variant43b590e7eec60604701ee0d08fc3b8b4b439ba675cff221e776ebf8285600cc3.lean#L472).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `361aa0e4549e8cfeaf3671dbdda499cfa5aa6991` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
