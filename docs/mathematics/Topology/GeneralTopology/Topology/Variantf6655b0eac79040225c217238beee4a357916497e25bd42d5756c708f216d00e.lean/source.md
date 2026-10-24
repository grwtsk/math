# Complete source: GRWTSK.Topology.GeneralTopology.Topology.Variantf6655b0eac79040225c217238beee4a357916497e25bd42d5756c708f216d00e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76c38dea355928fbdf95c02167c4a5bbad38ea81` · SHA-256 `b392d1d9d5b1af783189eb4edc1ce7d34eb0f8fec7a1a1142c8554179db159fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ProjectiveSpectrum.Variant544730f13e64d035b808eb02dd0d520eef6184408350122ad6c6b8a771867fa1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"544730f13e64d035b808eb02dd0d520eef6184408350122ad6c6b8a771867fa1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ProjectiveSpectrum.Variant544730f13e64d035b808eb02dd0d520eef6184408350122ad6c6b8a771867fa1","mathematical_subject":"Topology.GeneralTopology","original_sha256":"544730f13e64d035b808eb02dd0d520eef6184408350122ad6c6b8a771867fa1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/AlgebraicGeometry/ProjectiveSpectrum/Topology.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang, Johan Commelin
-/
import Mathlib.RingTheory.GradedAlgebra.HomogeneousIdeal
import Mathlib.Topology.Category.TopCat.Basic
import Mathlib.Topology.Sets.Opens


namespace GRWTSK.Topology.GeneralTopology.ProjectiveSpectrum.Variant544730f13e64d035b808eb02dd0d520eef6184408350122ad6c6b8a771867fa1

#align_import algebraic_geometry.projective_spectrum.topology from "leanprover-community/mathlib"@"d39590fc8728fbf6743249802486f8c91ffe07bc"

/-!
# Projective spectrum of a graded ring

The projective spectrum of a graded commutative ring is the subtype of all homogenous ideals that
are prime and do not contain the irrelevant ideal.
It is naturally endowed with a topology: the Zariski topology.

## Notation
- `R` is a commutative semiring;
- `A` is a commutative ring and an `R`-algebra;
- `𝒜 : ℕ → Submodule R A` is the grading of `A`;

## Main definitions

* `ProjectiveSpectrum 𝒜`: The projective spectrum of a graded ring `A`, or equivalently, the set of
  all homogeneous ideals of `A` that is both prime and relevant i.e. not containing irrelevant
  ideal. Henceforth, we call elements of projective spectrum *relevant homogeneous prime ideals*.
* `ProjectiveSpectrum.zeroLocus 𝒜 s`: The zero locus of a subset `s` of `A`
  is the subset of `ProjectiveSpectrum 𝒜` consisting of all relevant homogeneous prime ideals that
  contain `s`.
* `ProjectiveSpectrum.vanishingIdeal t`: The vanishing ideal of a subset `t` of
  `ProjectiveSpectrum 𝒜` is the intersection of points in `t` (viewed as relevant homogeneous prime
  ideals).
* `ProjectiveSpectrum.Top`: the topological space of `ProjectiveSpectrum 𝒜` endowed with the
  Zariski topology.
-/


noncomputable section

open DirectSum BigOperators Pointwise SetLike TopCat TopologicalSpace CategoryTheory Opposite

variable {R A : Type*}

variable [CommSemiring R] [CommRing A] [Algebra R A]

variable (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]

-- porting note: removed @[nolint has_nonempty_instance]
/-- The projective spectrum of a graded commutative ring is the subtype of all homogenous ideals
that are prime and do not contain the irrelevant ideal. -/
@[ext]
structure ProjectiveSpectrum where
  asHomogeneousIdeal : HomogeneousIdeal 𝒜
  isPrime : asHomogeneousIdeal.toIdeal.IsPrime
  not_irrelevant_le : ¬HomogeneousIdeal.irrelevant 𝒜 ≤ asHomogeneousIdeal
#align projective_spectrum ProjectiveSpectrum

attribute [instance] ProjectiveSpectrum.isPrime

namespace ProjectiveSpectrum

/-- The zero locus of a set `s` of elements of a commutative ring `A` is the set of all relevant
homogeneous prime ideals of the ring that contain the set `s`.

An element `f` of `A` can be thought of as a dependent function on the projective spectrum of `𝒜`.
At a point `x` (a homogeneous prime ideal) the function (i.e., element) `f` takes values in the
quotient ring `A` modulo the prime ideal `x`. In this manner, `zeroLocus s` is exactly the subset
of `ProjectiveSpectrum 𝒜` where all "functions" in `s` vanish simultaneously. -/
def zeroLocus (s : Set A) : Set (ProjectiveSpectrum 𝒜) :=
  { x | s ⊆ x.asHomogeneousIdeal }
