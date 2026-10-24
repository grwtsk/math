# affineCover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d7193bfd440228c17e1444724edb824fd6c0de4e1e77e37f0488d99767e832d",
  "kind": "def",
  "lexical_name": "affineCover",
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
  "slug": "affinecover--71e9627b49ccf11d2809072a",
  "source": {
    "blob": "66cb4afeae676271592ffb515e0707f44280a402",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 104,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantf8a3691a8e72b4c2a31f739d425581f9316f28b60dd00e66695ee70aafa09726.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71e9627b49ccf11d2809072ad3ef3f1da2033d896db5312a7885704ba2d31983",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Scheme/Variantf8a3691a8e72b4c2a31f739d425581f9316f28b60dd00e66695ee70aafa09726.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d7193bfd440228c17e1444724edb824fd6c0de4e1e77e37f0488d99767e832d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def affineCover (X : Scheme) : OpenCover X where
  J := X.carrier
  obj x := Spec.obj <| Opposite.op (X.local_affine x).choose_spec.choose
  map x :=
    ((X.local_affine x).choose_spec.choose_spec.some.inv ≫ X.toLocallyRingedSpace.ofRestrict _ : _)
  f x := x
  IsOpen x := by
    apply (config := { allowSynthFailures := true }) PresheafedSpace.IsOpenImmersion.comp
    apply PresheafedSpace.IsOpenImmersion.ofRestrict
  Covers := by
    intro x
    erw [coe_comp]
    rw [Set.range_comp, Set.range_iff_surjective.mpr, Set.image_univ]
    erw [Subtype.range_coe_subtype]
    exact (X.local_affine x).choose.2
    rw [← TopCat.epi_iff_surjective]
    change Epi ((SheafedSpace.forget _).map (LocallyRingedSpace.forgetToSheafedSpace.map _))
    infer_instance
#align algebraic_geometry.Scheme.affine_cover AlgebraicGeometry.Scheme.affineCover

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variantf8a3691a8e72b4c2a31f739d425581f9316f28b60dd00e66695ee70aafa09726.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantf8a3691a8e72b4c2a31f739d425581f9316f28b60dd00e66695ee70aafa09726.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66cb4afeae676271592ffb515e0707f44280a402` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
