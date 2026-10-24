# Complete source: GRWTSK.Algebra.Subalgebra.Variantce11688769a978de483e297fa3e81c528b195de4e6e3d6cd654dcd3aa6dd2623

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9fcb947857734cfa95be8da4d2f65acf4b1ea319` · SHA-256 `d85365bf6a1ce3f00cf9d56d80e6e05687b3aa39ab376d59b4fbd79f2ab925e3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.FgBotToSubmodule.Variant72d1dc0febc0602b4a96b64368ac9125a63b33ad67b55b029dd6e6ba9d23c8dc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"72d1dc0febc0602b4a96b64368ac9125a63b33ad67b55b029dd6e6ba9d23c8dc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.FgBotToSubmodule.Variant72d1dc0febc0602b4a96b64368ac9125a63b33ad67b55b029dd6e6ba9d23c8dc","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"72d1dc0febc0602b4a96b64368ac9125a63b33ad67b55b029dd6e6ba9d23c8dc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Finiteness/Subalgebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Algebra.Algebra.Subalgebra.Lattice
import Mathlib.RingTheory.Finiteness.Basic
import Mathlib.RingTheory.Finiteness.Bilinear

/-!
# Subalgebras that are finitely generated as submodules
-/


namespace GRWTSK.Algebra.FgBotToSubmodule.Variant72d1dc0febc0602b4a96b64368ac9125a63b33ad67b55b029dd6e6ba9d23c8dc

open Function (Surjective)
open Finsupp

namespace Subalgebra

open Submodule

variable {R A : Type*} [CommSemiring R] [Semiring A] [Algebra R A]

theorem fg_bot_toSubmodule : (⊥ : Subalgebra R A).toSubmodule.FG :=
  ⟨{1}, by simp [Algebra.toSubmodule_bot, one_eq_span]⟩

instance finite_bot : Module.Finite R (⊥ : Subalgebra R A) :=
  Module.Finite.range (Algebra.linearMap R A)

end Subalgebra

namespace Submodule

theorem fg_unit {R A : Type*} [CommSemiring R] [Semiring A] [Algebra R A] (I : (Submodule R A)ˣ) :
    (I : Submodule R A).FG := by
  obtain ⟨T, T', hT, hT', one_mem⟩ := mem_span_mul_finite_of_mem_mul (I.mul_inv ▸ one_le.mp le_rfl)
  refine ⟨T, span_eq_of_le _ hT ?_⟩
  rw [← one_mul I, ← mul_one (span R (T : Set A))]
  conv_rhs => rw [← I.inv_mul, ← mul_assoc]
  refine mul_le_mul_left (le_trans ?_ <| mul_le_mul_right <| span_le.mpr hT')
  rwa [Units.val_one, span_mul_span, one_le]

theorem fg_of_isUnit {R A : Type*} [CommSemiring R] [Semiring A] [Algebra R A] {I : Submodule R A}
    (hI : IsUnit I) : I.FG :=
  fg_unit hI.unit

section Mul

variable {R : Type*} {A : Type*} [CommSemiring R] [Semiring A] [Algebra R A]
variable {M N : Submodule R A}

theorem FG.mul (hm : M.FG) (hn : N.FG) : (M * N).FG := by
  rw [mul_eq_map₂]; exact hm.map₂ _ hn

theorem FG.pow (h : M.FG) (n : ℕ) : (M ^ n).FG :=
  Nat.recOn n ⟨{1}, by simp [one_eq_span]⟩ fun n ih => by simpa [pow_succ] using ih.mul h

end Mul

end Submodule
```
