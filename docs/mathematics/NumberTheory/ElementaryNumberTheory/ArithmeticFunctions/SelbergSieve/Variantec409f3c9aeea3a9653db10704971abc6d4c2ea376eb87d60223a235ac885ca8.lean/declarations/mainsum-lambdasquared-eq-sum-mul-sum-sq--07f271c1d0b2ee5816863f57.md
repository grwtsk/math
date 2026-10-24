# mainSum_lambdaSquared_eq_sum_mul_sum_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29f3dc9e9e53e9e429df6c862714cf8327a2b554",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 375,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:015d159a-95de-03dd-0516-55eb1464d407",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:79b0c474-2401-258d-d0c8-c26284a5f67c",
  "kind": "theorem",
  "lexical_name": "mainSum_lambdaSquared_eq_sum_mul_sum_sq",
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
  "slug": "mainsum-lambdasquared-eq-sum-mul-sum-sq--07f271c1d0b2ee5816863f57",
  "source": {
    "blob": "29f3dc9e9e53e9e429df6c862714cf8327a2b554",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 405,
    "line": 375,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07f271c1d0b2ee5816863f57f0419b20c5021cd90b6ae29a8c933ef046fbd37a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79b0c474-2401-258d-d0c8-c26284a5f67c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mainSum_lambdaSquared_eq_sum_mul_sum_sq (w : ℕ → ℝ) :
    s.mainSum (lambdaSquared w) =
      ∑ l ∈ divisors s.prodPrimes, (s.selbergTerms l)⁻¹ *
        (∑ d ∈ divisors s.prodPrimes, if l ∣ d then s.nu d * w d else 0) ^ 2 := by
  calc mainSum (lambdaSquared w) =
    ∑ d1 ∈ divisors s.prodPrimes, ∑ d2 ∈ divisors s.prodPrimes, (∑ l ∈ divisors s.prodPrimes,
      if l ∣ d1.gcd d2 then (s.selbergTerms l)⁻¹ * (s.nu d1 * w d1) * (s.nu d2 * w d2) else 0)
        := ?caseA
    _ = ∑ l ∈ divisors s.prodPrimes, ∑ d1 ∈ divisors s.prodPrimes, ∑ d2 ∈ divisors s.prodPrimes,
      if l ∣ Nat.gcd d1 d2 then (s.selbergTerms l)⁻¹ * (s.nu d1 * w d1) * (s.nu d2 * w d2) else 0
        := ?caseB
    _ = ∑ l ∈ divisors s.prodPrimes,
      (s.selbergTerms l)⁻¹ * (∑ d ∈ divisors s.prodPrimes, if l ∣ d then s.nu d * w d else 0) ^ 2
        := ?caseC
  case caseA =>
    rw [mainSum_lambdaSquared_eq_sum_sum_mul w]
    congr! 2 with d1 hd1 d2 hd2
    have hgcd_dvd : d1.gcd d2 ∣ s.prodPrimes :=
      (Nat.gcd_dvd_left d1 d2).trans (dvd_of_mem_divisors hd1)
    simp_rw [nu_inv_eq_sum_divisors_inv_selbergTerms hgcd_dvd, ← sum_filter, mul_sum]
    congr with l
    ring
  case caseB =>
    rw [eq_comm, sum_comm, sum_congr rfl fun _ _ ↦ sum_comm]
  case caseC =>
    simp_rw [← sum_filter, sq, sum_mul, mul_sum, sum_filter, ite_sum_zero,
      ← ite_and, dvd_gcd_iff, mul_assoc]

end QuadForm

end BoundingSieve
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29f3dc9e9e53e9e429df6c862714cf8327a2b554` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
