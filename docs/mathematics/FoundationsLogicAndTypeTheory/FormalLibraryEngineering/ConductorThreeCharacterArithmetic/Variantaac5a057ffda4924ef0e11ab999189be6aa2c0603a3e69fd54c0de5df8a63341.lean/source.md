# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConductorThreeCharacterArithmetic.Variantaac5a057ffda4924ef0e11ab999189be6aa2c0603a3e69fd54c0de5df8a63341

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `86d2c35e8cac7b34f932898fe9efbca5e67fc1eb` · SHA-256 `a5aa70a8f94de74115f49cc91110e7f35064c4aefa8ff26f8051818432d0776c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConductorThreeIntegerCharacter.Variant90956a60a04788b01c35f16a66fc48ba267f28b859cbdaed35a9e982aa669301","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"90956a60a04788b01c35f16a66fc48ba267f28b859cbdaed35a9e982aa669301","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ConductorThreeIntegerCharacter.Variant90956a60a04788b01c35f16a66fc48ba267f28b859cbdaed35a9e982aa669301","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"90956a60a04788b01c35f16a66fc48ba267f28b859cbdaed35a9e982aa669301","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:f8ff4aee8f63f8901f3dcfee/workspace/lib/Surface/Core/ConductorThreeCharacterArithmetic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.AnalyticPrimeWalk
import Mathlib.Tactic

/-!
# Exact arithmetic of the primitive conductor-three character

This module exposes the integer-valued character underlying
`AnalyticPrimeWalk.conductorThreeCharacter`.  Keeping the value in `ℤ` is
essential: the third residue class has value `-1`, so a natural-valued
surrogate would erase the sign used by the prime race.

No analytic estimate is used here.  Every statement is finite arithmetic in
`ZMod 3`, and the bridge to the existing complex Dirichlet character is
definitionally exact.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConductorThreeIntegerCharacter.Variant90956a60a04788b01c35f16a66fc48ba267f28b859cbdaed35a9e982aa669301

public section

namespace Surface.Core.ConductorThreeCharacterArithmetic

open Surface.Core.AnalyticPrimeWalk

noncomputable section

/-- The primitive quadratic character modulo three with integer values. -/
@[expose]
def conductorThreeIntegerCharacter : DirichletCharacter ℤ 3 :=
  quadraticChar (ZMod 3)

/-- Natural-number evaluation of the conductor-three character.  The domain
is `ℕ`; the codomain remains `ℤ` so that the value `-1` is represented
faithfully. -/
@[expose]
def conductorThreeIntegerValue (n : ℕ) : ℤ :=
  conductorThreeIntegerCharacter n

@[surface_novel, surface_published, simp]
theorem conductorThreeIntegerValue_mod_zero
    {n : ℕ} (h : n % 3 = 0) :
    conductorThreeIntegerValue n = 0 := by
  rw [conductorThreeIntegerValue, conductorThreeIntegerCharacter,
    quadraticChar_eq_zero_iff]
  exact (ZMod.natCast_eq_zero_iff n 3).2 (Nat.dvd_of_mod_eq_zero h)

@[surface_novel, surface_published, simp]
theorem conductorThreeIntegerValue_mod_one
    {n : ℕ} (h : n % 3 = 1) :
    conductorThreeIntegerValue n = 1 := by
  rw [conductorThreeIntegerValue, conductorThreeIntegerCharacter]
  have hn : (n : ZMod 3) = 1 :=
    (ZMod.natCast_eq_natCast_iff' n 1 3).2 (by simpa using h)
  rw [hn]
  exact map_one _

/-- `2` is not a square in `ZMod 3`.  `decide` reduces the three finite
cases in the kernel; no analytic or number-theoretic hypothesis is involved. -/
private theorem not_isSquare_two_zmod_three :
    ¬ IsSquare (2 : ZMod 3) := by
  decide

private theorem two_ne_zero_zmod_three :
    (2 : ZMod 3) ≠ 0 := by
  decide

@[surface_novel, surface_published, simp]
theorem conductorThreeIntegerValue_mod_two
    {n : ℕ} (h : n % 3 = 2) :
    conductorThreeIntegerValue n = -1 := by
  rw [conductorThreeIntegerValue, conductorThreeIntegerCharacter]
  have hn : (n : ZMod 3) = 2 :=
    (ZMod.natCast_eq_natCast_iff' n 2 3).2 (by simpa using h)
  rw [hn]
  norm_num [quadraticChar_apply, quadraticCharFun,
    not_isSquare_two_zmod_three, two_ne_zero_zmod_three]

/-- Exact three-way value table for `χ₃`. -/
@[surface_novel, surface_published]
theorem conductorThreeIntegerValue_cases (n : ℕ) :
    (n % 3 = 0 ∧ conductorThreeIntegerValue n = 0) ∨
    (n % 3 = 1 ∧ conductorThreeIntegerValue n = 1) ∨
    (n % 3 = 2 ∧ conductorThreeIntegerValue n = -1) := by
  have hlt : n % 3 < 3 := Nat.mod_lt n (by omega)
  interval_cases h : n % 3 <;> simp [h]

@[surface_novel, surface_published]
theorem conductorThreeIntegerValue_eq_zero_iff (n : ℕ) :
    conductorThreeIntegerValue n = 0 ↔ 3 ∣ n := by
  rw [Nat.dvd_iff_mod_eq_zero]
  have hlt : n % 3 < 3 := Nat.mod_lt n (by omega)
  interval_cases h : n % 3 <;> simp [h]

@[surface_novel, surface_published]
theorem conductorThreeIntegerValue_eq_one_iff (n : ℕ) :
    conductorThreeIntegerValue n = 1 ↔ n % 3 = 1 := by
  have hlt : n % 3 < 3 := Nat.mod_lt n (by omega)
  interval_cases h : n % 3 <;> simp [h]

@[surface_novel, surface_published]
theorem conductorThreeIntegerValue_eq_neg_one_iff (n : ℕ) :
    conductorThreeIntegerValue n = -1 ↔ n % 3 = 2 := by
  have hlt : n % 3 < 3 := Nat.mod_lt n (by omega)
  interval_cases h : n % 3 <;> simp [h]

/-- Multiplicativity is inherited from the bundled quadratic character. -/
@[surface_novel, surface_published]
theorem conductorThreeIntegerValue_mul (m n : ℕ) :
    conductorThreeIntegerValue (m * n) =
      conductorThreeIntegerValue m * conductorThreeIntegerValue n := by
  change conductorThreeIntegerCharacter ((m * n : ℕ) : ZMod 3) = _
  simpa only [conductorThreeIntegerValue, Nat.cast_mul] using
    (map_mul conductorThreeIntegerCharacter (m : ZMod 3) (n : ZMod 3))

@[surface_novel, surface_published]
theorem conductorThreeIntegerValue_pow (n k : ℕ) :
    conductorThreeIntegerValue (n ^ k) = conductorThreeIntegerValue n ^ k := by
  change conductorThreeIntegerCharacter ((n ^ k : ℕ) : ZMod 3) = _
  simpa only [conductorThreeIntegerValue, Nat.cast_pow] using
    (map_pow conductorThreeIntegerCharacter (n : ZMod 3) k)

/-- The existing complex character is literally the integer character followed
by the canonical cast `ℤ → ℂ`. -/
@[surface_adapter, surface_published]
theorem conductorThreeCharacter_eq_intCast (n : ℕ) :
    conductorThreeCharacter n = (conductorThreeIntegerValue n : ℂ) := by
  rfl

end

end Surface.Core.ConductorThreeCharacterArithmetic
```
