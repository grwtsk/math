# tprod_one_sub_pow_eq_powMulProdOneSubPow_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8664e062-2c3c-c7f9-552c-b2004921a9f8",
  "kind": "theorem",
  "lexical_name": "tprod_one_sub_pow_eq_powMulProdOneSubPow_zero",
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
  "slug": "tprod-one-sub-pow-eq-powmulprodonesubpow-zero--129138dc39d591a9ba1b4088",
  "source": {
    "blob": "9ef76177eb9d4cc353203dfdac6449ecc80e2a3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 101,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:129138dc39d591a9ba1b4088ba1dadad9efa92618ddbcc230ff42d2e5e021147",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Ring/Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8664e062-2c3c-c7f9-552c-b2004921a9f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tprod_one_sub_pow_eq_powMulProdOneSubPow_zero {x : R}
    (hsum : ∀ k, Summable (powMulProdOneSubPow k · x))
    (h : ∀ k, Multipliable fun n ↦ 1 - x ^ (n + k + 1)) :
    ∏' n, (1 - x ^ (n + 1)) = 1 - x - x ^ 2 * ∑' n, powMulProdOneSubPow 0 n x := by
  have hsum := hsum 0
  simp_rw [powMulProdOneSubPow, zero_add, one_mul] at hsum
  have hsum' : Summable fun i ↦ x ^ (i + 1) * ∏ n ∈ Finset.range i, (1 - x ^ (n + 1)) := by
    apply Summable.comp_nat_add (k := 1)
    conv in fun k ↦ _ =>
      ext k
      rw [pow_add, pow_add, mul_assoc (x ^ k), mul_comm (x ^ k), mul_assoc (x ^ 1 * x ^ 1)]
    exact hsum.mul_left _
  rw [tprod_one_sub_ordered (by simpa [Nat.Iio_eq_range] using hsum') (by simpa using h 0)]
  simp_rw [Nat.Iio_eq_range, sub_sub, sub_right_inj, hsum'.tsum_eq_zero_add]
  conv in fun k ↦ x ^ (k + 1 + 1) * _ =>
    ext k
    rw [pow_add, pow_add, mul_assoc (x ^ k), mul_comm (x ^ k),
      ← pow_add x 1 1, one_add_one_eq_two, mul_assoc (x ^ 2)]
  simp [hsum.tsum_mul_left, powMulProdOneSubPow]

/-- Applying the recurrence formula repeatedly, we get

$$ \prod_{n = 0}^{\infty} (1 - x^{n + 1}) =
\left(\sum_{k=0}^{j} (-1)^k \left(x^{k(3k+1)/2} - x^{(k+1)(3k+2)/2}\right) \right) +
(-1)^{j+1}x^{(j+1)(3j+4)/2}A_j $$ -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Ring/Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef76177eb9d4cc353203dfdac6449ecc80e2a3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
