# dampedDivisorCoefficient_real_prefix_first_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0d111b550e6a0288d80710feaeb9ab9c098e24bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/14545ddb6e0078a356739a24f853a37d7e6ba43c4549cf33d8081ce0b5eb2ae0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:34c91179-9f30-d2e5-0d8d-b7f9a74e0c63",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7b5aa6a7-8238-82fd-fbc5-ceabf5319e71",
  "kind": "theorem",
  "lexical_name": "dampedDivisorCoefficient_real_prefix_first_order",
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
  "slug": "dampeddivisorcoefficient-real-prefix-first-order--92da5969d1c7d269c56aa95e",
  "source": {
    "blob": "0d111b550e6a0288d80710feaeb9ab9c098e24bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 90,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DampedDivisorTaylorStatements/Variant14545ddb6e0078a356739a24f853a37d7e6ba43c4549cf33d8081ce0b5eb2ae0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92da5969d1c7d269c56aa95ec9af6f96f21c705a99868902ae76a9557090d4c9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DampedDivisorTaylorStatements/Variant14545ddb6e0078a356739a24f853a37d7e6ba43c4549cf33d8081ce0b5eb2ae0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b5aa6a7-8238-82fd-fbc5-ceabf5319e71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dampedDivisorCoefficient_real_prefix_first_order (ε : ℝ) (hε : 0 ≤ ε)
    (x : ℝ) (hx : 1 ≤ x) :
    |(∑ n ∈ Icc 1 ⌊x⌋₊, dampedDivisorCoefficient ε n) - 1 -
      ε * ∑ n ∈ Icc 1 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n| ≤
        ε ^ 2 * x * Real.log x ^ 2 := by
  have hN : 1 ≤ ⌊x⌋₊ := (Nat.le_floor_iff (by linarith)).mpr (by simpa using hx)
  have hb := dampedDivisorCoefficient_prefix_first_order ε hε ⌊x⌋₊ hN
  have hle : (⌊x⌋₊ : ℝ) ≤ x := Nat.floor_le (by linarith)
  have h0 : 0 ≤ Real.log (⌊x⌋₊ : ℝ) := Real.log_nonneg (by exact_mod_cast hN)
  have hl : Real.log (⌊x⌋₊ : ℝ) ≤ Real.log x :=
    Real.log_le_log (by exact_mod_cast (show 0 < ⌊x⌋₊ by omega)) hle
  have hs : Real.log (⌊x⌋₊ : ℝ) ^ 2 ≤ Real.log x ^ 2 := by nlinarith
  exact hb.trans (mul_le_mul (mul_le_mul_of_nonneg_left hle (sq_nonneg ε)) hs
    (sq_nonneg _) (by positivity))

/-- Before the actual cutoff, the signed source differs from its exact prime prefix by this
budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DampedDivisorTaylorStatements/Variant14545ddb6e0078a356739a24f853a37d7e6ba43c4549cf33d8081ce0b5eb2ae0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DampedDivisorTaylorStatements/Variant14545ddb6e0078a356739a24f853a37d7e6ba43c4549cf33d8081ce0b5eb2ae0.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d111b550e6a0288d80710feaeb9ab9c098e24bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
