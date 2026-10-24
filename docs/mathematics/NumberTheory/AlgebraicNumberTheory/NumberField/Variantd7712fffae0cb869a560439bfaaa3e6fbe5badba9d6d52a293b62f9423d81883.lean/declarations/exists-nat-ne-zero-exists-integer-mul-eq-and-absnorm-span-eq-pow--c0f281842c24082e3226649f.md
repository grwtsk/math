# exists_nat_ne_zero_exists_integer_mul_eq_and_absNorm_span_eq_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f7b9f8680e1e7806ca62343835bbb665248bc127",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 262,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ec3de52-d816-2118-67ca-7d98219461ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:baf4ff2f-b18f-4088-44c6-712287e4bdae",
  "kind": "lemma",
  "lexical_name": "exists_nat_ne_zero_exists_integer_mul_eq_and_absNorm_span_eq_pow",
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
  "slug": "exists-nat-ne-zero-exists-integer-mul-eq-and-absnorm-span-eq-pow--c0f281842c24082e3226649f",
  "source": {
    "blob": "f7b9f8680e1e7806ca62343835bbb665248bc127",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 262,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0f281842c24082e3226649ff0b9fdc4030bd746415d2188c54ccce2d7fbe59e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:baf4ff2f-b18f-4088-44c6-712287e4bdae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_nat_ne_zero_exists_integer_mul_eq_and_absNorm_span_eq_pow (x : K) :
    ∃ n : ℕ, n ≠ 0 ∧ ∃ a : 𝓞 K, n * x = a ∧
      (span {(n : 𝓞 K), a}).absNorm = n ^ (Module.finrank ℚ K - 1) := by
  have hx : IsAlgebraic ℤ x := IsFractionRing.isAlgebraic_iff ℤ _ _ |>.mpr (.of_finite ℚ x)
  obtain ⟨m, r, hm, hmr⟩ := hx.exists_nsmul_eq (𝓞 K)
  rw [← RingOfIntegers.coe_eq_algebraMap r] at hmr
  set n := (span {(m : 𝓞 K)}).toAddSubgroup.relIndex (span {(m : 𝓞 K), r}).toAddSubgroup with hndef
  have hn : n ≠ 0 := isFiniteRelIndex (by simp [hm]) _ |>.relIndex_ne_zero
  obtain ⟨a, ha'⟩ : ∃ a, m * a = n * r := by
    have : n • r ∈ span {(m : 𝓞 K)} :=
      (span {(m : 𝓞 K)}).toAddSubgroup.nsmul_relIndex_mem <| Submodule.mem_span_of_mem <| by grind
    simpa [mem_span_singleton', mul_comm] using this
  have ha : n * x = a := by
    refine mul_left_cancel₀ (mod_cast hm : (m : K) ≠ 0) ?_
    rw [mul_left_comm, ← nsmul_eq_mul m, hmr]
    exact_mod_cast ha'.symm
  refine ⟨n, hn, a, ha, mul_left_cancel₀ hn ?_⟩
  nth_rewrite 1 [hndef]
  rw [absNorm_eq_index, mul_pow_sub_one finrank_pos.ne', ← RingOfIntegers.rank,
    ← absNorm_span_natCast, absNorm_eq_index, ← relIndex_span_span_eq_relIndex_span_span hn hm ha']
  exact relIndex_mul_index <| Submodule.toAddSubgroup_mono <| span_mono <| by grind

open Height in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7b9f8680e1e7806ca62343835bbb665248bc127` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
