# summable_F''

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a47f08371abfb838979363184bcdf36841335128",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ddcafc4-3ec3-f656-135b-9ca330034097",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:025a5a02-7602-de3d-2327-7e431ba8aa1c",
  "kind": "lemma",
  "lexical_name": "summable_F''",
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
  "slug": "summable-f--3e9fe44d91eaabc8a44a39b8",
  "source": {
    "blob": "a47f08371abfb838979363184bcdf36841335128",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 154,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e9fe44d91eaabc8a44a39b804483577e163585f72c180a4b0cda93bb65c82eb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:025a5a02-7602-de3d-2327-7e431ba8aa1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma summable_F'' : Summable F'' := by
  have hp₀ (p : Nat.Primes) : 0 < (p : ℝ)⁻¹ := inv_pos_of_pos (Nat.cast_pos.mpr p.prop.pos)
  have hp₁ (p : Nat.Primes) : (p : ℝ)⁻¹ < 1 :=
    (inv_lt_one₀ <| mod_cast p.prop.pos).mpr <| Nat.one_lt_cast.mpr <| p.prop.one_lt
  suffices Summable fun (pk : Nat.Primes × ℕ) ↦ (pk.1 : ℝ)⁻¹ ^ (pk.2 + 3 / 2 : ℝ) by
    refine (Summable.mul_left 2 this).of_nonneg_of_le (fun pk ↦ ?_) (fun pk ↦ F''_le pk.1 pk.2)
    simp only [F'', Function.comp_apply, F', F₀, Prod.map_fst, id_eq, Prod.map_snd, Nat.cast_pow]
    positivity [vonMangoldt_nonneg (n := (pk.1 : ℕ) ^ (pk.2 + 2))]
  conv => enter [1, pk]; rw [Real.rpow_add <| hp₀ pk.1, Real.rpow_natCast]
  refine (summable_prod_of_nonneg (fun _ ↦ by positivity)).mpr ⟨(fun p ↦ ?_), ?_⟩
  · dsimp only -- otherwise the `exact` below times out
    exact Summable.mul_right _ <| summable_geometric_of_lt_one (hp₀ p).le (hp₁ p)
  · dsimp only
    conv => enter [1, p]; rw [tsum_mul_right, tsum_geometric_of_lt_one (hp₀ p).le (hp₁ p)]
    refine (summable_rpow.mpr (by norm_num : -(3 / 2 : ℝ) < -1)).mul_left 2
      |>.of_nonneg_of_le (fun p ↦ ?_) (fun p ↦ ?_)
    · positivity [sub_pos.mpr (hp₁ p)]
    · rw [Real.inv_rpow p.val.cast_nonneg, Real.rpow_neg p.val.cast_nonneg]
      gcongr
      rw [inv_le_comm₀ (sub_pos.mpr (hp₁ p)) zero_lt_two, le_sub_comm,
        show (1 : ℝ) - 2⁻¹ = 2⁻¹ by norm_num, inv_le_inv₀ (mod_cast p.prop.pos) zero_lt_two]
      exact Nat.ofNat_le_cast.mpr p.prop.two_le

/-- The function `n ↦ Λ n / n`, restricted to non-primes in a residue class, is summable.
This is used to convert results on `ArithmeticFunction.vonMangoldt.residueClass` to results
on primes in an arithmetic progression. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a47f08371abfb838979363184bcdf36841335128` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
