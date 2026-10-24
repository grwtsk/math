# Complete source: GRWTSK.Analysis.OperatorTheory.SpectralTheory.FiniteVolume.Checks.Declarations

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fabf44bbdee9ce91ca815f90f95387299f38c3a7` · SHA-256 `46a698a94922b6d8ac4ecf06b73da9ff30f11d118c710f586d4966b6e83a1a5c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.GapTransport
import GRWTSK.Algebra.LinearAlgebra.Sturmian
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.SturmianFiniteVolume
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.FreeIDS
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.DirichletCut
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.SturmianBlockCounts
import Lean

open Lean Elab Command
open GRWTSK.Spectral.GapTransport

example {ι F : Type*} [Fintype ι] [DecidableEq ι]
    [AddCommGroup F] [Module ℝ F] [FiniteDimensional ℝ F]
    {A B : Matrix ι ι ℝ} (hA : A.IsHermitian) (hB : B.IsHermitian)
    (K : EuclideanSpace ℝ ι →ₗ[ℝ] F) :
    (∀ v, K v = 0 → A.toEuclideanLin v = B.toEuclideanLin v) → ∀ E,
    GRWTSK.Spectral.MatrixCountComparison.eigenvalueCount hB E ≤
      GRWTSK.Spectral.MatrixCountComparison.eigenvalueCount hA E + Module.finrank ℝ F :=
  GRWTSK.Spectral.MatrixCountComparison.eigenvalueCount_le_add_finrank_of_kernel hA hB K

example {ι : Type*} [Fintype ι] [DecidableEq ι] {A B : Matrix ι ι ℝ}
    (hA : A.IsHermitian) (hB : B.IsHermitian) : ∀ E,
    GRWTSK.Spectral.MatrixCountComparison.eigenvalueCount hB E ≤
      GRWTSK.Spectral.MatrixCountComparison.eigenvalueCount hA E +
      Module.finrank ℝ (LinearMap.range (B.toEuclideanLin - A.toEuclideanLin)) :=
  GRWTSK.Spectral.MatrixCountComparison.eigenvalueCount_le_add_difference_rank hA hB

example : ∀ N c,
    Module.finrank ℝ (LinearMap.range
      (GRWTSK.Spectral.DirichletCut.joiningEdge N c).toEuclideanLin) ≤ 2 :=
  GRWTSK.Spectral.DirichletCut.joiningEdge_rank_le_two

example (N M : ℕ) (hN : 0 < N) (α V ξ : ℝ) (origin : ℤ) :
    Matrix.reindex (finSumFinEquiv : Fin N ⊕ Fin M ≃ Fin (N+M)).symm
      (finSumFinEquiv : Fin N ⊕ Fin M ≃ Fin (N+M)).symm
      (GRWTSK.Spectral.DirichletCut.cutHamiltonian (N+M) α V ξ origin (N-1)) =
    Matrix.fromBlocks (GRWTSK.Spectral.SturmianFiniteVolume.hamiltonian N α V ξ origin) 0 0
      (GRWTSK.Spectral.SturmianFiniteVolume.hamiltonian M α V ξ (origin+(N:ℤ))) :=
  GRWTSK.Spectral.DirichletCut.cutHamiltonian_reindex N M hN α V ξ origin

example : ∀ N M, 0 < N → ∀ α V ξ origin E,
    |(GRWTSK.Spectral.SturmianFiniteVolume.sturmianCount N α V ξ origin E : ℝ) +
      (GRWTSK.Spectral.SturmianFiniteVolume.sturmianCount M α V ξ (origin+(N:ℤ)) E : ℝ) -
      (GRWTSK.Spectral.SturmianFiniteVolume.sturmianCount (N+M) α V ξ origin E : ℝ)| ≤ 2 :=
  GRWTSK.Spectral.DirichletCut.adjacent_count_error

