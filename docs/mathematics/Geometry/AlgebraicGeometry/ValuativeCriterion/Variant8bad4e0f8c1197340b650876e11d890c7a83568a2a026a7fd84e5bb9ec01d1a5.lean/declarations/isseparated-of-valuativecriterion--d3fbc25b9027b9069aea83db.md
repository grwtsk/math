# IsSeparated.of_valuativeCriterion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1402e1a84771dc857005db60977a95ece2808417",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 246,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8bad4e0f8c1197340b650876e11d890c7a83568a2a026a7fd84e5bb9ec01d1a5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5e5939a9-de28-4aca-c70a-23713f0c2bde",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4b6ccd08-934e-ec7e-ab2b-2dcf6f5846bc",
  "kind": "lemma",
  "lexical_name": "IsSeparated.of_valuativeCriterion",
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
  "slug": "isseparated-of-valuativecriterion--d3fbc25b9027b9069aea83db",
  "source": {
    "blob": "1402e1a84771dc857005db60977a95ece2808417",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 246,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant8bad4e0f8c1197340b650876e11d890c7a83568a2a026a7fd84e5bb9ec01d1a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3fbc25b9027b9069aea83db6a57c751df28261847d28756120171616a46509b",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant8bad4e0f8c1197340b650876e11d890c7a83568a2a026a7fd84e5bb9ec01d1a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b6ccd08-934e-ec7e-ab2b-2dcf6f5846bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsSeparated.of_valuativeCriterion [QuasiSeparated f]
    (hf : ValuativeCriterion.Uniqueness f) : IsSeparated f where
  isClosedImmersion_diagonal := by
    suffices h : ValuativeCriterion.Existence (pullback.diagonal f) by
      have := UniversallyClosed.of_valuativeCriterion (pullback.diagonal f) h
      exact .of_isPreimmersion _ (pullback.diagonal f).isClosedMap.isClosed_range
    intro S
    have hc : CommSq S.i₁ (Spec.map (CommRingCat.ofHom (algebraMap S.R S.K)))
        f (S.i₂ ≫ pullback.fst f f ≫ f) := ⟨by simp [← S.commSq.w_assoc]⟩
    let S' : ValuativeCommSq f := ⟨S.R, S.K, S.i₁, S.i₂ ≫ pullback.fst f f ≫ f, hc⟩
    have : Subsingleton S'.commSq.LiftStruct := hf S'
    let S'l₁ : S'.commSq.LiftStruct := ⟨S.i₂ ≫ pullback.fst f f,
      by simp [S', ← S.commSq.w_assoc], by simp [S']⟩
    let S'l₂ : S'.commSq.LiftStruct := ⟨S.i₂ ≫ pullback.snd f f,
      by simp [S', ← S.commSq.w_assoc], by simp [S', pullback.condition]⟩
    have h₁₂ : S'l₁ = S'l₂ := Subsingleton.elim _ _
    constructor
    constructor
    refine ⟨S.i₂ ≫ pullback.fst _ _, ?_, ?_⟩
    · simp [← S.commSq.w_assoc]
    · simp only [Category.assoc]
      apply IsPullback.hom_ext (IsPullback.of_hasPullback _ _)
      · simp
      · simp only [Category.assoc, pullback.diagonal_snd, Category.comp_id]
        exact congrArg CommSq.LiftStruct.l h₁₂

set_option backward.isDefEq.respectTransparency false in
@[stacks 01KZ]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant8bad4e0f8c1197340b650876e11d890c7a83568a2a026a7fd84e5bb9ec01d1a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant8bad4e0f8c1197340b650876e11d890c7a83568a2a026a7fd84e5bb9ec01d1a5.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1402e1a84771dc857005db60977a95ece2808417` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
