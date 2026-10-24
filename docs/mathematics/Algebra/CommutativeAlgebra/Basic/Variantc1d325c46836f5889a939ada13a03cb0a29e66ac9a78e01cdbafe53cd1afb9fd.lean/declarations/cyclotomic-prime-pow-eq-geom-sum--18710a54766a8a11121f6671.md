# cyclotomic_prime_pow_eq_geom_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7236511d-be56-1a62-6653-cd527a964e5c",
  "kind": "theorem",
  "lexical_name": "cyclotomic_prime_pow_eq_geom_sum",
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
  "slug": "cyclotomic-prime-pow-eq-geom-sum--18710a54766a8a11121f6671",
  "source": {
    "blob": "31ddc3a601ed5ecf54b23a35f16c478a7a2d2c0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 583,
    "line": 566,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18710a54766a8a11121f6671f7945c775281b048502e8300f001c7abf8cfc3f2",
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

Occurrence: `result:7236511d-be56-1a62-6653-cd527a964e5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 566–583.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclotomic_prime_pow_eq_geom_sum {R : Type*} [CommRing R] {p n : ℕ} (hp : p.Prime) :
    cyclotomic (p ^ (n + 1)) R = ∑ i in Finset.range p, (X ^ p ^ n) ^ i := by
  have : ∀ m, (cyclotomic (p ^ (m + 1)) R = ∑ i in Finset.range p, (X ^ p ^ m) ^ i) ↔
      ((∑ i in Finset.range p, (X ^ p ^ m) ^ i) *
        ∏ x : ℕ in Finset.range (m + 1), cyclotomic (p ^ x) R) = X ^ p ^ (m + 1) - 1 := by
    intro m
    have := eq_cyclotomic_iff (R := R) (P := ∑ i in range p, (X ^ p ^ m) ^ i)
      (pow_pos hp.pos (m + 1))
    rw [eq_comm] at this
    rw [this, Nat.prod_properDivisors_prime_pow hp]
  induction' n with n_n n_ih
  · haveI := Fact.mk hp; simp [cyclotomic_prime]
  rw [((eq_cyclotomic_iff (pow_pos hp.pos (n_n.succ + 1)) _).mpr _).symm]
  rw [Nat.prod_properDivisors_prime_pow hp, Finset.prod_range_succ, n_ih]
  rw [this] at n_ih
  rw [mul_comm _ (∑ i in _, _), n_ih, geom_sum_mul, sub_left_inj, ← pow_mul, pow_add, pow_one]
#align polynomial.cyclotomic_prime_pow_eq_geom_sum Polynomial.cyclotomic_prime_pow_eq_geom_sum

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc1d325c46836f5889a939ada13a03cb0a29e66ac9a78e01cdbafe53cd1afb9fd.lean#L566).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31ddc3a601ed5ecf54b23a35f16c478a7a2d2c0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