example : ∀ N M, 0 < N → ∀ α V ξ origin E,
    |((GRWTSK.Spectral.SturmianFiniteVolume.sturmianCount N α V ξ origin E : ℝ) +
        (GRWTSK.Spectral.SturmianFiniteVolume.sturmianCount M α V ξ (origin+(N:ℤ)) E : ℝ)) /
        (N+M:ℕ) -
      GRWTSK.Spectral.SturmianFiniteVolume.sturmianNormalizedCount (N+M) α V ξ origin E| ≤
      2/(N+M:ℕ) := GRWTSK.Spectral.DirichletCut.adjacent_normalized_count_error

example : GRWTSK.Spectral.DirichletCut.cutHamiltonian 2 (1/2) 3 0 0 0 1 1 = 3 ∧
    GRWTSK.Spectral.SturmianFiniteVolume.hamiltonian 1 (1/2) 3 0 0 0 0 = 0 := by
  constructor
  · change GRWTSK.Spectral.SturmianFiniteVolume.hamiltonian 2 (1/2) 3 0 0
      ⟨1,by decide⟩ ⟨1,by decide⟩ -
      GRWTSK.Spectral.DirichletCut.joiningEdge 2 0 ⟨1,by decide⟩ ⟨1,by decide⟩ = 3
    simp only [GRWTSK.Spectral.SturmianFiniteVolume.hamiltonian, Matrix.add_apply,
      Matrix.diagonal_apply,
      GRWTSK.Spectral.SturmianFiniteVolume.freeDirichlet,
      GRWTSK.Spectral.DirichletCut.joiningEdge]
    norm_num [
      GRWTSK.LinearAlgebra.Sturmian.potential, GRWTSK.LinearAlgebra.Sturmian.bit, Int.fract]
  · norm_num [GRWTSK.Spectral.SturmianFiniteVolume.hamiltonian,
      GRWTSK.Spectral.SturmianFiniteVolume.freeDirichlet,
      GRWTSK.LinearAlgebra.Sturmian.potential, GRWTSK.LinearAlgebra.Sturmian.bit, Int.fract]

example : ∀ N E,
    GRWTSK.Spectral.SturmianFiniteVolume.freeCount N E =
      N - (Nat.ceil (GRWTSK.Spectral.FreeIDS.cutoff N E)-1) :=
  GRWTSK.Spectral.FreeIDS.freeCount_eq_ceil

example : ∀ E, Filter.Tendsto
    (fun N => GRWTSK.Spectral.SturmianFiniteVolume.freeNormalizedCount N E)
    Filter.atTop (nhds (1-Real.arccos (E/2)/Real.pi)) :=
  GRWTSK.Spectral.FreeIDS.freeNormalizedCount_tendsto

example : ∀ (N : ℕ), 0 < N → ∀ E,
    GRWTSK.Spectral.FreeIDS.freeIDS E - 1/(N:ℝ) ≤
      GRWTSK.Spectral.SturmianFiniteVolume.freeNormalizedCount N E ∧
    GRWTSK.Spectral.SturmianFiniteVolume.freeNormalizedCount N E ≤
      GRWTSK.Spectral.FreeIDS.freeIDS E + 1/(N:ℝ) :=
  GRWTSK.Spectral.FreeIDS.normalized_count_bounds

example (α V ξ : ℝ) (origin : ℤ) {S : Set ℝ} {ids : ℝ → ℝ} {label a b : ℝ} :
    0 < label → label < 1 →
    (∀ E, Filter.Tendsto
      (fun N => GRWTSK.Spectral.SturmianFiniteVolume.sturmianNormalizedCount N α V ξ origin E)
      Filter.atTop (nhds (ids E))) →
    OpenLabelGap S ids label a b → 0 < b-a ∧ b-a ≤ |V| :=
  GRWTSK.Spectral.FreeIDS.gap_width_le_abs_coupling α V ξ origin

