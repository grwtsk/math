# tprod_one_sub_pow_eq_powMulProdOneSubPow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c3c571b-9690-64f5-7a11-c2e70f657f32",
  "kind": "theorem",
  "lexical_name": "tprod_one_sub_pow_eq_powMulProdOneSubPow",
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
  "slug": "tprod-one-sub-pow-eq-powmulprodonesubpow--6b4c658063249c3adfc2b577",
  "source": {
    "blob": "9ef76177eb9d4cc353203dfdac6449ecc80e2a3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 126,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b4c658063249c3adfc2b577c65e1f80144aa3380f0079b217b405b5e63d835b",
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

Occurrence: `result:7c3c571b-9690-64f5-7a11-c2e70f657f32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tprod_one_sub_pow_eq_powMulProdOneSubPow (j : ℕ) {x : R} (hx : IsTopologicallyNilpotent x)
    (hsum : ∀ k, Summable (powMulProdOneSubPow k · x))
    (h : ∀ k, Multipliable (fun n ↦ 1 - x ^ (n + k + 1))) :
    ∏' n, (1 - x ^ (n + 1)) = ∑ k ∈ Finset.range (j + 1),
      (-1) ^ k * (x ^ (k * (3 * k + 1) / 2) - x ^ ((k + 1) * (3 * k + 2) / 2))
      + (-1) ^ (j + 1) * x ^ ((j + 1) * (3 * j + 4) / 2) * ∑' n, powMulProdOneSubPow j n x := by
  induction j with
  | zero =>
    simp [tprod_one_sub_pow_eq_powMulProdOneSubPow_zero hsum h, powMulProdOneSubPow,
      ← sub_eq_add_neg]
  | succ n ih =>
    rw [ih, tsum_powMulProdOneSubPow _ hx hsum h, Finset.sum_range_succ _ (n + 1)]
    have h (n) : (n + 1 + 1) * (3 * (n + 1) + 2) / 2 =
        (n + 1) * (3 * n + 4) / 2 + (2 * n + 3) := by
      rw [← Nat.add_mul_div_left _ _ (by simp)]
      ring_nf
    simp_rw [h]
    have h (n) : (n + 1 + 1) * (3 * (n + 1) + 4) / 2 =
        (n + 1) * (3 * n + 4) / 2 + (3 * n + 5) := by
      rw [← Nat.add_mul_div_left _ _ (by simp)]
      ring_nf
    simp_rw [h]
    ring_nf

/-- **Pentagonal number theorem**, assuming appropriate multipliability and summability.

$$ \prod_{n = 0}^{\infty} (1 - x^{n + 1}) =
\sum_{k=0}^{\infty} (-1)^k \left(x^{k(3k+1)/2} - x^{(k+1)(3k+2)/2}\right) $$ -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Ring/Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef76177eb9d4cc353203dfdac6449ecc80e2a3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
