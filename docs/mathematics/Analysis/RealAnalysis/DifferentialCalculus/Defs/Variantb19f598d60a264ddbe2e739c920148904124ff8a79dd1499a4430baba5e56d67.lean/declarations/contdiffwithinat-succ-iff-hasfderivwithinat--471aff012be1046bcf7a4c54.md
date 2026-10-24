# contDiffWithinAt_succ_iff_hasFDerivWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48039c05-191d-ba33-d434-a28780ced03d",
  "kind": "theorem",
  "lexical_name": "contDiffWithinAt_succ_iff_hasFDerivWithinAt",
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
  "slug": "contdiffwithinat-succ-iff-hasfderivwithinat--471aff012be1046bcf7a4c54",
  "source": {
    "blob": "8bb249814803ca9dedf71798af7e350c7033041a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 373,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb19f598d60a264ddbe2e739c920148904124ff8a79dd1499a4430baba5e56d67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:471aff012be1046bcf7a4c5400f230986b9ffe6db4463475805231ed981f1579",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb19f598d60a264ddbe2e739c920148904124ff8a79dd1499a4430baba5e56d67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48039c05-191d-ba33-d434-a28780ced03d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contDiffWithinAt_succ_iff_hasFDerivWithinAt (hn : n ≠ ∞) :
    ContDiffWithinAt 𝕜 (n + 1) f s x ↔ ∃ u ∈ 𝓝[insert x s] x, (n = ω → AnalyticOn 𝕜 f u) ∧
      ∃ f' : E → E →L[𝕜] F,
      (∀ x ∈ u, HasFDerivWithinAt f (f' x) u x) ∧ ContDiffWithinAt 𝕜 n f' u x := by
  have h'n : n + 1 ≠ ∞ := by simpa using hn
  constructor
  · intro h
    rcases (contDiffWithinAt_iff_of_ne_infty h'n).1 h with ⟨u, hu, p, Hp, H'p⟩
    refine ⟨u, hu, ?_, fun y => (continuousMultilinearCurryFin1 𝕜 E F) (p y 1),
        fun y hy => Hp.hasFDerivWithinAt (by simp) hy, ?_⟩
    · rintro rfl
      exact Hp.analyticOn (H'p rfl 0)
    apply (contDiffWithinAt_iff_of_ne_infty hn).2
    refine ⟨u, ?_, fun y : E => (p y).shift, ?_⟩
    · convert! @self_mem_nhdsWithin _ _ x u
      have : x ∈ insert x s := by simp
      exact insert_eq_of_mem (mem_of_mem_nhdsWithin this hu)
    · rw [hasFTaylorSeriesUpToOn_succ_iff_right] at Hp
      refine ⟨Hp.2.2, ?_⟩
      rintro rfl i
      change AnalyticOn 𝕜
        (fun x ↦ (continuousMultilinearCurryRightEquiv' 𝕜 i E F) (p x (i + 1))) u
      apply (LinearIsometryEquiv.analyticOnNhd _ _).comp_analyticOn
        ?_ (Set.mapsTo_univ _ _)
      exact H'p rfl _
  · rintro ⟨u, hu, hf, f', f'_eq_deriv, Hf'⟩
    rw [contDiffWithinAt_iff_of_ne_infty h'n]
    rcases (contDiffWithinAt_iff_of_ne_infty hn).1 Hf' with ⟨v, hv, p', Hp', p'_an⟩
    refine ⟨v ∩ u, ?_, fun x => (p' x).unshift (f x), ?_, ?_⟩
    · apply Filter.inter_mem _ hu
      apply nhdsWithin_le_of_mem hu
      exact nhdsWithin_mono _ (subset_insert x u) hv
    · rw [hasFTaylorSeriesUpToOn_succ_iff_right]
      refine ⟨fun y _ => rfl, fun y hy => ?_, ?_⟩
      · change
          HasFDerivWithinAt (fun z => (continuousMultilinearCurryFin0 𝕜 E F).symm (f z))
            (FormalMultilinearSeries.unshift (p' y) (f y) 1).curryLeft (v ∩ u) y
        rw [← Function.comp_def _ f, LinearIsometryEquiv.comp_hasFDerivWithinAt_iff']
        convert! (f'_eq_deriv y hy.2).mono inter_subset_right
        rw [← Hp'.zero_eq y hy.1]
        ext z
        change ((p' y 0) (init (@cons 0 (fun _ => E) z 0))) (@cons 0 (fun _ => E) z 0 (last 0)) =
          ((p' y 0) 0) z
        congr
        norm_num [eq_iff_true_of_subsingleton]
      · convert! (Hp'.mono inter_subset_left).congr fun x hx => Hp'.zero_eq x hx.1 using 1
        · ext x y
          change p' x 0 (init (@snoc 0 (fun _ : Fin 1 => E) 0 y)) y = p' x 0 0 y
          rw [init_snoc]
        · ext x k v y
          change p' x k (init (@snoc k (fun _ : Fin k.succ => E) v y))
            (@snoc k (fun _ : Fin k.succ => E) v y (last k)) = p' x k v y
          rw [snoc_last, init_snoc]
    · intro h i
      simp only [WithTop.add_eq_top, WithTop.one_ne_top, or_false] at h
      match i with
      | 0 =>
        simp only [FormalMultilinearSeries.unshift]
        apply AnalyticOnNhd.comp_analyticOn _ ((hf h).mono inter_subset_right)
          (Set.mapsTo_univ _ _)
        exact LinearIsometryEquiv.analyticOnNhd _ _
      | i + 1 =>
        simp only [FormalMultilinearSeries.unshift, Nat.succ_eq_add_one]
        apply AnalyticOnNhd.comp_analyticOn _ ((p'_an h i).mono inter_subset_left)
          (Set.mapsTo_univ _ _)
        exact LinearIsometryEquiv.analyticOnNhd _ _

/-- A version of `contDiffWithinAt_succ_iff_hasFDerivWithinAt` where all derivatives
  are taken within the same set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb19f598d60a264ddbe2e739c920148904124ff8a79dd1499a4430baba5e56d67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb19f598d60a264ddbe2e739c920148904124ff8a79dd1499a4430baba5e56d67.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bb249814803ca9dedf71798af7e350c7033041a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
