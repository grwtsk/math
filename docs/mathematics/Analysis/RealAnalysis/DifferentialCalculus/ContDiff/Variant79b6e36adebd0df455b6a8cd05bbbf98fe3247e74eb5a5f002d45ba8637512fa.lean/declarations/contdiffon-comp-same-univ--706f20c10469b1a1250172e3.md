# ContDiffOn.comp_same_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ee2c4db-c220-ca3e-92c4-322769282f5d",
  "kind": "theorem",
  "lexical_name": "ContDiffOn.comp_same_univ",
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
  "slug": "contdiffon-comp-same-univ--706f20c10469b1a1250172e3",
  "source": {
    "blob": "553658f7834248a1aec4dc8b24f9ab14e095928f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 627,
    "line": 586,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant79b6e36adebd0df455b6a8cd05bbbf98fe3247e74eb5a5f002d45ba8637512fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:706f20c10469b1a1250172e394d254bbb236684f6ab82449d10d402b2e5f7441",
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

Occurrence: `result:1ee2c4db-c220-ca3e-92c4-322769282f5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 586–627.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem ContDiffOn.comp_same_univ {Eu : Type u} [NormedAddCommGroup Eu] [NormedSpace 𝕜 Eu]
    {Fu : Type u} [NormedAddCommGroup Fu] [NormedSpace 𝕜 Fu] {Gu : Type u} [NormedAddCommGroup Gu]
    [NormedSpace 𝕜 Gu] {s : Set Eu} {t : Set Fu} {g : Fu → Gu} {f : Eu → Fu}
    (hg : ContDiffOn 𝕜 n g t) (hf : ContDiffOn 𝕜 n f s) (st : s ⊆ f ⁻¹' t) :
    ContDiffOn 𝕜 n (g ∘ f) s := by
  induction' n using ENat.nat_induction with n IH Itop generalizing Eu Fu Gu
  · rw [contDiffOn_zero] at hf hg ⊢
    exact ContinuousOn.comp hg hf st
  · rw [contDiffOn_succ_iff_hasFDerivWithinAt] at hg ⊢
    intro x hx
    rcases (contDiffOn_succ_iff_hasFDerivWithinAt.1 hf) x hx with ⟨u, hu, f', hf', f'_diff⟩
    rcases hg (f x) (st hx) with ⟨v, hv, g', hg', g'_diff⟩
    rw [insert_eq_of_mem hx] at hu ⊢
    have xu : x ∈ u := mem_of_mem_nhdsWithin hx hu
    let w := s ∩ (u ∩ f ⁻¹' v)
    have wv : w ⊆ f ⁻¹' v := fun y hy => hy.2.2
    have wu : w ⊆ u := fun y hy => hy.2.1
    have ws : w ⊆ s := fun y hy => hy.1
    refine' ⟨w, _, fun y => (g' (f y)).comp (f' y), _, _⟩
    show w ∈ 𝓝[s] x
    · apply Filter.inter_mem self_mem_nhdsWithin
      apply Filter.inter_mem hu
      apply ContinuousWithinAt.preimage_mem_nhdsWithin'
      · rw [← continuousWithinAt_inter' hu]
        exact (hf' x xu).differentiableWithinAt.continuousWithinAt.mono (inter_subset_right _ _)
      · apply nhdsWithin_mono _ _ hv
        exact Subset.trans (image_subset_iff.mpr st) (subset_insert (f x) t)
    show ∀ y ∈ w, HasFDerivWithinAt (g ∘ f) ((g' (f y)).comp (f' y)) w y
    · rintro y ⟨-, yu, yv⟩
      exact (hg' (f y) yv).comp y ((hf' y yu).mono wu) wv
    show ContDiffOn 𝕜 n (fun y => (g' (f y)).comp (f' y)) w
    · have A : ContDiffOn 𝕜 n (fun y => g' (f y)) w :=
        IH g'_diff ((hf.of_le (WithTop.coe_le_coe.2 (Nat.le_succ n))).mono ws) wv
      have B : ContDiffOn 𝕜 n f' w := f'_diff.mono wu
      have C : ContDiffOn 𝕜 n (fun y => (g' (f y), f' y)) w := A.prod B
      have D : ContDiffOn 𝕜 n (fun p : (Fu →L[𝕜] Gu) × (Eu →L[𝕜] Fu) => p.1.comp p.2) univ :=
        isBoundedBilinearMap_comp.contDiff.contDiffOn
      exact IH D C (subset_univ _)
  · rw [contDiffOn_top] at hf hg ⊢
    exact fun n => Itop n (hg n) (hf n) st

/-- The composition of `C^n` functions on domains is `C^n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant79b6e36adebd0df455b6a8cd05bbbf98fe3247e74eb5a5f002d45ba8637512fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant79b6e36adebd0df455b6a8cd05bbbf98fe3247e74eb5a5f002d45ba8637512fa.lean#L586).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `553658f7834248a1aec4dc8b24f9ab14e095928f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
