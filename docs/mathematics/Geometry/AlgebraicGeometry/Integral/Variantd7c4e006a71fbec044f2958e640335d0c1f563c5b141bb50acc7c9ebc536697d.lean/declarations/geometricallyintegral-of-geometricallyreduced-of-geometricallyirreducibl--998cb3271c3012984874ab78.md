# GeometricallyIntegral.of_geometricallyReduced_of_geometricallyIrreducible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97957b4a-3eb9-1b02-bf45-921132369bf1",
  "kind": "lemma",
  "lexical_name": "GeometricallyIntegral.of_geometricallyReduced_of_geometricallyIrreducible",
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
  "slug": "geometricallyintegral-of-geometricallyreduced-of-geometricallyirreducibl--998cb3271c3012984874ab78",
  "source": {
    "blob": "12be92f1764926d5417079abbd86805ee833fbea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 69,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Integral/Variantd7c4e006a71fbec044f2958e640335d0c1f563c5b141bb50acc7c9ebc536697d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:998cb3271c3012984874ab78fee68b82a8ae20bfe474e8e6a2bdff2adcc2a7a1",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Integral/Variantd7c4e006a71fbec044f2958e640335d0c1f563c5b141bb50acc7c9ebc536697d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97957b4a-3eb9-1b02-bf45-921132369bf1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma GeometricallyIntegral.of_geometricallyReduced_of_geometricallyIrreducible
    [GeometricallyReduced f] [GeometricallyIrreducible f] :
    GeometricallyIntegral f :=
  GeometricallyIntegral.eq_geometricallyReduced_inf_geometricallyIrreducible.ge _ _ _ ⟨‹_›, ‹_›⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Integral/Variantd7c4e006a71fbec044f2958e640335d0c1f563c5b141bb50acc7c9ebc536697d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Integral/Variantd7c4e006a71fbec044f2958e640335d0c1f563c5b141bb50acc7c9ebc536697d.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12be92f1764926d5417079abbd86805ee833fbea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
