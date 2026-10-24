# ContDiffWithinAt.restrictScalars_iteratedFDerivWithin_eventuallyEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6264ddd-bce2-fbac-3f9c-bc0767cadf45",
  "kind": "theorem",
  "lexical_name": "ContDiffWithinAt.restrictScalars_iteratedFDerivWithin_eventuallyEq",
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
  "slug": "contdiffwithinat-restrictscalars-iteratedfderivwithin-eventuallyeq--ecf60a0ddfbb5a49ddbfefcf",
  "source": {
    "blob": "39ecfd1e999e710d74fb64f666471196168b5013",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 56,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variantf64777aab44aeb9827b74c050437bb6107c05ce96bbccd2f0085b9cb19dec813.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecf60a0ddfbb5a49ddbfefcff11f7b9ae12ce4c2ae1f6413eec15c9ce35a0fe0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variantf64777aab44aeb9827b74c050437bb6107c05ce96bbccd2f0085b9cb19dec813.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6264ddd-bce2-fbac-3f9c-bc0767cadf45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContDiffWithinAt.restrictScalars_iteratedFDerivWithin_eventuallyEq
    (h : ContDiffWithinAt 𝕜' n f s x) (hs : UniqueDiffOn 𝕜 s) (hx : x ∈ s) :
    (restrictScalars 𝕜) ∘ (iteratedFDerivWithin 𝕜' n f s)
      =ᶠ[𝓝[s] x] iteratedFDerivWithin 𝕜 n f s := by
  induction n with
  | zero =>
    filter_upwards with a
    ext m
    simp
  | succ n hn =>
    have t₀ := h.of_le (Nat.cast_le.mpr (n.le_add_right 1))
    have t₁ : ∀ᶠ (y : E) in 𝓝[s] x, ContDiffWithinAt 𝕜' (↑(n + 1)) f s y := by
      nth_rw 2 [← s.insert_eq_of_mem hx]
      apply h.eventually (by simp)
    filter_upwards [eventually_eventually_nhdsWithin.2 (hn t₀), t₁,
      eventually_mem_nhdsWithin (a := x) (s := s)] with a h₁a h₃a h₄a
    rw [← Filter.EventuallyEq] at h₁a
    ext m
    simp only [Function.comp_apply, coe_restrictScalars, iteratedFDerivWithin_succ_apply_left]
    rw [← (h₁a.fderivWithin' (by tauto)).eq_of_nhdsWithin h₄a,
      fderivWithin_restrictScalars_comp]
    · simp
    · apply h₃a.differentiableWithinAt_iteratedFDerivWithin
      · rw [Nat.cast_lt]
        simp
      · have : UniqueDiffOn 𝕜' s := hs.mono_field
        simpa [s.insert_eq_of_mem h₄a]
    apply hs a h₄a

/--
If `f` is `n` times continuously differentiable at `x`, then the `n`th iterated Fréchet derivative
with respect to `𝕜` equals scalar restriction of the `n`th iterated Fréchet derivative with respect
to `𝕜'`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variantf64777aab44aeb9827b74c050437bb6107c05ce96bbccd2f0085b9cb19dec813.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variantf64777aab44aeb9827b74c050437bb6107c05ce96bbccd2f0085b9cb19dec813.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39ecfd1e999e710d74fb64f666471196168b5013` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