#align projective_spectrum.zero_locus ProjectiveSpectrum.zeroLocus

@[simp]
theorem mem_zeroLocus (x : ProjectiveSpectrum 𝒜) (s : Set A) :
    x ∈ zeroLocus 𝒜 s ↔ s ⊆ x.asHomogeneousIdeal :=
  Iff.rfl
#align projective_spectrum.mem_zero_locus ProjectiveSpectrum.mem_zeroLocus

@[simp]
theorem zeroLocus_span (s : Set A) : zeroLocus 𝒜 (Ideal.span s) = zeroLocus 𝒜 s := by
  ext x
  exact (Submodule.gi _ _).gc s x.asHomogeneousIdeal.toIdeal
#align projective_spectrum.zero_locus_span ProjectiveSpectrum.zeroLocus_span

variable {𝒜}

/-- The vanishing ideal of a set `t` of points of the projective spectrum of a commutative ring `R`
is the intersection of all the relevant homogeneous prime ideals in the set `t`.

An element `f` of `A` can be thought of as a dependent function on the projective spectrum of `𝒜`.
At a point `x` (a homogeneous prime ideal) the function (i.e., element) `f` takes values in the
quotient ring `A` modulo the prime ideal `x`. In this manner, `vanishingIdeal t` is exactly the
ideal of `A` consisting of all "functions" that vanish on all of `t`. -/
def vanishingIdeal (t : Set (ProjectiveSpectrum 𝒜)) : HomogeneousIdeal 𝒜 :=
  ⨅ (x : ProjectiveSpectrum 𝒜) (_ : x ∈ t), x.asHomogeneousIdeal
#align projective_spectrum.vanishing_ideal ProjectiveSpectrum.vanishingIdeal

theorem coe_vanishingIdeal (t : Set (ProjectiveSpectrum 𝒜)) :
    (vanishingIdeal t : Set A) =
      { f | ∀ x : ProjectiveSpectrum 𝒜, x ∈ t → f ∈ x.asHomogeneousIdeal } := by
  ext f
  rw [vanishingIdeal, SetLike.mem_coe, ← HomogeneousIdeal.mem_iff, HomogeneousIdeal.toIdeal_iInf,
    Submodule.mem_iInf]
  refine' forall_congr' fun x => _
  rw [HomogeneousIdeal.toIdeal_iInf, Submodule.mem_iInf, HomogeneousIdeal.mem_iff]
#align projective_spectrum.coe_vanishing_ideal ProjectiveSpectrum.coe_vanishingIdeal

theorem mem_vanishingIdeal (t : Set (ProjectiveSpectrum 𝒜)) (f : A) :
    f ∈ vanishingIdeal t ↔ ∀ x : ProjectiveSpectrum 𝒜, x ∈ t → f ∈ x.asHomogeneousIdeal := by
  rw [← SetLike.mem_coe, coe_vanishingIdeal, Set.mem_setOf_eq]
#align projective_spectrum.mem_vanishing_ideal ProjectiveSpectrum.mem_vanishingIdeal

@[simp]
theorem vanishingIdeal_singleton (x : ProjectiveSpectrum 𝒜) :
    vanishingIdeal ({x} : Set (ProjectiveSpectrum 𝒜)) = x.asHomogeneousIdeal := by
  simp [vanishingIdeal]
#align projective_spectrum.vanishing_ideal_singleton ProjectiveSpectrum.vanishingIdeal_singleton

theorem subset_zeroLocus_iff_le_vanishingIdeal (t : Set (ProjectiveSpectrum 𝒜)) (I : Ideal A) :
    t ⊆ zeroLocus 𝒜 I ↔ I ≤ (vanishingIdeal t).toIdeal :=
  ⟨fun h _ k => (mem_vanishingIdeal _ _).mpr fun _ j => (mem_zeroLocus _ _ _).mpr (h j) k, fun h =>
    fun x j =>
    (mem_zeroLocus _ _ _).mpr (le_trans h fun _ h => ((mem_vanishingIdeal _ _).mp h) x j)⟩
#align projective_spectrum.subset_zero_locus_iff_le_vanishing_ideal ProjectiveSpectrum.subset_zeroLocus_iff_le_vanishingIdeal

variable (𝒜)

