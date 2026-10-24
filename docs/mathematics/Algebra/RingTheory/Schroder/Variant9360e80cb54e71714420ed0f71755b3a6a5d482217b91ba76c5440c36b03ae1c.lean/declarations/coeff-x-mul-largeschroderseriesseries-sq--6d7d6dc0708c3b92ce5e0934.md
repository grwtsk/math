# coeff_X_mul_largeSchroderSeriesSeries_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4120f52d-a322-a58e-cd5c-e587c54a37a1",
  "kind": "lemma",
  "lexical_name": "coeff_X_mul_largeSchroderSeriesSeries_sq",
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
  "slug": "coeff-x-mul-largeschroderseriesseries-sq--6d7d6dc0708c3b92ce5e0934",
  "source": {
    "blob": "9b9bdee3f049bdabaffca113ead0d155febaf060",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 69,
    "path": "GRWTSK/Algebra/RingTheory/Schroder/Variant9360e80cb54e71714420ed0f71755b3a6a5d482217b91ba76c5440c36b03ae1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d7d6dc0708c3b92ce5e0934c8af38ad6f91d07cc10e24b92428e6c18e169c1d",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Schroder/Variant9360e80cb54e71714420ed0f71755b3a6a5d482217b91ba76c5440c36b03ae1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4120f52d-a322-a58e-cd5c-e587c54a37a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coeff_X_mul_largeSchroderSeriesSeries_sq (n : ℕ) (hn : 0 < n) :
    coeff n (X * largeSchroderSeries ^ 2) =
      ∑ i ∈ range n, largeSchroder i * largeSchroder (n - 1 - i) := by
  rw [pow_two, ← mul_assoc, coeff_mul]
  rw [Nat.sum_antidiagonal_eq_sum_range_succ
    (fun x y => (coeff x) (X * largeSchroderSeries) * (coeff y) largeSchroderSeries) n,
    Nat.succ_eq_add_one, sum_range_succ]
  simp only [coeff_largeSchroderSeries, coeff_X_mul_largeSchroderSeries n hn, tsub_self,
    largeSchroder_zero, mul_one]
  have : ∑ x ∈ range n, (coeff x) (X * largeSchroderSeries) * largeSchroder (n - x) =
      ∑ x ∈ range n, if 0 < x then largeSchroder (x - 1) * largeSchroder (n - x) else 0 := by
    apply sum_congr rfl
    intro x a
    simp_all only [mem_range]
    split
    next h =>
      simp_all only [mul_eq_mul_right_iff]
      simp [coeff_X_mul_largeSchroderSeries x (by lia)]
    next h =>
      simp_all only [not_lt, nonpos_iff_eq_zero, coeff_zero_eq_constantCoeff, map_mul,
      constantCoeff_X, constantCoeff_largeSchroderSeries, mul_one, tsub_zero, zero_mul]
  rw [this, sum_range_eq_add_Ico _ (by lia)]
  simp only [lt_self_iff_false, reduceIte, zero_add]
  have : (∑ x ∈ Ico 1 n, if 0 < x then largeSchroder (x - 1) * largeSchroder (n - x) else 0) =
    ∑ x ∈ Ico 1 n, largeSchroder (x - 1) * largeSchroder (n - x) := by
    apply sum_congr rfl
    intros x hx
    have hx' : 0 < x := by grind
    rw [ite_eq_left hx']
  rw [this, sum_Ico_eq_sum_range, show n = n - 1 + 1 by lia,
    sum_range_succ]
  grind [largeSchroder_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Schroder/Variant9360e80cb54e71714420ed0f71755b3a6a5d482217b91ba76c5440c36b03ae1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Schroder/Variant9360e80cb54e71714420ed0f71755b3a6a5d482217b91ba76c5440c36b03ae1c.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b9bdee3f049bdabaffca113ead0d155febaf060` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
