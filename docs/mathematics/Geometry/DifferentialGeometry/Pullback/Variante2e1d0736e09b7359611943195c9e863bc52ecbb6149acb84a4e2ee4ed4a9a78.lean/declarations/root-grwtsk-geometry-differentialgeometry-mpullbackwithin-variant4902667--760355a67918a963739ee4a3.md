# _root_.GRWTSK.Geometry.DifferentialGeometry.MpullbackWithin.Variant490266700e123afbc1ed5af753ccb2fdd333450b439b9732814bf5afdec30564.ContMDiffOn.mpullback_vectorField_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d68009bd-1243-d2ef-8d7a-12c4efe307d3",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Geometry.DifferentialGeometry.MpullbackWithin.Variant490266700e123afbc1ed5af753ccb2fdd333450b439b9732814bf5afdec30564.ContMDiffOn.mpullback_vectorField_preimage",
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
  "slug": "root-grwtsk-geometry-differentialgeometry-mpullbackwithin-variant4902667--760355a67918a963739ee4a3",
  "source": {
    "blob": "fe17ad07842a7767de5cc5eb486efbe00dead126",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 618,
    "line": 608,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Pullback/Variante2e1d0736e09b7359611943195c9e863bc52ecbb6149acb84a4e2ee4ed4a9a78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:760355a67918a963739ee4a3a9bc891a64d3abfce2d0e8d47966c48cdb569983",
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

Occurrence: `result:d68009bd-1243-d2ef-8d7a-12c4efe307d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 608–618.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma _root_.GRWTSK.Geometry.DifferentialGeometry.MpullbackWithin.Variant490266700e123afbc1ed5af753ccb2fdd333450b439b9732814bf5afdec30564.ContMDiffOn.mpullback_vectorField_preimage
    (hV : ContMDiffOn I' I'.tangent m (fun (y : M') ↦ (V y : TangentBundle I' M')) t)
    (hf : ContMDiff I I' n f) (hf' : ∀ x ∈ f ⁻¹' t, (mfderiv I I' f x).IsInvertible)
    (hmn : m + 1 ≤ n) :
    ContMDiffOn I I.tangent m
      (fun (y : M) ↦ (mpullback I I' f V y : TangentBundle I M)) (f ⁻¹' t) :=
  fun x₀ hx₀ ↦ ContMDiffWithinAt.mpullback_vectorField_preimage (hV _ hx₀) (hf x₀) (hf' _ hx₀) hmn

/-- The pullback of a `C^m` vector field by a `C^n` function with invertible derivative and
with `m + 1 ≤ n` is `C^m`.
Version at a point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Pullback/Variante2e1d0736e09b7359611943195c9e863bc52ecbb6149acb84a4e2ee4ed4a9a78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Pullback/Variante2e1d0736e09b7359611943195c9e863bc52ecbb6149acb84a4e2ee4ed4a9a78.lean#L608).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe17ad07842a7767de5cc5eb486efbe00dead126` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
