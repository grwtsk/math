# ContDiffWithinAt.iteratedFDerivWithin_comp_perm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e19a46ef-ab89-7337-d9d2-c351187a4ef6",
  "kind": "theorem",
  "lexical_name": "ContDiffWithinAt.iteratedFDerivWithin_comp_perm",
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
  "slug": "contdiffwithinat-iteratedfderivwithin-comp-perm--de9f1b9504854460abcb9da7",
  "source": {
    "blob": "eb37bddbbfcff564f7d8563ceeb960bb91e9fbe7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 259,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de9f1b9504854460abcb9da76b9601c728cd71699e5f467ce76db739033b4780",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e19a46ef-ab89-7337-d9d2-c351187a4ef6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContDiffWithinAt.iteratedFDerivWithin_comp_perm
    (h : ContDiffWithinAt 𝕜 ω f s x) (hs : UniqueDiffOn 𝕜 s) (hx : x ∈ s) {n : ℕ} (v : Fin n → E)
    (σ : Perm (Fin n)) :
    iteratedFDerivWithin 𝕜 n f s x (v ∘ σ) = iteratedFDerivWithin 𝕜 n f s x v := by
  rcases h.contDiffOn' le_rfl (by simp) with ⟨u, u_open, xu, hu⟩
  rw [insert_eq_of_mem hx] at hu
  have : iteratedFDerivWithin 𝕜 n f (s ∩ u) x = iteratedFDerivWithin 𝕜 n f s x :=
    iteratedFDerivWithin_inter_open u_open xu
  rw [← this]
  exact AnalyticOn.iteratedFDerivWithin_comp_perm hu.analyticOn (hs.inter u_open) ⟨hx, xu⟩ _ _

/-- The `n`-th iterated derivative of an analytic function is symmetric. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb37bddbbfcff564f7d8563ceeb960bb91e9fbe7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
