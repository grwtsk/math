# upperMoebius_of_lambda_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "318c9dc92fadb0531bd6a623ef3c4a4a5e82d439",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 202,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a9046d0e-882a-758a-a7cd-e7d7352acdeb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d089120-a498-0bef-c188-c0c33fde8fc1",
  "kind": "theorem",
  "lexical_name": "upperMoebius_of_lambda_sq",
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
  "slug": "uppermoebius-of-lambda-sq--032cd075c313ae629ab1bee5",
  "source": {
    "blob": "318c9dc92fadb0531bd6a623ef3c4a4a5e82d439",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 202,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:032cd075c313ae629ab1bee534e3aacd4041d451d9c84a4fbde0b422a1f98a89",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d089120-a498-0bef-c188-c0c33fde8fc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upperMoebius_of_lambda_sq (weights : ℕ → ℝ) (hw : weights 1 = 1) :
    IsUpperMoebius <| lambdaSquared weights := by
  dsimp [IsUpperMoebius, lambdaSquared]
  intro n
  have h_sq :
    (∑ d ∈ n.divisors, ∑ d1 ∈ d.divisors, ∑ d2 ∈ d.divisors,
      if d = Nat.lcm d1 d2 then weights d1 * weights d2 else 0) =
      (∑ d ∈ n.divisors, weights d) ^ 2 := by
    rw [sq, mul_sum, conv_lambda_sq_larger_sum _ n, sum_comm]
    apply sum_congr rfl; intro d1 hd1
    rw [sum_mul, sum_comm]
    apply sum_congr rfl; intro d2 hd2
    rw [sum_ite_eq_of_mem']
    · ring
    rw [mem_divisors, Nat.lcm_dvd_iff]
    exact ⟨⟨dvd_of_mem_divisors hd1, dvd_of_mem_divisors hd2⟩, (mem_divisors.mp hd1).2⟩
  rw [h_sq]
  split_ifs with hn
  · rw [hn]; simp [hw]
  · apply sq_nonneg

-- set_option quotPrecheck false
-- variable (s : Sieve)

-- local notation3 "ν" => Sieve.nu s
-- local notation3 "P" => Sieve.prodPrimes s
-- local notation3 "a" => Sieve.weights s
-- local notation3 "X" => Sieve.totalMass s
-- local notation3 "R" => Sieve.rem s
-- local notation3 "g" => Sieve.selbergTerms s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `318c9dc92fadb0531bd6a623ef3c4a4a5e82d439` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
