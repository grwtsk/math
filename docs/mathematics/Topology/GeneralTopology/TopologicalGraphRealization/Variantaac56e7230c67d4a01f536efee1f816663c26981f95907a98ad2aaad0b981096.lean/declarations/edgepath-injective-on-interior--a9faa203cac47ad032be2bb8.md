# edgePath_injective_on_interior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:100250fb-138b-a5b4-f78e-eef1432a7ca4",
  "kind": "theorem",
  "lexical_name": "edgePath_injective_on_interior",
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
  "slug": "edgepath-injective-on-interior--a9faa203cac47ad032be2bb8",
  "source": {
    "blob": "9e81e974526d9205dffc8b5af88137173536579b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 269,
    "path": "GRWTSK/Topology/GeneralTopology/TopologicalGraphRealization/Variantaac56e7230c67d4a01f536efee1f816663c26981f95907a98ad2aaad0b981096.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9faa203cac47ad032be2bb875da5c0d8215ec528868bbb7d84374d2805edcc6",
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

Occurrence: `result:100250fb-138b-a5b4-f78e-eef1432a7ca4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem edgePath_injective_on_interior
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge} {I : ClosedInterval.{uInterval}}
    {e : Edge} {t u : I.Point}
    (ht : I.interior t) (_hu : I.interior u)
    (hEq : edgePath G I e t = edgePath G I e u) :
    t = u := by
  have hRel : GraphEndpointEqv G I
      (.edgePoint e t) (.edgePoint e u) := Quotient.exact hEq
  have hTag : InteriorTag (Vertex := Vertex) e t (.edgePoint e u) :=
    (graphEndpointEqv_preserves_interiorTag ht hRel).1 ⟨rfl, rfl⟩
  exact hTag.2.symm

/-- Distinct graph edges have disjoint interiors in the quotient realization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TopologicalGraphRealization/Variantaac56e7230c67d4a01f536efee1f816663c26981f95907a98ad2aaad0b981096.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TopologicalGraphRealization/Variantaac56e7230c67d4a01f536efee1f816663c26981f95907a98ad2aaad0b981096.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e81e974526d9205dffc8b5af88137173536579b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
