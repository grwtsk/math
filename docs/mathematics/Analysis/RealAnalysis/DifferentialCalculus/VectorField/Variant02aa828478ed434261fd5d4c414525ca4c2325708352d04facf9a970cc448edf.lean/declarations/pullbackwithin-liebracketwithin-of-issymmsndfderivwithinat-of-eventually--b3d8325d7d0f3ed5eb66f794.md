# pullbackWithin_lieBracketWithin_of_isSymmSndFDerivWithinAt_of_eventuallyEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:814b6e66-e19e-9528-16b3-cb2fcde60cef",
  "kind": "lemma",
  "lexical_name": "pullbackWithin_lieBracketWithin_of_isSymmSndFDerivWithinAt_of_eventuallyEq",
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
  "slug": "pullbackwithin-liebracketwithin-of-issymmsndfderivwithinat-of-eventually--b3d8325d7d0f3ed5eb66f794",
  "source": {
    "blob": "896e6cfd94125da1a0830d37fba1636077d0b1c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 572,
    "line": 544,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variant02aa828478ed434261fd5d4c414525ca4c2325708352d04facf9a970cc448edf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3d8325d7d0f3ed5eb66f794946458c7ad1d71a805837e71a28a632b48fec5f7",
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

Occurrence: `result:814b6e66-e19e-9528-16b3-cb2fcde60cef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 544–572.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pullbackWithin_lieBracketWithin_of_isSymmSndFDerivWithinAt_of_eventuallyEq
    {f : E → F} {V W : F → F} {x : E} {t : Set F} {u : Set E}
    (hf : IsSymmSndFDerivWithinAt 𝕜 f s x) (h'f : ContDiffWithinAt 𝕜 2 f s x)
    (hV : DifferentiableWithinAt 𝕜 V t (f x)) (hW : DifferentiableWithinAt 𝕜 W t (f x))
    (hu : UniqueDiffOn 𝕜 u) (hx : x ∈ u) (hst : MapsTo f u t) (hus : u =ᶠ[𝓝 x] s) :
    pullbackWithin 𝕜 f (lieBracketWithin 𝕜 V W t) s x
      = lieBracketWithin 𝕜 (pullbackWithin 𝕜 f V s) (pullbackWithin 𝕜 f W s) s x := calc
  pullbackWithin 𝕜 f (lieBracketWithin 𝕜 V W t) s x
  _ = pullbackWithin 𝕜 f (lieBracketWithin 𝕜 V W t) u x := by
    simp only [pullbackWithin]
    congr 2
    exact fderivWithin_congr_set hus.symm
  _ = lieBracketWithin 𝕜 (pullbackWithin 𝕜 f V u) (pullbackWithin 𝕜 f W u) u x :=
    pullbackWithin_lieBracketWithin_of_isSymmSndFDerivWithinAt
      (hf.congr_set hus.symm) (h'f.congr_set hus.symm) hV hW hu hx hst
  _ = lieBracketWithin 𝕜 (pullbackWithin 𝕜 f V s) (pullbackWithin 𝕜 f W s) u x := by
    apply Filter.EventuallyEq.lieBracketWithin_vectorField_eq_of_mem _ _ hx
    · apply nhdsWithin_le_nhds
      filter_upwards [fderivWithin_eventually_congr_set (𝕜 := 𝕜) (f := f) hus] with y hy
      simp [pullbackWithin, hy]
    · apply nhdsWithin_le_nhds
      filter_upwards [fderivWithin_eventually_congr_set (𝕜 := 𝕜) (f := f) hus] with y hy
      simp [pullbackWithin, hy]
  _ = lieBracketWithin 𝕜 (pullbackWithin 𝕜 f V s) (pullbackWithin 𝕜 f W s) s x :=
    lieBracketWithin_congr_set hus

/-- The Lie bracket commutes with taking pullbacks. This requires the function to have symmetric
second derivative. Version in a complete space. One could also give a version avoiding
completeness but requiring that `f` is a local diffeo. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variant02aa828478ed434261fd5d4c414525ca4c2325708352d04facf9a970cc448edf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variant02aa828478ed434261fd5d4c414525ca4c2325708352d04facf9a970cc448edf.lean#L544).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `896e6cfd94125da1a0830d37fba1636077d0b1c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
