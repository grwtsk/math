# compensatedJointWork_sub_retained_balanced_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:805a1f2c-fb25-88dd-8c0b-35d30877f5da",
  "kind": "theorem",
  "lexical_name": "compensatedJointWork_sub_retained_balanced_abs_le",
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
  "slug": "compensatedjointwork-sub-retained-balanced-abs-le--087142b8dd555127f5304413",
  "source": {
    "blob": "af29aea157c10a165d6d48dcaaf7e68f5bc460af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 47,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualBalancedCompensation/Variantb41b8456763e4ee0ecf5e501429224a06e53f8dc063563a6598b4bda59e70c60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:087142b8dd555127f5304413028d33e6b03f8a525f387dfe2c2b82252fd73fcc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualBalancedCompensation/Variantb41b8456763e4ee0ecf5e501429224a06e53f8dc063563a6598b4bda59e70c60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:805a1f2c-fb25-88dd-8c0b-35d30877f5da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensatedJointWork_sub_retained_balanced_abs_le {A w : ℝ}
    (hA : 25600 ≤ A) (hw : 0 ≤ w) :
    |compensatedJointWork A - actualRetainedCompensationRemainder A w| ≤
      32 * (Real.log 4 + 4 + Real.log 2) *
        (Real.exp (w / 2) + Real.exp (-w / 2) - 2) := by
  rw [compensatedJointWork_eq_retained_add_lowerStrip hA hw, add_sub_cancel_left]
  simpa only [abs_zero, add_zero] using
    actualLowerStripInterior_balanced_abs_le (offset := 0) hA hw

/-- Widths at most two give a genuine quadratic error in the literal source remainder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualBalancedCompensation/Variantb41b8456763e4ee0ecf5e501429224a06e53f8dc063563a6598b4bda59e70c60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualBalancedCompensation/Variantb41b8456763e4ee0ecf5e501429224a06e53f8dc063563a6598b4bda59e70c60.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af29aea157c10a165d6d48dcaaf7e68f5bc460af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
