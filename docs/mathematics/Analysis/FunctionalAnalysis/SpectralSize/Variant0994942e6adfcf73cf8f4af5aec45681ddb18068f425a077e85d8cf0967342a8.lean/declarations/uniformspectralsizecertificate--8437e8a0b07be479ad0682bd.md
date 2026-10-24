# UniformSpectralSizeCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:90156c686263480596fecdaa866b49249bf903f0d65cd9f31f3e1051839726b0",
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
  "slug": "uniformspectralsizecertificate--8437e8a0b07be479ad0682bd",
  "source": {
    "blob": "374161a9a43446e5a5b191aaafdfa2096767563f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 14,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/SpectralSize/Variant0994942e6adfcf73cf8f4af5aec45681ddb18068f425a077e85d8cf0967342a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8437e8a0b07be479ad0682bdfb8a9c28cfda263e604b8e056c833e48aee83298",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/SpectralSize/Variant0994942e6adfcf73cf8f4af5aec45681ddb18068f425a077e85d8cf0967342a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:90156c686263480596fecdaa866b49249bf903f0d65cd9f31f3e1051839726b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–52.

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

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/SpectralSize/Variant0994942e6adfcf73cf8f4af5aec45681ddb18068f425a077e85d8cf0967342a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/SpectralSize/Variant0994942e6adfcf73cf8f4af5aec45681ddb18068f425a077e85d8cf0967342a8.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `374161a9a43446e5a5b191aaafdfa2096767563f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
