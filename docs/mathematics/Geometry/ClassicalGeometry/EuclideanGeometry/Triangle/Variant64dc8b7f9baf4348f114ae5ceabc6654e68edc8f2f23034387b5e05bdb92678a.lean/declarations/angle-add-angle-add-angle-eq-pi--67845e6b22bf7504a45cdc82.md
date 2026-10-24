# angle_add_angle_add_angle_eq_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "252595b3e38c1ef65ffdb991f790cd82b040e4ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 285,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/64dc8b7f9baf4348f114ae5ceabc6654e68edc8f2f23034387b5e05bdb92678a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88f057af-f722-61ea-74fe-3ebae0d2959b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c07b4d52-4dea-85a6-c2c6-221dc07bcbcd",
  "kind": "theorem",
  "lexical_name": "angle_add_angle_add_angle_eq_pi",
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
  "slug": "angle-add-angle-add-angle-eq-pi--67845e6b22bf7504a45cdc82",
  "source": {
    "blob": "252595b3e38c1ef65ffdb991f790cd82b040e4ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 285,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant64dc8b7f9baf4348f114ae5ceabc6654e68edc8f2f23034387b5e05bdb92678a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67845e6b22bf7504a45cdc82d735dd30e5ec6c9d42a1354fabece0e7629e607f",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant64dc8b7f9baf4348f114ae5ceabc6654e68edc8f2f23034387b5e05bdb92678a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c07b4d52-4dea-85a6-c2c6-221dc07bcbcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angle_add_angle_add_angle_eq_pi {p₁ p₂ p₃ : P} (h2 : p₂ ≠ p₁) (h3 : p₃ ≠ p₁) :
    ∠ p₁ p₂ p₃ + ∠ p₂ p₃ p₁ + ∠ p₃ p₁ p₂ = π := by
  rw [add_assoc, add_comm, add_comm (∠ p₂ p₃ p₁), angle_comm p₂ p₃ p₁]
  unfold angle
  rw [← angle_neg_neg (p₁ -ᵥ p₃), ← angle_neg_neg (p₁ -ᵥ p₂), neg_vsub_eq_vsub_rev,
    neg_vsub_eq_vsub_rev, neg_vsub_eq_vsub_rev, neg_vsub_eq_vsub_rev, ←
    vsub_sub_vsub_cancel_right p₃ p₂ p₁, ← vsub_sub_vsub_cancel_right p₂ p₃ p₁]
  exact angle_add_angle_sub_add_angle_sub_eq_pi (fun he => h3 (vsub_eq_zero_iff_eq.1 he)) fun he =>
    h2 (vsub_eq_zero_iff_eq.1 he)

/-- The **sum of the angles of a triangle** (possibly degenerate, where the triangle is a line),
oriented angles at point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant64dc8b7f9baf4348f114ae5ceabc6654e68edc8f2f23034387b5e05bdb92678a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant64dc8b7f9baf4348f114ae5ceabc6654e68edc8f2f23034387b5e05bdb92678a.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `252595b3e38c1ef65ffdb991f790cd82b040e4ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
