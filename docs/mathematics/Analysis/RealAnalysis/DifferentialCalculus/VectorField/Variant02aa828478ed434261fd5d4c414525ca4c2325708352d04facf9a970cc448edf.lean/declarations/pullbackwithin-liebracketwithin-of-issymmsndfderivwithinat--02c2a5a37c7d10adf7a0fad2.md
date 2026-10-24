# pullbackWithin_lieBracketWithin_of_isSymmSndFDerivWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a18d623-f8c3-5d44-6b70-f92367fd9f95",
  "kind": "lemma",
  "lexical_name": "pullbackWithin_lieBracketWithin_of_isSymmSndFDerivWithinAt",
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
  "slug": "pullbackwithin-liebracketwithin-of-issymmsndfderivwithinat--02c2a5a37c7d10adf7a0fad2",
  "source": {
    "blob": "896e6cfd94125da1a0830d37fba1636077d0b1c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 543,
    "line": 508,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variant02aa828478ed434261fd5d4c414525ca4c2325708352d04facf9a970cc448edf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02c2a5a37c7d10adf7a0fad28203f98e4d847c5341d4d25cd1ccdee4af6143b6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variant02aa828478ed434261fd5d4c414525ca4c2325708352d04facf9a970cc448edf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a18d623-f8c3-5d44-6b70-f92367fd9f95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 508–543.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pullbackWithin_lieBracketWithin_of_isSymmSndFDerivWithinAt
    {f : E → F} {V W : F → F} {x : E} {t : Set F}
    (hf : IsSymmSndFDerivWithinAt 𝕜 f s x) (h'f : ContDiffWithinAt 𝕜 2 f s x)
    (hV : DifferentiableWithinAt 𝕜 V t (f x)) (hW : DifferentiableWithinAt 𝕜 W t (f x))
    (hu : UniqueDiffOn 𝕜 s) (hx : x ∈ s) (hst : MapsTo f s t) :
    pullbackWithin 𝕜 f (lieBracketWithin 𝕜 V W t) s x
      = lieBracketWithin 𝕜 (pullbackWithin 𝕜 f V s) (pullbackWithin 𝕜 f W s) s x := by
  by_cases h : (fderivWithin 𝕜 f s x).IsInvertible; swap
  · simp [pullbackWithin_eq_of_not_isInvertible h, lieBracketWithin_eq]
  rcases exists_continuousLinearEquiv_fderivWithin_symm_eq h'f h hu hx
    with ⟨M, -, M_symm_smooth, hM, M_diff⟩
  have hMx : M x = fderivWithin 𝕜 f s x := (mem_of_mem_nhdsWithin hx hM :)
  have AV : fderivWithin 𝕜 (pullbackWithin 𝕜 f V s) s x =
      fderivWithin 𝕜 (fun y ↦ ((M y).symm : F →L[𝕜] E) (V (f y))) s x := by
    apply Filter.EventuallyEq.fderivWithin_eq_of_mem _ hx
    filter_upwards [hM] with y hy using pullbackWithin_eq_of_fderivWithin_eq hy _
  have AW : fderivWithin 𝕜 (pullbackWithin 𝕜 f W s) s x =
      fderivWithin 𝕜 (fun y ↦ ((M y).symm : F →L[𝕜] E) (W (f y))) s x := by
    apply Filter.EventuallyEq.fderivWithin_eq_of_mem _ hx
    filter_upwards [hM] with y hy using pullbackWithin_eq_of_fderivWithin_eq hy _
  have Af : DifferentiableWithinAt 𝕜 f s x := h'f.differentiableWithinAt one_le_two
  simp only [lieBracketWithin_eq, pullbackWithin_eq_of_fderivWithin_eq hMx, map_sub, AV, AW]
  rw [fderivWithin_clm_apply, fderivWithin_clm_apply]
  · simp [fderivWithin_comp' x hW Af hst (hu x hx), ← hMx,
      fderivWithin_comp' x hV Af hst (hu x hx), M_diff, hf.eq]
  · exact hu x hx
  · exact M_symm_smooth.differentiableWithinAt le_rfl
  · exact hV.comp x Af hst
  · exact hu x hx
  · exact M_symm_smooth.differentiableWithinAt le_rfl
  · exact hW.comp x Af hst

/-- The Lie bracket commutes with taking pullbacks. This requires the function to have symmetric
second derivative. Version in a complete space. One could also give a version avoiding
completeness but requiring that `f` is a local diffeo. Variant where unique differentiability and
the invariance property are only required in a smaller set `u`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variant02aa828478ed434261fd5d4c414525ca4c2325708352d04facf9a970cc448edf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variant02aa828478ed434261fd5d4c414525ca4c2325708352d04facf9a970cc448edf.lean#L508).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `896e6cfd94125da1a0830d37fba1636077d0b1c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
