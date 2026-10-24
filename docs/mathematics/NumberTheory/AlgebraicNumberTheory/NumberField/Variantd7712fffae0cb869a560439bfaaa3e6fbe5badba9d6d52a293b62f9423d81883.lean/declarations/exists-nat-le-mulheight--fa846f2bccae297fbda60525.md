# exists_nat_le_mulHeight₁

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
      "line": 306,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:073a5438-b60a-dea4-7d5a-5b939ebf82a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:16b5ecde-b47d-67ef-398a-788828939ced",
  "kind": "lemma",
  "lexical_name": "exists_nat_le_mulHeight₁",
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
  "slug": "exists-nat-le-mulheight--fa846f2bccae297fbda60525",
  "source": {
    "blob": "f7b9f8680e1e7806ca62343835bbb665248bc127",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 306,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa846f2bccae297fbda60525ee215180517a43bd6a8a6c38a82011c689d86dca",
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

Occurrence: `result:16b5ecde-b47d-67ef-398a-788828939ced`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_nat_le_mulHeight₁ (x : K) :
    ∃ n : ℕ, n ≠ 0 ∧ n ≤ mulHeight₁ x ∧ IsIntegral ℤ (n * x) := by
  obtain ⟨n, hn, a, ha₁, ha₂⟩ := exists_nat_ne_zero_exists_integer_mul_eq_and_absNorm_span_eq_pow x
  refine ⟨n, hn, ?_, ha₁ ▸ a.isIntegral_coe⟩
  rw [← totalWeight_eq_finrank] at ha₂
  have hv (i : Fin 2) : (![a, n] i : K) = ![(a : K), n] i := by fin_cases i <;> rfl
  rw [← mul_div_cancel_left₀ x (mod_cast hn : (n : K) ≠ 0), ha₁, mulHeight₁_div_eq_mulHeight,
    mulHeight_eq (by simp [hn])]
  refine le_of_mul_le_mul_left ?_ (show (0 : ℝ) < n ^ (totalWeight K - 1) by positivity)
  have : n ^ (totalWeight K - 1) * ∏ᶠ (v : FinitePlace K), ⨆ i, v (![(a : K), n] i) = 1 := by
    simpa [ha₂, hv] using absNorm_mul_finprod_finitePlace_eq_one (show ![a, n] ≠ 0 by simp [hn])
  rw [pow_sub_one_mul (totalWeight_pos K).ne', mul_left_comm, this, mul_one,
    totalWeight_eq_sum_mult, ← prod_pow_eq_pow_sum univ]
  gcongr
  exact Finite.le_ciSup_of_le 1 <| by simp

/-- The natural-number denominator of an element of a number field is bounded by its
multiplicative height. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7b9f8680e1e7806ca62343835bbb665248bc127` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