/-- `zeroLocus` and `vanishingIdeal` form a galois connection. -/
theorem gc_ideal :
    @GaloisConnection (Ideal A) (Set (ProjectiveSpectrum 𝒜))ᵒᵈ _ _
      (fun I => zeroLocus 𝒜 I) fun t => (vanishingIdeal t).toIdeal :=
  fun I t => subset_zeroLocus_iff_le_vanishingIdeal t I
#align projective_spectrum.gc_ideal ProjectiveSpectrum.gc_ideal

/-- `zeroLocus` and `vanishingIdeal` form a galois connection. -/
theorem gc_set :
    @GaloisConnection (Set A) (Set (ProjectiveSpectrum 𝒜))ᵒᵈ _ _
      (fun s => zeroLocus 𝒜 s) fun t => vanishingIdeal t := by
  have ideal_gc : GaloisConnection Ideal.span _ := (Submodule.gi A _).gc
  simpa [zeroLocus_span, Function.comp] using GaloisConnection.compose ideal_gc (gc_ideal 𝒜)
#align projective_spectrum.gc_set ProjectiveSpectrum.gc_set

theorem gc_homogeneousIdeal :
    @GaloisConnection (HomogeneousIdeal 𝒜) (Set (ProjectiveSpectrum 𝒜))ᵒᵈ _ _
      (fun I => zeroLocus 𝒜 I) fun t => vanishingIdeal t :=
  fun I t => by
  simpa [show I.toIdeal ≤ (vanishingIdeal t).toIdeal ↔ I ≤ vanishingIdeal t from Iff.rfl] using
    subset_zeroLocus_iff_le_vanishingIdeal t I.toIdeal
#align projective_spectrum.gc_homogeneous_ideal ProjectiveSpectrum.gc_homogeneousIdeal

theorem subset_zeroLocus_iff_subset_vanishingIdeal (t : Set (ProjectiveSpectrum 𝒜)) (s : Set A) :
    t ⊆ zeroLocus 𝒜 s ↔ s ⊆ vanishingIdeal t :=
  (gc_set _) s t
#align projective_spectrum.subset_zero_locus_iff_subset_vanishing_ideal ProjectiveSpectrum.subset_zeroLocus_iff_subset_vanishingIdeal

theorem subset_vanishingIdeal_zeroLocus (s : Set A) : s ⊆ vanishingIdeal (zeroLocus 𝒜 s) :=
  (gc_set _).le_u_l s
#align projective_spectrum.subset_vanishing_ideal_zero_locus ProjectiveSpectrum.subset_vanishingIdeal_zeroLocus

theorem ideal_le_vanishingIdeal_zeroLocus (I : Ideal A) :
    I ≤ (vanishingIdeal (zeroLocus 𝒜 I)).toIdeal :=
  (gc_ideal _).le_u_l I
#align projective_spectrum.ideal_le_vanishing_ideal_zero_locus ProjectiveSpectrum.ideal_le_vanishingIdeal_zeroLocus

theorem homogeneousIdeal_le_vanishingIdeal_zeroLocus (I : HomogeneousIdeal 𝒜) :
    I ≤ vanishingIdeal (zeroLocus 𝒜 I) :=
  (gc_homogeneousIdeal _).le_u_l I
#align projective_spectrum.homogeneous_ideal_le_vanishing_ideal_zero_locus ProjectiveSpectrum.homogeneousIdeal_le_vanishingIdeal_zeroLocus

theorem subset_zeroLocus_vanishingIdeal (t : Set (ProjectiveSpectrum 𝒜)) :
    t ⊆ zeroLocus 𝒜 (vanishingIdeal t) :=
  (gc_ideal _).l_u_le t
#align projective_spectrum.subset_zero_locus_vanishing_ideal ProjectiveSpectrum.subset_zeroLocus_vanishingIdeal

theorem zeroLocus_anti_mono {s t : Set A} (h : s ⊆ t) : zeroLocus 𝒜 t ⊆ zeroLocus 𝒜 s :=
  (gc_set _).monotone_l h
#align projective_spectrum.zero_locus_anti_mono ProjectiveSpectrum.zeroLocus_anti_mono

theorem zeroLocus_anti_mono_ideal {s t : Ideal A} (h : s ≤ t) :
    zeroLocus 𝒜 (t : Set A) ⊆ zeroLocus 𝒜 (s : Set A) :=
  (gc_ideal _).monotone_l h
#align projective_spectrum.zero_locus_anti_mono_ideal ProjectiveSpectrum.zeroLocus_anti_mono_ideal

