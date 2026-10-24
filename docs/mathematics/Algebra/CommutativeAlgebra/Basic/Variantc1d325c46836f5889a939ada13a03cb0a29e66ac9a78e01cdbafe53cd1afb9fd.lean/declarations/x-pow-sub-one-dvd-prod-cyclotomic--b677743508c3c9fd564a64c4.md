# X_pow_sub_one_dvd_prod_cyclotomic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74e6af52-67e7-62f4-7a79-57507cdadcc2",
  "kind": "theorem",
  "lexical_name": "X_pow_sub_one_dvd_prod_cyclotomic",
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
  "slug": "x-pow-sub-one-dvd-prod-cyclotomic--b677743508c3c9fd564a64c4",
  "source": {
    "blob": "31ddc3a601ed5ecf54b23a35f16c478a7a2d2c0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 529,
    "line": 515,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b677743508c3c9fd564a64c4816e1e4692fbab0bb68a82cb6ee607aace37b896",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74e6af52-67e7-62f4-7a79-57507cdadcc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 515–529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem X_pow_sub_one_dvd_prod_cyclotomic (R : Type*) [CommRing R] {n m : ℕ} (hpos : 0 < n)
    (hm : m ∣ n) (hdiff : m ≠ n) : X ^ m - 1 ∣ ∏ i in Nat.properDivisors n, cyclotomic i R := by
  replace hm := Nat.mem_properDivisors.2
    ⟨hm, lt_of_le_of_ne (Nat.divisor_le (Nat.mem_divisors.2 ⟨hm, hpos.ne'⟩)) hdiff⟩
  rw [← Finset.sdiff_union_of_subset (Nat.divisors_subset_properDivisors (ne_of_lt hpos).symm
    (Nat.mem_properDivisors.1 hm).1 (ne_of_lt (Nat.mem_properDivisors.1 hm).2)),
    Finset.prod_union Finset.sdiff_disjoint,
    prod_cyclotomic_eq_X_pow_sub_one (Nat.pos_of_mem_properDivisors hm)]
  exact ⟨∏ x : ℕ in n.properDivisors \ m.divisors, cyclotomic x R, by rw [mul_comm]⟩
set_option linter.uppercaseLean3 false in
#align polynomial.X_pow_sub_one_dvd_prod_cyclotomic Polynomial.X_pow_sub_one_dvd_prod_cyclotomic

/-- If there is a primitive `n`-th root of unity in `K`, then
`cyclotomic n K = ∏ μ in primitiveRoots n K, (X - C μ)`. In particular,
`cyclotomic n K = cyclotomic' n K` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean#L515).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31ddc3a601ed5ecf54b23a35f16c478a7a2d2c0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
