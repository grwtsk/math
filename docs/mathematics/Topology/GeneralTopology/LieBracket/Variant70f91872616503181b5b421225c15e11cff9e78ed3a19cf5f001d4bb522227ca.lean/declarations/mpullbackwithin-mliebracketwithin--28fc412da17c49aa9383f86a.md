# mpullbackWithin_mlieBracketWithin'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5dea7825-7cb3-0b89-935a-997876f6de8f",
  "kind": "lemma",
  "lexical_name": "mpullbackWithin_mlieBracketWithin'",
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
  "slug": "mpullbackwithin-mliebracketwithin--28fc412da17c49aa9383f86a",
  "source": {
    "blob": "47a65c06554bd39024cf3b6ee9e313519c95cab3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 778,
    "line": 743,
    "path": "GRWTSK/Topology/GeneralTopology/LieBracket/Variant70f91872616503181b5b421225c15e11cff9e78ed3a19cf5f001d4bb522227ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28fc412da17c49aa9383f86a86b63ef2f0b9f0e191450270193d9905f6c39c8a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LieBracket/Variant70f91872616503181b5b421225c15e11cff9e78ed3a19cf5f001d4bb522227ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5dea7825-7cb3-0b89-935a-997876f6de8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 743–778.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mpullbackWithin_mlieBracketWithin'
    {f : M → M'} {V W : Π (x : M'), TangentSpace I' x} {x₀ : M} {s u : Set M} {t : Set M'}
    (hV : MDiffAt[t] (T% V) (f x₀)) (hW : MDiffAt[t] (T% W) (f x₀))
    (hs : UniqueMDiff[s]) (hu : UniqueMDiff[u])
    (hf : CMDiffAt[u] n f x₀) (hx₀ : x₀ ∈ s) (hn : minSmoothness 𝕜 2 ≤ n)
    (hst : f ⁻¹' t ∈ 𝓝[s] x₀) (h'x₀ : x₀ ∈ closure (interior u)) (hsu : s ⊆ u) :
    mpullbackWithin I I' f (mlieBracketWithin I' V W t) s x₀ =
      mlieBracketWithin I (mpullbackWithin I I' f V s) (mpullbackWithin I I' f W s) s x₀ := by
  have B : ContDiffWithinAt 𝕜 n ((extChartAt I' (f x₀)) ∘ f ∘ (extChartAt I x₀).symm)
      ((extChartAt I x₀).symm ⁻¹' u ∩ (extChartAt I x₀).target) (extChartAt I x₀ x₀) := by
    apply (contMDiffWithinAt_iff.1 hf).2.congr_set
    exact EventuallyEqSet.inter (by rfl) extChartAt_target_eventuallyEqSet.symm
  apply mpullbackWithin_mlieBracketWithin_of_isSymmSndFDerivWithinAt hV hW hs
    ((hf.mono hsu).of_le (le_minSmoothness.trans hn)) hx₀ hst
  have : ((extChartAt I x₀).symm ⁻¹' s ∩ (extChartAt I x₀).target : Set E)
      =ᶠ[𝓝 (extChartAt I x₀ x₀)] (extChartAt I x₀).symm ⁻¹' s ∩ range I :=
    EventuallyEqSet.inter (by rfl) extChartAt_target_eventuallyEqSet
  apply IsSymmSndFDerivWithinAt.congr_set _ this
  have : IsSymmSndFDerivWithinAt 𝕜 ((extChartAt I' (f x₀)) ∘ f ∘ (extChartAt I x₀).symm)
      ((extChartAt I x₀).symm ⁻¹' u ∩ (extChartAt I x₀).target) (extChartAt I x₀ x₀) := by
    apply ContDiffWithinAt.isSymmSndFDerivWithinAt (n := minSmoothness 𝕜 2) _ le_rfl
    · rw [inter_comm]
      exact UniqueMDiffOn.uniqueDiffOn_target_inter hu x₀
    · apply extChartAt_mem_closure_interior h'x₀ (mem_extChartAt_source x₀)
    · simp [hsu hx₀]
    · exact B.of_le hn
  apply IsSymmSndFDerivWithinAt.mono_of_mem_nhdsWithin this
  · apply mem_of_superset self_mem_nhdsWithin (inter_subset_inter_left _ (preimage_mono hsu))
  · exact (B.of_le hn).of_le le_minSmoothness
  · rw [inter_comm]
    exact UniqueMDiffOn.uniqueDiffOn_target_inter hs x₀
  · rw [inter_comm]
    exact UniqueMDiffOn.uniqueDiffOn_target_inter hu x₀
  · simp [hx₀]

/-- The pullback commutes with the Lie bracket of vector fields on manifolds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LieBracket/Variant70f91872616503181b5b421225c15e11cff9e78ed3a19cf5f001d4bb522227ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LieBracket/Variant70f91872616503181b5b421225c15e11cff9e78ed3a19cf5f001d4bb522227ca.lean#L743).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47a65c06554bd39024cf3b6ee9e313519c95cab3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
