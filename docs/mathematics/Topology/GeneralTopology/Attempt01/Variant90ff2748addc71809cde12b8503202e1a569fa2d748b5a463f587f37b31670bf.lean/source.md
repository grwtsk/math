# Complete source: GRWTSK.Topology.GeneralTopology.Attempt01.Variant90ff2748addc71809cde12b8503202e1a569fa2d748b5a463f587f37b31670bf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5580ffd34c7725332eb75cb6665ace3f9d750d4` · SHA-256 `af445b2c782668b09779bf2af557c31b1bee7320beb7bdc714b32c72c2dbe8e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ShiftedInventory.Variantce1d94ea43e7a4017c8dfcd4b3647474fdb9834820a644170fa5440c50835c6e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ce1d94ea43e7a4017c8dfcd4b3647474fdb9834820a644170fa5440c50835c6e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ShiftedInventory.Variantce1d94ea43e7a4017c8dfcd4b3647474fdb9834820a644170fa5440c50835c6e","mathematical_subject":"Topology.GeneralTopology","original_sha256":"ce1d94ea43e7a4017c8dfcd4b3647474fdb9834820a644170fa5440c50835c6e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass20/proper_power_assembly/attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ProperPowerTransport
import ClosedProperPowerPrefix

/-! Genuine finite-to-countable proper-power closed-prefix transport.
Research direction grwtsk contributors; focused construction OpenAI Codex.
No Laurent identification, Ramaré, arithmetic intercept or signed-budget premise. -/

namespace GRWTSK.Topology.GeneralTopology.ShiftedInventory.Variantce1d94ea43e7a4017c8dfcd4b3647474fdb9834820a644170fa5440c50835c6e

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ProperPowerAssembly
open Finset MeasureTheory Set
open ContinuousResearch.ProperPowerMoments
open ContinuousResearch.ProperPowerTransport
open ContinuousResearch.ClosedProperPowerPrefix
open FormalResearch.RiemannHypothesis.WeightedPrimeMertens
open FormalResearch.RiemannHypothesis.WeightedPrimeAbel

def shiftedInventory (N : ℕ) : Finset (Nat.Primes × ℕ) :=
  (((range (N+1)).subtype Nat.Prime).product (range (N+1))).filter
    (fun pk => pk.1.val ^ (pk.2+2) ≤ N)

theorem mem_shiftedInventory_iff (N : ℕ) (p : Nat.Primes) (k : ℕ) :
    (p,k) ∈ shiftedInventory N ↔ p.val^(k+2) ≤ N := by
  constructor
  · intro h
    exact (mem_filter.mp h).2
  · intro h
    have hpN : p.val ≤ N := by
      have hpk : p.val ≤ p.val^(k+2) := by
        conv_lhs => rw [←pow_one p.val]
        exact Nat.pow_le_pow_right p.property.one_lt.le (by omega)
      exact hpk.trans h
    have hkN : k ≤ N := by
      have hpow := (Nat.lt_pow_self p.property.one_lt (n:=k+2)).le.trans h
      omega
    exact mem_filter.mpr ⟨mem_product.mpr
      ⟨mem_subtype.mpr (mem_range.mpr (by omega)),mem_range.mpr (by omega)⟩,h⟩

theorem shiftedInventory_onset_iff (t : ℝ) (p : Nat.Primes) (k : ℕ) :
    (p,k) ∈ shiftedInventory ⌊Real.exp t⌋₊ ↔ powerOnset p k ≤ t := by
  rw [mem_shiftedInventory_iff,prime_power_closed_onset_iff t p.property]
  rfl

theorem closedOnsetAtom_zero_outside (t : ℝ) (pk : Nat.Primes × ℕ)
    (h : pk ∉ shiftedInventory ⌊Real.exp t⌋₊) :
    closedOnsetAtom t pk.1 pk.2 = 0 := by
  unfold closedOnsetAtom
  exact if_neg (fun hp => h ((shiftedInventory_onset_iff t pk.1 pk.2).mpr hp))

theorem closedOnsetPrefix_eq_finite_shifted (t : ℝ) :
    closedOnsetPrefix t =
      ∑ pk ∈ shiftedInventory ⌊Real.exp t⌋₊, powerWeight pk.1 pk.2 := by
  unfold closedOnsetPrefix
  rw [tsum_eq_sum (s:=shiftedInventory ⌊Real.exp t⌋₊)
    (fun pk h => closedOnsetAtom_zero_outside t pk h)]
  apply sum_congr rfl
  intro pk h
  exact if_pos ((shiftedInventory_onset_iff t pk.1 pk.2).mp h)

end ContinuousResearch.ProperPowerAssembly
```
