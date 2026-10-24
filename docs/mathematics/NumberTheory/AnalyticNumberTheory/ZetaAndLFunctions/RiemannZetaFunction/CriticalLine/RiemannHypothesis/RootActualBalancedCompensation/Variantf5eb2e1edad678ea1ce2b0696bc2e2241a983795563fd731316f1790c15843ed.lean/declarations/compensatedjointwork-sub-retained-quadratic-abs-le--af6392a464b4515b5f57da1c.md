# compensatedJointWork_sub_retained_quadratic_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8c88f14-2f36-632f-24f8-ac6f8c53201e",
  "kind": "theorem",
  "lexical_name": "compensatedJointWork_sub_retained_quadratic_abs_le",
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
  "slug": "compensatedjointwork-sub-retained-quadratic-abs-le--af6392a464b4515b5f57da1c",
  "source": {
    "blob": "e1a472bc1fba770936e53d6619d767b5a52e406a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 47,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualBalancedCompensation/Variantf5eb2e1edad678ea1ce2b0696bc2e2241a983795563fd731316f1790c15843ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af6392a464b4515b5f57da1ccc8fdd255a1d7ff3964c8f27265b395675932dee",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualBalancedCompensation/Variantf5eb2e1edad678ea1ce2b0696bc2e2241a983795563fd731316f1790c15843ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8c88f14-2f36-632f-24f8-ac6f8c53201e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensatedJointWork_sub_retained_quadratic_abs_le {A w : ℝ}
    (hA : 25600 ≤ A) (hw : 0 ≤ w) (hw2 : w ≤ 2) :
    |compensatedJointWork A - actualRetainedCompensationRemainder A w| ≤
      16 * (Real.log 4 + 4 + Real.log 2) * w ^ 2 := by
  rw [compensatedJointWork_eq_retained_add_lowerStrip hA hw, add_sub_cancel_left]
  simpa only [abs_zero, add_zero] using
    actualLowerStripInterior_quadratic_abs_le (offset := 0) hA hw hw2

end
end FormalResearch.RiemannHypothesis.RootActualBalancedCompensation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualBalancedCompensation/Variantf5eb2e1edad678ea1ce2b0696bc2e2241a983795563fd731316f1790c15843ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualBalancedCompensation/Variantf5eb2e1edad678ea1ce2b0696bc2e2241a983795563fd731316f1790c15843ed.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1a472bc1fba770936e53d6619d767b5a52e406a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
