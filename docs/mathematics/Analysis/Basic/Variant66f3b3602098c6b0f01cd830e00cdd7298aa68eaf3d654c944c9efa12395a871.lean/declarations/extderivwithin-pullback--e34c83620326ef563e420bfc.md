# extDerivWithin_pullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ee00e5f-529b-2282-2c88-4a06c3180af5",
  "kind": "theorem",
  "lexical_name": "extDerivWithin_pullback",
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
  "slug": "extderivwithin-pullback--e34c83620326ef563e420bfc",
  "source": {
    "blob": "7300465a16327cc540fe33a4a064c58cbc074888",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 248,
    "path": "GRWTSK/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e34c83620326ef563e420bfcefb6f47904f70704e6eb1b32d918c9257fc1893a",
  "verification": {
    "reference": "docs/verification/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ee00e5f-529b-2282-2c88-4a06c3180af5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extDerivWithin_pullback {ω : F → F [⋀^Fin n]→L[𝕜] G} {f : E → F} {t : Set F}
    (hω : DifferentiableWithinAt 𝕜 ω t (f x)) (hf : ContDiffWithinAt 𝕜 r f s x)
    (hr : minSmoothness 𝕜 2 ≤ r) (hs : UniqueDiffOn 𝕜 s)
    (hxc : x ∈ closure (interior s)) (hxs : x ∈ s) (hst : MapsTo f s t) :
    extDerivWithin (fun x ↦ (ω (f x)).compContinuousLinearMap (fderivWithin 𝕜 f s x)) s x =
      (extDerivWithin ω t (f x)).compContinuousLinearMap (fderivWithin 𝕜 f s x) := by
  have hdf : DifferentiableWithinAt 𝕜 f s x :=
    hf.differentiableWithinAt <| (two_pos.trans_le <| le_minSmoothness.trans hr).ne'
  have hd2f : DifferentiableWithinAt 𝕜 (fderivWithin 𝕜 f s) s x :=
    (hf.fderivWithin_right hs (le_minSmoothness.trans hr) hxs).differentiableWithinAt one_ne_zero
  rw [extDerivWithin,
    fderivWithin_continuousAlternatingMapCompContinuousLinearMap (by exact hω.comp x hdf hst) hd2f
      (hs x hxs),
    alternatizeUncurryFin_add, fderivWithin_fun_comp _ hω hdf hst (hs x hxs), extDerivWithin,
    alternatizeUncurryFin_fderivCompContinuousLinearMap_eq_zero, add_zero]
  · ext v
    simp +unfoldPartialApp [alternatizeUncurryFin_apply, Fin.removeNth, Function.comp_def]
  · apply hf.isSymmSndFDerivWithinAt <;> assumption

/-- Exterior derivative commutes with pullback. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7300465a16327cc540fe33a4a064c58cbc074888` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
