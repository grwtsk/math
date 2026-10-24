# V_hasDerivAt_positive_pole

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "25ffbc6faea99aa010fa5c347b3a43f371133fdf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 179,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/435f1ecce60686b4984216819310bb31ade77ca9e1701c67557ff57dc6c25547.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a9fd4eba-5060-188c-6679-8f9793c9ac50",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa5a55f8-f310-8682-9f81-50a4835fde2d",
  "kind": "theorem",
  "lexical_name": "V_hasDerivAt_positive_pole",
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
  "slug": "v-hasderivat-positive-pole--1ad1343aba6c905151b70e85",
  "source": {
    "blob": "25ffbc6faea99aa010fa5c347b3a43f371133fdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 179,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedSourceFilter/Variant435f1ecce60686b4984216819310bb31ade77ca9e1701c67557ff57dc6c25547.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ad1343aba6c905151b70e852234b075a3fe3e158507dbf606d5182d01e04a90",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FixedSourceFilter/Variant435f1ecce60686b4984216819310bb31ade77ca9e1701c67557ff57dc6c25547.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa5a55f8-f310-8682-9f81-50a4835fde2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem V_hasDerivAt_positive_pole :
    HasDerivAt V (positivePoleSlope : ℂ) (1 / 2) := by
  have hd := (removedFilter_differentiableAt (1 / 2) (by norm_num)).hasDerivAt
  have hpoly := ((hasDerivAt_id (1 / 2 : ℂ)).pow 2).sub_const (1 / 4)
  have hprod := hpoly.mul hd
  have h : HasDerivAt (fun z : ℂ ↦ (z ^ 2 - 1 / 4) * removedFilter z)
      (positivePoleSlope : ℂ) (1 / 2) := by
    convert hprod using 1 <;> first | rfl | norm_num [removedFilter_positive_pole]
  apply h.congr_of_eventuallyEq
  filter_upwards [isOpen_compl_singleton.mem_nhds (by norm_num : (1 / 2 : ℂ) ≠ 0)] with z hz
  exact V_eq_removedFilter z hz

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FixedSourceFilter/Variant435f1ecce60686b4984216819310bb31ade77ca9e1701c67557ff57dc6c25547.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedSourceFilter/Variant435f1ecce60686b4984216819310bb31ade77ca9e1701c67557ff57dc6c25547.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25ffbc6faea99aa010fa5c347b3a43f371133fdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
