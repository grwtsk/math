# tsum_powMulProdOneSubPow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7086b79f-b1b0-9654-44d6-90c938859249",
  "kind": "theorem",
  "lexical_name": "tsum_powMulProdOneSubPow",
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
  "slug": "tsum-powmulprodonesubpow--511ac1c6ed94ec1d3222b089",
  "source": {
    "blob": "9ef76177eb9d4cc353203dfdac6449ecc80e2a3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 79,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:511ac1c6ed94ec1d3222b0896b1a91387de32af2bca9a1f284a4ced3f5b30df1",
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

Occurrence: `result:7086b79f-b1b0-9654-44d6-90c938859249`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tsum_powMulProdOneSubPow (k : ℕ) {x : R} (hx : IsTopologicallyNilpotent x)
    (hsum : ∀ k, Summable (powMulProdOneSubPow k · x))
    (h : ∀ k, Multipliable (fun n ↦ 1 - x ^ (n + k + 1))) :
    ∑' n, powMulProdOneSubPow k n x =
      1 - x ^ (2 * k + 3) - x ^ (3 * k + 5) * ∑' n, powMulProdOneSubPow (k + 1) n x := by
  rw [eq_sub_iff_add_eq, show 1 - x ^ (2 * k + 3) = 0 - aux k 0 x by simp [aux]]
  rw [← (hsum _).tsum_mul_left, ← (hsum _).tsum_add ((hsum _).mul_left _)]
  apply HasSum.tsum_eq
  rw [((hsum _).add ((hsum _).mul_left _)).hasSum_iff_tendsto_nat]
  simp_rw [aux_sub_aux, Finset.sum_range_sub (aux k · x)]
  apply Tendsto.sub_const
  rw [show 𝓝 0 = 𝓝 (0 * (0 - 1) * ∏' i, (1 - x ^ (k + i + 2))) by simp]
  refine (Tendsto.mul ?_ ?_).mul ?_
  · exact hx.comp (strictMono_mul_left_of_pos (by simp)).tendsto_atTop
  · exact (hx.comp (add_right_strictMono.add_monotone monotone_const).tendsto_atTop).sub_const _
  · apply Multipliable.tendsto_prod_tprod_nat
    convert h (k + 1) using 4
    ring

/-- The Euler function is related to $A_0$ by

$$ \prod_{n = 0}^{\infty} (1 - x^{n + 1}) = 1 - x - x^2 A_0 $$ -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Ring/Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef76177eb9d4cc353203dfdac6449ecc80e2a3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
