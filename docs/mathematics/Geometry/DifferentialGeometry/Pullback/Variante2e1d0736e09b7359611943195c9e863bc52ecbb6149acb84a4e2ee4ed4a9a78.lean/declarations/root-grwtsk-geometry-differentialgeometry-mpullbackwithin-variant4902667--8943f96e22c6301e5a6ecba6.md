# _root_.GRWTSK.Geometry.DifferentialGeometry.MpullbackWithin.Variant490266700e123afbc1ed5af753ccb2fdd333450b439b9732814bf5afdec30564.ContMDiffWithinAt.mpullback_vectorField_preimage_of_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20b7a9cd-88b6-2998-b99a-1850471fb54c",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Geometry.DifferentialGeometry.MpullbackWithin.Variant490266700e123afbc1ed5af753ccb2fdd333450b439b9732814bf5afdec30564.ContMDiffWithinAt.mpullback_vectorField_preimage_of_eq",
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
  "slug": "root-grwtsk-geometry-differentialgeometry-mpullbackwithin-variant4902667--8943f96e22c6301e5a6ecba6",
  "source": {
    "blob": "fe17ad07842a7767de5cc5eb486efbe00dead126",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 584,
    "line": 573,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Pullback/Variante2e1d0736e09b7359611943195c9e863bc52ecbb6149acb84a4e2ee4ed4a9a78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8943f96e22c6301e5a6ecba6918c100bf4c4b9753daa31f896b1ff1ac96c62d7",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Pullback/Variante2e1d0736e09b7359611943195c9e863bc52ecbb6149acb84a4e2ee4ed4a9a78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20b7a9cd-88b6-2998-b99a-1850471fb54c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 573–584.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma _root_.GRWTSK.Geometry.DifferentialGeometry.MpullbackWithin.Variant490266700e123afbc1ed5af753ccb2fdd333450b439b9732814bf5afdec30564.ContMDiffWithinAt.mpullback_vectorField_preimage_of_eq
    (hV : ContMDiffWithinAt I' I'.tangent m (fun (y : M') ↦ (V y : TangentBundle I' M')) t y₀)
    (hf : ContMDiffAt I I' n f x₀) (hf' : (mfderiv I I' f x₀).IsInvertible) (hmn : m + 1 ≤ n)
    (hy₀ : y₀ = f x₀) :
    ContMDiffWithinAt I I.tangent m
      (fun (y : M) ↦ (mpullback I I' f V y : TangentBundle I M)) (f ⁻¹' t) x₀ := by
  subst hy₀
  exact ContMDiffWithinAt.mpullback_vectorField_preimage hV hf hf' hmn

/-- The pullback of a `C^m` vector field by a `C^n` function with invertible derivative and
with `m + 1 ≤ n` is `C^m`.
Version within a set at a point, but with full pullback. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Pullback/Variante2e1d0736e09b7359611943195c9e863bc52ecbb6149acb84a4e2ee4ed4a9a78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Pullback/Variante2e1d0736e09b7359611943195c9e863bc52ecbb6149acb84a4e2ee4ed4a9a78.lean#L573).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe17ad07842a7767de5cc5eb486efbe00dead126` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
