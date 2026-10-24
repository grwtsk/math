# compensatedJointWork_eq_retained_add_lowerStrip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6cfdd923-d2ff-2c7c-abcb-149ab799a1d5",
  "kind": "theorem",
  "lexical_name": "compensatedJointWork_eq_retained_add_lowerStrip",
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
  "slug": "compensatedjointwork-eq-retained-add-lowerstrip--00e6a219241a205fdc1e5e70",
  "source": {
    "blob": "42c01079606ba207d63070629b865bd2e9808f2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 88,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D3a4ba2fccf423a0ea12SourceActualAdjointCompensationLocalization/Varianteaf02d2c22dd18230ca623b9b39820a4c3171bb1c6eab4dec4eb993b281de5cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00e6a219241a205fdc1e5e7040223f38f862d4dc53afd8c8339300aa483e6381",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D3a4ba2fccf423a0ea12SourceActualAdjointCompensationLocalization/Varianteaf02d2c22dd18230ca623b9b39820a4c3171bb1c6eab4dec4eb993b281de5cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cfdd923-d2ff-2c7c-abcb-149ab799a1d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensatedJointWork_eq_retained_add_lowerStrip {A w : ℝ}
    (hA : 25600 ≤ A) (hw : 0 ≤ w) :
    compensatedJointWork A =
      actualRetainedCompensationRemainder A w + actualLowerStripInterior A 0 w := by
  have hW := jointMangoldtErrorWork_eq_actual_double_adjoint (by linarith : 1 ≤ A)
  have hI := actualAdjointInterior_eq_lower_add_upper hA hw
  unfold compensatedJointWork actualRetainedCompensationRemainder
  rw [hW, hI]
  simp only [actualTimeLower]
  ring

/-- Removing the fixed actual lower strip costs its proved source-specific uniform budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D3a4ba2fccf423a0ea12SourceActualAdjointCompensationLocalization/Varianteaf02d2c22dd18230ca623b9b39820a4c3171bb1c6eab4dec4eb993b281de5cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D3a4ba2fccf423a0ea12SourceActualAdjointCompensationLocalization/Varianteaf02d2c22dd18230ca623b9b39820a4c3171bb1c6eab4dec4eb993b281de5cf.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42c01079606ba207d63070629b865bd2e9808f2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
