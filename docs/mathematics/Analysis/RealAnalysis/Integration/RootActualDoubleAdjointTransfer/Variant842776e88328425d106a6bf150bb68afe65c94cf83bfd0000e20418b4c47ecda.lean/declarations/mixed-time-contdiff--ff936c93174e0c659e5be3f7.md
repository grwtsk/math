# mixed_time_contDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05587536-5c8c-72a9-86a9-9205ed81d1ed",
  "kind": "theorem",
  "lexical_name": "mixed_time_contDiff",
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
  "slug": "mixed-time-contdiff--ff936c93174e0c659e5be3f7",
  "source": {
    "blob": "aaa535b27615ca1a6ea98d8daf489de433f7e9da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 91,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RootActualDoubleAdjointTransfer/Variant842776e88328425d106a6bf150bb68afe65c94cf83bfd0000e20418b4c47ecda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff936c93174e0c659e5be3f769b0b916208ff81ef791a8b2710556cf8efe177e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RootActualDoubleAdjointTransfer/Variant842776e88328425d106a6bf150bb68afe65c94cf83bfd0000e20418b4c47ecda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05587536-5c8c-72a9-86a9-9205ed81d1ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mixed_time_contDiff {A : ℝ} (hA : 0 < A) (s : ℝ) :
    ContDiff ℝ 1 (fun t => actualLogMixedDensity A t s) := by
  have h0 := jet_contDiff_one hA 0 (by norm_num)
  have h2 := jet_contDiff_one hA 2 (by norm_num)
  simp only [iteratedDeriv_zero] at h0
  unfold actualLogMixedDensity
  fun_prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RootActualDoubleAdjointTransfer/Variant842776e88328425d106a6bf150bb68afe65c94cf83bfd0000e20418b4c47ecda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RootActualDoubleAdjointTransfer/Variant842776e88328425d106a6bf150bb68afe65c94cf83bfd0000e20418b4c47ecda.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aaa535b27615ca1a6ea98d8daf489de433f7e9da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
