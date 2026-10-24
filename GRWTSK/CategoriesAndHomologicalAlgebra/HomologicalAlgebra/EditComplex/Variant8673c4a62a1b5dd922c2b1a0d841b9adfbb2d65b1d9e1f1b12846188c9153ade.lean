import Mathlib.Algebra.Homology.ShortComplex.ModuleCat
import Mathlib.Algebra.Homology.ShortComplex.HomologicalComplex
import Mathlib.LinearAlgebra.Finsupp.LSum

/-!
# Integral filesystem edit complexes

A permutation of snapshot values does not by itself preserve a chosen notion
of an elementary edit.  This module makes that missing topology explicit.  A
`FilesystemEditPresentation` supplies vertices, directed edit generators, and
two-dimensional relation generators whose declared edge boundaries are
closed.  From those data we construct a genuine `ℕ`-graded chain complex in
`ModuleCat ℤ`, concentrated in degrees zero through two.

The chain groups use finitely supported integer combinations, the standard
concrete model of the free abelian group on a type.  An `Action` includes
permutations of edits and relations together with all naturality equations.
Only this chain-level compatibility, rather than the underlying snapshot
bijection alone, produces the chain-complex automorphism.
-/

namespace FilesystemHomology

open CategoryTheory

universe u

/-- The finitely supported integral free module on `X`. -/
abbrev FreeZ (X : Type*) := X →₀ ℤ

/-- The boundary of one directed edit, `[dst] - [src]`. -/
noncomputable def endpointBoundary
    {Snapshot Edit : Type*}
    (src dst : Edit → Snapshot)
    (edit : Edit) :
    FreeZ Snapshot :=
  Finsupp.single (dst edit) 1 - Finsupp.single (src edit) 1

/-- Extend endpoint boundaries linearly over an integral edit chain. -/
noncomputable def endpointBoundarySum
    {Snapshot Edit : Type*}
    (src dst : Edit → Snapshot)
    (chain : FreeZ Edit) :
    FreeZ Snapshot :=
  chain.sum fun edit =>
    (LinearMap.toSpanSingleton ℤ _
      (endpointBoundary src dst edit)).toAddMonoidHom

/--
A two-dimensional presentation of a filesystem edit topology.

`relation_closed` is precisely the degree-two chain condition: the declared
edge boundary of every relation has zero vertex boundary.
-/
structure FilesystemEditPresentation (Snapshot : Type u) where
  Edit : Type u
  src : Edit → Snapshot
  dst : Edit → Snapshot
  Relation : Type u
  relationBoundary : Relation → FreeZ Edit
  relation_closed : ∀ relation,
    endpointBoundarySum src dst (relationBoundary relation) = 0

namespace FilesystemEditPresentation

variable {Snapshot : Type u}
variable (M : FilesystemEditPresentation Snapshot)

/-! ## The three integral chain groups and their differentials -/

/-- The boundary vector of an edit generator. -/
noncomputable def editBoundary (edit : M.Edit) : FreeZ Snapshot :=
  endpointBoundary M.src M.dst edit

/-- The degree-one differential, extended from `[e] ↦ [dst e] - [src e]`. -/
noncomputable def boundaryOne : FreeZ M.Edit →ₗ[ℤ] FreeZ Snapshot :=
  Finsupp.lsum ℤ fun edit =>
    LinearMap.toSpanSingleton ℤ _ (M.editBoundary edit)

/-- The degree-two differential, extended from the declared relation boundary. -/
noncomputable def boundaryTwo : FreeZ M.Relation →ₗ[ℤ] FreeZ M.Edit :=
  Finsupp.lsum ℤ fun relation =>
    LinearMap.toSpanSingleton ℤ _ (M.relationBoundary relation)

@[simp]
theorem boundaryOne_single (edit : M.Edit) (coefficient : ℤ) :
    M.boundaryOne (Finsupp.single edit coefficient) =
      coefficient • M.editBoundary edit := by
  simp [boundaryOne]

@[simp]
theorem boundaryTwo_single (relation : M.Relation) (coefficient : ℤ) :
    M.boundaryTwo (Finsupp.single relation coefficient) =
      coefficient • M.relationBoundary relation := by
  simp [boundaryTwo]

