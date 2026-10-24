# congruenceL1_of_squareModulusAdapter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ac64fa1-faac-3f3c-89f9-d5d188e883b1",
  "kind": "theorem",
  "lexical_name": "congruenceL1_of_squareModulusAdapter",
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
  "slug": "congruencel1-of-squaremodulusadapter--02f4bb0971a1010094e39484",
  "source": {
    "blob": "7fa9e7312095a6d894cca0102da8f0c9275200ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 215,
    "path": "GRWTSK/NumberTheory/Moebius/SquareModulusAPConjectureJunction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02f4bb0971a1010094e39484e26190c488dd035752b197477bd94fa3d0aa7f8d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/SquareModulusAPConjectureJunction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ac64fa1-faac-3f3c-89f9-d5d188e883b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem congruenceL1_of_squareModulusAdapter
    {source : Prop}
    (bridge : ToUniformSquareModulusAPAdapter source)
    (hsource : source) :
    SubpolynomialWeightedMertensEndpointCrossCongruenceL1 :=
  subpolynomialWeightedMertensEndpointCrossCongruenceL1_of_uniformDyadicSquareModulusAP
    (uniformSquareModulusAP_of_adapter bridge hsource)

/-- Generic transport further down the exact signed cross-collision route. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/SquareModulusAPConjectureJunction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/SquareModulusAPConjectureJunction.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fa9e7312095a6d894cca0102da8f0c9275200ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
