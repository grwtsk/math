# jointMangoldtTestProfile_zero_of_log_cutoff_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ffccaf7-3f4d-1b91-5dcf-564bed175ef5",
  "kind": "theorem",
  "lexical_name": "jointMangoldtTestProfile_zero_of_log_cutoff_le",
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
  "slug": "jointmangoldttestprofile-zero-of-log-cutoff-le--7e3c4a396d2025b22b922354",
  "source": {
    "blob": "3397ebdd5561a358510c432f5c675e3e83080fb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 132,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variant20e94f5bfb475559a702d1b5558695549100f76a47117a1cfc55ce7d3aa9c38b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e3c4a396d2025b22b922354f0ff05976eca489c63da557310c6c03137d5d86e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variant20e94f5bfb475559a702d1b5558695549100f76a47117a1cfc55ce7d3aa9c38b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ffccaf7-3f4d-1b91-5dcf-564bed175ef5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jointMangoldtTestProfile_zero_of_log_cutoff_le (A : ℝ) (hA : 1 ≤ A)
    {t : ℝ} (ht : Real.log (sourceKernelCutoff A : ℝ) ≤ t) :
    jointMangoldtTestProfile A t = 0 := by
  classical
  change (∑ k ∈ Finset.Ico (vaughanCutoff A + 1)
      (sourceKernelCutoff A / (vaughanCutoff A + 1)),
      originalPrefix A k * (shiftedColumnTest A k t - shiftedColumnTest A (k + 1) t)) = 0
  apply Finset.sum_eq_zero
  intro k hk
  have hkm := (Finset.mem_Ico.mp hk).1
  have hU := vaughanCutoff_pos A hA
  rw [shiftedColumnTest_zero_above A hA k (by omega) ht,
    shiftedColumnTest_zero_above A hA (k + 1) (by omega) ht, sub_self, mul_zero]

/-- The finite baseline is the negative retained lower tail, not zero in general. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variant20e94f5bfb475559a702d1b5558695549100f76a47117a1cfc55ce7d3aa9c38b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variant20e94f5bfb475559a702d1b5558695549100f76a47117a1cfc55ce7d3aa9c38b.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3397ebdd5561a358510c432f5c675e3e83080fb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
