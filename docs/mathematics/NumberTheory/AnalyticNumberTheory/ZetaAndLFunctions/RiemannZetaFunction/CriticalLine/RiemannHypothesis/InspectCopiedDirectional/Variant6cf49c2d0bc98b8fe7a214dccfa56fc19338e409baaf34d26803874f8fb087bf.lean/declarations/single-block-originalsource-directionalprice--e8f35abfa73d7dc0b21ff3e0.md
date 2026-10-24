# single_block_originalSource_directionalPrice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e10ba288-0c86-e089-3bfe-ab69219870ed",
  "kind": "theorem",
  "lexical_name": "single_block_originalSource_directionalPrice",
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
  "slug": "single-block-originalsource-directionalprice--e8f35abfa73d7dc0b21ff3e0",
  "source": {
    "blob": "5fb3d4023bc9bc7192c1efe146055526eafc1588",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 212,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InspectCopiedDirectional/Variant6cf49c2d0bc98b8fe7a214dccfa56fc19338e409baaf34d26803874f8fb087bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8f35abfa73d7dc0b21ff3e0b8af21118faf368b0b9b26f2ccd69c08c21ca7f7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InspectCopiedDirectional/Variant6cf49c2d0bc98b8fe7a214dccfa56fc19338e409baaf34d26803874f8fb087bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e10ba288-0c86-e089-3bfe-ab69219870ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem single_block_originalSource_directionalPrice
    (hV : Monotone V) (hzero : V 0 = ⊥) (A : ℝ) (hA : 1 ≤ A)
    (hq : originalSourceState A ∈ V 1) :
    combinedDirectionalPrice V (mangoldtInteraction A) (originalSourceState A) 0 =
      max 0 (mertensResidual A) := by
  rw [single_block_directionalPrice V hV hzero _ _ hq
    (originalSourceState_norm (by linarith : 0 < A))]
  congr 1
  exact (mertensResidual_eq_quadratic hA).symm

end NativeSource

section AdaptiveNativeConsumer

open SourceReflectionDuality SourceScaleL2Continuity SourceMangoldtInteraction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

/-- Depth and spaces may depend on real scale; the directional budget must be uniform. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InspectCopiedDirectional/Variant6cf49c2d0bc98b8fe7a214dccfa56fc19338e409baaf34d26803874f8fb087bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InspectCopiedDirectional/Variant6cf49c2d0bc98b8fe7a214dccfa56fc19338e409baaf34d26803874f8fb087bf.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fb3d4023bc9bc7192c1efe146055526eafc1588` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
