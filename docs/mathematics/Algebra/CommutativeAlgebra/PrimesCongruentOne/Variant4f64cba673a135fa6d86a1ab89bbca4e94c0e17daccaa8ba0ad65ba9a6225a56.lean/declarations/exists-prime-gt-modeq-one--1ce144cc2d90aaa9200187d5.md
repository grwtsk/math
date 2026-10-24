# exists_prime_gt_modEq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b437993e55b217f79f222f7c929aafbb19ffbcf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4f64cba673a135fa6d86a1ab89bbca4e94c0e17daccaa8ba0ad65ba9a6225a56.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd479632-235f-0da8-98df-3c5fc6ce89e7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:43fb8838-5dd1-cffd-4c57-33f15f5f8ee4",
  "kind": "theorem",
  "lexical_name": "exists_prime_gt_modEq_one",
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
  "slug": "exists-prime-gt-modeq-one--1ce144cc2d90aaa9200187d5",
  "source": {
    "blob": "2b437993e55b217f79f222f7c929aafbb19ffbcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 26,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PrimesCongruentOne/Variant4f64cba673a135fa6d86a1ab89bbca4e94c0e17daccaa8ba0ad65ba9a6225a56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ce144cc2d90aaa9200187d56b5a283316eecd39afeb68c1059859b850c9f8a7",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PrimesCongruentOne/Variant4f64cba673a135fa6d86a1ab89bbca4e94c0e17daccaa8ba0ad65ba9a6225a56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43fb8838-5dd1-cffd-4c57-33f15f5f8ee4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_prime_gt_modEq_one {k : ℕ} (n : ℕ) (hk0 : k ≠ 0) :
    ∃ p : ℕ, Nat.Prime p ∧ n < p ∧ p ≡ 1 [MOD k] := by
  rcases (one_le_iff_ne_zero.2 hk0).eq_or_lt with (rfl | hk1)
  · rcases exists_infinite_primes (n + 1) with ⟨p, hnp, hp⟩
    exact ⟨p, hp, hnp, modEq_one⟩
  let b := k * (n !)
  have hgt : 1 < (eval (↑b) (cyclotomic k ℤ)).natAbs := by
    rcases le_iff_exists_add'.1 hk1.le with ⟨k, rfl⟩
    have hb : 2 ≤ b := le_mul_of_le_of_one_le hk1 n.factorial_pos
    calc
      1 ≤ b - 1 := le_tsub_of_add_le_left hb
      _ < (eval (b : ℤ) (cyclotomic (k + 1) ℤ)).natAbs :=
        sub_one_lt_natAbs_cyclotomic_eval hk1 (succ_le_iff.1 hb).ne'
  let p := minFac (eval (↑b) (cyclotomic k ℤ)).natAbs
  haveI hprime : Fact p.Prime := ⟨minFac_prime (ne_of_lt hgt).symm⟩
  have hroot : IsRoot (cyclotomic k (ZMod p)) (castRingHom (ZMod p) b) := by
    have : ((b : ℤ) : ZMod p) = ↑(Int.castRingHom (ZMod p) b) := by simp
    rw [IsRoot.def, ← map_cyclotomic_int k (ZMod p), eval_map, coe_castRingHom, ← Int.cast_ofNat,
      this, eval₂_hom, Int.coe_castRingHom, ZMod.int_cast_zmod_eq_zero_iff_dvd _ _]
    apply Int.dvd_natAbs.1
    exact_mod_cast minFac_dvd (eval (↑b) (cyclotomic k ℤ)).natAbs
  have hpb : ¬p ∣ b :=
    hprime.1.coprime_iff_not_dvd.1 (coprime_of_root_cyclotomic hk0.bot_lt hroot).symm
  refine' ⟨p, hprime.1, not_le.1 fun habs => _, _⟩
  · exact hpb (dvd_mul_of_dvd_right (dvd_factorial (minFac_pos _) habs) _)
  · have hdiv : orderOf (b : ZMod p) ∣ p - 1 :=
      ZMod.orderOf_dvd_card_sub_one (mt (CharP.cast_eq_zero_iff _ _ _).1 hpb)
    haveI : NeZero (k : ZMod p) :=
      NeZero.of_not_dvd (ZMod p) fun hpk => hpb (dvd_mul_of_dvd_left hpk _)
    have : k = orderOf (b : ZMod p) := (isRoot_cyclotomic_iff.mp hroot).eq_orderOf
    rw [← this] at hdiv
    exact ((modEq_iff_dvd' hprime.1.pos).2 hdiv).symm
#align nat.exists_prime_gt_modeq_one Nat.exists_prime_gt_modEq_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PrimesCongruentOne/Variant4f64cba673a135fa6d86a1ab89bbca4e94c0e17daccaa8ba0ad65ba9a6225a56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PrimesCongruentOne/Variant4f64cba673a135fa6d86a1ab89bbca4e94c0e17daccaa8ba0ad65ba9a6225a56.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b437993e55b217f79f222f7c929aafbb19ffbcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
