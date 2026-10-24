# isClosed_image_of_isClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:067370dd-a328-d1a7-1e46-2aa51fa69a52",
  "kind": "theorem",
  "lexical_name": "isClosed_image_of_isClosed",
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
  "slug": "isclosed-image-of-isclosed--b6a92fd60f85836642e890e5",
  "source": {
    "blob": "cbbccbe984aec68ded8909d9aad9485261207caf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 222,
    "path": "GRWTSK/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6a92fd60f85836642e890e5a8c7bdb341dd28ab9920b919e662951b0c7e6b8c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:067370dd-a328-d1a7-1e46-2aa51fa69a52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosed_image_of_isClosed {s : Set M} (hsc : IsClosed s) (hs : s ⊆ support f) :
    IsClosed (extChartAt I c '' s) := by
  rw [f.image_eq_inter_preimage_of_subset_support hs]
  refine' ContinuousOn.preimage_closed_of_closed
    ((continuousOn_extChartAt_symm _ _).mono f.closedBall_subset) _ hsc
  exact IsClosed.inter isClosed_ball I.closed_range
#align smooth_bump_function.is_closed_image_of_is_closed SmoothBumpFunction.isClosed_image_of_isClosed

/-- If `f` is a smooth bump function and `s` closed subset of the support of `f` (i.e., of the open
ball of radius `f.rOut`), then there exists `0 < r < f.rOut` such that `s` is a subset of the open
ball of radius `r`. Formally, `s ⊆ e.source ∩ e ⁻¹' (ball (e c) r)`, where `e = extChartAt I c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbbccbe984aec68ded8909d9aad9485261207caf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
