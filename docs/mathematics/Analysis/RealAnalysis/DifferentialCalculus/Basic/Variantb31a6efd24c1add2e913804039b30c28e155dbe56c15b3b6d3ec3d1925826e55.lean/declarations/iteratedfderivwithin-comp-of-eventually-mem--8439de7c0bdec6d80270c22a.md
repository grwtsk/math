# iteratedFDerivWithin_comp_of_eventually_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7276b6d2-6732-5b45-b979-14d053085cbb",
  "kind": "theorem",
  "lexical_name": "iteratedFDerivWithin_comp_of_eventually_mem",
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
  "slug": "iteratedfderivwithin-comp-of-eventually-mem--8439de7c0bdec6d80270c22a",
  "source": {
    "blob": "a9fc6815627d5c5ed3b37b5d7934a39587383857",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 792,
    "line": 769,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb31a6efd24c1add2e913804039b30c28e155dbe56c15b3b6d3ec3d1925826e55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8439de7c0bdec6d80270c22a12df3118e08faf0de02368574bf8dde4e5dc3678",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb31a6efd24c1add2e913804039b30c28e155dbe56c15b3b6d3ec3d1925826e55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7276b6d2-6732-5b45-b979-14d053085cbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 769–792.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iteratedFDerivWithin_comp_of_eventually_mem {t : Set F}
    (hg : ContDiffWithinAt 𝕜 n g t (f x)) (hf : ContDiffWithinAt 𝕜 n f s x)
    (ht : UniqueDiffOn 𝕜 t) (hs : UniqueDiffOn 𝕜 s) (hxs : x ∈ s) (hst : ∀ᶠ y in 𝓝[s] x, f y ∈ t)
    {i : ℕ} (hi : i ≤ n) :
    iteratedFDerivWithin 𝕜 i (g ∘ f) s x =
      (ftaylorSeriesWithin 𝕜 g t (f x)).taylorComp (ftaylorSeriesWithin 𝕜 f s x) i := by
  obtain ⟨u, hxu, huo, hfu, hgu⟩ : ∃ u, x ∈ u ∧ IsOpen u ∧
      HasFTaylorSeriesUpToOn i f (ftaylorSeriesWithin 𝕜 f s) (s ∩ u) ∧
      HasFTaylorSeriesUpToOn i g (ftaylorSeriesWithin 𝕜 g t) (f '' (s ∩ u)) := by
    have hxt : f x ∈ t := hst.self_of_nhdsWithin hxs
    have hf_tendsto : Tendsto f (𝓝[s] x) (𝓝[t] (f x)) :=
      tendsto_nhdsWithin_iff.mpr ⟨hf.continuousWithinAt, hst⟩
    have H₁ : ∀ᶠ u in (𝓝[s] x).smallSets,
        HasFTaylorSeriesUpToOn i f (ftaylorSeriesWithin 𝕜 f s) u :=
      hf.eventually_hasFTaylorSeriesUpToOn hs hxs hi
    have H₂ : ∀ᶠ u in (𝓝[s] x).smallSets,
        HasFTaylorSeriesUpToOn i g (ftaylorSeriesWithin 𝕜 g t) (f '' u) :=
      hf_tendsto.image_smallSets.eventually (hg.eventually_hasFTaylorSeriesUpToOn ht hxt hi)
    rcases (nhdsWithin_basis_open _ _).smallSets.eventually_iff.mp (H₁.and H₂)
      with ⟨u, ⟨hxu, huo⟩, hu⟩
    exact ⟨u, hxu, huo, hu (by simp [inter_comm])⟩
  exact .symm <| (hgu.comp hfu (mapsTo_image _ _)).eq_iteratedFDerivWithin_of_uniqueDiffOn le_rfl
    (hs.inter huo) ⟨hxs, hxu⟩ |>.trans <| iteratedFDerivWithin_inter_open huo hxu

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb31a6efd24c1add2e913804039b30c28e155dbe56c15b3b6d3ec3d1925826e55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb31a6efd24c1add2e913804039b30c28e155dbe56c15b3b6d3ec3d1925826e55.lean#L769).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9fc6815627d5c5ed3b37b5d7934a39587383857` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
