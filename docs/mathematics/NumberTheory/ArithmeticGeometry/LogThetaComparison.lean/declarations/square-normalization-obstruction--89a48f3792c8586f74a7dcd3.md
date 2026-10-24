# square_normalization_obstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f28ce7a-936f-76ba-66a3-2720d56bec01",
  "kind": "theorem",
  "lexical_name": "square_normalization_obstruction",
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
  "slug": "square-normalization-obstruction--89a48f3792c8586f74a7dcd3",
  "source": {
    "blob": "948cfff86c626c21c4766433b988faf7e18ae493",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 64,
    "path": "GRWTSK/NumberTheory/ArithmeticGeometry/LogThetaComparison.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89a48f3792c8586f74a7dcd3d78c4819406738a558ba67d2079c894f4096eb31",
  "verification": {
    "reference": "docs/verification/NumberTheory/ArithmeticGeometry/LogThetaComparison.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f28ce7a-936f-76ba-66a3-2720d56bec01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem square_normalization_obstruction {J : Type*} (D : PilotDiagram J) (j : J)
    (index : ℕ) (hindex : 1 < index)
    (hscale : (D.leftRoute j).scale = (index : ℝ) ^ 2 * D.rightRoute.scale) :
    (D.leftRoute j).linearEquiv ≠ D.rightRoute.linearEquiv :=
  square_scaled_routes_ne (D.leftRoute j) D.rightRoute index hindex hscale

end PilotDiagram

/--
A complete source interpretation must bind each object, directed arrow, and
normalization independently. The interpretation relations must be supplied by
a source-specific formal reconstruction. This repository supplies no inhabitant.
There is no commutativity field: that is an additional mathematical obligation,
and a historical response may deny that this diagram is the relevant one.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ArithmeticGeometry/LogThetaComparison.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticGeometry/LogThetaComparison.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `948cfff86c626c21c4766433b988faf7e18ae493` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
