# pow_sub_one_norm_prime_pow_ne_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c1560a04efc6897413f45a9477aecffa5cc80e3d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 321,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d7084071-70ff-bc0f-5509-34d37be7305b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:acad927a-141e-31ff-12cc-6bc2effa933a",
  "kind": "theorem",
  "lexical_name": "pow_sub_one_norm_prime_pow_ne_two",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "pow-sub-one-norm-prime-pow-ne-two--5fe27b978b4b989a95f12e46",
  "source": {
    "blob": "c1560a04efc6897413f45a9477aecffa5cc80e3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 321,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fe27b978b4b989a95f12e4634e69c4c020cbbbef423f259bee75b66d722fba2",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acad927a-141e-31ff-12cc-6bc2effa933a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_sub_one_norm_prime_pow_ne_two {k s : ℕ} (hζ : IsPrimitiveRoot ζ ↑(p ^ (k + 1)))
    [hpri : Fact (p : ℕ).Prime] [IsCyclotomicExtension {p ^ (k + 1)} K L]
    (hirr : Irreducible (cyclotomic (↑(p ^ (k + 1)) : ℕ) K)) (hs : s ≤ k)
    (htwo : p ^ (k - s + 1) ≠ 2) : norm K (ζ ^ (p : ℕ) ^ s - 1) = (p : K) ^ (p : ℕ) ^ s := by
-- Porting note: `by simp` was `by linarith` that now fails.
  have hirr₁ : Irreducible (cyclotomic ((p : ℕ) ^ (k - s + 1)) K) :=
    cyclotomic_irreducible_pow_of_irreducible_pow hpri.1 (by simp) hirr
  rw [← PNat.pow_coe] at hirr₁
  set η := ζ ^ (p : ℕ) ^ s - 1 with ηdef
  let η₁ : K⟮η⟯ := IntermediateField.AdjoinSimple.gen K η
  have hη : IsPrimitiveRoot (η + 1) ((p : ℕ) ^ (k + 1 - s)) := by
    rw [sub_add_cancel]
    refine' IsPrimitiveRoot.pow (p ^ (k + 1)).pos hζ _
    rw [PNat.pow_coe, ← pow_add, add_comm s, Nat.sub_add_cancel (le_trans hs (Nat.le_succ k))]
  have : IsCyclotomicExtension {p ^ (k - s + 1)} K K⟮η⟯ := by
    suffices IsCyclotomicExtension {p ^ (k - s + 1)} K K⟮η + 1⟯.toSubalgebra by
      have H : K⟮η + 1⟯.toSubalgebra = K⟮η⟯.toSubalgebra := by
        simp only [IntermediateField.adjoin_simple_toSubalgebra_of_integral
            (IsCyclotomicExtension.integral {p ^ (k + 1)} K L _)]
        refine' Subalgebra.ext fun x => ⟨fun hx => adjoin_le _ hx, fun hx => adjoin_le _ hx⟩
        · simp only [Set.singleton_subset_iff, SetLike.mem_coe]
          exact Subalgebra.add_mem _ (subset_adjoin (mem_singleton η)) (Subalgebra.one_mem _)
-- Porting note `ηdef` was not needed.
        · simp only [Set.singleton_subset_iff, SetLike.mem_coe, ← ηdef]
          nth_rw 1 [← add_sub_cancel η 1]
          refine' Subalgebra.sub_mem _ (subset_adjoin (mem_singleton _)) (Subalgebra.one_mem _)
-- Porting note: the previous proof was `rw [H] at this; exact this` but it now fails.
      exact IsCyclotomicExtension.equiv _ _ _ (Subalgebra.equivOfEq _ _ H)
-- Porting note: the next `refine` was `rw [H]`, abusing defeq, and it now fails.
    have H := IntermediateField.adjoin_simple_toSubalgebra_of_integral
        (IsCyclotomicExtension.integral {p ^ (k + 1)} K L (η + 1))
    refine @IsCyclotomicExtension.equiv _ _ _ _ _ _ _ _ _ ?_ (Subalgebra.equivOfEq _ _ H).symm
    have hη' : IsPrimitiveRoot (η + 1) ↑(p ^ (k + 1 - s)) := by simpa using hη
-- Porting note: `using 1` was not needed.
    convert hη'.adjoin_isCyclotomicExtension K using 1
    rw [Nat.sub_add_comm hs]
  replace hη : IsPrimitiveRoot (η₁ + 1) ↑(p ^ (k - s + 1))
  · apply coe_submonoidClass_iff.1
    convert hη using 1
    rw [Nat.sub_add_comm hs, pow_coe]
-- Porting note: the following `haveI` were not needed because the locale `cyclotomic` set them
-- as instances.
  haveI := IsCyclotomicExtension.finiteDimensional {p ^ (k + 1)} K L
  haveI := IsCyclotomicExtension.isGalois (p ^ (k + 1)) K L
  rw [norm_eq_norm_adjoin K]
  · have H := hη.sub_one_norm_isPrimePow ?_ hirr₁ htwo
    swap; · rw [PNat.pow_coe]; exact hpri.1.isPrimePow.pow (Nat.succ_ne_zero _)
    rw [add_sub_cancel] at H
    rw [H]
    congr
    · rw [PNat.pow_coe, Nat.pow_minFac, hpri.1.minFac_eq]
      exact Nat.succ_ne_zero _
    have := FiniteDimensional.finrank_mul_finrank K K⟮η⟯ L
    rw [IsCyclotomicExtension.finrank L hirr, IsCyclotomicExtension.finrank K⟮η⟯ hirr₁,
      PNat.pow_coe, PNat.pow_coe, Nat.totient_prime_pow hpri.out (k - s).succ_pos,
      Nat.totient_prime_pow hpri.out k.succ_pos, mul_comm _ ((p : ℕ) - 1), mul_assoc,
      mul_comm ((p : ℕ) ^ (k.succ - 1))] at this
    replace this := mul_left_cancel₀ (tsub_pos_iff_lt.2 hpri.out.one_lt).ne' this
    have Hex : k.succ - 1 = (k - s).succ - 1 + s := by
      simp only [Nat.succ_sub_succ_eq_sub, tsub_zero]
      exact (Nat.sub_add_cancel hs).symm
    rw [Hex, pow_add] at this
    exact mul_left_cancel₀ (pow_ne_zero _ hpri.out.ne_zero) this
#align is_primitive_root.pow_sub_one_norm_prime_pow_ne_two IsPrimitiveRoot.pow_sub_one_norm_prime_pow_ne_two

/-- If `Irreducible (cyclotomic (p ^ (k + 1)) K)` (in particular for `K = ℚ`) and `p` is a prime,
then the norm of `ζ ^ (p ^ s) - 1` is `p ^ (p ^ s)` if `p ≠ 2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant28a50d13a1d055fa27f466397a6ef833c225d54b4516b77702409025e3bef8e9.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1560a04efc6897413f45a9477aecffa5cc80e3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
