# physicalCurvatureWeight_abs_le_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8fc78061-a2cb-7f9a-a29f-bd6ca1115c5c",
  "kind": "theorem",
  "lexical_name": "physicalCurvatureWeight_abs_le_exact",
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
  "slug": "physicalcurvatureweight-abs-le-exact--8cfea5153cfafd28c5ea4c4b",
  "source": {
    "blob": "c1bf56a8b4acc129ad7c93b6e90f1e921394b2d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 61,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cfea5153cfafd28c5ea4c4b6b3edaaed5b1ac79b4812817db517fef029879a1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fc78061-a2cb-7f9a-a29f-bd6ca1115c5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem physicalCurvatureWeight_abs_le_exact (Q A t : ℝ) (hQ : 1 ≤ Q)
    (hQA : Q ≤ A) :
    |physicalCurvatureWeight A t| ≤ exactWeightBudget Q A := by
  have hp : 0 < A := by linarith
  have hd := actual_correlation_derivative_bounds hQ hQA t
  have hh : |deriv (sourceCorrelation explicitSecondDerivative A) t / 2| ≤
      Real.sqrt (tailEnergyCoefficient Q) / (2 * A) := by
    rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
    calc
      _ ≤ (Real.sqrt (tailEnergyCoefficient Q) / A) / 2 :=
        div_le_div_of_nonneg_right hd.1 (by norm_num)
      _ = _ := by field_simp [hp.ne']
  exact (abs_sub _ _).trans (add_le_add hd.2 hh)

/-- Actual zero-trace IBP with the sharper source energy, not a changed observable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1bf56a8b4acc129ad7c93b6e90f1e921394b2d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
