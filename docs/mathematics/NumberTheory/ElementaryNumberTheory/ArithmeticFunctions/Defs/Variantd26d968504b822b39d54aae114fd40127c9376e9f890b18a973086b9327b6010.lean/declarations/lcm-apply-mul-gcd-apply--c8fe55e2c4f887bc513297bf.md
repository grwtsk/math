# lcm_apply_mul_gcd_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab53a35d-2e29-79ff-67a8-d5b3af7d35e7",
  "kind": "theorem",
  "lexical_name": "lcm_apply_mul_gcd_apply",
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
  "slug": "lcm-apply-mul-gcd-apply--c8fe55e2c4f887bc513297bf",
  "source": {
    "blob": "ecafa0893b83d855d59a1e980715ceb324f5d026",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 610,
    "line": 584,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Defs/Variantd26d968504b822b39d54aae114fd40127c9376e9f890b18a973086b9327b6010.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8fe55e2c4f887bc513297bfaafa93aaacdeda2726050ae610e53c4a8a6b5041",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Defs/Variantd26d968504b822b39d54aae114fd40127c9376e9f890b18a973086b9327b6010.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab53a35d-2e29-79ff-67a8-d5b3af7d35e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 584–610.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lcm_apply_mul_gcd_apply [CommMonoidWithZero R] {f : ArithmeticFunction R}
    (hf : f.IsMultiplicative) {x y : ℕ} :
    f (x.lcm y) * f (x.gcd y) = f x * f y := by
  by_cases hx : x = 0
  · simp only [hx, f.map_zero, zero_mul, lcm_zero_left, gcd_zero_left]
  by_cases hy : y = 0
  · simp only [hy, f.map_zero, mul_zero, lcm_zero_right, gcd_zero_right, zero_mul]
  have hgcd_ne_zero : x.gcd y ≠ 0 := gcd_ne_zero_left hx
  have hlcm_ne_zero : x.lcm y ≠ 0 := lcm_ne_zero hx hy
  have hfi_zero : ∀ {i}, f (i ^ 0) = 1 := by
    intro i; rw [pow_zero, hf.1]
  iterate 4 rw [hf.multiplicative_factorization f (by assumption),
    Finsupp.prod_of_support_subset _ _ _ (fun _ _ => hfi_zero)
      (s := (x.primeFactors ∪ y.primeFactors))]
  · rw [← prod_mul_distrib, ← prod_mul_distrib]
    apply prod_congr rfl
    intro p _
    rcases Nat.le_or_le (x.factorization p) (y.factorization p) with h | h <;>
      simp only [factorization_lcm hx hy, Finsupp.sup_apply, h, sup_of_le_right,
        sup_of_le_left, inf_of_le_right, factorization_gcd hx hy, Finsupp.inf_apply,
        inf_of_le_left, mul_comm]
  · apply subset_union_right
  · apply subset_union_left
  · rw [factorization_gcd hx hy, Finsupp.support_inf]
    apply inter_subset_union
  · simp [factorization_lcm hx hy]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Defs/Variantd26d968504b822b39d54aae114fd40127c9376e9f890b18a973086b9327b6010.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Defs/Variantd26d968504b822b39d54aae114fd40127c9376e9f890b18a973086b9327b6010.lean#L584).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecafa0893b83d855d59a1e980715ceb324f5d026` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
