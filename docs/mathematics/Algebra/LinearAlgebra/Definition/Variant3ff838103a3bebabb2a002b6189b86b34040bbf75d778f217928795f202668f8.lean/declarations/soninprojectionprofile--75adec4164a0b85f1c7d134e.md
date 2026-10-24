# SoninProjectionProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f4732969f67a97d342eae5a96a91e779691fe5aea9e6658c146d9e70391518c3",
  "kind": "structure",
  "lexical_name": "SoninProjectionProfile",
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
  "slug": "soninprojectionprofile--75adec4164a0b85f1c7d134e",
  "source": {
    "blob": "99d15d2c9de68e3436908f298759bca2d6fe7049",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 9,
    "path": "GRWTSK/Algebra/LinearAlgebra/Definition/Variant3ff838103a3bebabb2a002b6189b86b34040bbf75d778f217928795f202668f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:75adec4164a0b85f1c7d134ee6f1978284de916a1348d72cd47e1986bc862860",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Definition/Variant3ff838103a3bebabb2a002b6189b86b34040bbf75d778f217928795f202668f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f4732969f67a97d342eae5a96a91e779691fe5aea9e6658c146d9e70391518c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SoninProjectionProfile
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U) where
  projection :
    PrimeCut U →
    HilbertEnd H.Ambient
  projection_isProjection :
    ∀ S,
      OrthogonalProjectionCertificate
        (projection S)
  projection_range :
    ∀ S,
      LinearMap.range
        (projection S).toLinearMap
      =
      H.transportedRange S
  projection_absorbs_left :
    ∀ {S T : PrimeCut U},
      S ⊆ T →
      (projection T).comp
        (projection S)
      =
      projection S
  projection_absorbs_right :
    ∀ {S T : PrimeCut U},
      S ⊆ T →
      (projection S).comp
        (projection T)
      =
      projection S
  projection_mono :
    ∀ {S T : PrimeCut U},
      S ⊆ T →
      OperatorLE
        (projection S)
        (projection T)
  projection_top :
    projection (topCut U)
    =
    ContinuousLinearMap.id
      ℂ
      H.Ambient

end Mathematics.SemiLocalDefect.SoninCore
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Definition/Variant3ff838103a3bebabb2a002b6189b86b34040bbf75d778f217928795f202668f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Definition/Variant3ff838103a3bebabb2a002b6189b86b34040bbf75d778f217928795f202668f8.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99d15d2c9de68e3436908f298759bca2d6fe7049` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
