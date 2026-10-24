# tprod_one_sub_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72574f3c-5a02-5bf4-9bef-c70e5e1859e0",
  "kind": "theorem",
  "lexical_name": "tprod_one_sub_pow",
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
  "slug": "tprod-one-sub-pow--3e7e7babdd0f546dac7a79ab",
  "source": {
    "blob": "9ef76177eb9d4cc353203dfdac6449ecc80e2a3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 154,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e7e7babdd0f546dac7a79abf123b790051934101d4252f5bb36c1a0a981e80a",
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

Occurrence: `result:72574f3c-5a02-5bf4-9bef-c70e5e1859e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem tprod_one_sub_pow {x : R} (hx : IsTopologicallyNilpotent x)
    (hsum : ∀ k, Summable
      (fun n ↦ x ^ ((k + 1) * n) * ∏ i ∈ Finset.range (n + 1), (1 - x ^ (k + i + 1))))
    (hlhs : ∀ k, Multipliable (fun n ↦ 1 - x ^ (n + k + 1)))
    (hrhs : Summable fun k : ℕ ↦
      (-1) ^ k * (x ^ pentagonal (-k) - x ^ pentagonal (k + 1)))
    (htail : Tendsto (fun k ↦ (-1) ^ (k + 1) * x ^ ((k + 1) * (3 * k + 4) / 2) *
      ∑' (n : ℕ), x ^ ((k + 1) * n) * ∏ i ∈ Finset.range (n + 1), (1 - x ^ (k + i + 1)))
      atTop (𝓝 0)) :
    ∏' n, (1 - x ^ (n + 1)) =
      ∑' (k : ℕ), (-1) ^ k * (x ^ pentagonal (-k) - x ^ pentagonal (k + 1)) := by
  have h := fun n ↦ tprod_one_sub_pow_eq_powMulProdOneSubPow n hx hsum hlhs
  simp_rw [← sub_eq_iff_eq_add] at h
  refine (HasSum.tsum_eq ?_).symm
  rw [hrhs.hasSum_iff_tendsto_nat, (map_add_atTop_eq_nat 1).symm]
  apply tendsto_map'
  have h1 (k : ℕ) : pentagonal (k + 1) = ((k + 1) * (3 * k + 2) / 2) := by grind [pentagonal_def]
  have h2 (k : ℕ) : pentagonal (-k) = (k * (3 * k + 1) / 2) := by grind [pentagonal_neg]
  simp_rw [h1, h2, Function.comp_def, ← h]
  rw [← tendsto_sub_nhds_zero_iff]
  simpa [powMulProdOneSubPow] using htail.neg

end Pentagonal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Ring/Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef76177eb9d4cc353203dfdac6449ecc80e2a3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
