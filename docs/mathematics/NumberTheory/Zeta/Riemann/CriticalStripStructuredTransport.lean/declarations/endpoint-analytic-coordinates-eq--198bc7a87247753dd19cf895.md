# endpoint_analytic_coordinates_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6a0e067-4b20-4fed-742d-6f7e18b7d804",
  "kind": "theorem",
  "lexical_name": "endpoint_analytic_coordinates_eq",
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
  "slug": "endpoint-analytic-coordinates-eq--198bc7a87247753dd19cf895",
  "source": {
    "blob": "5deb4a14a9befd43f4707f478f685f8365a92f68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 157,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripStructuredTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:198bc7a87247753dd19cf8955717465a33edafa9330dbcf8d16a798824cfbab5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripStructuredTransport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6a0e067-4b20-4fed-742d-6f7e18b7d804`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpoint_analytic_coordinates_eq
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {atlas : CriticalStripAtlas ι A X H} {lower upper : ι}
    {TopX TopY RingA RingB : Type*}
    [TopologicalSpace TopX] [TopologicalSpace TopY]
    [Ring RingA] [Ring RingB]
    (bridge : NoncoerciveAtlasTransport atlas lower upper TopX TopY RingA RingB)
    (x : TopX) :
    bridge.targetTopologicalCoordinate (bridge.topological.toFun x) =
      bridge.targetTopologicalCoordinate (bridge.comparisonMap x) := by
  rw [← bridge.topological_analytic_compatibility x]
  exact bridge.comparison_analytic_compatibility x

/-- The two homotopy endpoints also have equal common-root height, by separately proved
height compatibility equations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripStructuredTransport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripStructuredTransport.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5deb4a14a9befd43f4707f478f685f8365a92f68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
