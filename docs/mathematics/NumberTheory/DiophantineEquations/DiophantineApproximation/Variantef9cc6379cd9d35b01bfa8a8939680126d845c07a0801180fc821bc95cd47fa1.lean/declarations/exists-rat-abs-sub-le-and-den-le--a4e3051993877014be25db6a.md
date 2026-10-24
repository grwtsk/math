# exists_rat_abs_sub_le_and_den_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "905ff2830110628e736743f6804825b693e65939",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/ef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2cd07420-791b-d4cf-bd4e-2ba07a144efa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5a1616c6-b062-ed45-c4a3-9c000234ae92",
  "kind": "theorem",
  "lexical_name": "exists_rat_abs_sub_le_and_den_le",
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
  "slug": "exists-rat-abs-sub-le-and-den-le--a4e3051993877014be25db6a",
  "source": {
    "blob": "905ff2830110628e736743f6804825b693e65939",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 155,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4e3051993877014be25db6a00b16de16ed9e0da54ce51212604f837a7e5ca49",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a1616c6-b062-ed45-c4a3-9c000234ae92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_rat_abs_sub_le_and_den_le (ξ : ℝ) {n : ℕ} (n_pos : 0 < n) :
    ∃ q : ℚ, |ξ - q| ≤ 1 / ((n + 1) * q.den) ∧ q.den ≤ n := by
  obtain ⟨j, k, hk₀, hk₁, h⟩ := exists_int_int_abs_mul_sub_le ξ n_pos
  have hk₀' : (0 : ℝ) < k := Int.cast_pos.mpr hk₀
  have hden : ((j / k : ℚ).den : ℤ) ≤ k := by
    convert le_of_dvd hk₀ (Rat.den_dvd j k)
    exact Rat.coe_int_div_eq_divInt
  refine' ⟨j / k, _, Nat.cast_le.mp (hden.trans hk₁)⟩
  rw [← div_div, le_div_iff (Nat.cast_pos.mpr <| Rat.pos _ : (0 : ℝ) < _)]
  refine' (mul_le_mul_of_nonneg_left (Int.cast_le.mpr hden : _ ≤ (k : ℝ)) (abs_nonneg _)).trans _
  rwa [← abs_of_pos hk₀', Rat.cast_div, Rat.cast_coe_int, Rat.cast_coe_int, ← abs_mul, sub_mul,
    div_mul_cancel _ hk₀'.ne', mul_comm]
#align real.exists_rat_abs_sub_le_and_denom_le Real.exists_rat_abs_sub_le_and_den_le

end Dirichlet

section RatApprox

/-!
### Infinitely many good approximations to irrational numbers

We show that an irrational real number `ξ` has infinitely many "good rational approximations",
i.e., fractions `x/y` in lowest terms such that `|ξ - x/y| < 1/y^2`.
-/


open Set

/-- Given any rational approximation `q` to the irrational real number `ξ`, there is
a good rational approximation `q'` such that `|ξ - q'| < |ξ - q|`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `905ff2830110628e736743f6804825b693e65939` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
