# coneToFilled_respects_outerConnected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92ae5d23-852d-af97-f2e8-92216c6c02cb",
  "kind": "theorem",
  "lexical_name": "coneToFilled_respects_outerConnected",
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
  "slug": "conetofilled-respects-outerconnected--d8c2da3f1778b06f3f674c39",
  "source": {
    "blob": "0c99a603d897ad3a9470fad0fafc0ad459f1464a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 83,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonConeOuterPairs.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8c2da3f1778b06f3f674c39afac0171f4186b00bda26a6213c761d68a072d9d",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonConeOuterPairs.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92ae5d23-852d-af97-f2e8-92216c6c02cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coneToFilled_respects_outerConnected (k : ℕ)
    {x y : PerimeterCone k} (h : ConeOuterConnected k x y) :
    coneToFilled k x = coneToFilled k y := by
  induction h with
  | rel x y hxy => exact coneToFilled_respects_outerStep k hxy
  | refl x => rfl
  | symm x y _ ih => exact ih.symm
  | trans x y z _ _ ih₁ ih₂ => exact ih₁.trans ih₂

/-- The cone-to-filled map descends through the exact outer-pairing
quotient. This is not yet an equivalence or homeomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonConeOuterPairs.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonConeOuterPairs.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c99a603d897ad3a9470fad0fafc0ad459f1464a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
