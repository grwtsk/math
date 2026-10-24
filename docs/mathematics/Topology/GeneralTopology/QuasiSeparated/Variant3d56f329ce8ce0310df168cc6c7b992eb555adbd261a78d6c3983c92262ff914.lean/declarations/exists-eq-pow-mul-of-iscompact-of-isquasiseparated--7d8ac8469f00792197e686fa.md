# exists_eq_pow_mul_of_isCompact_of_isQuasiSeparated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99d7b648-9c7a-8e32-62da-9fb4a0ded40e",
  "kind": "theorem",
  "lexical_name": "exists_eq_pow_mul_of_isCompact_of_isQuasiSeparated",
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
  "slug": "exists-eq-pow-mul-of-iscompact-of-isquasiseparated--7d8ac8469f00792197e686fa",
  "source": {
    "blob": "b22d6ea6839fc5035fa1658e6c61598d6504a906",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 525,
    "line": 384,
    "path": "GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d8ac8469f00792197e686fab558587dab28c7c7ac6334b3346bfb9cd19c6725",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99d7b648-9c7a-8e32-62da-9fb4a0ded40e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–525.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eq_pow_mul_of_isCompact_of_isQuasiSeparated (X : Scheme.{u}) (U : Opens X.carrier)
    (hU : IsCompact U.1) (hU' : IsQuasiSeparated U.1) (f : X.presheaf.obj (op U))
    (x : X.presheaf.obj (op <| X.basicOpen f)) :
    ∃ (n : ℕ) (y : X.presheaf.obj (op U)), y |_ X.basicOpen f = (f |_ X.basicOpen f) ^ n * x := by
  delta TopCat.Presheaf.restrictOpen TopCat.Presheaf.restrict
  revert hU' f x
  -- Porting note: complains `expected type is not available`, but tell Lean that it is underscore
  -- is sufficient
  apply compact_open_induction_on (P := _) U hU
  · intro _ f x
    use 0, f
    refine' @Subsingleton.elim _
      (CommRingCat.subsingleton_of_isTerminal (X.sheaf.isTerminalOfEqEmpty _)) _ _
    erw [eq_bot_iff]
    exact X.basicOpen_le f
  · -- Given `f : 𝒪(S ∪ U), x : 𝒪(X_f)`, we need to show that `f ^ n * x` is the restriction of
    -- some `y : 𝒪(S ∪ U)` for some `n : ℕ`.
    intro S hS U hU hSU f x
    -- We know that such `y₁, n₁` exists on `S` by the induction hypothesis.
    obtain ⟨n₁, y₁, hy₁⟩ :=
      hU (hSU.of_subset <| Set.subset_union_left _ _) (X.presheaf.map (homOfLE le_sup_left).op f)
        (X.presheaf.map (homOfLE _).op x)
    -- · rw [X.basicOpen_res]; exact inf_le_right
    -- We know that such `y₂, n₂` exists on `U` since `U` is affine.
    obtain ⟨n₂, y₂, hy₂⟩ :=
      exists_eq_pow_mul_of_isAffineOpen X _ U.2 (X.presheaf.map (homOfLE le_sup_right).op f)
        (X.presheaf.map (homOfLE _).op x)
    delta TopCat.Presheaf.restrictOpen TopCat.Presheaf.restrict at hy₂
    -- swap; · rw [X.basicOpen_res]; exact inf_le_right
    -- Since `S ∪ U` is quasi-separated, `S ∩ U` can be covered by finite affine opens.
    obtain ⟨s, hs', hs⟩ :=
      (isCompact_open_iff_eq_finset_affine_union _).mp
        ⟨hSU _ _ (Set.subset_union_left _ _) S.2 hS (Set.subset_union_right _ _) U.1.2
            U.2.isCompact,
          (S ⊓ U.1).2⟩
    haveI := hs'.to_subtype
    cases nonempty_fintype s
    replace hs : S ⊓ U.1 = iSup fun i : s => (i : Opens X.carrier) := by ext1; simpa using hs
    have hs₁ : ∀ i : s, i.1.1 ≤ S := by
      intro i; change (i : Opens X.carrier) ≤ S
      refine' le_trans _ inf_le_left; swap; exact U.1; erw [hs]
      -- Porting note: have to add argument explicitly
      exact @le_iSup (Opens X) s _ (fun (i : s) => (i : Opens X)) i
    have hs₂ : ∀ i : s, i.1.1 ≤ U.1 := by
      intro i; change (i : Opens X.carrier) ≤ U
      refine' le_trans _ inf_le_right; swap; exact S; erw [hs]
      -- Porting note: have to add argument explicitly
      exact @le_iSup (Opens X) s _ (fun (i : s) => (i : Opens X)) i
    -- On each affine open in the intersection, we have `f ^ (n + n₂) * y₁ = f ^ (n + n₁) * y₂`
    -- for some `n` since `f ^ n₂ * y₁ = f ^ (n₁ + n₂) * x = f ^ n₁ * y₂` on `X_f`.
    have :
      ∀ i : s,
        ∃ n : ℕ,
          X.presheaf.map (homOfLE <| hs₁ i).op
              (X.presheaf.map (homOfLE le_sup_left).op f ^ (n + n₂) * y₁) =
            X.presheaf.map (homOfLE <| hs₂ i).op
              (X.presheaf.map (homOfLE le_sup_right).op f ^ (n + n₁) * y₂) := by
      intro i
      exact
        exists_eq_pow_mul_of_is_compact_of_quasi_separated_space_aux X i.1 S U (hs₁ i) (hs₂ i) hy₁
          hy₂
    choose n hn using this
    -- We can thus choose a big enough `n` such that `f ^ (n + n₂) * y₁ = f ^ (n + n₁) * y₂`
    -- on `S ∩ U`.
    have :
      X.presheaf.map (homOfLE <| inf_le_left).op
          (X.presheaf.map (homOfLE le_sup_left).op f ^ (Finset.univ.sup n + n₂) * y₁) =
        X.presheaf.map (homOfLE <| inf_le_right).op
          (X.presheaf.map (homOfLE le_sup_right).op f ^ (Finset.univ.sup n + n₁) * y₂) := by
      fapply X.sheaf.eq_of_locally_eq' fun i : s => i.1.1
      · refine' fun i => homOfLE _; erw [hs];
        -- Porting note: have to add argument explicitly
        exact @le_iSup (Opens X) s _ (fun (i : s) => (i : Opens X)) i
      · exact le_of_eq hs
      · intro i
        replace hn :=
          congr_arg
            (fun x =>
              X.presheaf.map (homOfLE (le_trans (hs₁ i) le_sup_left)).op f ^
                  (Finset.univ.sup n - n i) *
                x)
            (hn i)
        dsimp only at hn
        delta Scheme.sheaf SheafedSpace.sheaf
        simp only [← map_pow, map_mul, ← comp_apply, ← Functor.map_comp, ← op_comp, ← mul_assoc]
          at hn ⊢
        erw [← map_mul, ← map_mul] at hn
        rw [← pow_add, ← pow_add, ← add_assoc, ← add_assoc, tsub_add_cancel_of_le] at hn
        convert hn
        exact Finset.le_sup (Finset.mem_univ _)
    use Finset.univ.sup n + n₁ + n₂
    -- By the sheaf condition, since `f ^ (n + n₂) * y₁ = f ^ (n + n₁) * y₂`, it can be glued into
    -- the desired section on `S ∪ U`.
    use (X.sheaf.objSupIsoProdEqLocus S U.1).inv ⟨⟨_ * _, _ * _⟩, this⟩
    refine' X.sheaf.eq_of_locally_eq₂
        (homOfLE (_ : X.basicOpen (X.presheaf.map (homOfLE le_sup_left).op f) ≤ _))
        (homOfLE (_ : X.basicOpen (X.presheaf.map (homOfLE le_sup_right).op f) ≤ _)) _ _ _ _ _
    · rw [X.basicOpen_res]; exact inf_le_right
    · rw [X.basicOpen_res]; exact inf_le_right
    · rw [X.basicOpen_res, X.basicOpen_res]
      erw [← inf_sup_right]
      refine' le_inf_iff.mpr ⟨X.basicOpen_le f, le_of_eq rfl⟩
    · convert congr_arg (X.presheaf.map
        -- Porting note: needs to be explicit here
        (homOfLE (by restrict_tac :
          X.basicOpen (X.presheaf.map (homOfLE (le_sup_left : S ≤ S ⊔ U.1)).op f) ≤ S)).op)
        (X.sheaf.objSupIsoProdEqLocus_inv_fst S U.1 ⟨⟨_ * _, _ * _⟩, this⟩) using 1
      · delta Scheme.sheaf SheafedSpace.sheaf
        -- Porting note: was just a single `simp only [...]`
        simp only
        erw [← comp_apply, ← comp_apply, ← comp_apply, ← comp_apply]
        simp only [← Functor.map_comp, ← op_comp]
        congr 1
      · delta Scheme.sheaf SheafedSpace.sheaf
        -- Porting note: was just a single `simp only [...]`
        simp only [map_pow, map_mul]
        erw [← comp_apply, ← comp_apply]
        simp only [← Functor.map_comp, ← op_comp, mul_assoc, pow_add]
        erw [hy₁]; congr 1; rw [← mul_assoc, ← mul_assoc]; congr 1
        rw [mul_comm, ← comp_apply, ← Functor.map_comp]; congr 1
    · convert
        congr_arg (X.presheaf.map (homOfLE _).op)
          (X.sheaf.objSupIsoProdEqLocus_inv_snd S U.1 ⟨⟨_ * _, _ * _⟩, this⟩) using
        1
      pick_goal 3
      · rw [X.basicOpen_res]; restrict_tac
      · delta Scheme.sheaf SheafedSpace.sheaf
        -- Porting note: was just a single `simp only [...]`
        simp only
        erw [← comp_apply, ← comp_apply, ← comp_apply, ← comp_apply]
        simp only [← Functor.map_comp, ← op_comp]
        congr 1
      · delta Scheme.sheaf SheafedSpace.sheaf
        -- Porting note: was just a single `simp only [...]`
        simp only [map_pow, map_mul]
        erw [← comp_apply, ← comp_apply]
        simp only [← Functor.map_comp, ← op_comp, mul_assoc, pow_add]
        erw [hy₂]; rw [← comp_apply, ← Functor.map_comp]; congr 1
#align algebraic_geometry.exists_eq_pow_mul_of_is_compact_of_is_quasi_separated AlgebraicGeometry.exists_eq_pow_mul_of_isCompact_of_isQuasiSeparated

/-- If `U` is qcqs, then `Γ(X, D(f)) ≃ Γ(X, U)_f` for every `f : Γ(X, U)`.
This is known as the **Qcqs lemma** in [R. Vakil, *The rising sea*][RisingSea]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b22d6ea6839fc5035fa1658e6c61598d6504a906` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
