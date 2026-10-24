# exists_basis_basis_of_span_eq_top_of_mem_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8751d462-44c3-3734-619e-556a4d7dca75",
  "kind": "lemma",
  "lexical_name": "exists_basis_basis_of_span_eq_top_of_mem_algebraMap",
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
  "slug": "exists-basis-basis-of-span-eq-top-of-mem-algebramap--776e61d5b9a3a5c8504658fe",
  "source": {
    "blob": "1080f3a5309f94a202bfe038ff5e84358e8e61bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 173,
    "path": "GRWTSK/Algebra/LinearAlgebra/Restrict/Variant2c420213d993bd7fc9eb51c131d2cfb27b9758b77f1a20a087bed378af8cd0d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:776e61d5b9a3a5c8504658fe184b0fb6cc64d87270a852499122bb1b997df0e7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Restrict/Variant2c420213d993bd7fc9eb51c131d2cfb27b9758b77f1a20a087bed378af8cd0d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8751d462-44c3-3734-619e-556a4d7dca75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_basis_basis_of_span_eq_top_of_mem_algebraMap
    (M' : Submodule K M) (N' : Submodule K N)
    (hM : span L (M' : Set M) = ⊤)
    (hN : span L (N' : Set N) = ⊤)
    (hp : ∀ᵉ (x ∈ M') (y ∈ N'), p x y ∈ (algebraMap K L).range) :
    ∃ (n : ℕ) (b : Basis (Fin n) L M) (b' : Basis (Fin n) K M'), ∀ i, b i = b' i := by
  classical
  have : IsReflexive L M := p.reflexive_left
  have : IsReflexive L N := p.reflexive_right
  obtain ⟨v, hv₁, hv₂, hv₃⟩ := exists_linearIndependent L (M' : Set M)
  rw [hM] at hv₂
  let b : Basis _ L M := Basis.mk hv₃ <| by rw [← hv₂, Subtype.range_coe_subtype, Set.setOf_mem_eq]
  have : Fintype v := Set.Finite.fintype <| Module.Finite.finite_basis b
  set v' : v → M' := fun i ↦ ⟨i, hv₁ (Subtype.coe_prop i)⟩
  have hv' : LinearIndependent K v' := by
    replace hv₃ := hv₃.restrict_scalars (R := K) <| by
      simp_rw [← Algebra.algebraMap_eq_smul_one]
      exact FaithfulSMul.algebraMap_injective K L
    rw [show ((↑) : v → M) = M'.subtype ∘ v' by ext; simp [v']] at hv₃
    exact hv₃.of_comp
  suffices span K (Set.range v') = ⊤ by
    let e := (Module.Finite.finite_basis b).equivFin
    let b' : Basis _ K M' := Basis.mk hv' (by rw [this])
    exact ⟨_, b.reindex e, b'.reindex e, fun i ↦ by simp [b, b', v']⟩
  suffices span K v = M' by
    apply Submodule.map_injective_of_injective M'.injective_subtype
    rw [Submodule.map_span, ← Set.image_univ, Set.image_image]
    simpa [v']
  refine le_antisymm (Submodule.span_le.mpr hv₁) fun m hm ↦ ?_
  obtain ⟨w, hw₁, hw₂, hw₃⟩ := exists_linearIndependent L (N' : Set N)
  rw [hN] at hw₂
  let bN : Basis _ L N := Basis.mk hw₃ <| by rw [← hw₂, Subtype.range_coe_subtype, Set.setOf_mem_eq]
  have : Fintype w := Set.Finite.fintype <| Module.Finite.finite_basis bN
  have e : v ≃ w := Fintype.equivOfCardEq <| by rw [← Module.finrank_eq_card_basis b,
    ← Module.finrank_eq_card_basis bN, p.finrank_eq]
  let bM := bN.dualBasis.map p.toDualLeft.symm
  have hbM (j : w) (x : M) (hx : x ∈ M') : bM.repr x j = p x (j : N) := by simp [bM, bN]
  have hj (j : w) : bM.repr m j ∈ (algebraMap K L).range := (hbM _ _ hm) ▸ hp m hm j (hw₁ j.2)
  replace hp (i : w) (j : v) :
      (bN.dualBasis.map p.toDualLeft.symm).toMatrix b i j ∈ (algebraMap K L).fieldRange := by
    simp only [Basis.toMatrix, Basis.map_repr, LinearEquiv.symm_symm, LinearEquiv.trans_apply,
      toDualLeft_apply, Basis.dualBasis_repr]
    exact hp (b j) (by simpa [b] using hv₁ j.2) (bN i) (by simpa [bN] using hw₁ i.2)
  have hA (i j) : b.toMatrix bM i j ∈ (algebraMap K L).range :=
    Matrix.mem_subfield_of_mul_eq_one_of_mem_subfield_left e _ (by simp [bM]) hp i j
  have h_span : span K v = span K (Set.range b) := by simp [b]
  rw [h_span, Basis.mem_span_iff_repr_mem, ← Basis.toMatrix_mulVec_repr bM b m]
  exact fun i ↦ Subring.sum_mem _ fun j _ ↦ Subring.mul_mem _ (hA i j) (hj j)

variable {M' N' : Type*}
  [AddCommGroup M'] [AddCommGroup N'] [Module K M'] [Module K N'] [IsScalarTower K L N]
  (i : M' →ₗ[K] M) (j : N' →ₗ[K] N) (hi : Injective i) (hj : Injective j)

/-- An auxiliary definition used only to simplify the construction of the more general definition
`PerfectPairing.restrictScalarsField`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Restrict/Variant2c420213d993bd7fc9eb51c131d2cfb27b9758b77f1a20a087bed378af8cd0d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Restrict/Variant2c420213d993bd7fc9eb51c131d2cfb27b9758b77f1a20a087bed378af8cd0d7.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1080f3a5309f94a202bfe038ff5e84358e8e61bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
