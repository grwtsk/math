# torsion_by_prime_power_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b405853b85741553a97e968725fa0ebfd692b063",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b052c833bbb249f046294eb93f1b643834227d812aa0d9a1ce050d82e264e928.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:575e797b-e351-7900-5c19-ba76707aa6f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8822245-c0a6-60bd-68e8-c58f060ce603",
  "kind": "theorem",
  "lexical_name": "torsion_by_prime_power_decomposition",
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
  "slug": "torsion-by-prime-power-decomposition--23f016ca6f997747f6d93530",
  "source": {
    "blob": "b405853b85741553a97e968725fa0ebfd692b063",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 170,
    "path": "GRWTSK/Algebra/LinearAlgebra/PID/Variantb052c833bbb249f046294eb93f1b643834227d812aa0d9a1ce050d82e264e928.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23f016ca6f997747f6d935305c012c78ca7ae8d27bf965d60016daa367fbdd24",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PID/Variantb052c833bbb249f046294eb93f1b643834227d812aa0d9a1ce050d82e264e928.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8822245-c0a6-60bd-68e8-c58f060ce603`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem torsion_by_prime_power_decomposition (hN : Module.IsTorsion' N (Submonoid.powers p))
    [h' : Module.Finite R N] :
    ∃ (d : ℕ) (k : Fin d → ℕ), Nonempty <| N ≃ₗ[R] ⨁ i : Fin d, R ⧸ R ∙ p ^ (k i : ℕ) := by
  obtain ⟨d, s, hs⟩ := @Module.Finite.exists_fin _ _ _ _ _ h'; use d; clear h'
  induction' d with d IH generalizing N
  · simp only [Nat.zero_eq] at *
    -- Porting note: was `use fun i => finZeroElim i`
    use finZeroElim
    rw [Set.range_eq_empty, Submodule.span_empty] at hs
    haveI : Unique N :=
      ⟨⟨0⟩, fun x => by dsimp; rw [← Submodule.mem_bot R, hs]; exact Submodule.mem_top⟩
    haveI : IsEmpty (Fin Nat.zero) := inferInstanceAs (IsEmpty (Fin 0))
    exact ⟨0⟩
  · have : ∀ x : N, Decidable (x = 0) := fun _ => by classical infer_instance
    obtain ⟨j, hj⟩ := exists_isTorsionBy hN d.succ d.succ_ne_zero s hs
    let s' : Fin d → N ⧸ R ∙ s j := Submodule.Quotient.mk ∘ s ∘ j.succAbove
    -- Porting note(https://github.com/leanprover-community/mathlib4/issues/5732):
    -- `obtain` doesn't work with placeholders.
    have := IH ?_ s' ?_
    obtain ⟨k, ⟨f⟩⟩ := this
    clear IH
    · have : ∀ i : Fin d,
          ∃ x : N, p ^ k i • x = 0 ∧ f (Submodule.Quotient.mk x) = DirectSum.lof R _ _ i 1 := by
        intro i
        let fi := f.symm.toLinearMap.comp (DirectSum.lof _ _ _ i)
        obtain ⟨x, h0, h1⟩ := exists_smul_eq_zero_and_mk_eq hp hN hj fi; refine' ⟨x, h0, _⟩; rw [h1]
        simp only [LinearMap.coe_comp, f.symm.coe_toLinearMap, f.apply_symm_apply,
          Function.comp_apply]
      refine ⟨?_, ⟨?_⟩⟩
      · exact fun a => (fun i => (Option.rec (pOrder hN (s j)) k i : ℕ)) (finSuccEquiv d a)
      · refine (((@lequivProdOfRightSplitExact _ _ _ _ _ _ _ _ _ _ _ _
          ((f.trans ULift.moduleEquiv.{u, u, v}.symm).toLinearMap.comp <| mkQ _)
          ((DirectSum.toModule _ _ _ fun i => (liftQSpanSingleton (p ^ k i)
              (LinearMap.toSpanSingleton _ _ _) (this i).choose_spec.left : R ⧸ _ →ₗ[R] _)).comp
            ULift.moduleEquiv.toLinearMap) (R ∙ s j).injective_subtype ?_ ?_).symm.trans
          (((quotTorsionOfEquivSpanSingleton R N (s j)).symm.trans
          (quotEquivOfEq (torsionOf R N (s j)) _
          (Ideal.torsionOf_eq_span_pow_pOrder hp hN (s j)))).prod
          (ULift.moduleEquiv))).trans
          (@DirectSum.lequivProdDirectSum R _ _ _
          (fun i => R ⧸ R ∙ p ^ @Option.rec _ (fun _ => ℕ) (pOrder hN <| s j) k i) _ _).symm).trans
          (DirectSum.lequivCongrLeft R (finSuccEquiv d).symm)
        · rw [range_subtype, LinearEquiv.ker_comp, ker_mkQ]
        · rw [← f.comp_coe, LinearMap.comp_assoc, LinearMap.comp_assoc,
            LinearEquiv.toLinearMap_symm_comp_eq, LinearMap.comp_id, ← LinearMap.comp_assoc,
            ← LinearMap.comp_assoc]
          suffices (f.toLinearMap.comp (R ∙ s j).mkQ).comp _ = LinearMap.id by
            rw [this, LinearMap.id_comp]
          ext i : 3
          simp only [LinearMap.coe_comp, Function.comp_apply, mkQ_apply]
          rw [LinearEquiv.coe_toLinearMap, LinearMap.id_apply, DirectSum.toModule_lof,
            liftQSpanSingleton_apply, LinearMap.toSpanSingleton_one, Ideal.Quotient.mk_eq_mk,
            map_one, (this i).choose_spec.right]
    · exact (mk_surjective _).forall.mpr fun x =>
        ⟨(@hN x).choose, by rw [← Quotient.mk_smul, (@hN x).choose_spec, Quotient.mk_zero]⟩
    · have hs' := congr_arg (Submodule.map <| mkQ <| R ∙ s j) hs
      rw [Submodule.map_span, Submodule.map_top, range_mkQ] at hs'; simp only [mkQ_apply] at hs'
      simp only; rw [← Function.comp.assoc, Set.range_comp (_ ∘ s), Fin.range_succAbove]
      rw [← Set.range_comp, ← Set.insert_image_compl_eq_range _ j, Function.comp_apply,
        (Quotient.mk_eq_zero _).mpr (Submodule.mem_span_singleton_self _), span_insert_zero] at hs'
      exact hs'
#align module.torsion_by_prime_power_decomposition Module.torsion_by_prime_power_decomposition

end PTorsion

/-- A finitely generated torsion module over a PID is isomorphic to a direct sum of some
  `R ⧸ R ∙ (p i ^ e i)` where the `p i ^ e i` are prime powers.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PID/Variantb052c833bbb249f046294eb93f1b643834227d812aa0d9a1ce050d82e264e928.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PID/Variantb052c833bbb249f046294eb93f1b643834227d812aa0d9a1ce050d82e264e928.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b405853b85741553a97e968725fa0ebfd692b063` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
