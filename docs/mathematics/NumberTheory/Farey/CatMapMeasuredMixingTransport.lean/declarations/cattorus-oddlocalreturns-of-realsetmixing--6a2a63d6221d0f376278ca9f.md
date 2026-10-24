# catTorus_oddLocalReturns_of_realSetMixing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c3c66d0-f22e-12eb-6bdd-6793868efd0a",
  "kind": "theorem",
  "lexical_name": "catTorus_oddLocalReturns_of_realSetMixing",
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
  "slug": "cattorus-oddlocalreturns-of-realsetmixing--6a2a63d6221d0f376278ca9f",
  "source": {
    "blob": "466495b9fb8ffb9c3c55e84c9b73389c69b3531b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 115,
    "path": "GRWTSK/NumberTheory/Farey/CatMapMeasuredMixingTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a2a63d6221d0f376278ca9f25b540318bbe03a3086bf20ce41ea8ab3c2a7504",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/CatMapMeasuredMixingTransport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c3c66d0-f22e-12eb-6bdd-6793868efd0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem catTorus_oddLocalReturns_of_realSetMixing
    (μ : Measure Torus2)
    (hMix : HasRealSetMixing catTorus μ)
    (hSupport : HasPositiveOpenRealMass μ) :
    HasOddLocalReturns catTorus
      (torsionEmbedding finiteWitness) :=
  oddLocalReturns_of_realSetMixing catTorus μ
    hMix hSupport (torsionEmbedding finiteWitness)

/-- CONDITIONAL finite-torsion-to-global no-extension bridge.
If the chosen actual torus measure is strongly mixing IN THE
EXACT REAL SET-CORRELATION SENSE and has positive real mass
on all nonempty opens, the finite -1 readout cannot extend
to any continuous global cat-map -1 eigenfunction.

The source neither establishes those two hypotheses for volume
nor imports the external Morgenstern mixing theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/CatMapMeasuredMixingTransport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/CatMapMeasuredMixingTransport.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `466495b9fb8ffb9c3c55e84c9b73389c69b3531b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
