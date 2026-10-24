# isPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:201092b2-41b5-6af6-9f12-72413b45d0d4",
  "kind": "lemma",
  "lexical_name": "isPullback",
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
  "slug": "ispullback--b90bca4071b2ac7fbd6e54fd",
  "source": {
    "blob": "c3c794563aaafa9d6e5e487aca9722e9cd217f1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 504,
    "line": 480,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/RelativeCellComplex/Variantaa4320cb07b31e784f53e6a745ab063e5a8868e99c9aa5308855aec29cf30514.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b90bca4071b2ac7fbd6e54fd60511102a46a9442270032e302d1761df28c8083",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/RelativeCellComplex/Variantaa4320cb07b31e784f53e6a745ab063e5a8868e99c9aa5308855aec29cf30514.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:201092b2-41b5-6af6-9f12-72413b45d0d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 480–504.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isPullback (j : ι) :
    IsPullback (f.t j) (f.m j) (homOfLE (f.filtration_monotone (Order.le_succ j))) (f.b j) where
  w := f.w j
  isLimit' := ⟨evaluationJointlyReflectsLimits _ (fun ⟨⟨d⟩⟩ ↦ by
    refine (isLimitMapConePullbackConeEquiv _ _).symm
      (IsPullback.isLimit ?_)
    rw [Types.isPullback_iff]
    dsimp
    refine ⟨congr_app (f.w j) (op ⦋d⦌),
      fun a₁ a₂ h ↦ (mono_iff_injective _).mp
        ((NatTrans.mono_iff_mono_app (f.m j)).mp inferInstance _) h.2, fun y b h ↦ ?_⟩
    obtain ⟨x, b, rfl⟩ := f.ιSigmaStdSimplex_jointly_surjective b
    have hb : b ∈ Λ[_, x.index].obj _ := by
      obtain ⟨y, hy⟩ := y
      simp only [← x.preimage_filtration_map]
      rw [Subtype.ext_iff] at h
      dsimp at h
      subst h
      rwa [x.ι_b_app_apply] at hy
    refine ⟨x.ιSigmaHorn.app _ ⟨b, hb⟩, ?_, ?_⟩
    · simpa only [Subfunctor.toFunctor_obj, Subtype.ext_iff,
        x.ι_b_app_apply, x.ι_t_app_apply] using! h.symm
    · rw [← NatTrans.comp_app_apply]
      simp)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/RelativeCellComplex/Variantaa4320cb07b31e784f53e6a745ab063e5a8868e99c9aa5308855aec29cf30514.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/RelativeCellComplex/Variantaa4320cb07b31e784f53e6a745ab063e5a8868e99c9aa5308855aec29cf30514.lean#L480).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3c794563aaafa9d6e5e487aca9722e9cd217f1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
