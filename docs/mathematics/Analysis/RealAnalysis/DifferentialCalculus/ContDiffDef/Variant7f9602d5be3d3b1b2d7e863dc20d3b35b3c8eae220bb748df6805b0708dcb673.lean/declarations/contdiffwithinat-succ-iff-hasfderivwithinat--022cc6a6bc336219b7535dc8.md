# contDiffWithinAt_succ_iff_hasFDerivWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c838c642f870cc3283188bf6ef5a0ed8c37aa2dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 553,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7f9602d5be3d3b1b2d7e863dc20d3b35b3c8eae220bb748df6805b0708dcb673.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dc88a68a-dfbe-d290-1eaa-ce12faa79fac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:465d3b46-9e21-7220-4b35-abb0937a350c",
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
  "slug": "contdiffwithinat-succ-iff-hasfderivwithinat--022cc6a6bc336219b7535dc8",
  "source": {
    "blob": "c838c642f870cc3283188bf6ef5a0ed8c37aa2dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 603,
    "line": 553,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiffDef/Variant7f9602d5be3d3b1b2d7e863dc20d3b35b3c8eae220bb748df6805b0708dcb673.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:022cc6a6bc336219b7535dc886afde1fdb5dbf434a460082874d08b036a5e44d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ContDiffDef/Variant7f9602d5be3d3b1b2d7e863dc20d3b35b3c8eae220bb748df6805b0708dcb673.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:465d3b46-9e21-7220-4b35-abb0937a350c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 553–603.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contDiffWithinAt_succ_iff_hasFDerivWithinAt {n : ℕ} :
    ContDiffWithinAt 𝕜 (n + 1 : ℕ) f s x ↔ ∃ u ∈ 𝓝[insert x s] x, ∃ f' : E → E →L[𝕜] F,
      (∀ x ∈ u, HasFDerivWithinAt f (f' x) u x) ∧ ContDiffWithinAt 𝕜 n f' u x := by
  constructor
  · intro h
    rcases h n.succ le_rfl with ⟨u, hu, p, Hp⟩
    refine'
      ⟨u, hu, fun y => (continuousMultilinearCurryFin1 𝕜 E F) (p y 1), fun y hy =>
        Hp.hasFDerivWithinAt (WithTop.coe_le_coe.2 (Nat.le_add_left 1 n)) hy, _⟩
    intro m hm
    refine' ⟨u, _, fun y : E => (p y).shift, _⟩
    · -- Porting note: without the explicit argument Lean is not sure of the type.
      convert @self_mem_nhdsWithin _ _ x u
      have : x ∈ insert x s := by simp
      exact insert_eq_of_mem (mem_of_mem_nhdsWithin this hu)
    · rw [hasFTaylorSeriesUpToOn_succ_iff_right] at Hp
      exact Hp.2.2.of_le hm
  · rintro ⟨u, hu, f', f'_eq_deriv, Hf'⟩
    rw [contDiffWithinAt_nat]
    rcases Hf' n le_rfl with ⟨v, hv, p', Hp'⟩
    refine' ⟨v ∩ u, _, fun x => (p' x).unshift (f x), _⟩
    · apply Filter.inter_mem _ hu
      apply nhdsWithin_le_of_mem hu
      exact nhdsWithin_mono _ (subset_insert x u) hv
    · rw [hasFTaylorSeriesUpToOn_succ_iff_right]
      refine' ⟨fun y _ => rfl, fun y hy => _, _⟩
      · change
          HasFDerivWithinAt (fun z => (continuousMultilinearCurryFin0 𝕜 E F).symm (f z))
            (FormalMultilinearSeries.unshift (p' y) (f y) 1).curryLeft (v ∩ u) y
        -- Porting note: needed `erw` here.
        -- https://github.com/leanprover-community/mathlib4/issues/5164
        erw [LinearIsometryEquiv.comp_hasFDerivWithinAt_iff']
        convert (f'_eq_deriv y hy.2).mono (inter_subset_right v u)
        rw [← Hp'.zero_eq y hy.1]
        ext z
        change ((p' y 0) (init (@cons 0 (fun _ => E) z 0))) (@cons 0 (fun _ => E) z 0 (last 0)) =
          ((p' y 0) 0) z
        congr
        norm_num
      · convert (Hp'.mono (inter_subset_left v u)).congr fun x hx => Hp'.zero_eq x hx.1 using 1
        · ext x y
          change p' x 0 (init (@snoc 0 (fun _ : Fin 1 => E) 0 y)) y = p' x 0 0 y
          rw [init_snoc]
        · ext x k v y
          change p' x k (init (@snoc k (fun _ : Fin k.succ => E) v y))
            (@snoc k (fun _ : Fin k.succ => E) v y (last k)) = p' x k v y
          rw [snoc_last, init_snoc]
#align cont_diff_within_at_succ_iff_has_fderiv_within_at contDiffWithinAt_succ_iff_hasFDerivWithinAt

/-- A version of `contDiffWithinAt_succ_iff_hasFDerivWithinAt` where all derivatives
  are taken within the same set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ContDiffDef/Variant7f9602d5be3d3b1b2d7e863dc20d3b35b3c8eae220bb748df6805b0708dcb673.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiffDef/Variant7f9602d5be3d3b1b2d7e863dc20d3b35b3c8eae220bb748df6805b0708dcb673.lean#L553).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c838c642f870cc3283188bf6ef5a0ed8c37aa2dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
