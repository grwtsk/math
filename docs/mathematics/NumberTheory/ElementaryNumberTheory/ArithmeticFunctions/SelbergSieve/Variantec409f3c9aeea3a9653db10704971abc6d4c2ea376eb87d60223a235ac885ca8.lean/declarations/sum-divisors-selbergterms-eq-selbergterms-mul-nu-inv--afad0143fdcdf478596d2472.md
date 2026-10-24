# sum_divisors_selbergTerms_eq_selbergTerms_mul_nu_inv

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
      "line": 323,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11b9eafc-d3f9-5373-4545-2f84be6be4f7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6272f227-0447-d767-5d89-277aaccdd4c0",
  "kind": "theorem",
  "lexical_name": "sum_divisors_selbergTerms_eq_selbergTerms_mul_nu_inv",
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
  "slug": "sum-divisors-selbergterms-eq-selbergterms-mul-nu-inv--afad0143fdcdf478596d2472",
  "source": {
    "blob": "29f3dc9e9e53e9e429df6c862714cf8327a2b554",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 323,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afad0143fdcdf478596d2472434b62bd5432b23c2b053d28d2b43292f43992b1",
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

Occurrence: `result:6272f227-0447-d767-5d89-277aaccdd4c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_divisors_selbergTerms_eq_selbergTerms_mul_nu_inv {d : ℕ} (hd : d ∣ s.prodPrimes) :
    (∑ l ∈ divisors s.prodPrimes, if l ∣ d then s.selbergTerms l else 0) =
      s.selbergTerms d * (s.nu d)⁻¹ := by
  calc
    (∑ l ∈ divisors s.prodPrimes, if l ∣ d then s.selbergTerms l else 0) =
        ∑ l ∈ divisors s.prodPrimes, if l ∣ d then s.selbergTerms (d / l) else 0 := by
      simp_rw [← sum_filter, Nat.divisors_filter_dvd_of_dvd prodPrimes_ne_zero hd,
        sum_div_divisors d s.selbergTerms]
    _ = s.selbergTerms d *
          ∑ l ∈ divisors s.prodPrimes, if l ∣ d then (s.selbergTerms l)⁻¹ else 0 := by
      simp_rw [← sum_filter, mul_sum]
      congr! 1 with l hl
      simp only [mem_filter, mem_divisors, ne_eq] at hl
      rw [selbergTerms_isMultiplicative.map_div_of_coprime hl.2]
      · ring
      · apply coprime_of_squarefree_mul <|
          (Nat.div_mul_cancel hl.2).symm ▸ (squarefree_of_dvd_prodPrimes hd)
      · exact (selbergTerms_pos hl.1.1).ne'
    _ = s.selbergTerms d * (s.nu d)⁻¹ := by rw [← nu_inv_eq_sum_divisors_inv_selbergTerms hd]

end SelbergTerms

section QuadForm

/-- The main sum we get from Λ² coefficients is a quadratic form. Used to prove the Selberg sieve
  identity by choosing weights that maximize this sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29f3dc9e9e53e9e429df6c862714cf8327a2b554` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