/-- The linear differential agrees with the raw finite-sum boundary formula. -/
theorem boundaryOne_apply (chain : FreeZ M.Edit) :
    M.boundaryOne chain = endpointBoundarySum M.src M.dst chain := by
  rw [boundaryOne, Finsupp.lsum_apply]
  rfl

/-- The presentation's closure field is exactly `∂₁ ∘ ∂₂ = 0`. -/
theorem boundaryOne_comp_boundaryTwo :
    M.boundaryOne.comp M.boundaryTwo = 0 := by
  apply Finsupp.lhom_ext
  intro relation coefficient
  change M.boundaryOne
      (M.boundaryTwo (Finsupp.single relation coefficient)) = 0
  rw [boundaryTwo_single, map_smul, M.boundaryOne_apply,
    M.relation_closed, smul_zero]

/-- The degree object of the edit complex; all degrees above two are zero. -/
noncomputable def chainObject : Nat → ModuleCat ℤ
  | 0 => ModuleCat.of ℤ (FreeZ Snapshot)
  | 1 => ModuleCat.of ℤ (FreeZ M.Edit)
  | 2 => ModuleCat.of ℤ (FreeZ M.Relation)
  | _ => ModuleCat.of ℤ (FreeZ (ULift.{u} (Fin 0)))

/-- Consecutive differential used by `ChainComplex.of`. -/
noncomputable def chainDifferential :
    (q : Nat) → M.chainObject (q + 1) ⟶ M.chainObject q
  | 0 => ModuleCat.ofHom M.boundaryOne
  | 1 => ModuleCat.ofHom M.boundaryTwo
  | _ + 2 => 0

/-- Consecutive edit differentials square to zero in every degree. -/
theorem chainDifferential_sq (q : Nat) :
    M.chainDifferential (q + 1) ≫ M.chainDifferential q = 0 := by
  cases q with
  | zero =>
      apply ModuleCat.hom_ext
      exact M.boundaryOne_comp_boundaryTwo
  | succ q =>
      cases q <;> simp [chainDifferential]

/-- The genuine integral chain complex associated to the edit presentation. -/
noncomputable def toChainComplex : ChainComplex (ModuleCat ℤ) ℕ :=
  ChainComplex.of M.chainObject M.chainDifferential M.chainDifferential_sq

@[simp]
theorem toChainComplex_X_zero :
    M.toChainComplex.X 0 = ModuleCat.of ℤ (FreeZ Snapshot) :=
  rfl

@[simp]
theorem toChainComplex_X_one :
    M.toChainComplex.X 1 = ModuleCat.of ℤ (FreeZ M.Edit) :=
  rfl

@[simp]
theorem toChainComplex_X_two :
    M.toChainComplex.X 2 = ModuleCat.of ℤ (FreeZ M.Relation) :=
  rfl

@[simp]
theorem toChainComplex_d_one_zero :
    M.toChainComplex.d 1 0 = ModuleCat.ofHom M.boundaryOne := by
  exact ChainComplex.of_d M.chainObject M.chainDifferential 0

@[simp]
theorem toChainComplex_d_two_one :
    M.toChainComplex.d 2 1 = ModuleCat.ofHom M.boundaryTwo := by
  exact ChainComplex.of_d M.chainObject M.chainDifferential 1

/-! ## Compatible actions on an edit presentation -/

/--
A chain-level lift of a snapshot permutation through the chosen generators.
The relation equation says that applying the edge permutation to a declared
boundary equals the boundary of the permuted relation.
-/
structure Action (H : Equiv.Perm Snapshot) where
  editPerm : Equiv.Perm M.Edit
  relationPerm : Equiv.Perm M.Relation
  src_natural : ∀ edit, M.src (editPerm edit) = H (M.src edit)
  dst_natural : ∀ edit, M.dst (editPerm edit) = H (M.dst edit)
  relationBoundary_natural : ∀ relation,
    Finsupp.mapDomain editPerm (M.relationBoundary relation) =
      M.relationBoundary (relationPerm relation)

namespace Action

variable {M : FilesystemEditPresentation Snapshot}
variable {H : Equiv.Perm Snapshot}
variable (A : M.Action H)

/-- Relabel a free integral chain along an equivalence of its generators. -/
noncomputable def relabel
    {X Y : Type*}
    (e : X ≃ Y) :
    FreeZ X ≃ₗ[ℤ] FreeZ Y :=
  Finsupp.mapDomain.linearEquiv ℤ ℤ e

