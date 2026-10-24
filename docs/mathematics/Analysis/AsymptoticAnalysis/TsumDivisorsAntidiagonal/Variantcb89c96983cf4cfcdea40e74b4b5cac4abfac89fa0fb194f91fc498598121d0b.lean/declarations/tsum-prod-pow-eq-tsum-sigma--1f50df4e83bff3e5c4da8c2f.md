# tsum_prod_pow_eq_tsum_sigma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cb118860de107d89bb6ec1d2cf822dfc60818431",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cb89c96983cf4cfcdea40e74b4b5cac4abfac89fa0fb194f91fc498598121d0b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71975053-dac4-71e5-6467-3ed86677710b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:452965b0-56bc-3312-2308-7de275140ee0",
  "kind": "theorem",
  "lexical_name": "tsum_prod_pow_eq_tsum_sigma",
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
  "slug": "tsum-prod-pow-eq-tsum-sigma--1f50df4e83bff3e5c4da8c2f",
  "source": {
    "blob": "cb118860de107d89bb6ec1d2cf822dfc60818431",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 109,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantcb89c96983cf4cfcdea40e74b4b5cac4abfac89fa0fb194f91fc498598121d0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f50df4e83bff3e5c4da8c2f67f97630c4835c192540ae6c6099c139bf279e89",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantcb89c96983cf4cfcdea40e74b4b5cac4abfac89fa0fb194f91fc498598121d0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:452965b0-56bc-3312-2308-7de275140ee0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tsum_prod_pow_eq_tsum_sigma (k : ℕ) {r : 𝕜} (hr : ‖r‖ < 1) :
    ∑' d : ℕ+, ∑' c : ℕ+, c ^ k * r ^ (d * c : ℕ) = ∑' e : ℕ+, σ k e * r ^ (e : ℕ) := by
  suffices ∑' c : ℕ+ × ℕ+, c.2 ^ k * r ^ (c.1 * c.2 : ℕ) =
    ∑' e : ℕ+, σ k e * r ^ (e : ℕ) by rwa [← (summable_prod_mul_pow k hr).tsum_prod]
  simp only [← sigmaAntidiagonalEquivProd.tsum_eq, sigmaAntidiagonalEquivProd,
    divisorsAntidiagonalFactors, PNat.mk_coe, Equiv.coe_fn_mk, sigma_eq_sum_div, cast_sum,
    cast_pow, Summable.tsum_sigma (summable_divisorsAntidiagonal_aux k hr :)]
  refine tsum_congr fun n ↦ ?_
  simpa [tsum_fintype, Finset.sum_mul,
    (n : ℕ).divisorsAntidiagonal.sum_attach fun x : ℕ × ℕ ↦ x.2 ^ k * r ^ (x.1 * x.2),
    sum_divisorsAntidiagonal fun x y ↦ y ^ k * r ^ (x * y)]
      using Finset.sum_congr rfl fun i hi ↦ by rw [Nat.mul_div_cancel' (dvd_of_mem_divisors hi)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantcb89c96983cf4cfcdea40e74b4b5cac4abfac89fa0fb194f91fc498598121d0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantcb89c96983cf4cfcdea40e74b4b5cac4abfac89fa0fb194f91fc498598121d0b.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb118860de107d89bb6ec1d2cf822dfc60818431` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
