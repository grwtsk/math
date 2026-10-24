# ContDiffWithinAt.fderivWithin''

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0059738d-2eef-8747-1439-df8b0772a484",
  "kind": "theorem",
  "lexical_name": "ContDiffWithinAt.fderivWithin''",
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
  "slug": "contdiffwithinat-fderivwithin--f499869ccfc77b8d7d3c35ba",
  "source": {
    "blob": "553658f7834248a1aec4dc8b24f9ab14e095928f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1005,
    "line": 985,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant79b6e36adebd0df455b6a8cd05bbbf98fe3247e74eb5a5f002d45ba8637512fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f499869ccfc77b8d7d3c35bad840016f73eae4d879d35c5dcbd9f797bbd85491",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant79b6e36adebd0df455b6a8cd05bbbf98fe3247e74eb5a5f002d45ba8637512fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0059738d-2eef-8747-1439-df8b0772a484`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 985–1005.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContDiffWithinAt.fderivWithin'' {f : E → F → G} {g : E → F} {t : Set F} {n : ℕ∞}
    (hf : ContDiffWithinAt 𝕜 n (Function.uncurry f) (insert x₀ s ×ˢ t) (x₀, g x₀))
    (hg : ContDiffWithinAt 𝕜 m g s x₀)
    (ht : ∀ᶠ x in 𝓝[insert x₀ s] x₀, UniqueDiffWithinAt 𝕜 t (g x)) (hmn : m + 1 ≤ n)
    (hgt : t ∈ 𝓝[g '' s] g x₀) :
    ContDiffWithinAt 𝕜 m (fun x => fderivWithin 𝕜 (f x) t (g x)) s x₀ := by
  have : ∀ k : ℕ, (k : ℕ∞) ≤ m →
      ContDiffWithinAt 𝕜 k (fun x => fderivWithin 𝕜 (f x) t (g x)) s x₀ := fun k hkm ↦ by
    obtain ⟨v, hv, -, f', hvf', hf'⟩ :=
      (hf.of_le <| (add_le_add_right hkm 1).trans hmn).hasFDerivWithinAt_nhds (hg.of_le hkm) hgt
    refine hf'.congr_of_eventuallyEq_insert ?_
    filter_upwards [hv, ht]
    exact fun y hy h2y => (hvf' y hy).fderivWithin h2y
  induction' m using WithTop.recTopCoe with m
  · obtain rfl := eq_top_iff.mpr hmn
    rw [contDiffWithinAt_top]
    exact fun m => this m le_top
  exact this _ le_rfl
#align cont_diff_within_at.fderiv_within'' ContDiffWithinAt.fderivWithin''

/-- A special case of `ContDiffWithinAt.fderivWithin''` where we require that `s ⊆ g⁻¹(t)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant79b6e36adebd0df455b6a8cd05bbbf98fe3247e74eb5a5f002d45ba8637512fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant79b6e36adebd0df455b6a8cd05bbbf98fe3247e74eb5a5f002d45ba8637512fa.lean#L985).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `553658f7834248a1aec4dc8b24f9ab14e095928f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
