-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.HigherIndex.Variant26884edab8eeef25204a4950dd475b7ec9aef749b2905bcb75d441e3a89d9cc2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"26884edab8eeef25204a4950dd475b7ec9aef749b2905bcb75d441e3a89d9cc2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.HigherIndex.Variant26884edab8eeef25204a4950dd475b7ec9aef749b2905bcb75d441e3a89d9cc2","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"26884edab8eeef25204a4950dd475b7ec9aef749b2905bcb75d441e3a89d9cc2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle9/higher-storage/inventory-v2-input.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceMangoldtStorage

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.HigherIndex.Variant26884edab8eeef25204a4950dd475b7ec9aef749b2905bcb75d441e3a89d9cc2

set_option autoImplicit false
noncomputable section
namespace StorageDraft
open FormalResearch.RiemannHypothesis.SourcePrimePowerPartition
open FormalResearch.RiemannHypothesis.WeightedPrimeAbel
abbrev HigherIndex := Nat.Primes × ℕ

def atomNatural (i : HigherIndex) : ℕ × ℕ := (i.1.val, i.2 + 3)

theorem atomNatural_injective : Function.Injective atomNatural := by
  intro i j h
  apply Prod.ext
  · apply Subtype.ext
    exact congrArg Prod.fst h
  · have := congrArg Prod.snd h
    change i.2 + 3 = j.2 + 3 at this
    omega

private theorem prime_of_mem {A : ℝ} {pk : ℕ × ℕ}
    (h : pk ∈ higherPrimePowerInventory A) : pk.1.Prime :=
  (Finset.mem_filter.mp (Finset.mem_product.mp (Finset.mem_filter.mp h).1).1).2

private theorem exponent_of_mem {A : ℝ} {pk : ℕ × ℕ}
    (h : pk ∈ higherPrimePowerInventory A) : 3 ≤ pk.2 :=
  (Finset.mem_Icc.mp (Finset.mem_product.mp (Finset.mem_filter.mp h).1).2).1

def inventoryIndex (A : ℝ) (pk : {pk // pk ∈ higherPrimePowerInventory A}) : HigherIndex :=
  (⟨pk.val.1, prime_of_mem pk.property⟩, pk.val.2 - 3)

def atomInventory (A : ℝ) : Finset HigherIndex := by
  classical
  exact (higherPrimePowerInventory A).attach.image (inventoryIndex A)

theorem inventoryIndex_natural (A : ℝ) (pk : {pk // pk ∈ higherPrimePowerInventory A}) :
    atomNatural (inventoryIndex A pk) = pk.val := by
  apply Prod.ext
  · rfl
  · change pk.val.2 - 3 + 3 = pk.val.2
    omega

theorem atomNatural_mem_inventory_iff (A : ℝ) (i : HigherIndex) :
    atomNatural i ∈ higherPrimePowerInventory A ↔
      i.1.val ^ (i.2 + 3) ≤ ⌊Real.exp (2 * A)⌋₊ := by
  change (i.1.val, i.2 + 3) ∈ higherPrimePowerInventory A ↔ _
  constructor
  · intro h
    exact (Finset.mem_filter.mp h).2
  · intro h
    have hp := i.1.property
    have hbase : i.1.val ≤ i.1.val ^ (i.2 + 3) := Nat.le_pow (by omega)
    have hk : ∀ k : ℕ, k ≤ i.1.val ^ k := by
      intro k
      induction k with
      | zero => simp
      | succ k ih =>
        rw [pow_succ]
        have hpos := pow_pos hp.pos k
        have hp2 := hp.two_le
        nlinarith
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_product.mpr ⟨?_, ?_⟩, h⟩
    · exact Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr ⟨hp.pos, hbase.trans h⟩, hp⟩
    · exact Finset.mem_Icc.mpr ⟨by omega, (hk _).trans h⟩

theorem mem_atomInventory_iff (A : ℝ) (i : HigherIndex) :
    i ∈ atomInventory A ↔ i.1.val ^ (i.2 + 3) ≤ ⌊Real.exp (2 * A)⌋₊ := by
  classical
  rw [← atomNatural_mem_inventory_iff]
  constructor
  · intro h
    obtain ⟨pk, _, he⟩ := Finset.mem_image.mp h
    rw [← he, inventoryIndex_natural]
    exact pk.property
  · intro h
    apply Finset.mem_image.mpr
    refine ⟨⟨atomNatural i, h⟩, Finset.mem_attach _ _, ?_⟩
    apply atomNatural_injective
    rw [inventoryIndex_natural]

end StorageDraft