theorem zeroLocus_anti_mono_homogeneousIdeal {s t : HomogeneousIdeal 𝒜} (h : s ≤ t) :
    zeroLocus 𝒜 (t : Set A) ⊆ zeroLocus 𝒜 (s : Set A) :=
  (gc_homogeneousIdeal _).monotone_l h
#align projective_spectrum.zero_locus_anti_mono_homogeneous_ideal ProjectiveSpectrum.zeroLocus_anti_mono_homogeneousIdeal

theorem vanishingIdeal_anti_mono {s t : Set (ProjectiveSpectrum 𝒜)} (h : s ⊆ t) :
    vanishingIdeal t ≤ vanishingIdeal s :=
  (gc_ideal _).monotone_u h
#align projective_spectrum.vanishing_ideal_anti_mono ProjectiveSpectrum.vanishingIdeal_anti_mono

theorem zeroLocus_bot : zeroLocus 𝒜 ((⊥ : Ideal A) : Set A) = Set.univ :=
  (gc_ideal 𝒜).l_bot
#align projective_spectrum.zero_locus_bot ProjectiveSpectrum.zeroLocus_bot

@[simp]
theorem zeroLocus_singleton_zero : zeroLocus 𝒜 ({0} : Set A) = Set.univ :=
  zeroLocus_bot _
#align projective_spectrum.zero_locus_singleton_zero ProjectiveSpectrum.zeroLocus_singleton_zero

@[simp]
theorem zeroLocus_empty : zeroLocus 𝒜 (∅ : Set A) = Set.univ :=
  (gc_set 𝒜).l_bot
#align projective_spectrum.zero_locus_empty ProjectiveSpectrum.zeroLocus_empty

@[simp]
theorem vanishingIdeal_univ : vanishingIdeal (∅ : Set (ProjectiveSpectrum 𝒜)) = ⊤ := by
  simpa using (gc_ideal _).u_top
#align projective_spectrum.vanishing_ideal_univ ProjectiveSpectrum.vanishingIdeal_univ

theorem zeroLocus_empty_of_one_mem {s : Set A} (h : (1 : A) ∈ s) : zeroLocus 𝒜 s = ∅ :=
  Set.eq_empty_iff_forall_not_mem.mpr fun x hx =>
    (inferInstance : x.asHomogeneousIdeal.toIdeal.IsPrime).ne_top <|
      x.asHomogeneousIdeal.toIdeal.eq_top_iff_one.mpr <| hx h
#align projective_spectrum.zero_locus_empty_of_one_mem ProjectiveSpectrum.zeroLocus_empty_of_one_mem

@[simp]
theorem zeroLocus_singleton_one : zeroLocus 𝒜 ({1} : Set A) = ∅ :=
  zeroLocus_empty_of_one_mem 𝒜 (Set.mem_singleton (1 : A))
#align projective_spectrum.zero_locus_singleton_one ProjectiveSpectrum.zeroLocus_singleton_one

@[simp]
theorem zeroLocus_univ : zeroLocus 𝒜 (Set.univ : Set A) = ∅ :=
  zeroLocus_empty_of_one_mem _ (Set.mem_univ 1)
#align projective_spectrum.zero_locus_univ ProjectiveSpectrum.zeroLocus_univ

theorem zeroLocus_sup_ideal (I J : Ideal A) :
    zeroLocus 𝒜 ((I ⊔ J : Ideal A) : Set A) = zeroLocus _ I ∩ zeroLocus _ J :=
  (gc_ideal 𝒜).l_sup
#align projective_spectrum.zero_locus_sup_ideal ProjectiveSpectrum.zeroLocus_sup_ideal

theorem zeroLocus_sup_homogeneousIdeal (I J : HomogeneousIdeal 𝒜) :
    zeroLocus 𝒜 ((I ⊔ J : HomogeneousIdeal 𝒜) : Set A) = zeroLocus _ I ∩ zeroLocus _ J :=
  (gc_homogeneousIdeal 𝒜).l_sup
#align projective_spectrum.zero_locus_sup_homogeneous_ideal ProjectiveSpectrum.zeroLocus_sup_homogeneousIdeal

theorem zeroLocus_union (s s' : Set A) : zeroLocus 𝒜 (s ∪ s') = zeroLocus _ s ∩ zeroLocus _ s' :=
  (gc_set 𝒜).l_sup
#align projective_spectrum.zero_locus_union ProjectiveSpectrum.zeroLocus_union

