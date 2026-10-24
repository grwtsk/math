# Ideal.map_includeRight_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91e211db-15ba-db17-7bc2-419a3a405357",
  "kind": "lemma",
  "lexical_name": "Ideal.map_includeRight_eq",
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
  "slug": "ideal-map-includeright-eq--e16b029ab44f41dcb3e5d5c4",
  "source": {
    "blob": "64f840108666754bc713e9eaa353006c83f90c0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 589,
    "line": 517,
    "path": "GRWTSK/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e16b029ab44f41dcb3e5d5c40c89cf454e7992b3c4f1db2f25cb6a4cf2e071ae",
  "verification": {
    "reference": "docs/verification/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91e211db-15ba-db17-7bc2-419a3a405357`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 517–589.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.map_includeRight_eq (I : Ideal B) :
    (I.map (Algebra.TensorProduct.includeRight : B →ₐ[R] A ⊗[R] B)).restrictScalars R
      = LinearMap.range (LinearMap.lTensor A (Submodule.subtype (I.restrictScalars R))) := by
  rw [← SetLike.coe_set_eq]
  apply le_antisymm
  · intro x hx
    simp only [SetLike.mem_coe, LinearMap.mem_range]
    rw [Ideal.map, ← submodule_span_eq] at hx
    refine Submodule.span_induction ?_ ?_ ?_ ?_ hx
    · intro x
      simp only [includeRight_apply, Set.mem_image, SetLike.mem_coe]
      rintro ⟨y, hy, rfl⟩
      use 1 ⊗ₜ[R] ⟨y, hy⟩
      rfl
    · use 0
      simp only [map_zero]
    · rintro x y - - ⟨x, hx, rfl⟩ ⟨y, hy, rfl⟩
      use x + y
      simp only [map_add]
    · rintro a x - ⟨x, hx, rfl⟩
      induction a with
      | zero =>
        use 0
        simp only [map_zero, smul_eq_mul, zero_mul]
      | tmul a b =>
        induction x with
        | zero =>
          use 0
          simp only [map_zero, smul_eq_mul, mul_zero]
        | tmul x y =>
          use (a * x) ⊗ₜ[R] (b •y)
          simp only [LinearMap.lTensor_tmul, Submodule.coe_subtype, smul_eq_mul, tmul_mul_tmul]
          rfl
        | add x y hx hy =>
          obtain ⟨x', hx'⟩ := hx
          obtain ⟨y', hy'⟩ := hy
          use x' + y'
          simp only [map_add, hx', smul_add, hy']
      | add a b ha hb =>
        obtain ⟨x', ha'⟩ := ha
        obtain ⟨y', hb'⟩ := hb
        use x' + y'
        simp only [map_add, ha', add_smul, hb']

  · rintro x ⟨y, rfl⟩
    induction y with
    | zero =>
        rw [map_zero]
        apply zero_mem
    | tmul a b =>
        simp only [LinearMap.lTensor_tmul, Submodule.coe_subtype]
        suffices a ⊗ₜ[R] (b : B) = (a ⊗ₜ[R] (1 : B)) * ((1 : A) ⊗ₜ[R] (b : B)) by
          rw [this]
          simp only [Submodule.coe_restrictScalars, SetLike.mem_coe]
          apply Ideal.mul_mem_left
          -- Note: adding `includeRight` as a hint fixes a timeout https://github.com/leanprover-community/mathlib4/pull/8386
          apply Ideal.mem_map_of_mem includeRight
          exact Submodule.coe_mem b
        simp only [Submodule.coe_restrictScalars, Algebra.TensorProduct.tmul_mul_tmul,
          mul_one, one_mul]
    | add x y hx hy =>
        rw [map_add]
        apply Submodule.add_mem _ hx hy

-- Now, we can prove the right exactness properties of the tensor product,
-- in its versions for algebras

variable {R : Type*} [CommRing R]
  {A B C D : Type*} [Ring A] [Ring B] [Ring C] [Ring D]
  [Algebra R A] [Algebra R B] [Algebra R C] [Algebra R D]
  (f : A →ₐ[R] B) (g : C →ₐ[R] D)

/-- If `g` is surjective, then the kernel of `(id A) ⊗ g` is generated by the kernel of `g` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean#L517).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64f840108666754bc713e9eaa353006c83f90c0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
