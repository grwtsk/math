# graphEndpointEqv_preserves_interiorTag

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
      "line": 228,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c2740ccc-e0b0-c7c9-5a9e-b550b7282542",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:06585ed8-5308-6934-115e-0f7f797e0d63",
  "kind": "theorem",
  "lexical_name": "graphEndpointEqv_preserves_interiorTag",
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
  "slug": "graphendpointeqv-preserves-interiortag--81d83bb586d1b1fb524c1378",
  "source": {
    "blob": "1eebb7840fb703e8e1e9a609c479d59fee54161d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 228,
    "path": "GRWTSK/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81d83bb586d1b1fb524c137897ad52bc21e1311f7eecd76548910fa3dce5f103",
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

Occurrence: `result:06585ed8-5308-6934-115e-0f7f797e0d63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem graphEndpointEqv_preserves_interiorTag
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge} {I : ClosedInterval.{uInterval}}
    {e : Edge} {t : I.Point}
    (ht : I.interior t)
    {x y : GraphPrePoint Vertex Edge I.Point}
    (hxy : GraphEndpointEqv G I x y) :
    InteriorTag e t x ↔ InteriorTag e t y := by
  induction hxy with
  | refl _ => exact Iff.rfl
  | zero f =>
      constructor
      · intro h
        exact False.elim (interiorTag_zero_false ht f h)
      · intro h
        exact False.elim h
  | one f =>
      constructor
      · intro h
        exact False.elim (interiorTag_one_false ht f h)
      · intro h
        exact False.elim h
  | symm _ ih => exact ih.symm
  | trans _ _ ihxy ihyz => exact Iff.trans ihxy ihyz

/-- A quotient point lies in the declared interior of the displayed graph edge. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1eebb7840fb703e8e1e9a609c479d59fee54161d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
