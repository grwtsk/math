# tprod_one_sub_pow_eq_powMulProdOneSubPow

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
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1fb187d689a599f96fa126df598bfd135b0abdcd1baba76e1513e2a252efbbfc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8021228f-f9b8-902d-24f2-dac09d36f680",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d601b798-0eaf-453c-1562-e1742af744c4",
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
  "slug": "tprod-one-sub-pow-eq-powmulprodonesubpow--b4f7da4141b8942833db1354",
  "source": {
    "blob": "3adca6b0d39f5c1a331f9688098de16ae7a10db1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 118,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variant1fb187d689a599f96fa126df598bfd135b0abdcd1baba76e1513e2a252efbbfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4f7da4141b8942833db1354fe14b74d3d667cc5d8afa9f32f76a69df2818cd8",
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

Occurrence: `result:d601b798-0eaf-453c-1562-e1742af744c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–145.

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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Ring/Variant1fb187d689a599f96fa126df598bfd135b0abdcd1baba76e1513e2a252efbbfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variant1fb187d689a599f96fa126df598bfd135b0abdcd1baba76e1513e2a252efbbfc.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3adca6b0d39f5c1a331f9688098de16ae7a10db1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
