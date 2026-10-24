# height_width_shape_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2f8b539-1359-f3c7-3248-e8c5af556096",
  "kind": "theorem",
  "lexical_name": "height_width_shape_product",
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
  "slug": "height-width-shape-product--0186eb8491d249345b8298f7",
  "source": {
    "blob": "1bd1df9d26573705a29e5ea818ceb63bbaaf6d54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 28,
    "path": "GRWTSK/Analysis/DyadicShapeHybrid/Variant0bf7e18937664abe06781e4f6446faa630294d8d8f3635fb653b5ffd8ccb27a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0186eb8491d249345b8298f78e575d9c5e4742e32bb21406433b81c6d92d2208",
  "verification": {
    "reference": "docs/verification/Analysis/DyadicShapeHybrid/Variant0bf7e18937664abe06781e4f6446faa630294d8d8f3635fb653b5ffd8ccb27a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2f8b539-1359-f3c7-3248-e8c5af556096`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem height_width_shape_product {X theta lambda sigma H W delta Ch Cw Cd : ℝ}
    (hX : 0 < X) (_hH : 0 ≤ H) (hW : 0 ≤ W) (hd : 0 ≤ delta)
    (hCh : 0 ≤ Ch) (hCw : 0 ≤ Cw) (_hCd : 0 ≤ Cd)
    (hh : H ≤ Ch * X ^ theta) (hw : W ≤ Cw * X ^ (lambda - 3 / 2))
    (hs : delta ≤ Cd * X ^ (-sigma)) :
    H * W * delta ≤ (Ch * Cw * Cd) * X ^ hybridExponent theta lambda sigma := by
  have hhw := mul_le_mul hh hw hW (mul_nonneg hCh (Real.rpow_nonneg hX.le _))
  have htotal := mul_le_mul hhw hs hd
    (mul_nonneg (mul_nonneg hCh (Real.rpow_nonneg hX.le _))
      (mul_nonneg hCw (Real.rpow_nonneg hX.le _)))
  have he : theta + (lambda - 3 / 2) + -sigma = hybridExponent theta lambda sigma := by
    unfold hybridExponent
    ring
  calc
    _ ≤ (Ch * X ^ theta) * (Cw * X ^ (lambda - 3 / 2)) * (Cd * X ^ (-sigma)) := htotal
    _ = (Ch * Cw * Cd) * (X ^ theta * X ^ (lambda - 3 / 2) * X ^ (-sigma)) := by ring
    _ = _ := by rw [← Real.rpow_add hX, ← Real.rpow_add hX, he]

set_option maxHeartbeats 800000 in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/DyadicShapeHybrid/Variant0bf7e18937664abe06781e4f6446faa630294d8d8f3635fb653b5ffd8ccb27a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/DyadicShapeHybrid/Variant0bf7e18937664abe06781e4f6446faa630294d8d8f3635fb653b5ffd8ccb27a1.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bd1df9d26573705a29e5ea818ceb63bbaaf6d54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
