# Complete source: GRWTSK.Algebra.LinearAlgebra.IsSimpleOrder.Variantaeddcee29294f2b927533ade7288dc8d6f78ed33f39396e8823a3c8f054b81ce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `372447038ebbbaa5a8684fca2a4238d63fb9373d` · SHA-256 `d8778e5ed99b23e2302ab8fd41d4e3332a3a94005fd464815b62f88656af6561`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.SubalgebraIsSimpleOrderOfFinrankPrime.Variant3e79ed3b60bed3776bc0bf4885e3ef8259e7c2adb940f5a5182be890202a8204","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3e79ed3b60bed3776bc0bf4885e3ef8259e7c2adb940f5a5182be890202a8204","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.SubalgebraIsSimpleOrderOfFinrankPrime.Variant3e79ed3b60bed3776bc0bf4885e3ef8259e7c2adb940f5a5182be890202a8204","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"3e79ed3b60bed3776bc0bf4885e3ef8259e7c2adb940f5a5182be890202a8204","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Algebra/Subalgebra/IsSimpleOrder.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
module

public import Mathlib.LinearAlgebra.FiniteDimensional.Basic
public import Mathlib.LinearAlgebra.Dimension.FreeAndStrongRankCondition
public import Mathlib.LinearAlgebra.FreeModule.StrongRankCondition

/-!
# Subalgebras of an algebra of prime dimension

If `A` is a domain, and a finite-dimensional algebra over a field `F`, with prime dimension,
then there are no non-trivial `F`-subalgebras.
-/


namespace GRWTSK.Algebra.LinearAlgebra.SubalgebraIsSimpleOrderOfFinrankPrime.Variant3e79ed3b60bed3776bc0bf4885e3ef8259e7c2adb940f5a5182be890202a8204

public section

open Module Submodule

theorem Subalgebra.isSimpleOrder_of_finrank_prime (F A) [Field F] [Ring A] [IsDomain A]
    [Algebra F A] (hp : (finrank F A).Prime) : IsSimpleOrder (Subalgebra F A) :=
  { toNontrivial :=
      ⟨⟨⊥, ⊤, fun he =>
          Nat.not_prime_one ((Subalgebra.bot_eq_top_iff_finrank_eq_one.1 he).subst hp)⟩⟩
    eq_bot_or_eq_top := fun K => by
      have : FiniteDimensional _ _ := .of_finrank_pos hp.pos
      let := divisionRingOfFiniteDimensional F K
      refine (hp.eq_one_or_self_of_dvd _ ⟨_, (finrank_mul_finrank F K A).symm⟩).imp ?_ fun h => ?_
      · exact fun h' => Subalgebra.eq_bot_of_finrank_one h'
      · exact
          Algebra.toSubmodule_eq_top.1 (eq_top_of_finrank_eq <| K.finrank_toSubmodule.trans h) }
-- TODO: `IntermediateField` version
```
