# actualFirstLogMixedValue_fourth_power_failure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e75a635-86c4-bd41-9bfe-82620fdf2f57",
  "kind": "theorem",
  "lexical_name": "actualFirstLogMixedValue_fourth_power_failure",
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
  "slug": "actualfirstlogmixedvalue-fourth-power-failure--5e4292ccd76398ab2f8fe9e0",
  "source": {
    "blob": "4c79388ded4eacc145bc80852b2f9f22f65374d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualDoubleMixedPowerObstruction/Variant9cd8edb8f9e3a0429ab5460f2488f259e5c97329dc9076435447f8c1c2255be1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e4292ccd76398ab2f8fe9e0e90029ad9e837cbc6697954312c3c43105d427a9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualDoubleMixedPowerObstruction/Variant9cd8edb8f9e3a0429ab5460f2488f259e5c97329dc9076435447f8c1c2255be1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e75a635-86c4-bd41-9bfe-82620fdf2f57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFirstLogMixedValue_fourth_power_failure (M R : ℝ) :
    ∃ A : ℝ, R ≤ A ∧ 25600 ≤ A ∧ M / A ^ 4 < actualFirstLogMixedValue A := by
  let A := max (25600 : ℝ) (max R (128 * (|M| + 1)))
  have hA : 25600 ≤ A := le_max_left _ _
  have hRA : R ≤ A := (le_max_left _ _).trans (le_max_right _ _)
  have hMA : 128 * (|M| + 1) ≤ A := (le_max_right _ _).trans (le_max_right _ _)
  have hA1 : 1 ≤ A := by linarith
  have hA0 : 0 < A := by linarith
  have hA4 : A ≤ A ^ 4 := by
    nlinarith [sq_nonneg (A ^ 2 - 1),
      mul_nonneg (sub_nonneg.mpr hA1) hA0.le]
  have hsmall : M / A ^ 4 < (1 / 128 : ℝ) := by
    apply (div_lt_iff₀ (by positivity : 0 < A ^ 4)).mpr
    nlinarith [le_abs_self M]
  refine ⟨A, hRA, hA, ?_⟩
  exact hsmall.trans_le ((by norm_num : (1 / 128 : ℝ) ≤ 1 / 64).trans
    (actualFirstLogMixedValue_lower hA).1)

/-- Ordinary double Abel differentiation cannot have any fixed pure A^-4 tail majorant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualDoubleMixedPowerObstruction/Variant9cd8edb8f9e3a0429ab5460f2488f259e5c97329dc9076435447f8c1c2255be1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualDoubleMixedPowerObstruction/Variant9cd8edb8f9e3a0429ab5460f2488f259e5c97329dc9076435447f8c1c2255be1.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c79388ded4eacc145bc80852b2f9f22f65374d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
