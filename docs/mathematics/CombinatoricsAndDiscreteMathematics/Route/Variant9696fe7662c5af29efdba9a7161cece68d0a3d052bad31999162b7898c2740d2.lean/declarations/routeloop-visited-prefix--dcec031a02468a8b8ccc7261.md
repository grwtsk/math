# routeLoop_visited_prefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecffb4f7-257b-af09-ea31-972a5b943386",
  "kind": "theorem",
  "lexical_name": "routeLoop_visited_prefix",
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
  "slug": "routeloop-visited-prefix--dcec031a02468a8b8ccc7261",
  "source": {
    "blob": "5a7feb30fc375bb95bb93eea2aca11d8024092c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 586,
    "line": 568,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variant9696fe7662c5af29efdba9a7161cece68d0a3d052bad31999162b7898c2740d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcec031a02468a8b8ccc726101e69ca6bcca499ae2c24351cac7b822d841ac25",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Route/Variant9696fe7662c5af29efdba9a7161cece68d0a3d052bad31999162b7898c2740d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecffb4f7-257b-af09-ea31-972a5b943386`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 568–586.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem routeLoop_visited_prefix
    (contract : RoutingContract Host EdgeId)
    (fuel : Nat) (state : RouteState Host EdgeId) :
    state.visited <+: (routeLoop contract fuel state).visited := by
  induction fuel generalizing state with
  | zero => exact List.prefix_refl _
  | succ fuel ih =>
      simp only [routeLoop]
      split
      · exact List.prefix_refl _
      · rename_i host remaining queueEquation
        let dequeued : RouteState Host EdgeId :=
          { state with
            processed := state.processed ++ [host]
            queue := remaining }
        exact (discoverOutgoing_visited_prefix dequeued
          (contract.orderedOutgoingEdges host)).trans
            (ih (discoverOutgoing dequeued (contract.orderedOutgoingEdges host)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Route/Variant9696fe7662c5af29efdba9a7161cece68d0a3d052bad31999162b7898c2740d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variant9696fe7662c5af29efdba9a7161cece68d0a3d052bad31999162b7898c2740d2.lean#L568).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a7feb30fc375bb95bb93eea2aca11d8024092c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
