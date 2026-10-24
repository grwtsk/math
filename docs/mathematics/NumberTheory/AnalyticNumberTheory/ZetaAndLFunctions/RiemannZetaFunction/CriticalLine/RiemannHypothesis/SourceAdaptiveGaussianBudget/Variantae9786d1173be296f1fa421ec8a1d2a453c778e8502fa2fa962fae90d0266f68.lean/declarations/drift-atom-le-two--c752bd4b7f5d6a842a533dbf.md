# drift_atom_le_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:217c474d-e678-70fe-d389-da7c6d9ddeb6",
  "kind": "theorem",
  "lexical_name": "drift_atom_le_two",
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
  "slug": "drift-atom-le-two--c752bd4b7f5d6a842a533dbf",
  "source": {
    "blob": "093dceda45b61f15ee7e94abe565106e2a8e876c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 61,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveGaussianBudget/Variantae9786d1173be296f1fa421ec8a1d2a453c778e8502fa2fa962fae90d0266f68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c752bd4b7f5d6a842a533dbf56588a34764ecc5d3bd30070d01937e0d8b8215b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveGaussianBudget/Variantae9786d1173be296f1fa421ec8a1d2a453c778e8502fa2fa962fae90d0266f68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:217c474d-e678-70fe-d389-da7c6d9ddeb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem drift_atom_le_two {N n : ℕ} (hn : 2 ≤ n) (hnN : n ≤ N) :
    |(ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n| *
      |Real.log n - Real.log (shellEndpoint N n)| ≤ 2 := by
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (by omega : 0 < n)
  have hs0 : 0 < Real.sqrt (n : ℝ) := Real.sqrt_pos.mpr hn0
  have hs2 := Real.sq_sqrt hn0.le
  have hd2 := shell_log_squared_le hn hnN
  have hp0 : 0 ≤ Real.sqrt (n : ℝ) *
      |Real.log n - Real.log (shellEndpoint N n)| := by positivity
  have hp2 : (Real.sqrt (n : ℝ) *
      |Real.log n - Real.log (shellEndpoint N n)|) ^ 2 ≤ 4 := by
    rw [mul_pow, sq_abs, hs2]
    have hh := mul_le_mul_of_nonneg_left hd2 hn0.le
    have hc : (n : ℝ) * (4 / (n : ℝ)) = 4 := by field_simp
    exact hh.trans_eq hc
  have hprod : Real.sqrt (n : ℝ) *
      |Real.log n - Real.log (shellEndpoint N n)| ≤ 2 := by nlinarith
  have hquot : (n : ℝ) / Real.sqrt n = Real.sqrt n := by
    apply (div_eq_iff hs0.ne').mpr
    nlinarith [hs2]
  calc
    _ = (|ArithmeticFunction.vonMangoldt n - 1| / Real.sqrt n) *
        |Real.log n - Real.log (shellEndpoint N n)| := by
      rw [abs_div, abs_of_nonneg (Real.sqrt_nonneg _)]
    _ ≤ ((n : ℝ) / Real.sqrt n) *
        |Real.log n - Real.log (shellEndpoint N n)| :=
      mul_le_mul_of_nonneg_right
        (div_le_div_of_nonneg_right (coefficient_abs_le_nat hn) hs0.le) (abs_nonneg _)
    _ = Real.sqrt (n : ℝ) * |Real.log n - Real.log (shellEndpoint N n)| := by rw [hquot]
    _ ≤ 2 := hprod

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveGaussianBudget/Variantae9786d1173be296f1fa421ec8a1d2a453c778e8502fa2fa962fae90d0266f68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveGaussianBudget/Variantae9786d1173be296f1fa421ec8a1d2a453c778e8502fa2fa962fae90d0266f68.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `093dceda45b61f15ee7e94abe565106e2a8e876c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
