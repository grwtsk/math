# UnrestrictedPacketResidualFactorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ceb3601091dc830f576ebf7a8bdce18b406d7b322ef5316dc865ca211bd70f52",
  "kind": "structure",
  "lexical_name": "UnrestrictedPacketResidualFactorization",
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
  "slug": "unrestrictedpacketresidualfactorization--dcd7685e879211ceb1b7db07",
  "source": {
    "blob": "6ddc3bd9afe775ecd959f1c407a7e31c8aa679a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 42,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/FactorizationNonvacuity/Variantcc0eb9019e317e59dde965ec609fec6c4ad921b98a902695f51bdf6be3ecc9fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dcd7685e879211ceb1b7db07ae1fba26e7dd56b95e67e6ab7ded9fcda27e6fc9",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/FactorizationNonvacuity/Variantcc0eb9019e317e59dde965ec609fec6c4ad921b98a902695f51bdf6be3ecc9fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ceb3601091dc830f576ebf7a8bdce18b406d7b322ef5316dc865ca211bd70f52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure UnrestrictedPacketResidualFactorization
    (Left Right LeftPacketSpace RightPacketSpace : Type*)
    [Fintype Left] [Fintype Right] [DecidableEq Left] [DecidableEq Right]
    [NormedAddCommGroup LeftPacketSpace]
    [InnerProductSpace ℂ LeftPacketSpace]
    [CompleteSpace LeftPacketSpace]
    [NormedAddCommGroup RightPacketSpace]
    [InnerProductSpace ℂ RightPacketSpace]
    [CompleteSpace RightPacketSpace]
    (target : ℕ → Matrix Left Right ℂ) where
  leftSynthesis :
    EuclideanSpace ℂ Left →L[ℂ] LeftPacketSpace
  rightSynthesis :
    EuclideanSpace ℂ Right →L[ℂ] RightPacketSpace
  incidence :
    ℕ → RightPacketSpace →L[ℂ] LeftPacketSpace
  residual : ℕ → Matrix Left Right ℂ
  exactFactorization : ∀ x left right,
    target x left right =
      ⟪leftSynthesis (EuclideanSpace.single left 1),
        incidence x
          (rightSynthesis (EuclideanSpace.single right 1))⟫_ℂ +
      residual x left right

/-- Matrix contribution of the packet part. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/FactorizationNonvacuity/Variantcc0eb9019e317e59dde965ec609fec6c4ad921b98a902695f51bdf6be3ecc9fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/FactorizationNonvacuity/Variantcc0eb9019e317e59dde965ec609fec6c4ad921b98a902695f51bdf6be3ecc9fd.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ddc3bd9afe775ecd959f1c407a7e31c8aa679a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
