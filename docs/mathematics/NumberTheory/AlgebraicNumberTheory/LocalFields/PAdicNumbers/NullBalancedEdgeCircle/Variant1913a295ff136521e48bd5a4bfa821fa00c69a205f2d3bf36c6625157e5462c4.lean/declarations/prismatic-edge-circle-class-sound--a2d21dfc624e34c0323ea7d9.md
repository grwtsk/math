# prismatic_edge_circle_class_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:370f8818-4b7d-8cd0-5a20-81a3a25d24f3",
  "kind": "theorem",
  "lexical_name": "prismatic_edge_circle_class_sound",
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
  "slug": "prismatic-edge-circle-class-sound--a2d21dfc624e34c0323ea7d9",
  "source": {
    "blob": "65b4e41c36b3a7f1a57c2c55cf81d480de9563ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 293,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/NullBalancedEdgeCircle/Variant1913a295ff136521e48bd5a4bfa821fa00c69a205f2d3bf36c6625157e5462c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2d21dfc624e34c0323ea7d9969d720f1d571ce38efad910efc75e4b04db51e9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/NullBalancedEdgeCircle/Variant1913a295ff136521e48bd5a4bfa821fa00c69a205f2d3bf36c6625157e5462c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:370f8818-4b7d-8cd0-5a20-81a3a25d24f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prismatic_edge_circle_class_sound
    {D : DirectionSystem.{u, v}} {R : Type w}
    [DecidableEq D.Vertex]
    (C : PrismaticEdgeCircleClass D R) :
    C.cycle.Closed ∧ C.realized ∧ C.nonBoundary ∧ C.nontrivialClass :=
  ⟨C.closed, C.realizedProof, C.nonBoundaryProof, C.nontrivialClassProof⟩

/-! ## B7. The main theorem object -/

/--
The Null-Balanced Prismatic Edge-Circle Limit object: a directional null
balance, an opposite pair with a closed two-edge circle, directed edge
relaxation, a local analytic limit certificate, a δ-ring realization, a
non-boundary certificate, and the resulting class object.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/NullBalancedEdgeCircle/Variant1913a295ff136521e48bd5a4bfa821fa00c69a205f2d3bf36c6625157e5462c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/NullBalancedEdgeCircle/Variant1913a295ff136521e48bd5a4bfa821fa00c69a205f2d3bf36c6625157e5462c4.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65b4e41c36b3a7f1a57c2c55cf81d480de9563ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