example : GRWTSK.Spectral.FreeIDS.freeIDS (-3) = 0 ∧
    GRWTSK.Spectral.FreeIDS.freeEnergy 0 > (-3:ℝ) := by
  constructor
  · exact GRWTSK.Spectral.FreeIDS.freeIDS_of_le_neg_two (by norm_num)
  · norm_num [GRWTSK.Spectral.FreeIDS.freeEnergy]

-- An eigenvalue exactly at the cut is counted (the one-site free matrix is zero).
example : GRWTSK.Spectral.SturmianFiniteVolume.freeCount 1 0 = 1 := by
  have hc : GRWTSK.Spectral.FreeIDS.cutoff 1 0 = 1 := by
    simp [GRWTSK.Spectral.FreeIDS.cutoff, GRWTSK.Spectral.FreeIDS.angleFraction]
    field_simp
    norm_num
  rw [GRWTSK.Spectral.FreeIDS.freeCount_eq_ceil, hc]
  norm_num

-- Inclusive counts use every eigenbasis index, preserving multiplicity.
example {ι : Type*} [Fintype ι] [DecidableEq ι] {A : Matrix ι ι ℝ}
    (hA : A.IsHermitian) (E : ℝ) :
    GRWTSK.Spectral.MatrixCountComparison.eigenvalueCount hA E =
      (Finset.univ.filter (fun i => hA.eigenvalues i ≤ E)).card := rfl

example {ι : Type*} [Fintype ι] [DecidableEq ι] {A B : Matrix ι ι ℝ} :
    ∀ (hA : A.IsHermitian) (hB : B.IsHermitian), (B-A).PosSemidef → ∀ E,
      GRWTSK.Spectral.MatrixCountComparison.eigenvalueCount hB E ≤
        GRWTSK.Spectral.MatrixCountComparison.eigenvalueCount hA E :=
  GRWTSK.Spectral.MatrixCountComparison.eigenvalueCount_le_of_posSemidef

example : ∀ N α V ξ origin E,
    GRWTSK.Spectral.SturmianFiniteVolume.freeCount N (E-max V 0) ≤
      GRWTSK.Spectral.SturmianFiniteVolume.sturmianCount N α V ξ origin E ∧
    GRWTSK.Spectral.SturmianFiniteVolume.sturmianCount N α V ξ origin E ≤
      GRWTSK.Spectral.SturmianFiniteVolume.freeCount N (E-min V 0) :=
  GRWTSK.Spectral.SturmianFiniteVolume.finite_count_comparison

example (α V ξ : ℝ) (origin : ℤ) (free ids : ℝ → ℝ) :
    (∀ E, Filter.Tendsto (fun N =>
      GRWTSK.Spectral.SturmianFiniteVolume.freeNormalizedCount N E)
      Filter.atTop (nhds (free E))) →
    (∀ E, Filter.Tendsto (fun N =>
      GRWTSK.Spectral.SturmianFiniteVolume.sturmianNormalizedCount N α V ξ origin E)
      Filter.atTop (nhds (ids E))) →
    ∀ E, free (E-max V 0) ≤ ids E ∧ ids E ≤ free (E-min V 0) :=
  GRWTSK.Spectral.SturmianFiniteVolume.ids_comparison_of_count_limits α V ξ origin free ids

-- Endpoint boundary: the three-site restriction has no periodic corner.
example : GRWTSK.Spectral.SturmianFiniteVolume.freeDirichlet 3 0 2 = 0 ∧
    GRWTSK.Spectral.SturmianFiniteVolume.freeDirichlet 3 0 1 = 1 := by
  norm_num [GRWTSK.Spectral.SturmianFiniteVolume.freeDirichlet]

-- Nonzero potential at the included half-open left endpoint; zero at its wrap.
example : GRWTSK.Spectral.SturmianFiniteVolume.hamiltonian 1 (1/2) 3 (1/2) 0 0 0 = 3 ∧
    GRWTSK.Spectral.SturmianFiniteVolume.hamiltonian 1 (1/2) 3 0 0 0 0 = 0 := by
  norm_num [GRWTSK.Spectral.SturmianFiniteVolume.hamiltonian,
    GRWTSK.Spectral.SturmianFiniteVolume.freeDirichlet,
    GRWTSK.LinearAlgebra.Sturmian.potential, GRWTSK.LinearAlgebra.Sturmian.bit, Int.fract]

