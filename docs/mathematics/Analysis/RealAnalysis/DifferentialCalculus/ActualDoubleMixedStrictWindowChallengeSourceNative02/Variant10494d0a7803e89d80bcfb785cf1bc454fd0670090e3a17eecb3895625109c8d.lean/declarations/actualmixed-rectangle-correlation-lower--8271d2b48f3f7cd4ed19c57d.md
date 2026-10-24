# actualMixed_rectangle_correlation_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52e4a760-8374-76e8-5ee6-123dbdee17bd",
  "kind": "theorem",
  "lexical_name": "actualMixed_rectangle_correlation_lower",
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
  "slug": "actualmixed-rectangle-correlation-lower--8271d2b48f3f7cd4ed19c57d",
  "source": {
    "blob": "b3abd7433069b117a55acd1aadf6ba992942b6f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 23,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualDoubleMixedStrictWindowChallengeSourceNative02/Variant10494d0a7803e89d80bcfb785cf1bc454fd0670090e3a17eecb3895625109c8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8271d2b48f3f7cd4ed19c57dc209c63a9ddc560be0244c016bf9e783bae96e59",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualDoubleMixedStrictWindowChallengeSourceNative02/Variant10494d0a7803e89d80bcfb785cf1bc454fd0670090e3a17eecb3895625109c8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52e4a760-8374-76e8-5ee6-123dbdee17bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMixed_rectangle_correlation_lower {A t u : ℝ} (hA : 25600 ≤ A)
    (ht : Real.log (vaughanCutoff A : ℝ) ≤ t)
    (ht1 : t ≤ Real.log (vaughanCutoff A : ℝ) + 1)
    (hu : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ u)
    (hu2 : u ≤ ((vaughanCutoff A + 2 : ℕ) : ℝ)) :
    (39 / 40 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A (t + Real.log u) := by
  have hy := actualMixed_firstColumn_shift_bounds hA ht ht1 hu hu2
  have hy2 : (t + Real.log u) ^ 2 ≤ A ^ 2 / 100 := by nlinarith
  have hc := actualCorrelation_sub_one_abs_le_five (by linarith : 91 ≤ A) (t + Real.log u)
  have hc1 : |sourceCorrelation explicitSecondDerivative A (t + Real.log u) - 1| ≤
      (1 / 40 : ℝ) := by
    calc
      _ ≤ (5 / 2 : ℝ) / A ^ 2 * (t + Real.log u) ^ 2 := hc
      _ ≤ (5 / 2 : ℝ) / A ^ 2 * (A ^ 2 / 100) := by gcongr
      _ = 1 / 40 := by field_simp; ring
  linarith [(abs_le.mp hc1).1]

/-- The complete fourth mixed kernel retains a positive zeroth-order contribution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualDoubleMixedStrictWindowChallengeSourceNative02/Variant10494d0a7803e89d80bcfb785cf1bc454fd0670090e3a17eecb3895625109c8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualDoubleMixedStrictWindowChallengeSourceNative02/Variant10494d0a7803e89d80bcfb785cf1bc454fd0670090e3a17eecb3895625109c8d.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3abd7433069b117a55acd1aadf6ba992942b6f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
