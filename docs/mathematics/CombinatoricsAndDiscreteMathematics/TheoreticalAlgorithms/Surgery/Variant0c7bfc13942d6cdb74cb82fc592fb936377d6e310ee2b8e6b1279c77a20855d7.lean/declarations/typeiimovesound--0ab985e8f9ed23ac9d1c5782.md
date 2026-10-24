# TypeIIMoveSound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ff6c39cfd8035dcf4f6466399d5ced48afd85d7104ed7d1ea24b191fc154c8d",
  "kind": "def",
  "lexical_name": "TypeIIMoveSound",
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
  "slug": "typeiimovesound--0ab985e8f9ed23ac9d1c5782",
  "source": {
    "blob": "3e74d047585d8ec928452a0b2a9675bee1063b29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 658,
    "line": 614,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Surgery/Variant0c7bfc13942d6cdb74cb82fc592fb936377d6e310ee2b8e6b1279c77a20855d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ab985e8f9ed23ac9d1c5782b055d44127a618bf9f54b782ecf71857539db319",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Surgery/Variant0c7bfc13942d6cdb74cb82fc592fb936377d6e310ee2b8e6b1279c77a20855d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ff6c39cfd8035dcf4f6466399d5ced48afd85d7104ed7d1ea24b191fc154c8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 614–658.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TypeIIMoveSound
    {N : ℕ} {A : Type*} [CommRing A]
    {base : CubicFrobeniusRewriteBase N A}
    (state : TypeIISurgeryState N A base)
    (move : TypeIISurgeryMove N) : Prop :=
  match move with
  | .incidenceFlow duration =>
      0 < duration ∧
        ∃ after : TypeIISurgeryState N A base,
          ∃ control : CombinatorialFlowCorrelationControl state after,
            control.segment.duration = duration
  | .neckCut cluster =>
      SurgicalNeckAt state cluster
  | .cap boundary =>
      ∃ threshold : ℝ,
        ∃ link : SphericalLinkCandidate N,
          ∃ nerve : FiniteInteractionNerve N,
            link.vertices = boundary ∧
              nerve.activeAtoms = state.interaction.activeAtoms ∧
              state.interaction.RealizesNerveOneSkeleton nerve ∧
              link.RealizedInNerve nerve ∧
              RealizesShadingIntersectionNerve
                state.correlation.realization nerve threshold
  | .grainSplit coarseScale =>
      0 < coarseScale ∧
        Nonempty (GrainRefinementAdapter N
          state.correlation.realization coarseScale) ∧
          ∃ threshold : ℝ, 0 < threshold ∧
            ∃ nerve : FiniteInteractionNerve N,
              nerve.activeAtoms = state.interaction.activeAtoms ∧
                state.interaction.RealizesNerveOneSkeleton nerve ∧
                state.interaction.activeAtoms.card < nerve.simplices.card ∧
                  RealizesShadingIntersectionNerve
                    state.correlation.realization nerve threshold
  | .transverseSeparate scale =>
      scale = state.interaction.angularScale ∧
        TransverseAlternative state
  | .cubicFrobeniusNormalize iterations =>
      ∀ x,
        base.realization
            (iterateFrobenius base iterations (state.universalPrefix x)) =
          base.realization (state.universalPrefix x)
  | .terminateDiffuse => IsDiffuse state

/-- Claims that may be discussed by this interface. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Surgery/Variant0c7bfc13942d6cdb74cb82fc592fb936377d6e310ee2b8e6b1279c77a20855d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Surgery/Variant0c7bfc13942d6cdb74cb82fc592fb936377d6e310ee2b8e6b1279c77a20855d7.lean#L614).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e74d047585d8ec928452a0b2a9675bee1063b29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
