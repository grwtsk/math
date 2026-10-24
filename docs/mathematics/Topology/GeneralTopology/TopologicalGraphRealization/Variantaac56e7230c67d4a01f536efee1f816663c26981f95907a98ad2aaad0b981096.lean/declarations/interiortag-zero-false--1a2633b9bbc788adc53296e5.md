# interiorTag_zero_false

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35bbad9e-fe40-707a-faa2-df5bff85b7c9",
  "kind": "theorem",
  "lexical_name": "interiorTag_zero_false",
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
  "slug": "interiortag-zero-false--1a2633b9bbc788adc53296e5",
  "source": {
    "blob": "9e81e974526d9205dffc8b5af88137173536579b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 212,
    "path": "GRWTSK/Topology/GeneralTopology/TopologicalGraphRealization/Variantaac56e7230c67d4a01f536efee1f816663c26981f95907a98ad2aaad0b981096.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a2633b9bbc788adc53296e5eb507fe42366de2d78f7d26019241fd9c2fb59bf",
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

Occurrence: `result:35bbad9e-fe40-707a-faa2-df5bff85b7c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem interiorTag_zero_false
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {I : ClosedInterval.{uInterval}}
    {e : Edge} {t : I.Point}
    (ht : I.interior t) (f : Edge) :
    ¬ InteriorTag (Vertex := Vertex) e t (.edgePoint f I.zero) := by
  intro h
  have hzero : I.zero = t := h.2
  apply I.zero_not_mem_interior
  rw [hzero]
  exact ht

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TopologicalGraphRealization/Variantaac56e7230c67d4a01f536efee1f816663c26981f95907a98ad2aaad0b981096.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TopologicalGraphRealization/Variantaac56e7230c67d4a01f536efee1f816663c26981f95907a98ad2aaad0b981096.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e81e974526d9205dffc8b5af88137173536579b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
