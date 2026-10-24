# graphEndpointEqv_minimal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d8efc2c-8e18-66b2-dd31-171c3d4d884b",
  "kind": "theorem",
  "lexical_name": "graphEndpointEqv_minimal",
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
  "slug": "graphendpointeqv-minimal--5bf5b25fe02fffbf0ef84ace",
  "source": {
    "blob": "9e81e974526d9205dffc8b5af88137173536579b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 66,
    "path": "GRWTSK/Topology/GeneralTopology/TopologicalGraphRealization/Variantaac56e7230c67d4a01f536efee1f816663c26981f95907a98ad2aaad0b981096.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bf5b25fe02fffbf0ef84ace209fe808c1fabfd3f8ccbf1f8e34c6d78d4d7caf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TopologicalGraphRealization/Variantaac56e7230c67d4a01f536efee1f816663c26981f95907a98ad2aaad0b981096.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d8efc2c-8e18-66b2-dd31-171c3d4d884b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem graphEndpointEqv_minimal
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge} {I : ClosedInterval.{uInterval}}
    {R : GraphPrePoint Vertex Edge I.Point →
      GraphPrePoint Vertex Edge I.Point → Prop}
    (hRefl : ∀ x, R x x)
    (hZero : ∀ e, R (.edgePoint e I.zero) (.vertex (G.source e)))
    (hOne : ∀ e, R (.edgePoint e I.one) (.vertex (G.target e)))
    (hSymm : ∀ {x y}, R x y → R y x)
    (hTrans : ∀ {x y z}, R x y → R y z → R x z)
    {x y : GraphPrePoint Vertex Edge I.Point}
    (hxy : GraphEndpointEqv G I x y) : R x y := by
  induction hxy with
  | refl x => exact hRefl x
  | zero e => exact hZero e
  | one e => exact hOne e
  | symm _ ih => exact hSymm ih
  | trans _ _ ihxy ihyz => exact hTrans ihxy ihyz

/-- The endpoint-generated setoid used by the graph quotient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TopologicalGraphRealization/Variantaac56e7230c67d4a01f536efee1f816663c26981f95907a98ad2aaad0b981096.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TopologicalGraphRealization/Variantaac56e7230c67d4a01f536efee1f816663c26981f95907a98ad2aaad0b981096.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e81e974526d9205dffc8b5af88137173536579b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
