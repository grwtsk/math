# tsum_powMulProdOneSubPow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3adca6b0d39f5c1a331f9688098de16ae7a10db1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1fb187d689a599f96fa126df598bfd135b0abdcd1baba76e1513e2a252efbbfc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ec3cac2-9fbd-9aa2-309c-ac45420fffda",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ecc399fe-5bbc-5fdd-f42e-4097d2422ecf",
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
  "slug": "tsum-powmulprodonesubpow--462ca6baac7fdfa2c1439771",
  "source": {
    "blob": "3adca6b0d39f5c1a331f9688098de16ae7a10db1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 71,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variant1fb187d689a599f96fa126df598bfd135b0abdcd1baba76e1513e2a252efbbfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:462ca6baac7fdfa2c1439771f368e32a608645c901473d6c0c74577850b0b3e0",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Ring/Variant1fb187d689a599f96fa126df598bfd135b0abdcd1baba76e1513e2a252efbbfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecc399fe-5bbc-5fdd-f42e-4097d2422ecf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–92.

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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Ring/Variant1fb187d689a599f96fa126df598bfd135b0abdcd1baba76e1513e2a252efbbfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variant1fb187d689a599f96fa126df598bfd135b0abdcd1baba76e1513e2a252efbbfc.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3adca6b0d39f5c1a331f9688098de16ae7a10db1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
