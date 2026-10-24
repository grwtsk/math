# exists_solution_of_adjoint_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d628100-6982-bf72-f409-89ad45c4054c",
  "kind": "theorem",
  "lexical_name": "exists_solution_of_adjoint_bound",
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
  "slug": "exists-solution-of-adjoint-bound--0121e821e1ab47aeb7e745a7",
  "source": {
    "blob": "299ee0dd9079b606b269df371d74ceb8be5adb19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 78,
    "path": "GRWTSK/Analysis/InnerProductSpace/ClosedOperatorSolvability.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0121e821e1ab47aeb7e745a7ceb92e0ccddea96f1d7da99522efadb8ae541e5b",
  "verification": {
    "reference": "docs/verification/Analysis/InnerProductSpace/ClosedOperatorSolvability.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d628100-6982-bf72-f409-89ad45c4054c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_solution_of_adjoint_bound
    (T : E →ₗ.[𝕜] F) (hT : Dense (T.domain : Set E)) (hclosed : T.IsClosed)
    (f : F) {C : ℝ} (hC : 0 ≤ C)
    (hbound : ∀ v : T†.domain, ‖inner 𝕜 f (v : F)‖ ≤ C * ‖T† v‖) :
    ∃ u : T.domain, T u = f ∧ ‖(u : E)‖ ≤ C := by
  let A : T†.domain →ₗ[𝕜] E := T†.toFun
  let ell : T†.domain →ₗ[𝕜] 𝕜 := (innerₛₗ 𝕜 f).comp T†.domain.subtype
  have hk : A.ker ≤ ell.ker := by
    intro v hv
    rw [LinearMap.mem_ker] at hv ⊢
    change inner 𝕜 f (v : F) = 0
    apply norm_eq_zero.mp
    have hb := hbound v
    change ‖inner 𝕜 f (v : F)‖ ≤ C * ‖A v‖ at hb
    rw [hv, norm_zero, mul_zero] at hb
    exact le_antisymm hb (norm_nonneg _)
  let g : A.range →ₗ[𝕜] 𝕜 :=
    (A.ker.liftQ ell hk).comp A.quotKerEquivRange.symm.toLinearMap
  have hg (v : T†.domain) : g (A.rangeRestrict v) = ell v := by
    have he : A.quotKerEquivRange (Submodule.Quotient.mk v) = A.rangeRestrict v := by
      apply Subtype.ext
      exact A.quotKerEquivRange_apply_mk v
    simp only [g, LinearMap.comp_apply, LinearEquiv.coe_coe, ← he,
      LinearEquiv.symm_apply_apply, Submodule.liftQ_apply]
  have hgb (x : A.range) : ‖g x‖ ≤ C * ‖x‖ := by
    obtain ⟨v, hv⟩ := x.property
    have he : A.rangeRestrict v = x := Subtype.ext hv
    rw [← he, hg]
    exact hbound v
  let gc : StrongDual 𝕜 A.range := g.mkContinuous C hgb
  obtain ⟨L, hL, hnL⟩ := exists_extension_norm_eq A.range gc
  let u : E := (InnerProductSpace.toDual 𝕜 E).symm L
  have hun : ‖u‖ ≤ C := by
    rw [show ‖u‖ = ‖L‖ from (InnerProductSpace.toDual 𝕜 E).symm.norm_map L, hnL]
    exact g.mkContinuous_norm_le hC hgb
  have hu : (u, f) ∈ T.graph := by
    apply mem_graph_of_adjoint_identity T hT hclosed
    intro v
    change inner 𝕜 ((InnerProductSpace.toDual 𝕜 E).symm L) (A v) = ell v
    rw [InnerProductSpace.toDual_symm_apply]
    have h := hL (A.rangeRestrict v)
    exact h.trans (hg v)
  obtain ⟨u', hu', hTu'⟩ := T.mem_graph_iff.mp hu
  exact ⟨u', hTu', hu' ▸ hun⟩

end

end GRWTSK.Analysis.InnerProductSpace.ClosedOperatorSolvability
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/InnerProductSpace/ClosedOperatorSolvability.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/InnerProductSpace/ClosedOperatorSolvability.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `299ee0dd9079b606b269df371d74ceb8be5adb19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
