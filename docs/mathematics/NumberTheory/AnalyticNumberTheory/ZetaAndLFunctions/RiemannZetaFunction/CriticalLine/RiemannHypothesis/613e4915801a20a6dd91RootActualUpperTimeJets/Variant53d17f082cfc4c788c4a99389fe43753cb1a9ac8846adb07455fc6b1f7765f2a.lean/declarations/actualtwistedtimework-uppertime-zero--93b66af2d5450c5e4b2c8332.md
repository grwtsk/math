# actualTwistedTimeWork_upperTime_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e696f083-852e-71f0-847b-5138af23d07a",
  "kind": "theorem",
  "lexical_name": "actualTwistedTimeWork_upperTime_zero",
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
  "slug": "actualtwistedtimework-uppertime-zero--93b66af2d5450c5e4b2c8332",
  "source": {
    "blob": "0eb3903a8f2d977a557201c8d784f8662337e2e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 57,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/613e4915801a20a6dd91RootActualUpperTimeJets/Variant53d17f082cfc4c788c4a99389fe43753cb1a9ac8846adb07455fc6b1f7765f2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93b66af2d5450c5e4b2c833245f5a866475d6bb7a2e0bdac5cf2681481815ae1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/613e4915801a20a6dd91RootActualUpperTimeJets/Variant53d17f082cfc4c788c4a99389fe43753cb1a9ac8846adb07455fc6b1f7765f2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e696f083-852e-71f0-847b-5138af23d07a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualTwistedTimeWork_upperTime_zero (A : ℝ) (hA : 1 ≤ A) (s : ℝ)
    (hs : Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ s) :
    Real.exp (Real.log (sourceKernelCutoff A : ℝ) / 2) * Real.exp (-s / 2) *
      (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A)
        (Real.log (sourceKernelCutoff A : ℝ) + s) -
          iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A)
            (Real.log (sourceKernelCutoff A : ℝ) + s) / 4) = 0 := by
  have h1 := actualUpperTimeJet_zero A hA ⟨1, by norm_num⟩ s hs
  have h3 := actualUpperTimeJet_zero A hA ⟨3, by norm_num⟩ s hs
  simp only [h1, h3, zero_div, sub_zero, mul_zero]

/-- The exact original-work post-adjoint kernel also vanishes at upper time. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/613e4915801a20a6dd91RootActualUpperTimeJets/Variant53d17f082cfc4c788c4a99389fe43753cb1a9ac8846adb07455fc6b1f7765f2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/613e4915801a20a6dd91RootActualUpperTimeJets/Variant53d17f082cfc4c788c4a99389fe43753cb1a9ac8846adb07455fc6b1f7765f2a.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eb3903a8f2d977a557201c8d784f8662337e2e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
