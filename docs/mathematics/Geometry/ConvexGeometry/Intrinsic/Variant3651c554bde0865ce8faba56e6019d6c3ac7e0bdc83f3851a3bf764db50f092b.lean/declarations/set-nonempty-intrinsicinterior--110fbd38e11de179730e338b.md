# Set.Nonempty.intrinsicInterior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae0676343f5d915d5c15cec6b4a26d15f573a5f7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 450,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/3651c554bde0865ce8faba56e6019d6c3ac7e0bdc83f3851a3bf764db50f092b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f4279fa5-6f77-dcf0-b231-41437cfff127",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1cdc543e-e32c-1f83-ac77-4d65f843f8e5",
  "kind": "theorem",
  "lexical_name": "Set.Nonempty.intrinsicInterior",
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
  "slug": "set-nonempty-intrinsicinterior--110fbd38e11de179730e338b",
  "source": {
    "blob": "ae0676343f5d915d5c15cec6b4a26d15f573a5f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 462,
    "line": 450,
    "path": "GRWTSK/Geometry/ConvexGeometry/Intrinsic/Variant3651c554bde0865ce8faba56e6019d6c3ac7e0bdc83f3851a3bf764db50f092b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:110fbd38e11de179730e338b0a3937ce24bf3415fd31b050e9e0884c08ad8ca8",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Intrinsic/Variant3651c554bde0865ce8faba56e6019d6c3ac7e0bdc83f3851a3bf764db50f092b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1cdc543e-e32c-1f83-ac77-4d65f843f8e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–462.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Set.Nonempty.intrinsicInterior (hscv : Convex ℝ s) (hsne : s.Nonempty) :
    (intrinsicInterior ℝ s).Nonempty := by
  have := hsne.coe_sort
  obtain ⟨p, hp⟩ := hsne
  let p' : _root_.affineSpan ℝ s := ⟨p, subset_affineSpan _ _ hp⟩
  rw [intrinsicInterior, image_nonempty,
    aux (AffineIsometryEquiv.constVSub ℝ p').symm.toHomeomorph,
    Convex.interior_nonempty_iff_affineSpan_eq_top, AffineIsometryEquiv.coe_toHomeomorph, ←
    AffineIsometryEquiv.coe_toAffineEquiv, ← comap_span, affineSpan_coe_preimage_eq_top, comap_top]
  exact hscv.affine_preimage
    ((_root_.affineSpan ℝ s).subtype.comp
      (AffineIsometryEquiv.constVSub ℝ p').symm.toAffineEquiv.toAffineMap)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Intrinsic/Variant3651c554bde0865ce8faba56e6019d6c3ac7e0bdc83f3851a3bf764db50f092b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Intrinsic/Variant3651c554bde0865ce8faba56e6019d6c3ac7e0bdc83f3851a3bf764db50f092b.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae0676343f5d915d5c15cec6b4a26d15f573a5f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
