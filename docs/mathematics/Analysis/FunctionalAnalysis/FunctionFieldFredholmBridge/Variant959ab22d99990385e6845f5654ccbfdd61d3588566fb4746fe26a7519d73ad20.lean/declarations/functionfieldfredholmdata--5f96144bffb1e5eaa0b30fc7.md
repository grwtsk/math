# FunctionFieldFredholmData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:40b8e290970b30812ff6f4dc1006e22aea3fd0cd534299de44391f890cc8c00c",
  "kind": "structure",
  "lexical_name": "FunctionFieldFredholmData",
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
  "slug": "functionfieldfredholmdata--5f96144bffb1e5eaa0b30fc7",
  "source": {
    "blob": "9e2b37560ef141ee7f66b45cffe2afe68e042927",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 296,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/FunctionFieldFredholmBridge/Variant959ab22d99990385e6845f5654ccbfdd61d3588566fb4746fe26a7519d73ad20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f96144bffb1e5eaa0b30fc75f9263d48d6dfb83d283afbfb210ceb4936c0fba",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/FunctionFieldFredholmBridge/Variant959ab22d99990385e6845f5654ccbfdd61d3588566fb4746fe26a7519d73ad20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:40b8e290970b30812ff6f4dc1006e22aea3fd0cd534299de44391f890cc8c00c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FunctionFieldFredholmData where
  curveHash : Nat
  pNorm : Nat
  qNorm : Nat
  traceP : Int
  traceQ : Int
  pointCountP : Nat
  pointCountQ : Nat
  localEulerCoeffsP : List Int
  localEulerCoeffsQ : List Int
  fredholmCoeffsP : List Int
  fredholmCoeffsQ : List Int
  relativeFredholmCoeffs : List Int
  squareFreeMobiusWeight : Int
  valuationSupport : List Nat
  hasPrimePowerDependence : Bool
  determinantBoundaryFlag : Bool
  prismaticBoundaryFlag : Bool
  spectralBoundaryFlag : Bool
  fredholmBoundaryFlag : Bool
  errorNumerator : Nat
  errorExponent : Nat
  acceptedTorsionAuthority : Bool
  acceptedProjectionCertificate : Bool
  acceptedSymmetryCertificate : Bool
deriving Repr, DecidableEq

/-! ## Certified input and emission -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/FunctionFieldFredholmBridge/Variant959ab22d99990385e6845f5654ccbfdd61d3588566fb4746fe26a7519d73ad20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/FunctionFieldFredholmBridge/Variant959ab22d99990385e6845f5654ccbfdd61d3588566fb4746fe26a7519d73ad20.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e2b37560ef141ee7f66b45cffe2afe68e042927` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