@[simp]
theorem relabel_single
    {X Y : Type*}
    (e : X ≃ Y)
    (x : X)
    (coefficient : ℤ) :
    relabel e (Finsupp.single x coefficient) =
      Finsupp.single (e x) coefficient := by
  simp [relabel]

/-- Relabeling edit generators commutes with the endpoint boundary. -/
theorem relabel_edit_boundary :
    (relabel H).toLinearMap.comp M.boundaryOne =
      M.boundaryOne.comp (relabel A.editPerm).toLinearMap := by
  apply Finsupp.lhom_ext
  intro edit coefficient
  have h : relabel H (M.editBoundary edit) =
      M.editBoundary (A.editPerm edit) := by
    simp [relabel, editBoundary, endpointBoundary, Finsupp.mapDomain_sub,
      A.src_natural, A.dst_natural]
  simp [h]

/-- Relabeling relation generators commutes with their edge boundaries. -/
theorem relabel_relation_boundary :
    (relabel A.editPerm).toLinearMap.comp M.boundaryTwo =
      M.boundaryTwo.comp (relabel A.relationPerm).toLinearMap := by
  apply Finsupp.lhom_ext
  intro relation coefficient
  have h : relabel A.editPerm (M.relationBoundary relation) =
      M.relationBoundary (A.relationPerm relation) := by
    simpa [relabel] using A.relationBoundary_natural relation
  simp [h]

/-- The degreewise linear equivalence carried by a compatible action. -/
noncomputable def degreeEquiv :
    (q : Nat) → M.toChainComplex.X q ≃ₗ[ℤ] M.toChainComplex.X q
  | 0 => relabel H
  | 1 => relabel A.editPerm
  | 2 => relabel A.relationPerm
  | _ => LinearEquiv.refl ℤ _

/-- Degreewise module isomorphisms underlying the chain automorphism. -/
noncomputable def degreeIso :
    (q : Nat) → M.toChainComplex.X q ≅ M.toChainComplex.X q
  | 0 => (relabel H).toModuleIso
  | 1 => (relabel A.editPerm).toModuleIso
  | 2 => (relabel A.relationPerm).toModuleIso
  | q + 3 => Iso.refl (M.toChainComplex.X (q + 3))

/-- The degreewise module isomorphisms satisfy every boundary square. -/
theorem degreeIso_comm (q : Nat) :
    (A.degreeIso (q + 1)).hom ≫ M.toChainComplex.d (q + 1) q =
      M.toChainComplex.d (q + 1) q ≫ (A.degreeIso q).hom := by
  match q with
  | 0 =>
      apply ModuleCat.hom_ext
      exact A.relabel_edit_boundary.symm
  | 1 =>
      apply ModuleCat.hom_ext
      exact A.relabel_relation_boundary.symm
  | 2 =>
      have hd : M.toChainComplex.d 3 2 = 0 := by
        change ChainComplex.of.d M.chainObject M.chainDifferential 3 2 = 0
        rw [show 3 = 2 + 1 by omega, ChainComplex.of_d]
        rfl
      rw [hd]
      simp only [CategoryTheory.Limits.comp_zero,
        CategoryTheory.Limits.zero_comp]
  | q + 3 =>
      simp [degreeIso]

/--
The compatible generator action bundled as an isomorphism of integral chain
complexes.  Its inverse is supplied automatically by the inverse degreewise
equivalences and the proved boundary squares.
-/
noncomputable def toChainIso : M.toChainComplex ≅ M.toChainComplex :=
  HomologicalComplex.Hom.isoOfComponents A.degreeIso (by
    intro i j hij
    rw [ComplexShape.down_Rel] at hij
    subst i
    exact A.degreeIso_comm j)

@[simp]
theorem toChainIso_hom_f_zero :
    A.toChainIso.hom.f 0 = ModuleCat.ofHom (relabel H).toLinearMap :=
  rfl

/-- The chain lift agrees with the snapshot permutation on vertex generators. -/
theorem toChainIso_vertex (snapshot : Snapshot) :
    A.toChainIso.hom.f 0 (Finsupp.single snapshot 1) =
      Finsupp.single (H snapshot) 1 := by
  change relabel H (Finsupp.single snapshot 1) =
    Finsupp.single (H snapshot) 1
  exact relabel_single H snapshot 1

end Action

end FilesystemEditPresentation

end FilesystemHomology
