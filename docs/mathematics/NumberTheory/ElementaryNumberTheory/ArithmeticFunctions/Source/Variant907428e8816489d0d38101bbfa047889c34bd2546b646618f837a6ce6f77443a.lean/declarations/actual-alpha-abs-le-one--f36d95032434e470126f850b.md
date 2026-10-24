# actual_alpha_abs_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56b40793-1aa2-7176-ce29-6f7b4e02d35b",
  "kind": "theorem",
  "lexical_name": "actual_alpha_abs_le_one",
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
  "slug": "actual-alpha-abs-le-one--f36d95032434e470126f850b",
  "source": {
    "blob": "8044c202012b27fbd22050d7cbf3a1eb8a74241a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 78,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Source/Variant907428e8816489d0d38101bbfa047889c34bd2546b646618f837a6ce6f77443a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f36d95032434e470126f850b6213e2fc2f659bd0bb1c626be20b738b5fdd40b6",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Source/Variant907428e8816489d0d38101bbfa047889c34bd2546b646618f837a6ce6f77443a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56b40793-1aa2-7176-ce29-6f7b4e02d35b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_alpha_abs_le_one (U : ℕ) (hU : 1 ≤ U) : |alpha U| ≤ 1 := by
  classical
  let error (d : ℕ) : ℝ := (moebius d : ℝ) * ((U % d : ℕ) : ℝ) / (d : ℝ)
  have he0 : error 1 = 0 := by simp [error]
  have he (d : ℕ) (hd : d ∈ Finset.Ioc 1 U) : |error d| ≤ 1 := by
    have hd0 : 0 < d := by have := (Finset.mem_Ioc.mp hd).1; omega
    have hmu : |(moebius d : ℝ)| ≤ 1 := by
      exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := d))
    have hr0 : 0 ≤ (((U % d : ℕ) : ℝ) / (d : ℝ)) := by positivity
    have hr1 : (((U % d : ℕ) : ℝ) / (d : ℝ)) ≤ 1 := by
      apply (div_le_one (by exact_mod_cast hd0)).mpr
      exact_mod_cast (Nat.mod_lt U hd0).le
    change |(moebius d : ℝ) * (((U % d : ℕ) : ℝ) / (d : ℝ))| ≤ 1
    rw [abs_mul, abs_of_nonneg hr0]
    nlinarith
  have hsum : |∑ d ∈ Finset.Icc 1 U, error d| ≤ (U : ℝ) - 1 := by
    rw [← Finset.Ioc_insert_left hU, Finset.sum_insert (by simp), he0, zero_add]
    calc
      _ ≤ ∑ d ∈ Finset.Ioc 1 U, |error d| := Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ d ∈ Finset.Ioc 1 U, (1 : ℝ) := Finset.sum_le_sum he
      _ = _ := by simp [Nat.cast_sub hU]
  have hr := actual_alpha_modulus_recovery U hU
  change (U : ℝ) * alpha U = 1 + ∑ d ∈ Finset.Icc 1 U, error d at hr
  have hUa : |(U : ℝ) * alpha U| ≤ (U : ℝ) := by
    rw [hr]
    exact (abs_add_le 1 _).trans (by simp only [abs_one]; linarith only [hsum])
  rw [abs_mul, abs_of_nonneg (by positivity : (0 : ℝ) ≤ U)] at hUa
  have hUp : 0 < (U : ℝ) := by exact_mod_cast (show 0 < U by omega)
  nlinarith only [hUa, hUp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Source/Variant907428e8816489d0d38101bbfa047889c34bd2546b646618f837a6ce6f77443a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Source/Variant907428e8816489d0d38101bbfa047889c34bd2546b646618f837a6ce6f77443a.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8044c202012b27fbd22050d7cbf3a1eb8a74241a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
