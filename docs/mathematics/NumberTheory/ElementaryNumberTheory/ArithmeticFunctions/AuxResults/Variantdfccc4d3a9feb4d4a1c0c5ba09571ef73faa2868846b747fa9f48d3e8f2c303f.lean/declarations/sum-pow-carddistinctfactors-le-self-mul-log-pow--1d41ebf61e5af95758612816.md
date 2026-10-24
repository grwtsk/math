# sum_pow_cardDistinctFactors_le_self_mul_log_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "944ea09b9f9820be0a501d707bce9b856b785b93",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 253,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/dfccc4d3a9feb4d4a1c0c5ba09571ef73faa2868846b747fa9f48d3e8f2c303f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a110f219-4f63-62a2-3503-2e084cc86980",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7efbf39-f5bd-2f2c-bc31-30a02026f691",
  "kind": "theorem",
  "lexical_name": "sum_pow_cardDistinctFactors_le_self_mul_log_pow",
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
  "slug": "sum-pow-carddistinctfactors-le-self-mul-log-pow--1d41ebf61e5af95758612816",
  "source": {
    "blob": "944ea09b9f9820be0a501d707bce9b856b785b93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 253,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantdfccc4d3a9feb4d4a1c0c5ba09571ef73faa2868846b747fa9f48d3e8f2c303f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d41ebf61e5af957586128168050dcc091f0478603a8dce9606673cbd5d958d2",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantdfccc4d3a9feb4d4a1c0c5ba09571ef73faa2868846b747fa9f48d3e8f2c303f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7efbf39-f5bd-2f2c-bc31-30a02026f691`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_pow_cardDistinctFactors_le_self_mul_log_pow {P h : ℕ} (x : ℝ) (hx : 1 ≤ x)
    (hP : Squarefree P) :
    (∑ d ∈ P.divisors, if ↑d ≤ x then (h : ℝ) ^ ω d else (0 : ℝ)) ≤
      x * (1 + Real.log x) ^ h := by
  trans (∑ d ∈ P.divisors, x * if ↑d ≤ x then (h : ℝ) ^ ω d / d else (0 : ℝ))
  · simp_rw [mul_ite, mul_zero, ←sum_filter]
    gcongr with i hi
    rw [div_eq_mul_inv, mul_comm _ (i:ℝ)⁻¹, ←mul_assoc]
    trans (1*(h:ℝ)^ω i)
    · rw [one_mul]
    gcongr
    rw [mem_filter] at hi
    rw [←div_eq_mul_inv]
    apply one_le_div (by norm_cast; apply Nat.pos_of_mem_divisors hi.1) |>.mpr hi.2
  rw [←mul_sum];
  gcongr
  apply sum_pow_cardDistinctFactors_div_self_le_log_pow x hx hP


end Aux
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantdfccc4d3a9feb4d4a1c0c5ba09571ef73faa2868846b747fa9f48d3e8f2c303f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantdfccc4d3a9feb4d4a1c0c5ba09571ef73faa2868846b747fa9f48d3e8f2c303f.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `944ea09b9f9820be0a501d707bce9b856b785b93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
