# repairedTransfer_analyticAt_pole

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6774fc52-c60f-f918-ba80-9d024ae7c9e6",
  "kind": "theorem",
  "lexical_name": "repairedTransfer_analyticAt_pole",
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
  "slug": "repairedtransfer-analyticat-pole--88c36c06fb950642d90633bc",
  "source": {
    "blob": "823afd808d5f9834f7d123fd1c41af28a01949ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 482,
    "line": 474,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponential/Variant4c465cf87a7e7c25115e03b098aac01604e6fb8854736199ee4b88a849ed8ace.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88c36c06fb950642d90633bcd624a453112e947fadb7612a67482b58c5a9e744",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponential/Variant4c465cf87a7e7c25115e03b098aac01604e6fb8854736199ee4b88a849ed8ace.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6774fc52-c60f-f918-ba80-9d024ae7c9e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 474–482.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem repairedTransfer_analyticAt_pole : AnalyticAt ℂ repairedTransfer (1 / 2) := by
  apply Complex.analyticAt_of_differentiable_on_punctured_nhds_of_continuousAt
    _ repairedTransfer_continuousAt_pole
  have hn : ∀ᶠ z : ℂ in 𝓝 (1 / 2), z ≠ 0 :=
    isOpen_compl_singleton.mem_nhds (by norm_num : (1 / 2 : ℂ) ≠ 0)
  filter_upwards [self_mem_nhdsWithin, hn.filter_mono nhdsWithin_le_nhds] with z hzp hz
  exact repairedTransfer_differentiableAt_of_ne z hz hzp

/-- The repaired arithmetic transfer is holomorphic throughout the positive half-plane. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponential/Variant4c465cf87a7e7c25115e03b098aac01604e6fb8854736199ee4b88a849ed8ace.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponential/Variant4c465cf87a7e7c25115e03b098aac01604e6fb8854736199ee4b88a849ed8ace.lean#L474).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `823afd808d5f9834f7d123fd1c41af28a01949ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
