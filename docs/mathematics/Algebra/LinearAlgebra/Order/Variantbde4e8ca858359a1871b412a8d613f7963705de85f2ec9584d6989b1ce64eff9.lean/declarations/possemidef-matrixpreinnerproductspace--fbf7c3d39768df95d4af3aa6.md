# PosSemidef.matrixPreInnerProductSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ff19c09a96f00e04d1dddc3208df35bb3139e3e3dfc3d7ae36df21432abc45c",
  "kind": "abbrev",
  "lexical_name": "PosSemidef.matrixPreInnerProductSpace",
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
  "slug": "possemidef-matrixpreinnerproductspace--fbf7c3d39768df95d4af3aa6",
  "source": {
    "blob": "945e9b211cb510f26e81a84734f78a399563eb19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 301,
    "path": "GRWTSK/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fbf7c3d39768df95d4af3aa65805a001f8a7f5dc209b4e021393c048fe826218",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ff19c09a96f00e04d1dddc3208df35bb3139e3e3dfc3d7ae36df21432abc45c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private abbrev PosSemidef.matrixPreInnerProductSpace {M : Matrix n n 𝕜} (hM : M.PosSemidef) :
    PreInnerProductSpace.Core 𝕜 (Matrix n n 𝕜) where
  inner x y := (y * M * xᴴ).trace
  conj_inner_symm _ _ := by
    simp only [mul_assoc, starRingEnd_apply, ← trace_conjTranspose, conjTranspose_mul,
      conjTranspose_conjTranspose, hM.isHermitian.eq]
  re_inner_nonneg x := RCLike.nonneg_iff.mp (hM.mul_mul_conjTranspose_same x).trace_nonneg |>.1
  add_left := by simp [mul_add]
  smul_left := by simp

set_option backward.privateInPublic true in
set_option backward.privateInPublic.warn false in
/-- A positive definite matrix `M` induces a norm on `Matrix n n 𝕜`
`‖x‖ = sqrt (x * M * xᴴ).trace`. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `945e9b211cb510f26e81a84734f78a399563eb19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
