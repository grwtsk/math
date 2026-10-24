# wbtw_smul_vadd_smul_vadd_of_nonpos_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d042ac2-fb3a-6326-a8d1-a3c1b3ac2e05",
  "kind": "theorem",
  "lexical_name": "wbtw_smul_vadd_smul_vadd_of_nonpos_of_nonneg",
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
  "slug": "wbtw-smul-vadd-smul-vadd-of-nonpos-of-nonneg--2fcf89ddc2e81eb18d9aece7",
  "source": {
    "blob": "0f5ed38000e915ffae35dabc0c1d8ab94a74909b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 740,
    "line": 735,
    "path": "GRWTSK/Geometry/ConvexGeometry/Between/Variantd94c4a4dea8404f3d94b25de77bb6ea9c31b1442fa62b3f5011c3bcc3dce4f34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fcf89ddc2e81eb18d9aece78210338513573311b220391880430f0dea2d84fc",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Between/Variantd94c4a4dea8404f3d94b25de77bb6ea9c31b1442fa62b3f5011c3bcc3dce4f34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d042ac2-fb3a-6326-a8d1-a3c1b3ac2e05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 735–740.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wbtw_smul_vadd_smul_vadd_of_nonpos_of_nonneg (x : P) (v : V) {r₁ r₂ : R} (hr₁ : r₁ ≤ 0)
    (hr₂ : 0 ≤ r₂) : Wbtw R (r₁ • v +ᵥ x) x (r₂ • v +ᵥ x) := by
  convert wbtw_smul_vadd_smul_vadd_of_nonneg_of_le (r₁ • v +ᵥ x) v (Left.nonneg_neg_iff.2 hr₁)
      (neg_le_sub_iff_le_add.2 ((le_add_iff_nonneg_left r₁).2 hr₂)) using 1 <;>
    simp [sub_smul, ← add_vadd]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Between/Variantd94c4a4dea8404f3d94b25de77bb6ea9c31b1442fa62b3f5011c3bcc3dce4f34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Between/Variantd94c4a4dea8404f3d94b25de77bb6ea9c31b1442fa62b3f5011c3bcc3dce4f34.lean#L735).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f5ed38000e915ffae35dabc0c1d8ab94a74909b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
