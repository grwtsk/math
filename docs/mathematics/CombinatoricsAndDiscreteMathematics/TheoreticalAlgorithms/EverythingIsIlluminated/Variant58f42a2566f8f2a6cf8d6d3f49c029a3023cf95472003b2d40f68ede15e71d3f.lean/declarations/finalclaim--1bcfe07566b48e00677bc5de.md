# finalClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:14c8fa0304a652fc121582a1b9f7944b9e3e7f5b4f590cc1be33b914eb6fb7ff",
  "kind": "def",
  "lexical_name": "finalClaim",
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
  "slug": "finalclaim--1bcfe07566b48e00677bc5de",
  "source": {
    "blob": "e55f22291df2a915ffec8f2cfaf38c2646fb7eea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 121,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EverythingIsIlluminated/Variant58f42a2566f8f2a6cf8d6d3f49c029a3023cf95472003b2d40f68ede15e71d3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1bcfe07566b48e00677bc5deefd3d3541a5353bb0f6fb1e3dbdeee8d2ea4047c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EverythingIsIlluminated/Variant58f42a2566f8f2a6cf8d6d3f49c029a3023cf95472003b2d40f68ede15e71d3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:14c8fa0304a652fc121582a1b9f7944b9e3e7f5b4f590cc1be33b914eb6fb7ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finalClaim (ctx : Context) : Prop :=
  (∀ M : ctx.TranslationSurface,
      ctx.IsTorusCover M -> ctx.HasBlockingProperty M) ∧
  (∀ M : ctx.TranslationSurface,
      ctx.HasBlockingProperty M ->
        ∃ U : ctx.OpenSet,
          ctx.PairSpaceOpen U ∧
          ctx.SurfaceHasOpenBlockedPairSet M U ∧
          ctx.EveryPairInOpenSetFinitelyBlocked U) ∧
  (∀ M : ctx.TranslationSurface,
      (∃ U : ctx.OpenSet,
        ctx.PairSpaceOpen U ∧
        ctx.SurfaceHasOpenBlockedPairSet M U ∧
        ctx.EveryPairInOpenSetFinitelyBlocked U) ->
      ctx.HasBoundedBlockingProperty M) ∧
  (∀ M : ctx.TranslationSurface,
      ctx.HasBoundedBlockingProperty M -> ctx.IsTorusCover M)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EverythingIsIlluminated/Variant58f42a2566f8f2a6cf8d6d3f49c029a3023cf95472003b2d40f68ede15e71d3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EverythingIsIlluminated/Variant58f42a2566f8f2a6cf8d6d3f49c029a3023cf95472003b2d40f68ede15e71d3f.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e55f22291df2a915ffec8f2cfaf38c2646fb7eea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
