# UniformSpectralSizeCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:21e604b51a0914c7591d66652f7082931bdf46b97c331cd39f5fdb3f8b18db14",
  "kind": "structure",
  "lexical_name": "UniformSpectralSizeCertificate",
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
  "slug": "uniformspectralsizecertificate--379e1bf5097714cc9b4bcc10",
  "source": {
    "blob": "7c78024291da1e958b493c32a7467f6ea5f3e8a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 22,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/SpectralSize/Varianteaa5143527a1b503c1da9e7dddbef7f52c5ffa8f40094a05fa25eae706545f19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:379e1bf5097714cc9b4bcc1084bb8ec92eda132e7c0c08f0c2b162533f00a0ea",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/SpectralSize/Varianteaa5143527a1b503c1da9e7dddbef7f52c5ffa8f40094a05fa25eae706545f19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:21e604b51a0914c7591d66652f7082931bdf46b97c331cd39f5fdb3f8b18db14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure UniformSpectralSizeCertificate
    {system : RandomBitfieldSystem}
    (spectral : BitfieldSpectralOperator system)
    (_purity : OperatorPurityCertificate spectral)
    (Scale : Type uScale) where
  mass : Scale → ℝ
  massAtLeastOne :
    ∀ scale, 1 ≤ mass scale
  effectiveRank :
    Scale → Bitfield system.bits → Nat
  effectiveRankLeDimension :
    ∀ scale state,
      effectiveRank scale state ≤ spectral.dim
  dimensionConstant : ℝ
  dimensionConstantNonnegative :
    0 ≤ dimensionConstant
  dimensionToMass :
    ∀ scale,
      (spectral.dim : ℝ) ≤
        dimensionConstant * mass scale
  effectiveRankConstant : ℝ
  effectiveRankConstantNonnegative :
    0 ≤ effectiveRankConstant
  effectiveRankToMass :
    ∀ scale state,
      (effectiveRank scale state : ℝ) ≤
        effectiveRankConstant * mass scale
  ensembleTotalVariation :
    Scale → ℝ
  totalVariationConstant : ℝ
  totalVariationConstantNonnegative :
    0 ≤ totalVariationConstant
  totalVariationUniform :
    ∀ scale,
      ensembleTotalVariation scale ≤
        totalVariationConstant
  traceTransformUniformlyBounded : Prop

end Mathematics.ConnesBitfield
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/SpectralSize/Varianteaa5143527a1b503c1da9e7dddbef7f52c5ffa8f40094a05fa25eae706545f19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/SpectralSize/Varianteaa5143527a1b503c1da9e7dddbef7f52c5ffa8f40094a05fa25eae706545f19.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c78024291da1e958b493c32a7467f6ea5f3e8a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
