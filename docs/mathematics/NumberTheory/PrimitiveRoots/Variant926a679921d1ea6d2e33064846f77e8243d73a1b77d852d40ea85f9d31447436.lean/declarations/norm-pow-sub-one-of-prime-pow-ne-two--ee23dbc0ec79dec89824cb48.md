# norm_pow_sub_one_of_prime_pow_ne_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a960210-877c-9646-9dc5-c677af0d889b",
  "kind": "theorem",
  "lexical_name": "norm_pow_sub_one_of_prime_pow_ne_two",
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
  "slug": "norm-pow-sub-one-of-prime-pow-ne-two--ee23dbc0ec79dec89824cb48",
  "source": {
    "blob": "fd476bc7d52c740056c02129b6f1bb179acf61a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 401,
    "path": "GRWTSK/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee23dbc0ec79dec89824cb48cf6c7730e7ae956440d075ff6214f427e6fb7892",
  "verification": {
    "reference": "docs/verification/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a960210-877c-9646-9dc5-c677af0d889b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_pow_sub_one_of_prime_pow_ne_two {k s : ℕ} (hζ : IsPrimitiveRoot ζ ↑(p ^ (k + 1)))
    [hpri : Fact (p : ℕ).Prime] [IsCyclotomicExtension {p ^ (k + 1)} K L]
    (hirr : Irreducible (cyclotomic (↑(p ^ (k + 1)) : ℕ) K)) (hs : s ≤ k)
    (htwo : p ^ (k - s + 1) ≠ 2) : norm K (ζ ^ (p : ℕ) ^ s - 1) = (p : K) ^ (p : ℕ) ^ s := by
  have hirr₁ : Irreducible (cyclotomic ((p : ℕ) ^ (k - s + 1)) K) :=
    cyclotomic_irreducible_pow_of_irreducible_pow hpri.1 (by omega) hirr
  rw [← PNat.pow_coe] at hirr₁
  set η := ζ ^ (p : ℕ) ^ s - 1
  let η₁ : K⟮η⟯ := IntermediateField.AdjoinSimple.gen K η
  have hη : IsPrimitiveRoot (η + 1) ((p : ℕ) ^ (k + 1 - s)) := by
    rw [sub_add_cancel]
    refine IsPrimitiveRoot.pow (p ^ (k + 1)).pos hζ ?_
    rw [PNat.pow_coe, ← pow_add, add_comm s, Nat.sub_add_cancel (le_trans hs (Nat.le_succ k))]
  have : IsCyclotomicExtension {p ^ (k - s + 1)} K K⟮η⟯ := by
    have HKη : K⟮η⟯ = K⟮η + 1⟯ := by
      refine le_antisymm ?_ ?_
      all_goals rw [IntermediateField.adjoin_simple_le_iff]
      · nth_rw 2 [← add_sub_cancel_right η 1]
        exact sub_mem (IntermediateField.mem_adjoin_simple_self K (η + 1)) (one_mem _)
      · exact add_mem (IntermediateField.mem_adjoin_simple_self K η) (one_mem _)
    rw [HKη]
    have H := IntermediateField.adjoin_simple_toSubalgebra_of_integral
      ((integral {p ^ (k + 1)} K L).isIntegral (η + 1))
    refine IsCyclotomicExtension.equiv _ _ _ (h := ?_) (.refl : K⟮η + 1⟯.toSubalgebra ≃ₐ[K] _)
    rw [H]
    have hη' : IsPrimitiveRoot (η + 1) ↑(p ^ (k + 1 - s)) := by simpa using hη
    convert hη'.adjoin_isCyclotomicExtension K using 1
    rw [Nat.sub_add_comm hs]
  replace hη : IsPrimitiveRoot (η₁ + 1) ↑(p ^ (k - s + 1)) := by
    apply coe_submonoidClass_iff.1
    convert hη using 1
    rw [Nat.sub_add_comm hs, pow_coe]
  have := IsCyclotomicExtension.finiteDimensional {p ^ (k + 1)} K L
  have := IsCyclotomicExtension.isGalois (p ^ (k + 1)) K L
  rw [norm_eq_norm_adjoin K]
  have H := hη.sub_one_norm_isPrimePow ?_ hirr₁ htwo
  swap; · rw [PNat.pow_coe]; exact hpri.1.isPrimePow.pow (Nat.succ_ne_zero _)
  rw [add_sub_cancel_right] at H
  rw [H]
  congr
  · rw [PNat.pow_coe, Nat.pow_minFac, hpri.1.minFac_eq]
    exact Nat.succ_ne_zero _
  have := Module.finrank_mul_finrank K K⟮η⟯ L
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

/-- If `Irreducible (cyclotomic (p ^ (k + 1)) K)` (in particular for `K = ℚ`) and `p` is a prime,
then the norm of `ζ ^ (p ^ s) - 1` is `p ^ (p ^ s)` if `p ≠ 2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd476bc7d52c740056c02129b6f1bb179acf61a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