theorem vanishingIdeal_union (t t' : Set (ProjectiveSpectrum 𝒜)) :
    vanishingIdeal (t ∪ t') = vanishingIdeal t ⊓ vanishingIdeal t' := by
  ext1; exact (gc_ideal 𝒜).u_inf
#align projective_spectrum.vanishing_ideal_union ProjectiveSpectrum.vanishingIdeal_union

theorem zeroLocus_iSup_ideal {γ : Sort*} (I : γ → Ideal A) :
    zeroLocus _ ((⨆ i, I i : Ideal A) : Set A) = ⋂ i, zeroLocus 𝒜 (I i) :=
  (gc_ideal 𝒜).l_iSup
#align projective_spectrum.zero_locus_supr_ideal ProjectiveSpectrum.zeroLocus_iSup_ideal

theorem zeroLocus_iSup_homogeneousIdeal {γ : Sort*} (I : γ → HomogeneousIdeal 𝒜) :
    zeroLocus _ ((⨆ i, I i : HomogeneousIdeal 𝒜) : Set A) = ⋂ i, zeroLocus 𝒜 (I i) :=
  (gc_homogeneousIdeal 𝒜).l_iSup
#align projective_spectrum.zero_locus_supr_homogeneous_ideal ProjectiveSpectrum.zeroLocus_iSup_homogeneousIdeal

theorem zeroLocus_iUnion {γ : Sort*} (s : γ → Set A) :
    zeroLocus 𝒜 (⋃ i, s i) = ⋂ i, zeroLocus 𝒜 (s i) :=
  (gc_set 𝒜).l_iSup
#align projective_spectrum.zero_locus_Union ProjectiveSpectrum.zeroLocus_iUnion

theorem zeroLocus_bUnion (s : Set (Set A)) :
    zeroLocus 𝒜 (⋃ s' ∈ s, s' : Set A) = ⋂ s' ∈ s, zeroLocus 𝒜 s' :=
  by simp only [zeroLocus_iUnion]
#align projective_spectrum.zero_locus_bUnion ProjectiveSpectrum.zeroLocus_bUnion

theorem vanishingIdeal_iUnion {γ : Sort*} (t : γ → Set (ProjectiveSpectrum 𝒜)) :
    vanishingIdeal (⋃ i, t i) = ⨅ i, vanishingIdeal (t i) :=
  HomogeneousIdeal.toIdeal_injective <| by
    convert(gc_ideal 𝒜).u_iInf; exact HomogeneousIdeal.toIdeal_iInf _
#align projective_spectrum.vanishing_ideal_Union ProjectiveSpectrum.vanishingIdeal_iUnion

theorem zeroLocus_inf (I J : Ideal A) :
    zeroLocus 𝒜 ((I ⊓ J : Ideal A) : Set A) = zeroLocus 𝒜 I ∪ zeroLocus 𝒜 J :=
  Set.ext fun x => x.isPrime.inf_le
#align projective_spectrum.zero_locus_inf ProjectiveSpectrum.zeroLocus_inf

theorem union_zeroLocus (s s' : Set A) :
    zeroLocus 𝒜 s ∪ zeroLocus 𝒜 s' = zeroLocus 𝒜 (Ideal.span s ⊓ Ideal.span s' : Ideal A) := by
  rw [zeroLocus_inf]
  simp
#align projective_spectrum.union_zero_locus ProjectiveSpectrum.union_zeroLocus

theorem zeroLocus_mul_ideal (I J : Ideal A) :
    zeroLocus 𝒜 ((I * J : Ideal A) : Set A) = zeroLocus 𝒜 I ∪ zeroLocus 𝒜 J :=
  Set.ext fun x => x.isPrime.mul_le
#align projective_spectrum.zero_locus_mul_ideal ProjectiveSpectrum.zeroLocus_mul_ideal

theorem zeroLocus_mul_homogeneousIdeal (I J : HomogeneousIdeal 𝒜) :
    zeroLocus 𝒜 ((I * J : HomogeneousIdeal 𝒜) : Set A) = zeroLocus 𝒜 I ∪ zeroLocus 𝒜 J :=
  Set.ext fun x => x.isPrime.mul_le
#align projective_spectrum.zero_locus_mul_homogeneous_ideal ProjectiveSpectrum.zeroLocus_mul_homogeneousIdeal

theorem zeroLocus_singleton_mul (f g : A) :
    zeroLocus 𝒜 ({f * g} : Set A) = zeroLocus 𝒜 {f} ∪ zeroLocus 𝒜 {g} :=
  Set.ext fun x => by simpa using x.isPrime.mul_mem_iff_mem_or_mem
#align projective_spectrum.zero_locus_singleton_mul ProjectiveSpectrum.zeroLocus_singleton_mul

@[simp]
theorem zeroLocus_singleton_pow (f : A) (n : ℕ) (hn : 0 < n) :
    zeroLocus 𝒜 ({f ^ n} : Set A) = zeroLocus 𝒜 {f} :=
  Set.ext fun x => by simpa using x.isPrime.pow_mem_iff_mem n hn
#align projective_spectrum.zero_locus_singleton_pow ProjectiveSpectrum.zeroLocus_singleton_pow

theorem sup_vanishingIdeal_le (t t' : Set (ProjectiveSpectrum 𝒜)) :
    vanishingIdeal t ⊔ vanishingIdeal t' ≤ vanishingIdeal (t ∩ t') := by
  intro r
  rw [← HomogeneousIdeal.mem_iff, HomogeneousIdeal.toIdeal_sup, mem_vanishingIdeal,
    Submodule.mem_sup]
  rintro ⟨f, hf, g, hg, rfl⟩ x ⟨hxt, hxt'⟩
  erw [mem_vanishingIdeal] at hf hg
  apply Submodule.add_mem <;> solve_by_elim
#align projective_spectrum.sup_vanishing_ideal_le ProjectiveSpectrum.sup_vanishingIdeal_le

theorem mem_compl_zeroLocus_iff_not_mem {f : A} {I : ProjectiveSpectrum 𝒜} :
    I ∈ (zeroLocus 𝒜 {f} : Set (ProjectiveSpectrum 𝒜))ᶜ ↔ f ∉ I.asHomogeneousIdeal := by
  rw [Set.mem_compl_iff, mem_zeroLocus, Set.singleton_subset_iff]; rfl
#align projective_spectrum.mem_compl_zero_locus_iff_not_mem ProjectiveSpectrum.mem_compl_zeroLocus_iff_not_mem

/-- The Zariski topology on the prime spectrum of a commutative ring is defined via the closed sets
of the topology: they are exactly those sets that are the zero locus of a subset of the ring. -/
instance zariskiTopology : TopologicalSpace (ProjectiveSpectrum 𝒜) :=
  TopologicalSpace.ofClosed (Set.range (ProjectiveSpectrum.zeroLocus 𝒜)) ⟨Set.univ, by simp⟩
    (by
      intro Zs h
      rw [Set.sInter_eq_iInter]
      let f : Zs → Set _ := fun i => Classical.choose (h i.2)
      have H : (Set.iInter fun i ↦ zeroLocus 𝒜 (f i)) ∈ Set.range (zeroLocus 𝒜) :=
        ⟨_, zeroLocus_iUnion 𝒜 _⟩
      convert H using 2
      funext i
      exact (Classical.choose_spec (h i.2)).symm)
    (by
      rintro _ ⟨s, rfl⟩ _ ⟨t, rfl⟩
      exact ⟨_, (union_zeroLocus 𝒜 s t).symm⟩)
#align projective_spectrum.zariski_topology ProjectiveSpectrum.zariskiTopology

/-- The underlying topology of `Proj` is the projective spectrum of graded ring `A`. -/
def top : TopCat :=
  TopCat.of (ProjectiveSpectrum 𝒜)
set_option linter.uppercaseLean3 false in
#align projective_spectrum.Top ProjectiveSpectrum.top

theorem isOpen_iff (U : Set (ProjectiveSpectrum 𝒜)) : IsOpen U ↔ ∃ s, Uᶜ = zeroLocus 𝒜 s := by
  simp only [@eq_comm _ Uᶜ]; rfl
#align projective_spectrum.is_open_iff ProjectiveSpectrum.isOpen_iff

theorem isClosed_iff_zeroLocus (Z : Set (ProjectiveSpectrum 𝒜)) :
    IsClosed Z ↔ ∃ s, Z = zeroLocus 𝒜 s := by rw [← isOpen_compl_iff, isOpen_iff, compl_compl]
#align projective_spectrum.is_closed_iff_zero_locus ProjectiveSpectrum.isClosed_iff_zeroLocus

theorem isClosed_zeroLocus (s : Set A) : IsClosed (zeroLocus 𝒜 s) := by
  rw [isClosed_iff_zeroLocus]
  exact ⟨s, rfl⟩
#align projective_spectrum.is_closed_zero_locus ProjectiveSpectrum.isClosed_zeroLocus

theorem zeroLocus_vanishingIdeal_eq_closure (t : Set (ProjectiveSpectrum 𝒜)) :
    zeroLocus 𝒜 (vanishingIdeal t : Set A) = closure t := by
  apply Set.Subset.antisymm
  · rintro x hx t' ⟨ht', ht⟩
    obtain ⟨fs, rfl⟩ : ∃ s, t' = zeroLocus 𝒜 s := by rwa [isClosed_iff_zeroLocus] at ht'
    rw [subset_zeroLocus_iff_subset_vanishingIdeal] at ht
    exact Set.Subset.trans ht hx
  · rw [(isClosed_zeroLocus _ _).closure_subset_iff]
    exact subset_zeroLocus_vanishingIdeal 𝒜 t
#align projective_spectrum.zero_locus_vanishing_ideal_eq_closure ProjectiveSpectrum.zeroLocus_vanishingIdeal_eq_closure

theorem vanishingIdeal_closure (t : Set (ProjectiveSpectrum 𝒜)) :
    vanishingIdeal (closure t) = vanishingIdeal t := by
  have := (gc_ideal 𝒜).u_l_u_eq_u t
  ext1
  erw [zeroLocus_vanishingIdeal_eq_closure 𝒜 t] at this
  exact this
#align projective_spectrum.vanishing_ideal_closure ProjectiveSpectrum.vanishingIdeal_closure

section BasicOpen

/-- `basicOpen r` is the open subset containing all prime ideals not containing `r`. -/
def basicOpen (r : A) : TopologicalSpace.Opens (ProjectiveSpectrum 𝒜) where
  carrier := { x | r ∉ x.asHomogeneousIdeal }
  is_open' := ⟨{r}, Set.ext fun _ => Set.singleton_subset_iff.trans <| Classical.not_not.symm⟩
#align projective_spectrum.basic_open ProjectiveSpectrum.basicOpen

@[simp]
theorem mem_basicOpen (f : A) (x : ProjectiveSpectrum 𝒜) :
    x ∈ basicOpen 𝒜 f ↔ f ∉ x.asHomogeneousIdeal :=
  Iff.rfl
#align projective_spectrum.mem_basic_open ProjectiveSpectrum.mem_basicOpen

theorem mem_coe_basicOpen (f : A) (x : ProjectiveSpectrum 𝒜) :
    x ∈ (↑(basicOpen 𝒜 f) : Set (ProjectiveSpectrum 𝒜)) ↔ f ∉ x.asHomogeneousIdeal :=
  Iff.rfl
#align projective_spectrum.mem_coe_basic_open ProjectiveSpectrum.mem_coe_basicOpen

theorem isOpen_basicOpen {a : A} : IsOpen (basicOpen 𝒜 a : Set (ProjectiveSpectrum 𝒜)) :=
  (basicOpen 𝒜 a).isOpen
#align projective_spectrum.is_open_basic_open ProjectiveSpectrum.isOpen_basicOpen

@[simp]
theorem basicOpen_eq_zeroLocus_compl (r : A) :
    (basicOpen 𝒜 r : Set (ProjectiveSpectrum 𝒜)) = (zeroLocus 𝒜 {r})ᶜ :=
  Set.ext fun x => by simp only [Set.mem_compl_iff, mem_zeroLocus, Set.singleton_subset_iff]; rfl
#align projective_spectrum.basic_open_eq_zero_locus_compl ProjectiveSpectrum.basicOpen_eq_zeroLocus_compl

@[simp]
theorem basicOpen_one : basicOpen 𝒜 (1 : A) = ⊤ :=
  TopologicalSpace.Opens.ext <| by simp
#align projective_spectrum.basic_open_one ProjectiveSpectrum.basicOpen_one

@[simp]
theorem basicOpen_zero : basicOpen 𝒜 (0 : A) = ⊥ :=
  TopologicalSpace.Opens.ext <| by simp
#align projective_spectrum.basic_open_zero ProjectiveSpectrum.basicOpen_zero

theorem basicOpen_mul (f g : A) : basicOpen 𝒜 (f * g) = basicOpen 𝒜 f ⊓ basicOpen 𝒜 g :=
  TopologicalSpace.Opens.ext <| by simp [zeroLocus_singleton_mul]
#align projective_spectrum.basic_open_mul ProjectiveSpectrum.basicOpen_mul

theorem basicOpen_mul_le_left (f g : A) : basicOpen 𝒜 (f * g) ≤ basicOpen 𝒜 f := by
  rw [basicOpen_mul 𝒜 f g]
  exact inf_le_left
#align projective_spectrum.basic_open_mul_le_left ProjectiveSpectrum.basicOpen_mul_le_left

theorem basicOpen_mul_le_right (f g : A) : basicOpen 𝒜 (f * g) ≤ basicOpen 𝒜 g := by
  rw [basicOpen_mul 𝒜 f g]
  exact inf_le_right
#align projective_spectrum.basic_open_mul_le_right ProjectiveSpectrum.basicOpen_mul_le_right

@[simp]
theorem basicOpen_pow (f : A) (n : ℕ) (hn : 0 < n) : basicOpen 𝒜 (f ^ n) = basicOpen 𝒜 f :=
  TopologicalSpace.Opens.ext <| by simpa using zeroLocus_singleton_pow 𝒜 f n hn
#align projective_spectrum.basic_open_pow ProjectiveSpectrum.basicOpen_pow

theorem basicOpen_eq_union_of_projection (f : A) :
    basicOpen 𝒜 f = ⨆ i : ℕ, basicOpen 𝒜 (GradedAlgebra.proj 𝒜 i f) :=
  TopologicalSpace.Opens.ext <|
    Set.ext fun z => by
      erw [mem_coe_basicOpen, TopologicalSpace.Opens.mem_sSup]
      constructor <;> intro hz
      · rcases show ∃ i, GradedAlgebra.proj 𝒜 i f ∉ z.asHomogeneousIdeal by
          contrapose! hz with H
          classical
          rw [← DirectSum.sum_support_decompose 𝒜 f]
          apply Ideal.sum_mem _ fun i _ => H i with ⟨i, hi⟩
        exact ⟨basicOpen 𝒜 (GradedAlgebra.proj 𝒜 i f), ⟨i, rfl⟩, by rwa [mem_basicOpen]⟩
      · obtain ⟨_, ⟨i, rfl⟩, hz⟩ := hz
        exact fun rid => hz (z.1.2 i rid)
#align projective_spectrum.basic_open_eq_union_of_projection ProjectiveSpectrum.basicOpen_eq_union_of_projection

theorem isTopologicalBasis_basic_opens :
    TopologicalSpace.IsTopologicalBasis
      (Set.range fun r : A => (basicOpen 𝒜 r : Set (ProjectiveSpectrum 𝒜))) := by
  apply TopologicalSpace.isTopologicalBasis_of_open_of_nhds
  · rintro _ ⟨r, rfl⟩
    exact isOpen_basicOpen 𝒜
  · rintro p U hp ⟨s, hs⟩
    rw [← compl_compl U, Set.mem_compl_iff, ← hs, mem_zeroLocus, Set.not_subset] at hp
    obtain ⟨f, hfs, hfp⟩ := hp
    refine' ⟨basicOpen 𝒜 f, ⟨f, rfl⟩, hfp, _⟩
    rw [← Set.compl_subset_compl, ← hs, basicOpen_eq_zeroLocus_compl, compl_compl]
    exact zeroLocus_anti_mono 𝒜 (Set.singleton_subset_iff.mpr hfs)
#align projective_spectrum.is_topological_basis_basic_opens ProjectiveSpectrum.isTopologicalBasis_basic_opens

end BasicOpen

section Order

/-!
## The specialization order

We endow `ProjectiveSpectrum 𝒜` with a partial order,
where `x ≤ y` if and only if `y ∈ closure {x}`.
-/


instance : PartialOrder (ProjectiveSpectrum 𝒜) :=
  PartialOrder.lift asHomogeneousIdeal fun ⟨_, _, _⟩ ⟨_, _, _⟩ => by simp only [mk.injEq, imp_self]

@[simp]
theorem as_ideal_le_as_ideal (x y : ProjectiveSpectrum 𝒜) :
    x.asHomogeneousIdeal ≤ y.asHomogeneousIdeal ↔ x ≤ y :=
  Iff.rfl
#align projective_spectrum.as_ideal_le_as_ideal ProjectiveSpectrum.as_ideal_le_as_ideal

@[simp]
theorem as_ideal_lt_as_ideal (x y : ProjectiveSpectrum 𝒜) :
    x.asHomogeneousIdeal < y.asHomogeneousIdeal ↔ x < y :=
  Iff.rfl
#align projective_spectrum.as_ideal_lt_as_ideal ProjectiveSpectrum.as_ideal_lt_as_ideal

theorem le_iff_mem_closure (x y : ProjectiveSpectrum 𝒜) :
    x ≤ y ↔ y ∈ closure ({x} : Set (ProjectiveSpectrum 𝒜)) := by
  rw [← as_ideal_le_as_ideal, ← zeroLocus_vanishingIdeal_eq_closure, mem_zeroLocus,
    vanishingIdeal_singleton]
  simp only [as_ideal_le_as_ideal, coe_subset_coe]
#align projective_spectrum.le_iff_mem_closure ProjectiveSpectrum.le_iff_mem_closure

end Order

end ProjectiveSpectrum
```
