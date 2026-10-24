# ProjectiveLimitKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:802b6e5325018b037e5784d4c5a1b461b31fb0ff31a79cb1004c8e0196f18fa7",
  "kind": "structure",
  "lexical_name": "ProjectiveLimitKernel",
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
  "slug": "projectivelimitkernel--2762d657df14d10db25226e4",
  "source": {
    "blob": "d4672308b1f02f502f7aaf93823c9b10bfd7f786",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 69,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LimitKernel/Variantc5d96094c54c458b48afe4f221adba1750751878f960422506e1d3f3cf3df1c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2762d657df14d10db25226e44020a6058a85b7e53d7cd76db39fd22cab345789",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/LimitKernel/Variantc5d96094c54c458b48afe4f221adba1750751878f960422506e1d3f3cf3df1c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:802b6e5325018b037e5784d4c5a1b461b31fb0ff31a79cb1004c8e0196f18fa7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ProjectiveLimitKernel
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule) where
  Law : Type uLimitLaw
  wasserstein : Law → Law → ℝ≥0
  wassersteinSelf :
    ∀ law,
      wasserstein law law = 0
  wassersteinSymmetric :
    ∀ left right,
      wasserstein left right =
        wasserstein right left
  wassersteinTriangle :
    ∀ left middle right,
      wasserstein left right ≤
        wasserstein left middle +
          wasserstein middle right
  separated :
    ∀ {left right},
      wasserstein left right = 0 →
      left = right
  marginal :
    ∀ stage,
      Law → (system.cut stage).Law
  marginalDetermining :
    ∀ {left right},
      (∀ stage,
        marginal stage left =
          marginal stage right) →
      left = right
  boundaryStateNonempty :
    Nonempty (LimitBoundaryState system)
  realize :
    Law →
      ProjectiveProbabilityLaw
        (LimitBoundaryState system)
  push :
    CompatibleSchedule system →
      Law → Law
  invariantLaw : Law
  commonInvariant :
    ∀ schedule,
      push schedule invariantLaw =
        invariantLaw
  contractionSource :
    LimitContractionSource
  uniformlyContractive :
    ∀ schedule left right,
      wasserstein
          (push schedule left)
          (push schedule right) ≤
        system.uniformContraction *
          wasserstein left right
  marginalPushCompatible :
    ∀ schedule law stage,
      marginal stage (push schedule law) =
        (system.cut stage).closure.lawCarrier.push
          ((system.cut stage).closure.dynamics.kernel
            (schedule.component stage))
          (marginal stage law)
  invariantMarginal :
    ∀ stage,
      marginal stage invariantLaw =
      (system.cut stage).closure.dynamics.invariantLaw

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LimitKernel/Variantc5d96094c54c458b48afe4f221adba1750751878f960422506e1d3f3cf3df1c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LimitKernel/Variantc5d96094c54c458b48afe4f221adba1750751878f960422506e1d3f3cf3df1c9.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4672308b1f02f502f7aaf93823c9b10bfd7f786` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
