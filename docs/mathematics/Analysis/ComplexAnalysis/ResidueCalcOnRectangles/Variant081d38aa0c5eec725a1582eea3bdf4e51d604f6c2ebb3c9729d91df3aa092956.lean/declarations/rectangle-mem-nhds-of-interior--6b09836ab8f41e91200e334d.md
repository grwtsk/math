# rectangle_mem_nhds_of_interior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1f0119d42de0d67b003b84a66cb7eddc6e16d6d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 961,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/081d38aa0c5eec725a1582eea3bdf4e51d604f6c2ebb3c9729d91df3aa092956.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3cad64fd-17cb-824c-4039-ed27db6b72ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4988ca80-ef1b-5a84-f066-a80f1d31e45d",
  "kind": "lemma",
  "lexical_name": "rectangle_mem_nhds_of_interior",
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
  "slug": "rectangle-mem-nhds-of-interior--6b09836ab8f41e91200e334d",
  "source": {
    "blob": "1f0119d42de0d67b003b84a66cb7eddc6e16d6d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 980,
    "line": 961,
    "path": "GRWTSK/Analysis/ComplexAnalysis/ResidueCalcOnRectangles/Variant081d38aa0c5eec725a1582eea3bdf4e51d604f6c2ebb3c9729d91df3aa092956.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b09836ab8f41e91200e334d2fc85b29c66803b2b7b4d9fbd8e62e27d56eabb4",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/ResidueCalcOnRectangles/Variant081d38aa0c5eec725a1582eea3bdf4e51d604f6c2ebb3c9729d91df3aa092956.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4988ca80-ef1b-5a84-f066-a80f1d31e45d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 961–980.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma rectangle_mem_nhds_of_interior {z w p : ℂ}
    (zRe_le_wRe : z.re ≤ w.re) (zIm_le_wIm : z.im ≤ w.im)
    (hpR : p ∈ Rectangle z w) (hpnot : p ∉ RectangleBorder z w) :
    Rectangle z w ∈ nhds p := by
  rw [mem_Rect zRe_le_wRe zIm_le_wIm] at hpR
  have hp_re_left : z.re < p.re :=
    lt_of_le_of_ne hpR.1 fun hEq => hpnot
      (by simp [RectangleBorder, hEq, hpR.2.2.1, hpR.2.2.2, zIm_le_wIm, mem_reProdIm])
  have hp_re_right : p.re < w.re :=
    lt_of_le_of_ne hpR.2.1 fun hEq => hpnot
      (by simp [RectangleBorder, hEq, hpR.2.2.1, hpR.2.2.2, zIm_le_wIm, mem_reProdIm])
  have hp_im_left : z.im < p.im :=
    lt_of_le_of_ne hpR.2.2.1 fun hEq => hpnot
      (by simp [RectangleBorder, hEq, hpR.1, hpR.2.1, zRe_le_wRe, mem_reProdIm])
  have hp_im_right : p.im < w.im :=
    lt_of_le_of_ne hpR.2.2.2 fun hEq => hpnot
      (by simp [RectangleBorder, hEq, hpR.1, hpR.2.1, zRe_le_wRe, mem_reProdIm])
  rw [rectangle_mem_nhds_iff, mem_reProdIm, Set.uIoo_of_le zRe_le_wRe, Set.uIoo_of_le zIm_le_wIm]
  exact ⟨⟨hp_re_left, hp_re_right⟩, ⟨hp_im_left, hp_im_right⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/ResidueCalcOnRectangles/Variant081d38aa0c5eec725a1582eea3bdf4e51d604f6c2ebb3c9729d91df3aa092956.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/ResidueCalcOnRectangles/Variant081d38aa0c5eec725a1582eea3bdf4e51d604f6c2ebb3c9729d91df3aa092956.lean#L961).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f0119d42de0d67b003b84a66cb7eddc6e16d6d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
