# AnalyticPrimeBridgeData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cab107102b6731987d4ab47b5c44c2cd66330120b5e832792f56999fe582a99a",
  "kind": "structure",
  "lexical_name": "AnalyticPrimeBridgeData",
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
  "slug": "analyticprimebridgedata--a9c93ca3a2b65e6a8485ee30",
  "source": {
    "blob": "52fb2f6527bd291a02b67c533cd280b3748a7e25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 45,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ZetaAuthorityReducer/Variantd82c1673f4f8dd74040a30f35bb158c3a676f44612b7c2f729d78b2728402e7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9c93ca3a2b65e6a8485ee3041b8b36c06d1f2c0531b497203679a5e7856dcba",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ZetaAuthorityReducer/Variantd82c1673f4f8dd74040a30f35bb158c3a676f44612b7c2f729d78b2728402e7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cab107102b6731987d4ab47b5c44c2cd66330120b5e832792f56999fe582a99a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AnalyticPrimeBridgeData where
  relativeDeterminantCoeffs : List Int
  squareFreeMobiusWeight : Int
  valuationSupport : List Nat
  hasPrimePowerDependence : Bool
  hasPrismaticCertificate : Bool
  hasSpectralCertificate : Bool
  needsTorsionWitness : Bool
  acceptedZKPWitness : Bool
deriving Repr, DecidableEq

/--
Certified trace-comparison output consumed by the finite reducer.

The proof fields are gates.  The reducer may emit `data`, but it does not
derive the prismatic, spectral, or torsion claims from that finite data.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ZetaAuthorityReducer/Variantd82c1673f4f8dd74040a30f35bb158c3a676f44612b7c2f729d78b2728402e7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ZetaAuthorityReducer/Variantd82c1673f4f8dd74040a30f35bb158c3a676f44612b7c2f729d78b2728402e7e.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52fb2f6527bd291a02b67c533cd280b3748a7e25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