-- Literal transport contract, including reference surjectivity, target coding,
-- every target IDS hypothesis, and the strict positive-width conclusion.
example {Γ : Type*} {S₀ S : Set ℝ} {N₀ N : ℝ → ℝ} {labels : Γ → ℝ} :
    ∀ (reference : LabelCoding Γ S₀ N₀ labels)
      (_honto : ∀ E ∈ S₀, ∃ γ, reference.energy γ = E)
      (_target : LabelCoding Γ S N labels)
      (_hmono : Monotone N) (_hlocal : LocalPlateauCharacterization S N)
      {label a b : ℝ}, OpenLabelGap S₀ N₀ label a b →
      ∃ c d, OpenLabelGap S N label c d ∧ 0 < d - c :=
  @transport_open_label Γ S₀ S N₀ N labels

example {Γ : Type*} {S : Set ℝ} {N : ℝ → ℝ} {labels : Γ → ℝ}
    (coding : LabelCoding Γ S N labels) : Function.Injective coding.energy := coding.injective

example (S : Set ℝ) (N : ℝ → ℝ) (label a b : ℝ) :
    OpenLabelGap S N label a b ↔ a < b ∧ a ∈ S ∧ b ∈ S ∧
      (∀ x ∈ Set.Ioo a b, x ∉ S) ∧ (∀ x ∈ Set.Icc a b, N x = label) := Iff.rfl

example (S : Set ℝ) (N : ℝ → ℝ) :
    LocalPlateauCharacterization S N ↔ ∀ E, E ∉ S ↔ ∃ δ > 0,
      ∀ x ∈ Set.Ioo (E - δ) (E + δ), N x = N E := Iff.rfl

example {S : Set ℝ} {free ids : ℝ → ℝ} {label freeEnergy lower upper a b : ℝ} :
    (∀ x, free (x - upper) ≤ ids x ∧ ids x ≤ free (x - lower)) →
    (∀ x, free x ≤ label → x ≤ freeEnergy) →
    (∀ x, label ≤ free x → freeEnergy ≤ x) →
    OpenLabelGap S ids label a b → 0 < b - a ∧ b - a ≤ upper - lower :=
  @gap_width_le_of_ids_comparison S free ids label freeEnergy lower upper a b

example (α ξ : ℝ) (n : ℤ) : GRWTSK.LinearAlgebra.Sturmian.bit α ξ n =
    if Int.fract (ξ + (n : ℝ) * α) ∈ Set.Ico (1 - α) 1 then 1 else 0 := rfl

example (E α ξ : ℝ) (n : ℤ) :
    GRWTSK.LinearAlgebra.Sturmian.transfer E α 0 ξ n =
      GRWTSK.LinearAlgebra.SchrodingerTransfer.schrodingerTransfer E 0 :=
  GRWTSK.LinearAlgebra.Sturmian.zero_coupling_transfer E α ξ n

example (E α ξ : ℝ) (n : ℤ) :
    |Matrix.trace (GRWTSK.LinearAlgebra.Sturmian.transfer E α 0 ξ n)| ≤ 2 ↔
      E ∈ Set.Icc (-2 : ℝ) 2 :=
  GRWTSK.LinearAlgebra.Sturmian.zero_coupling_trace_iff E α ξ n

