# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CardinalCounterexamples.Variant6acc17ad1202175a51a4da22e55939ea41907e146fde0506ed5e72434fdf0139

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `575001dda44b296e6c2f0930284ebe8fe4606b0e` · SHA-256 `a6a9ed8867be27f9d8345cdf1f649ef18487639cda0de7c7e618fc90f564c8b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.BethFiber.Variant9a7e03cd858a9711a01e2b2002e8b4b76da030575872e38be2e295662bb978e8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9a7e03cd858a9711a01e2b2002e8b4b76da030575872e38be2e295662bb978e8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.BethFiber.Variant9a7e03cd858a9711a01e2b2002e8b4b76da030575872e38be2e295662bb978e8","mathematical_subject":"Logic.SetTheory","original_sha256":"9a7e03cd858a9711a01e2b2002e8b4b76da030575872e38be2e295662bb978e8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/type-theory-reconstruction/FormalResearch/MathematicalTooling/Coverage/CardinalCounterexamples.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.SetTheory.Cardinal.Aleph
import Mathlib.SetTheory.Cardinal.Arithmetic
import Mathlib.SetTheory.Cardinal.Regular

/-!
# A singular strong-limit support counterexample

The countable dependent sum of the beth_n carriers reaches beth_omega although
each fiber is strictly smaller. Even the complete catalogue of individual
fiber fragments has cardinal beth_omega; the complete subsets are more numerous.
Human research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.BethFiber.Variant9a7e03cd858a9711a01e2b2002e8b4b76da030575872e38be2e295662bb978e8

namespace FormalResearch.MathematicalTooling.Coverage

open Cardinal

/-- An actual carrier of each finite-stage beth cardinal. -/
def bethFiber (n : ℕ) : Type := (Cardinal.beth (n : Ordinal)).out

theorem bethFiber_card (n : ℕ) : #(bethFiber n) = Cardinal.beth (n : Ordinal) :=
  Cardinal.mk_out _

theorem bethFiber_small (n : ℕ) : #(bethFiber n) < Cardinal.beth Ordinal.omega0 := by
  rw [bethFiber_card, Cardinal.beth_lt_beth]
  exact Ordinal.natCast_lt_omega0 n

theorem beth_omega_uncountable : Cardinal.aleph0 < Cardinal.beth Ordinal.omega0 := by
  simpa only [Cardinal.beth_zero] using
    (Cardinal.beth_lt_beth.mpr Ordinal.omega0_pos :
      Cardinal.beth 0 < Cardinal.beth Ordinal.omega0)

theorem beth_omega_strongLimit : (Cardinal.beth Ordinal.omega0).IsStrongLimit := by
  exact Cardinal.isStrongLimit_beth.mpr Ordinal.isSuccLimit_omega0.isSuccPrelimit

theorem beth_omega_natural_sup :
    (⨆ n : ℕ, Cardinal.beth (n : Ordinal)) = Cardinal.beth Ordinal.omega0 := by
  rw [← Ordinal.iSup_natCast, Cardinal.isNormal_beth.map_iSup Ordinal.bddAbove_of_small]

theorem beth_omega_shifted_sup :
    (⨆ n : ℕ, Cardinal.beth ((n : Ordinal) + 1)) = Cardinal.beth Ordinal.omega0 := by
  apply le_antisymm
  · apply ciSup_le
    intro n
    exact (Cardinal.beth_lt_beth.mpr (by
      simpa only [Nat.cast_add, Nat.cast_one] using Ordinal.natCast_lt_omega0 (n + 1))).le
  · rw [← beth_omega_natural_sup]
    apply ciSup_le
    intro n
    exact (Cardinal.beth_mono (le_self_add : (n : Ordinal) ≤ (n : Ordinal) + 1)).trans
      (le_ciSup Cardinal.bddAbove_of_small n)

/-- Pointwise-small fibers need not have a small dependent sum. -/
theorem bethFiber_sigma_card : #(Σ n : ℕ, bethFiber n) = Cardinal.beth Ordinal.omega0 := by
  rw [Cardinal.mk_sigma]
  simp only [bethFiber_card]
  apply le_antisymm
  · have h := Cardinal.sum_le_mk_mul_iSup (fun n : ℕ ↦ Cardinal.beth (n : Ordinal))
    simpa only [Cardinal.mk_nat, beth_omega_natural_sup,
      Cardinal.aleph0_mul_eq (Cardinal.aleph0_le_beth _)] using h
  · rw [← beth_omega_natural_sup]
    exact Cardinal.iSup_le_sum _

/-- This uncountable strong limit is singular, witnessed by its countable fibers. -/
theorem beth_omega_not_regular :
    ¬ (Cardinal.beth (Ordinal.omega0 : Ordinal.{0})).IsRegular := by
  intro regular
  have h := Cardinal.sum_lt_of_isRegular regular
    (by simpa only [Cardinal.mk_nat] using beth_omega_uncountable) bethFiber_small
  rw [← Cardinal.mk_sigma, bethFiber_sigma_card] at h
  exact h.false

/-- Individual source blocks and masks form a catalogue of cardinal beth_omega. -/
theorem beth_fragment_catalogue_card :
    #(Σ n : ℕ, Set (bethFiber n)) = Cardinal.beth Ordinal.omega0 := by
  rw [Cardinal.mk_sigma]
  simp only [Cardinal.mk_set, bethFiber_card, ← Cardinal.beth_add_one]
  apply le_antisymm
  · have h := Cardinal.sum_le_mk_mul_iSup
      (fun n : ℕ ↦ Cardinal.beth ((n : Ordinal) + 1))
    simpa only [Cardinal.mk_nat, beth_omega_shifted_sup,
      Cardinal.aleph0_mul_eq (Cardinal.aleph0_le_beth _)] using h
  · rw [← beth_omega_shifted_sup]
    exact Cardinal.iSup_le_sum _

/-- The catalogue bound is strictly smaller than the complete subset space. -/
theorem beth_complete_subsets_exceed_catalogue :
    #(Σ n : ℕ, Set (bethFiber n)) < #(Set (Σ n : ℕ, bethFiber n)) := by
  rw [beth_fragment_catalogue_card, Cardinal.mk_set, bethFiber_sigma_card]
  exact Cardinal.cantor _

end FormalResearch.MathematicalTooling.Coverage
```
