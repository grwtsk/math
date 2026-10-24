# analyticPrimeBridgeToHarmonicShadow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:850654c5a457a401e9df9ac1243d895f0c5f2e4694d8cf063b06077a349e50d1",
  "kind": "def",
  "lexical_name": "analyticPrimeBridgeToHarmonicShadow",
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
  "slug": "analyticprimebridgetoharmonicshadow--6f6c4e77bb6ee8133c204190",
  "source": {
    "blob": "857d5ce40c0f246f077e76e1b7e4dcb51784c0e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 267,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/SpectralHarmonicSNARKInterface/Variantddede7794840b70d51cc10136fe7e48a603bb3b69e72d31bef39f6df87323923.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f6c4e77bb6ee8133c20419009a1d97b3da6e66a2ad2f8479f2d71bb48dfab39",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/SpectralHarmonicSNARKInterface/Variantddede7794840b70d51cc10136fe7e48a603bb3b69e72d31bef39f6df87323923.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:850654c5a457a401e9df9ac1243d895f0c5f2e4694d8cf063b06077a349e50d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def analyticPrimeBridgeToHarmonicShadow
    (D : ZetaAuthorityReducer.AnalyticPrimeBridgeData)
    (basisHash operatorHash : Nat) :
    FiniteHarmonicShadow where
  basisHash := basisHash
  operatorHash := operatorHash
  modeCount := D.relativeDeterminantCoeffs.length
  mode := fun i =>
    { source := .fredholm
      degree := i.val
      order := 0
      multiplicityIndex := 0 }
  coeff := fun i =>
    D.relativeDeterminantCoeffs.get ⟨i.val, i.isLt⟩
  coefficientEncodingHash :=
    D.valuationSupport.length + D.relativeDeterminantCoeffs.length
  truncationDepth := D.relativeDeterminantCoeffs.length
  energyNumerator := D.valuationSupport.length
  energyExponent := D.relativeDeterminantCoeffs.length
  finiteSupportSound := True
  coefficientEncodingSound := True

/-- Certificate wrapper from analytic-prime bridge data to a harmonic shadow. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/SpectralHarmonicSNARKInterface/Variantddede7794840b70d51cc10136fe7e48a603bb3b69e72d31bef39f6df87323923.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/SpectralHarmonicSNARKInterface/Variantddede7794840b70d51cc10136fe7e48a603bb3b69e72d31bef39f6df87323923.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `857d5ce40c0f246f077e76e1b7e4dcb51784c0e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
