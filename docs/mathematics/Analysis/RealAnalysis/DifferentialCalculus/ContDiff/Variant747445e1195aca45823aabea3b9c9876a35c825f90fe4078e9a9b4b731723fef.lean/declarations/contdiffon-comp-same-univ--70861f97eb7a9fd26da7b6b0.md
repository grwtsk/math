# ContDiffOn.comp_same_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c3f424fa48bdb95dad00a6c895134d683847e4c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 578,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/747445e1195aca45823aabea3b9c9876a35c825f90fe4078e9a9b4b731723fef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e2e55f56-dc8f-17c1-1535-40fdb60e2a82",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af6acea0-e678-8c47-006e-69c71344bbfa",
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
  "slug": "contdiffon-comp-same-univ--70861f97eb7a9fd26da7b6b0",
  "source": {
    "blob": "6c3f424fa48bdb95dad00a6c895134d683847e4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 619,
    "line": 578,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant747445e1195aca45823aabea3b9c9876a35c825f90fe4078e9a9b4b731723fef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70861f97eb7a9fd26da7b6b09d30a3c5808583e3168a16f338b6f4477ff70ee4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant747445e1195aca45823aabea3b9c9876a35c825f90fe4078e9a9b4b731723fef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af6acea0-e678-8c47-006e-69c71344bbfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 578–619.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant747445e1195aca45823aabea3b9c9876a35c825f90fe4078e9a9b4b731723fef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant747445e1195aca45823aabea3b9c9876a35c825f90fe4078e9a9b4b731723fef.lean#L578).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c3f424fa48bdb95dad00a6c895134d683847e4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