open GRWTSK.Spectral.SturmianBlockCounts
open GRWTSK.Spectral.SturmianFiniteVolume
example (N : ℕ) (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    sturmianCount N α V ξ origin E ≤ N := count_le_volume N α V ξ origin E
example (N : ℕ) (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    sturmianCount N α V ξ origin E = sturmianCount N α V (ξ+(origin:ℝ)*α) 0 E :=
  count_origin_to_phase N α V ξ origin E
example (q L : ℕ) (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    blockCountSum q L α V ξ origin E = ∑ j ∈ Finset.range q,
      (sturmianCount L α V ((ξ+(origin:ℝ)*α)+(j:ℝ)*((L:ℝ)*α)) 0 E : ℝ) :=
  blockCountSum_phase q L α V ξ origin E
example (q L r : ℕ) (hL : 0 < L) (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    |blockCountSum q L α V ξ origin E +
      (sturmianCount r α V ξ (origin+((q*L:ℕ):ℤ)) E : ℝ) -
      (sturmianCount (q*L+r) α V ξ origin E : ℝ)| ≤ 2*(q:ℝ) :=
  block_count_error_with_remainder q L r hL α V ξ origin E
example (q L : ℕ) (hL : 0 < L) (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    |blockCountSum q L α V ξ origin E - (sturmianCount (q*L) α V ξ origin E : ℝ)| ≤
      2*((q-1:ℕ):ℝ) := complete_block_count_error q L hL α V ξ origin E
example (q L r : ℕ) (hL : 0 < L) (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    |blockCountSum q L α V ξ origin E -
      (sturmianCount (q*L+r) α V ξ origin E : ℝ)| ≤ 2*(q:ℝ)+(r:ℝ) :=
  block_count_error q L r hL α V ξ origin E
example (N L : ℕ) (hN : 0 < N) (hL : 0 < L) (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    |sturmianNormalizedCount N α V ξ origin E - blockCountSum (N/L) L α V ξ origin E/N| ≤
      2/(L:ℝ)+(L:ℝ)/N := finite_block_approximation N L hN hL α V ξ origin E
example : (7/3:ℕ) = 2 ∧ (7%3:ℕ) = 1 := by norm_num
example (E : ℝ) : sturmianCount 0 0 0 0 0 E = 0 :=
  Nat.eq_zero_of_le_zero (count_le_volume 0 0 0 0 0 E)

elab "#audit_ten_martini" : command => do
  let env ← getEnv
  let owners := env.header.moduleNames
  unless env.header.moduleData.size == owners.size do throwError "incomplete ownership table"
  let decls := (env.header.moduleData.toList.zip owners.toList).flatMap fun (data, owner) =>
    if #[`GRWTSK.LinearAlgebra.SchrodingerTransfer, `GRWTSK.LinearAlgebra.Sturmian,
        `GRWTSK.Spectral.GapTransport, `GRWTSK.Spectral.MatrixCountComparison,
        `GRWTSK.Spectral.SturmianFiniteVolume, `GRWTSK.Spectral.FreeDirichletSpectrum,
        `GRWTSK.Spectral.FreeIDS, `GRWTSK.Spectral.DirichletCut,
        `GRWTSK.Spectral.SturmianBlockCounts].contains owner then
      (data.constants.toList.filter fun info =>
        match env.getModuleIdxFor? info.name with
        | some idx => owners[idx]! == owner
        | none => false).map fun info => (owner, info)
    else []
  if decls.isEmpty then throwError "empty source family"
  for (owner, info) in decls do
    if info.isUnsafe || info.isPartial then throwError "unsafe or partial declaration {info.name}"
    match info with
    | .axiomInfo _ => throwError "new axiom {info.name}"
    | _ => pure ()
    let axioms ← collectAxioms info.name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unexpected axiom {ax} in {info.name}"
    let type ← liftTermElabM do Meta.ppExpr info.type
    let kind := match info with
      | .thmInfo _ => "theorem"
      | .defnInfo _ => "definition"
      | _ => "generated"
    logInfo m!"TEN_MARTINI_DECL::{(Json.mkObj [
      ("module", toJson owner.toString), ("name", toJson info.name.toString),
      ("kind", toJson kind), ("type", toJson type.pretty),
      ("axioms", toJson (axioms.toList.map Name.toString))]).compress}"
  logInfo m!"TEN_MARTINI_COUNT::{decls.length}"

#audit_ten_martini
```
