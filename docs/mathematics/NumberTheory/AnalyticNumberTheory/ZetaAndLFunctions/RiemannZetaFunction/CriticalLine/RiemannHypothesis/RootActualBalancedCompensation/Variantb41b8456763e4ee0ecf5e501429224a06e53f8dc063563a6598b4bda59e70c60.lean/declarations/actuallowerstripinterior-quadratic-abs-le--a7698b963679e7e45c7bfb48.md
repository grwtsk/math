# actualLowerStripInterior_quadratic_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28cfd2af-7b60-63a2-455b-bb19eede41c4",
  "kind": "theorem",
  "lexical_name": "actualLowerStripInterior_quadratic_abs_le",
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
  "slug": "actuallowerstripinterior-quadratic-abs-le--a7698b963679e7e45c7bfb48",
  "source": {
    "blob": "af29aea157c10a165d6d48dcaaf7e68f5bc460af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 28,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualBalancedCompensation/Variantb41b8456763e4ee0ecf5e501429224a06e53f8dc063563a6598b4bda59e70c60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7698b963679e7e45c7bfb481e172371f9d667760125ec17ea969604003e055d",
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

Occurrence: `result:28cfd2af-7b60-63a2-455b-bb19eede41c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLowerStripInterior_quadratic_abs_le {A offset w : ℝ}
    (hA : 25600 ≤ A) (hw : 0 ≤ w) (hw2 : w ≤ 2) :
    |actualLowerStripInterior A offset w| ≤
      16 * (Real.log 4 + 4 + Real.log 2 + |offset|) * w ^ 2 := by
  have hp : |w / 2| ≤ 1 := by rw [abs_of_nonneg (by linarith)]; linarith
  have hn : |-w / 2| ≤ 1 := by rw [abs_of_nonpos (by linarith)]; linarith
  have he1 := (abs_le.mp (Real.abs_exp_sub_one_sub_id_le hp)).2
  have he2 := (abs_le.mp (Real.abs_exp_sub_one_sub_id_le hn)).2
  have he : Real.exp (w / 2) + Real.exp (-w / 2) - 2 ≤ w ^ 2 / 2 := by
    nlinarith
  calc
    _ ≤ 32 * (Real.log 4 + 4 + Real.log 2 + |offset|) *
        (Real.exp (w / 2) + Real.exp (-w / 2) - 2) :=
      actualLowerStripInterior_balanced_abs_le hA hw
    _ ≤ 32 * (Real.log 4 + 4 + Real.log 2 + |offset|) * (w ^ 2 / 2) :=
      mul_le_mul_of_nonneg_left he (by positivity)
    _ = _ := by ring

/-- The original compensated signed work has the balanced anchored localization bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualBalancedCompensation/Variantb41b8456763e4ee0ecf5e501429224a06e53f8dc063563a6598b4bda59e70c60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualBalancedCompensation/Variantb41b8456763e4ee0ecf5e501429224a06e53f8dc063563a6598b4bda59e70c60.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af29aea157c10a165d6d48dcaaf7e68f5bc460af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
