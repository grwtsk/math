# Aux.of_eq_iSup_basicOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5483ea8e-b725-5110-c5c7-4071f2e955ba",
  "kind": "lemma",
  "lexical_name": "Aux.of_eq_iSup_basicOpen",
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
  "slug": "aux-of-eq-isup-basicopen--2df371ada7600cba27d68458",
  "source": {
    "blob": "7b414ff838619701683daafb0d6146a5314aebc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 785,
    "line": 668,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2df371ada7600cba27d684582fa15bd47ba6434a388fff079209ff1e89bf5864",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5483ea8e-b725-5110-c5c7-4071f2e955ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 668–785.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma Aux.of_eq_iSup_basicOpen {M : (Spec R).Modules} (V : (Spec R).Opens)
    {ι : Type*} [Finite ι] (g : ι → R) (hg : V = ⨆ i, basicOpen (g i))
    (h₁ : ∀ (i : ι), Aux M (basicOpen (g i))) :
    Aux M V := by
  have h₂ (i j : ι) : Aux M (basicOpen (g i * g j)) :=
    .of_le _ (basicOpen_mul_le_left _ _) (h₁ i)
  have hgle (i : ι) : basicOpen (g i) ≤ V := by rw [hg]; exact le_iSup_of_le _ le_rfl
  have hug (i : ι) (m : ℕ) :
      IsUnit (algebraMap R (Module.End R Γ(M, basicOpen (g i))) (g i ^ m)) := by
    rw [map_pow]
    exact (Scheme.Modules.isUnit_algebraMap_end_of_le_basicOpen (g i) le_rfl).pow m
  -- We show existence and uniqueness separately.
  refine ⟨fun f hf s ↦ ?_, fun f hf t hs ↦ ?_⟩
  · have hfgi (i : ι) : basicOpen (f * g i) ≤ basicOpen (g i) := basicOpen_mul_le_right f (g i)
    let s' (i : ι) : Γ(M, basicOpen (f * g i)) :=
      M.presheaf.map (homOfLE <| basicOpen_mul_le_left f (g i)).op s
    /- By `h₁`, up to a factor of `f ^ N`, the restrictions of `s` to `D(f) ∩ D(gᵢ)` lift
    to sections `tᵢ` over `D(gᵢ)`. -/
    obtain ⟨N, t, ht⟩ : ∃ (N : ℕ) (t : ∀ i, Γ(M, basicOpen (g i))),
        ∀ i, f ^ N • s' i = M.presheaf.map (homOfLE (basicOpen_mul_le_right f (g i))).op (t i) := by
      have (i : ι) : ∃ (n : ℕ) (t : Γ(M, basicOpen (g i))),
          f ^ n • s' i = M.presheaf.map (homOfLE (hfgi i)).op t := by
        obtain ⟨n, t', ht'⟩ := (h₁ i).existence (f * g i) (hfgi i) (s' i)
        rw [mul_pow, mul_smul, smul_comm] at ht'
        obtain ⟨ψ, hψ⟩ := IsUnit.exists_right_inv (hug i n)
        use n, ψ t'
        apply (M.isSMulRegular_of_le_basicOpen (basicOpen_mul_le_right f (g i))).pow n
        dsimp
        rw [← ht', ← Scheme.Modules.map_smul_Spec]
        congr 1
        exact congr($hψ t').symm
      choose n t' ht' using this
      have (i : ι) : n i ≤ ⨆ i, n i := le_ciSup (Finite.bddAbove_range _) _
      have hN (i : ι) : ⨆ i, n i = ((⨆ i, n i) - n i) + n i := by grind
      refine ⟨⨆ i, n i, fun i ↦ f ^ ((⨆ i, n i) - n i) • t' i, fun i ↦ ?_⟩
      conv_lhs => rw [hN i]
      rw [pow_add, mul_smul, ht', M.map_smul_Spec]
    /- By `h₂`, up to a factor of `f ^ K`, the restrictions of `tᵢ` and `tⱼ` to
    to `D(gᵢ) ∩ D(gⱼ)` agree. -/
    obtain ⟨K, hK⟩ : ∃ (K : ℕ), ∀ (i j : ι),
        M.presheaf.map (homOfLE (basicOpen_mul_le_left (g i) (g j))).op (f ^ K • t i) =
          M.presheaf.map (homOfLE (basicOpen_mul_le_right (g i) (g j))).op (f ^ K • t j) := by
      have (i j : ι) : ∃ (m : ℕ),
          M.presheaf.map (homOfLE (basicOpen_mul_le_left (g i) (g j))).op (f ^ m • t i) =
            M.presheaf.map (homOfLE (basicOpen_mul_le_right (g i) (g j))).op (f ^ m • t j) := by
        have := (h₂ i j).uniqueness (f * (g i * g j)) (basicOpen_mul_le_right _ _)
          (M.presheaf.map (homOfLE (basicOpen_mul_le_left (g i) (g j))).op (t i) -
            M.presheaf.map (homOfLE (basicOpen_mul_le_right (g i) (g j))).op (t j)) ?_
        · obtain ⟨m, hm⟩ := this
          use m
          apply (M.isSMulRegular_of_le_basicOpen le_rfl).pow m
          simpa [M.map_smul_Spec _ (f ^ m), ← mul_smul, ← mul_smul, ← mul_pow, ← mul_comm f,
            smul_sub, sub_eq_zero] using hm
        · have hfgigi : basicOpen (f * (g i * g j)) ≤ basicOpen (f * g i) := by
            rw [← mul_assoc]
            exact basicOpen_mul_le_left _ _
          have hfgigj : basicOpen (f * (g i * g j)) ≤ basicOpen (f * g j) := by
            rw [mul_comm (g i) (g j), ← mul_assoc]
            exact basicOpen_mul_le_left _ _
          rw [map_sub, ← M.presheaf.map_comp_apply, ← op_comp, ← M.presheaf.map_comp_apply,
            ← op_comp, homOfLE_comp, homOfLE_comp, ← homOfLE_comp hfgigi (hfgi i),
            ← homOfLE_comp hfgigj (hfgi j), op_comp, M.presheaf.map_comp_apply, ← ht i,
            M.map_smul_Spec, ← M.presheaf.map_comp_apply, ← op_comp, homOfLE_comp, op_comp,
            M.presheaf.map_comp_apply, ← ht j, M.map_smul_Spec, ← M.presheaf.map_comp_apply,
            ← op_comp, homOfLE_comp]
          simp
      choose m hm using this
      let K := ⨆ i, ⨆ j, m i j
      refine ⟨K, fun i j ↦ ?_⟩
      have : m i j ≤ K :=
        le_ciSup_of_le (Finite.bddAbove_range _) i (le_ciSup (Finite.bddAbove_range _) _)
      have : K = (K - m i j) + m i j := by lia
      rw [this, pow_add, mul_smul, mul_smul, M.map_smul_Spec, M.map_smul_Spec _ (f ^ (K - m i j)),
        hm i j]
    -- So up to a factor of `f ^ (N + K)`, the `tᵢ` glue.
    refine ⟨N + K, ?_⟩
    have := TopCat.Sheaf.existsUnique_gluing' ⟨_, M.isSheaf⟩ (fun i ↦ basicOpen (g i)) V
      (fun i ↦ homOfLE (by rw [hg]; exact le_iSup_of_le _ le_rfl)) (by simp [hg])
      (fun i ↦ f ^ K • t i) ?_
    · obtain ⟨a, ha, -⟩ := this
      use a
      refine TopCat.Sheaf.eq_of_locally_eq' ⟨_, M.isSheaf⟩ (fun i ↦ basicOpen (f * g i)) _
          (fun i ↦ homOfLE (basicOpen_mul_le_left f (g i))) ?_ _ _ ?_
      · rw [left_eq_inf.mpr hf, hg, inf_iSup_eq]
        simp_rw [basicOpen_mul]
        exact le_rfl
      · intro i
        rw [← M.presheaf.map_comp_apply, ← op_comp, homOfLE_comp,
          ← homOfLE_comp (basicOpen_mul_le_right _ _) (hgle i), op_comp, M.presheaf.map_comp_apply,
          M.map_smul_Spec, ha, M.map_smul_Spec, pow_add, mul_smul, smul_comm, ht i]
    · intro i j
      have : Function.Injective (M.presheaf.map (eqToHom <| (basicOpen_mul (g i) (g j))).op) :=
        ConcreteCategory.injective_of_mono_of_preservesPullback _
      apply this
      dsimp [Opens.infLELeft, Opens.infLERight]
      simp_rw [← M.presheaf.map_comp_apply, ← op_comp, eqToHom_comp_homOfLE]
      exact hK i j
  · have (i : ι) : ∃ (n : ℕ), M.presheaf.map (homOfLE (hgle i)).op (f ^ n • t) = 0 := by
      have := (h₁ i).uniqueness (f * g i) (basicOpen_mul_le_right f (g i))
        (M.presheaf.map (homOfLE (hgle i)).op t) ?_
      · obtain ⟨n, hn⟩ := this
        use n
        rw [mul_pow, mul_comm, mul_smul, ← Scheme.Modules.map_smul_Spec] at hn
        exact ((M.isSMulRegular_of_le_basicOpen le_rfl).pow n).right_eq_zero_of_smul hn
      · rw [← M.presheaf.map_comp_apply, ← op_comp, homOfLE_comp,
          ← homOfLE_comp ((basicOpen_mul_le_left f (g i))) hf, op_comp, M.presheaf.map_comp_apply]
        simp [hs]
    choose n hn using this
    use ⨆ i, n i
    apply TopCat.Sheaf.eq_of_locally_eq' ⟨_, M.isSheaf⟩ (fun i ↦ basicOpen (g i)) _
      (fun i ↦ homOfLE (by rw [hg]; exact le_iSup_of_le _ le_rfl))
    · simp [hg]
    · intro i
      have : n i ≤ ⨆ i, n i := le_ciSup (Finite.bddAbove_range _) _
      have : ⨆ i, n i = ((⨆ i, n i) - n i) + n i := by lia
      rw [this, pow_add, mul_smul, Scheme.Modules.map_smul_Spec, hn i]
      simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean#L668).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b414ff838619701683daafb0d6146a5314aebc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
