# headRemainder_abs_lt_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d838d14-e454-2c15-5d70-b4a374e2d74f",
  "kind": "theorem",
  "lexical_name": "headRemainder_abs_lt_three",
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
  "slug": "headremainder-abs-lt-three--f058c41fe90ca8524c7a5acb",
  "source": {
    "blob": "d412f8794494be78d7155563dc84ade26664108e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 209,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MonotoneSourceReadout/Varianta0d496e4739e797cd122c9ecb985c83b65dfa6778c2bcb4c5dc534161ea55735.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f058c41fe90ca8524c7a5acbc4ab58ae9e5e8a96164cfe3d07b8089c00af57ee",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MonotoneSourceReadout/Varianta0d496e4739e797cd122c9ecb985c83b65dfa6778c2bcb4c5dc534161ea55735.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d838d14-e454-2c15-5d70-b4a374e2d74f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem headRemainder_abs_lt_three (A : ℝ) (hA : 1 ≤ A) : |headRemainder A| < 3 := by
  have hg : gap < (121 / 1000 : ℝ) := by
    unfold gap onset
    linarith [Real.log_two_lt_d9, gamma_gt_five_seventy_three_thousandths]
  have hs : Real.sqrt 2 < (99 / 70 : ℝ) := by
    have hh := Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 2)
    have h0 := Real.sqrt_nonneg 2
    nlinarith
  have h := headRemainder_abs_le A hA
  have hp := mul_lt_mul_of_pos_right hs (show 0 < 2 + gap by linarith [gap_pos])
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MonotoneSourceReadout/Varianta0d496e4739e797cd122c9ecb985c83b65dfa6778c2bcb4c5dc534161ea55735.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MonotoneSourceReadout/Varianta0d496e4739e797cd122c9ecb985c83b65dfa6778c2bcb4c5dc534161ea55735.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d412f8794494be78d7155563dc84ade26664108e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
