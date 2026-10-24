# dampedDivisorCoefficient_prefix_first_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f81e7dc93c95fe16846b62667aab98679c48a0a2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2baaba5d3fc4f9330585df67bc212941f371bfd4dd9156169a071aaddc2ce809.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fb6e12ee-e866-7563-f9bd-b9f7b332fda9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44fc520e-4ce9-ca25-e32b-2b9a209ccbea",
  "kind": "theorem",
  "lexical_name": "dampedDivisorCoefficient_prefix_first_order",
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
  "slug": "dampeddivisorcoefficient-prefix-first-order--b9a5ebd0c45fd54aaac956c7",
  "source": {
    "blob": "f81e7dc93c95fe16846b62667aab98679c48a0a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 59,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorTaylor/Variant2baaba5d3fc4f9330585df67bc212941f371bfd4dd9156169a071aaddc2ce809.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9a5ebd0c45fd54aaac956c7f42c2433bde4e2f89489360ed07912c9e38d604d",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorTaylor/Variant2baaba5d3fc4f9330585df67bc212941f371bfd4dd9156169a071aaddc2ce809.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44fc520e-4ce9-ca25-e32b-2b9a209ccbea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dampedDivisorCoefficient_prefix_first_order (ε : ℝ) (hε : 0 ≤ ε)
    (N : ℕ) (hN : 1 ≤ N) :
    |(∑ n ∈ Icc 1 N, dampedDivisorCoefficient ε n) - 1 -
      ε * ∑ n ∈ Icc 1 N, ArithmeticFunction.vonMangoldt n| ≤
        ε ^ 2 * (N : ℝ) * Real.log (N : ℝ) ^ 2 := by
  have he : (∑ n ∈ Icc 1 N, dampedDivisorCoefficient ε n) - 1 -
      ε * ∑ n ∈ Icc 1 N, ArithmeticFunction.vonMangoldt n =
      ∑ n ∈ Icc 1 N, (dampedDivisorCoefficient ε n - (if n = 1 then 1 else 0) -
        ε * ArithmeticFunction.vonMangoldt n) := by
    simp [sum_sub_distrib, ← mul_sum, hN]
  rw [he]
  calc
    _ ≤ ∑ n ∈ Icc 1 N, |dampedDivisorCoefficient ε n - (if n = 1 then 1 else 0) -
        ε * ArithmeticFunction.vonMangoldt n| := abs_sum_le_sum_abs _ _
    _ ≤ ∑ n ∈ Icc 1 N, ε ^ 2 * Real.log (n : ℝ) ^ 2 := by
      apply sum_le_sum
      intro n hn
      exact dampedDivisorCoefficient_first_order ε hε n (mem_Icc.mp hn).1
    _ ≤ ∑ _n ∈ Icc 1 N, ε ^ 2 * Real.log (N : ℝ) ^ 2 := by
      apply sum_le_sum
      intro n hn
      have h0 : 0 ≤ Real.log (n : ℝ) :=
        Real.log_nonneg (by exact_mod_cast (mem_Icc.mp hn).1)
      have hl : Real.log (n : ℝ) ≤ Real.log (N : ℝ) := Real.log_le_log
        (by exact_mod_cast (show 0 < n by have := (mem_Icc.mp hn).1; omega))
        (by exact_mod_cast (mem_Icc.mp hn).2)
      exact mul_le_mul_of_nonneg_left (by nlinarith) (sq_nonneg ε)
    _ = _ := by simp; ring

/-- The actual real cutoff retains all prime powers in the uniform finite-prefix remainder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorTaylor/Variant2baaba5d3fc4f9330585df67bc212941f371bfd4dd9156169a071aaddc2ce809.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorTaylor/Variant2baaba5d3fc4f9330585df67bc212941f371bfd4dd9156169a071aaddc2ce809.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f81e7dc93c95fe16846b62667aab98679c48a0a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
