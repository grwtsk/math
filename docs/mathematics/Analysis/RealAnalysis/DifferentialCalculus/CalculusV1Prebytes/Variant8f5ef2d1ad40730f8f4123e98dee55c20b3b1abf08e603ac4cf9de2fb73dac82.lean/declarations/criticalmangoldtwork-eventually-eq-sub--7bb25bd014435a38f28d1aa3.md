# criticalMangoldtWork_eventually_eq_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04953adf-f0b1-1bb7-567e-b0d40dae8431",
  "kind": "theorem",
  "lexical_name": "criticalMangoldtWork_eventually_eq_sub",
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
  "slug": "criticalmangoldtwork-eventually-eq-sub--7bb25bd014435a38f28d1aa3",
  "source": {
    "blob": "3f2b527eb2b5a4d0bc50b31e44190916e89e1bb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 122,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8f5ef2d1ad40730f8f4123e98dee55c20b3b1abf08e603ac4cf9de2fb73dac82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bb25bd014435a38f28d1aa305f8d53fe59fbbadf0648c3de9834fa620468ac7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8f5ef2d1ad40730f8f4123e98dee55c20b3b1abf08e603ac4cf9de2fb73dac82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04953adf-f0b1-1bb7-567e-b0d40dae8431`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalMangoldtWork_eventually_eq_sub {A : ℝ} (hA : 1 < A) :
    criticalMangoldtWork =ᶠ[nhds A]
      (fun B => criticalContinuousMoment B - closedPrimeMoment B) := by
  filter_upwards [eventually_gt_nhds hA] with B hB
  have h := closedPrimeMoment_eq_continuous_sub_Mangoldt_work B hB.le
  linarith

/-- Ordinary work differentiation follows the actual Abel identity, without redefining the work. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8f5ef2d1ad40730f8f4123e98dee55c20b3b1abf08e603ac4cf9de2fb73dac82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8f5ef2d1ad40730f8f4123e98dee55c20b3b1abf08e603ac4cf9de2fb73dac82.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f2b527eb2b5a4d0bc50b31e44190916e89e1bb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
