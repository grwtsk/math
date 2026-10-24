# Complete source: GRWTSK.Algebra.Over.Variant78f2c8b0714235f9529a0d9256e9dcd0f40fea3aa7288eb7b5c4c2d263e137fb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `81a8c730827f947efcc4a88b8c837435092bdda4` · SHA-256 `02b0154cdc53bacf16eea4a509ca6713f1b6e27185e9e5ffe44463a6774903af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.IdealNcardPrimesOverLtOfNotLe.Variant0a958ed1c39b96fa2f057b9c1eb09ed910a9d4b939409af01daed1cba30f567a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0a958ed1c39b96fa2f057b9c1eb09ed910a9d4b939409af01daed1cba30f567a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.IdealNcardPrimesOverLtOfNotLe.Variant0a958ed1c39b96fa2f057b9c1eb09ed910a9d4b939409af01daed1cba30f567a","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"0a958ed1c39b96fa2f057b9c1eb09ed910a9d4b939409af01daed1cba30f567a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/Ideal/Quotient/Over.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
module

public import Mathlib.Data.Set.Card
public import Mathlib.RingTheory.Ideal.Over

/-! # Lemmas about `primesOver` in quotient rings. -/


namespace GRWTSK.Algebra.IdealNcardPrimesOverLtOfNotLe.Variant0a958ed1c39b96fa2f057b9c1eb09ed910a9d4b939409af01daed1cba30f567a

public section

variable {R S T : Type*} [CommRing R] [CommRing S] [CommRing T] [Algebra R S] [Algebra R T]

/-- Given a prime `P` of `R` and an ideal `I` in an `R`-algebra `S`.
Suppose we can find a prime `P'` over `P`, not containing `I`,
then the number of primes of `S / I` over `P`
is strictly less than primes of `S` over `P` (provided they are finite).

The lemma is stated in terms of surjections for syntactic generality. -/
lemma Ideal.ncard_primesOver_lt_of_not_le
    (f : S →ₐ[R] T) (Hf : Function.Surjective f)
    (P : Ideal R) (P' : Ideal S) [P'.IsPrime] [P'.LiesOver P]
    (hkP' : ¬ RingHom.ker f.toRingHom ≤ P') (H : (P.primesOver S).Finite) :
    (P.primesOver T).ncard < (P.primesOver S).ncard := by
  rw [← Set.ncard_image_of_injective _ (Ideal.comap_injective_of_surjective _ Hf)]
  refine Set.ncard_lt_ncard (Set.ssubset_iff_exists.mpr ⟨?_, P', ⟨‹_›, ‹_›⟩, ?_⟩) H
  · rintro _ ⟨q, ⟨_, _⟩, rfl⟩
    exact ⟨inferInstance, inferInstanceAs ((q.comap f).LiesOver _)⟩
  · rintro ⟨q, ⟨_, _⟩, rfl⟩; exact hkP' (Ideal.ker_le_comap _)

lemma Ideal.ncard_primesOver_quotient_singleton_lt_of_notMem
    (P : Ideal R) (e : S) (P' : Ideal S) [P'.IsPrime] [P'.LiesOver P]
    (heP' : e ∉ P') (H : (P.primesOver S).Finite) :
    (P.primesOver (S ⧸ Ideal.span {e})).ncard < (P.primesOver S).ncard :=
  Ideal.ncard_primesOver_lt_of_not_le _ (Ideal.Quotient.mkₐ_surjective R _) _ P' (by simpa) H
```
