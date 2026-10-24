# abs_goldbach_phase_le_pi_div_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d4934d4-d784-50e7-dc37-bda25d78ecad",
  "kind": "theorem",
  "lexical_name": "abs_goldbach_phase_le_pi_div_three",
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
  "slug": "abs-goldbach-phase-le-pi-div-three--1722ce642588c4885f69d2b3",
  "source": {
    "blob": "bf516f0e84b56741728594781af922e362708f05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 83,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1722ce642588c4885f69d2b330a6cbf4ca93459499875f1d05b3a7f9582f5b03",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d4934d4-d784-50e7-dc37-bda25d78ecad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_goldbach_phase_le_pi_div_three
    {N n : ℕ} (hn : n ≤ N)
    {β : ℝ}
    (hβ : β ∈ Set.Icc
      (-goldbachFejerCoreRadius N)
      (goldbachFejerCoreRadius N)) :
    |2 * Real.pi * (n : ℝ) * β| ≤ Real.pi / 3 := by
  have hδ0 : 0 ≤ goldbachFejerCoreRadius N :=
    (goldbachFejerCoreRadius_pos N).le
  have hβabs :
      |β| ≤ goldbachFejerCoreRadius N := by
    rw [abs_le]
    exact hβ
  have hnR : (n : ℝ) ≤ (N : ℝ) := by
    exact_mod_cast hn
  have hNlt : (N : ℝ) < (N + 1 : ℝ) := by
    norm_num
  calc
    |2 * Real.pi * (n : ℝ) * β| =
        2 * Real.pi * (n : ℝ) * |β| := by
          rw [abs_mul, abs_mul, abs_mul,
            abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2),
            abs_of_nonneg Real.pi_nonneg,
            abs_of_nonneg (Nat.cast_nonneg n)]
    _ ≤
        2 * Real.pi * (n : ℝ) *
          goldbachFejerCoreRadius N := by
            exact mul_le_mul_of_nonneg_left hβabs
              (mul_nonneg
                (mul_nonneg (by norm_num) Real.pi_nonneg)
                (Nat.cast_nonneg n))
    _ ≤
        2 * Real.pi * (N : ℝ) *
          goldbachFejerCoreRadius N := by
            exact mul_le_mul_of_nonneg_right
              (mul_le_mul_of_nonneg_left hnR
                (mul_nonneg (by norm_num) Real.pi_nonneg))
              hδ0
    _ ≤ Real.pi / 3 := by
      unfold goldbachFejerCoreRadius
      have hden : (0 : ℝ) < 6 * (N + 1 : ℝ) := by positivity
      rw [div_eq_mul_inv]
      rw [le_div_iff₀ (by norm_num : (0 : ℝ) < 3)]
      field_simp [hden.ne']
      nlinarith [Real.pi_nonneg]

/-- Each phase has real part at least one half on the core interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf516f0e84b56741728594781af922e362708f05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
