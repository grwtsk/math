# arg_neg_eq_arg_add_pi_of_im_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d3a1890-65c3-89a6-7b73-cb2e5bd1cbd4",
  "kind": "theorem",
  "lexical_name": "arg_neg_eq_arg_add_pi_of_im_neg",
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
  "slug": "arg-neg-eq-arg-add-pi-of-im-neg--15a2f5900e4fe808697a499a",
  "source": {
    "blob": "e9b724a5695ccbff3bee2b92c43adb9ed80fa7ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 383,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant4ad415c48f9aa21658cf4d413c329961436d4dd8c2ba5a4e338119c81ee21112.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15a2f5900e4fe808697a499a7d258f31e2a0d3d64a6566fc169f1df5ce870e34",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant4ad415c48f9aa21658cf4d413c329961436d4dd8c2ba5a4e338119c81ee21112.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d3a1890-65c3-89a6-7b73-cb2e5bd1cbd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arg_neg_eq_arg_add_pi_of_im_neg {x : ℂ} (hi : x.im < 0) : arg (-x) = arg x + π := by
  rw [arg_of_im_neg hi, arg_of_im_pos (show 0 < (-x).im from Left.neg_pos_iff.2 hi)]
  simp [neg_div, Real.arccos_neg, add_comm, ← sub_eq_add_neg]
#align complex.arg_neg_eq_arg_add_pi_of_im_neg Complex.arg_neg_eq_arg_add_pi_of_im_neg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant4ad415c48f9aa21658cf4d413c329961436d4dd8c2ba5a4e338119c81ee21112.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant4ad415c48f9aa21658cf4d413c329961436d4dd8c2ba5a4e338119c81ee21112.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9b724a5695ccbff3bee2b92c43adb9ed80fa7ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
