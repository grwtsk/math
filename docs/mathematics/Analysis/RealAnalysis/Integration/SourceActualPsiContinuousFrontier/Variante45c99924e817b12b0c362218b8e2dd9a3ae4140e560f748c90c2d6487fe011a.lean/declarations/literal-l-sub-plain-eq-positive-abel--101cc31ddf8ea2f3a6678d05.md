# literal_L_sub_plain_eq_positive_Abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7cc4607-2bf8-cefe-077a-b38518c42a46",
  "kind": "theorem",
  "lexical_name": "literal_L_sub_plain_eq_positive_Abel",
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
  "slug": "literal-l-sub-plain-eq-positive-abel--101cc31ddf8ea2f3a6678d05",
  "source": {
    "blob": "a3ac60325b1bf54d1bd237f5ae0d8b9c3d6c40d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 63,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualPsiContinuousFrontier/Variante45c99924e817b12b0c362218b8e2dd9a3ae4140e560f748c90c2d6487fe011a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:101cc31ddf8ea2f3a6678d0543128b32464eaa292acbc12d5aaa9b288e6bb5a9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualPsiContinuousFrontier/Variante45c99924e817b12b0c362218b8e2dd9a3ae4140e560f748c90c2d6487fe011a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7cc4607-2bf8-cefe-077a-b38518c42a46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_L_sub_plain_eq_positive_Abel (A : ℝ) (hA : 1 ≤ A) :
    literalOmegaComplementarySector A - plainInventory A =
      -(∫ x in Ioi (0 : ℝ), complementaryCumulative (vaughanCutoff A) x *
        deriv (plainProfile A 1) x) := by
  have hs := intervalIntegral.integral_interval_add_Ioi
    (complementary_derivative_integrable_positive A hA)
    (complementary_derivative_integrable_Ioi hA)
  have hz : (∫ x in 0..1, complementaryCumulative (vaughanCutoff A) x *
      deriv (plainProfile A 1) x) = 0 := by
    rw [intervalIntegral.integral_of_le (by norm_num : (0 : ℝ) ≤ 1),
      integral_Ioc_eq_integral_Ioo]
    calc
      _ = ∫ _x in Ioo (0 : ℝ) 1, (0 : ℝ) := by
        apply setIntegral_congr_fun measurableSet_Ioo
        intro x hx
        dsimp only
        rw [complementaryCumulative_zero_below_one _ hx.2, zero_mul]
      _ = _ := by simp
  rw [hz, zero_add] at hs
  rw [literal_L_sub_plain_eq_full_Abel hA, hs]

/-- Independent genuine remaining arithmetic density, including the full pole-sector moments. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualPsiContinuousFrontier/Variante45c99924e817b12b0c362218b8e2dd9a3ae4140e560f748c90c2d6487fe011a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualPsiContinuousFrontier/Variante45c99924e817b12b0c362218b8e2dd9a3ae4140e560f748c90c2d6487fe011a.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3ac60325b1bf54d1bd237f5ae0d8b9c3d6c40d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
