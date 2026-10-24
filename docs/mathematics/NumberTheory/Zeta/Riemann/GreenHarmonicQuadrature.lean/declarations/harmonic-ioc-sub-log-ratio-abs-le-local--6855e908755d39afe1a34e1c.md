# harmonic_Ioc_sub_log_ratio_abs_le_local

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:095c0ba1-b078-202b-7a7b-0d1fbcd76361",
  "kind": "theorem",
  "lexical_name": "harmonic_Ioc_sub_log_ratio_abs_le_local",
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
  "slug": "harmonic-ioc-sub-log-ratio-abs-le-local--6855e908755d39afe1a34e1c",
  "source": {
    "blob": "a4cea2c1f1c6101646ebd26b0e95d40d506d9fd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 47,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/GreenHarmonicQuadrature.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6855e908755d39afe1a34e1c30ce62155d89e51d084ed2d743b5ee332fa2958f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/GreenHarmonicQuadrature.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:095c0ba1-b078-202b-7a7b-0d1fbcd76361`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem harmonic_Ioc_sub_log_ratio_abs_le_local
    {X m : ℕ} (hX : 1 ≤ X) (hXm : X ≤ m) :
    |(∑ n ∈ Finset.Ioc X m, 1 / (n : ℝ)) -
      Real.log ((m : ℝ) / X)| ≤ 1 / (X : ℝ) := by
  induction m, hXm using Nat.le_induction with
  | base =>
      simp
  | succ m hXm ih =>
      have hm1 : 1 ≤ m := le_trans hX hXm
      have hstep := log_succ_ratio_bounds hm1
      have hsum :
          (∑ n ∈ Finset.Ioc X (m + 1), 1 / (n : ℝ)) =
            (∑ n ∈ Finset.Ioc X m, 1 / (n : ℝ)) +
              1 / (m + 1 : ℝ) := by
        rw [Finset.sum_Ioc_succ_top hXm]
      have hlog :
          Real.log (((m + 1 : ℕ) : ℝ) / X) =
            Real.log ((m : ℝ) / X) +
              Real.log ((m + 1 : ℝ) / m) := by
        have hXp : (0 : ℝ) < X := by exact_mod_cast hX
        have hmp : (0 : ℝ) < m := by exact_mod_cast hm1
        rw [← Real.log_mul (by positivity : ((m : ℝ) / X) ≠ 0) (by positivity : ((m + 1 : ℝ) / m) ≠ 0)]
        congr 1
        field_simp
        ring
      rw [hsum, hlog]
      rw [abs_le] at ih ⊢
      constructor
      · nlinarith [hstep.2]
      · have hrec :
            1 / (m + 1 : ℝ) ≤ 1 / (X : ℝ) := by
          have hXp : (0 : ℝ) < X := by exact_mod_cast hX
          exact one_div_le_one_div_of_le hXp (by exact_mod_cast hXm.trans (Nat.le_succ m))
        nlinarith [hstep.1]

/-- Floor/log gap: m<=X(1+t)<m+1 implies at most 1/X logarithmic error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/GreenHarmonicQuadrature.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/GreenHarmonicQuadrature.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4cea2c1f1c6101646ebd26b0e95d40d506d9fd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
