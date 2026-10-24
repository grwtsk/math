# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Expand.Variantfb5da9fdf1fa1de84c117309b202790bf59f2b6d1f264e631b4f1841e395bd6c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c907e0766e38e192da301a43e0ffcea59c324b86` · SHA-256 `ab38b541ee8ac673f58084fdd38de7bf1f2b17de23fddf4d012405362c565cc1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.MapFrobeniusExpand.Variantdc8ae972039c010d4ebf36e38bab654b11583091aa61e583338610d11faf4888","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dc8ae972039c010d4ebf36e38bab654b11583091aa61e583338610d11faf4888","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.MapFrobeniusExpand.Variantdc8ae972039c010d4ebf36e38bab654b11583091aa61e583338610d11faf4888","mathematical_subject":"Algebra.Polynomials","original_sha256":"dc8ae972039c010d4ebf36e38bab654b11583091aa61e583338610d11faf4888","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/MvPolynomial/Expand.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wenrong Zou
-/
module

public import Mathlib.Algebra.MvPolynomial.Expand
public import Mathlib.RingTheory.MvPolynomial.Basic
public import Mathlib.Algebra.CharP.Frobenius
public import Mathlib.FieldTheory.Finite.Basic

/-!
# Results on `MvPolynomial.expand`

In this file we prove results about `MvPolynomial.expand` that require more than the basic API
available in `Mathlib.Algebra.*`.
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.MapFrobeniusExpand.Variantdc8ae972039c010d4ebf36e38bab654b11583091aa61e583338610d11faf4888

public section

namespace MvPolynomial

variable {σ R : Type*} [CommSemiring R] (p : ℕ) [ExpChar R p]

set_option backward.isDefEq.respectTransparency.types false in
theorem map_frobenius_expand {f : MvPolynomial σ R} :
    (f.expand p).map (frobenius R p) = f ^ p :=
  f.induction_on' fun _ _ => by simp [monomial_pow, frobenius]
    fun _ _ ha hb => by rw [map_add, map_add, ha, hb, add_pow_expChar]

theorem map_iterateFrobenius_expand (f : MvPolynomial σ R) (n : ℕ) :
    map (iterateFrobenius R p n) (expand (p ^ n) f) = f ^ p ^ n := by
  induction n with
  | zero => simp [map_id]
  | succ k n_ih =>
    symm
    conv_lhs => rw [pow_succ, pow_mul, ← n_ih]
    simp_rw [← map_frobenius_expand p, pow_succ', add_comm k, iterateFrobenius_add,
      ← map_map, ← map_expand, ← expand_mul, iterateFrobenius_one]

theorem _root_.GRWTSK.Algebra.CommutativeAlgebra.MapFrobeniusExpand.Variantdc8ae972039c010d4ebf36e38bab654b11583091aa61e583338610d11faf4888.FiniteField.MvPolynomial.expand_card {K : Type*} [Field K] [Fintype K]
    (f : MvPolynomial σ K) : expand (Fintype.card K) f = f ^ Fintype.card K := by
  obtain ⟨p, hp⟩ := CharP.exists K
  rcases FiniteField.card K p with ⟨⟨n, npos⟩, ⟨hp, hn⟩⟩
  have : Fact p.Prime := ⟨hp⟩
  dsimp at hn
  rw [hn, ← map_iterateFrobenius_expand p, iterateFrobenius_eq_pow,
    FiniteField.frobenius_pow hn, RingHom.one_def, map_id]

end MvPolynomial
```
