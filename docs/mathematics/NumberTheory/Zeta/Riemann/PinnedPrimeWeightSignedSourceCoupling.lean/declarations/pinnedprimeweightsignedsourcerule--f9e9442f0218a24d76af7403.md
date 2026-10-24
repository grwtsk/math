# PinnedPrimeWeightSignedSourceRule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d51e0d3b00318cf10e292037e766fa1a78a4cf6682fef131b0c5d8ced0c7a13",
  "kind": "structure",
  "lexical_name": "PinnedPrimeWeightSignedSourceRule",
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
  "slug": "pinnedprimeweightsignedsourcerule--f9e9442f0218a24d76af7403",
  "source": {
    "blob": "9102da31aa4c46d069e457878bac7e738ad6f353",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 44,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightSignedSourceCoupling.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9e9442f0218a24d76af74033cac88830dc7a9b37a12d986362b17e0c4554ebc",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightSignedSourceCoupling.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2d51e0d3b00318cf10e292037e766fa1a78a4cf6682fef131b0c5d8ced0c7a13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PinnedPrimeWeightSignedSourceRule where
  sourceIdentity : String
  normalization : String
  invalidationKey : String
  response : ℕ → ℝ → ℝ
  signedResidual : ℕ → ℝ → ℝ
  exactIdentity :
    ∀ j : ℕ, ∀ v ∈ pinnedPrimeWeightNextOctave j,
      thetaError v =
        response j v / (dyadicScale j : ℝ) +
          signedResidual j v

namespace PinnedPrimeWeightSignedSourceRule

/-- The exact signed identity gives the elementary triangle-inequality target
bound before any response-capacity or residual-decay estimate is inserted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightSignedSourceCoupling.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightSignedSourceCoupling.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9102da31aa4c46d069e457878bac7e738ad6f353` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
