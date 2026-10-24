# le_of_all_pow_lt_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ac893de-dc85-6936-b3f9-bb5433eb25e0",
  "kind": "theorem",
  "lexical_name": "le_of_all_pow_lt_succ",
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
  "slug": "le-of-all-pow-lt-succ--dab4e268cb589aeed11cc15a",
  "source": {
    "blob": "1dbff36df5fd5694af0b1767af622e17bb52fb76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 45,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Imo2013Q5/Variant30be4d11a2d8efb8094f83875ba05d84ff0fafd82c32abbcd011e8f93c8601bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dab4e268cb589aeed11cc15a7f45d2477ea4acbbf49888af5b95b667ce278374",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Imo2013Q5/Variant30be4d11a2d8efb8094f83875ba05d84ff0fafd82c32abbcd011e8f93c8601bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ac893de-dc85-6936-b3f9-bb5433eb25e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_of_all_pow_lt_succ {x y : ℝ} (hx : 1 < x) (hy : 1 < y)
    (h : ∀ n : ℕ, 0 < n → x ^ n - 1 < y ^ n) : x ≤ y := by
  by_contra! hxy
  have hxmy : 0 < x - y := sub_pos.mpr hxy
  have hn : ∀ n : ℕ, 0 < n → (x - y) * (n : ℝ) ≤ x ^ n - y ^ n := by
    intro n _
    have hterm : ∀ i : ℕ, i ∈ Finset.range n → 1 ≤ x ^ i * y ^ (n - 1 - i) := by
      intro i _
      calc
        1 ≤ x ^ i := one_le_pow₀ hx.le
        _ = x ^ i * 1 := by ring
        _ ≤ x ^ i * y ^ (n - 1 - i) := by gcongr; apply one_le_pow₀ hy.le
    calc
      (x - y) * (n : ℝ) = (n : ℝ) * (x - y) := by ring
      _ = (∑ _i ∈ Finset.range n, (1 : ℝ)) * (x - y) := by
        simp only [mul_one, Finset.sum_const, nsmul_eq_mul, Finset.card_range]
      _ ≤ (∑ i ∈ Finset.range n, x ^ i * y ^ (n - 1 - i)) * (x - y) := by
        gcongr with i hi; apply hterm i hi
      _ = x ^ n - y ^ n := geom_sum₂_mul x y n
  -- Choose n larger than 1 / (x - y).
  obtain ⟨N, hN⟩ := exists_nat_gt (1 / (x - y))
  have hNp : 0 < N := mod_cast (one_div_pos.mpr hxmy).trans hN
  have :=
    calc
      1 = (x - y) * (1 / (x - y)) := by field
      _ < (x - y) * N := by gcongr
      _ ≤ x ^ N - y ^ N := hn N hNp
  linarith [h N hNp]

/-- Like `le_of_all_pow_lt_succ`, but with a weaker assumption for `y`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Imo2013Q5/Variant30be4d11a2d8efb8094f83875ba05d84ff0fafd82c32abbcd011e8f93c8601bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Imo2013Q5/Variant30be4d11a2d8efb8094f83875ba05d84ff0fafd82c32abbcd011e8f93c8601bc.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dbff36df5fd5694af0b1767af622e17bb52fb76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
