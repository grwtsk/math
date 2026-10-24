# quasiCompact_isStableUnderBaseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd73b998b3361ef71a01bf9bbc2d34f95d59a2cf22fb8cccee270b921c3b3c39",
  "kind": "instance",
  "lexical_name": "quasiCompact_isStableUnderBaseChange",
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
  "slug": "quasicompact-isstableunderbasechange--a3b758dfc243ddfacffbae7c",
  "source": {
    "blob": "d0089e9863bc5f1bbe575d893ef51e48d00cd625",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 172,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3b758dfc243ddfacffbae7c1debaa971afa82a4d5433451fe13467a97d23fed",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd73b998b3361ef71a01bf9bbc2d34f95d59a2cf22fb8cccee270b921c3b3c39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance quasiCompact_isStableUnderBaseChange :
    MorphismProperty.IsStableUnderBaseChange @QuasiCompact := by
  letI := HasAffineProperty.isLocal_affineProperty @QuasiCompact
  apply HasAffineProperty.isStableUnderBaseChange
  apply AffineTargetMorphismProperty.IsStableUnderBaseChange.mk
  intro X Y S _ _ f g h
  let 𝒰 := Scheme.Pullback.openCoverOfRight Y.affineCover.finiteSubcover f g
  have : Finite 𝒰.J := by dsimp [𝒰]; infer_instance
  have : ∀ i, CompactSpace (𝒰.obj i) := by intro i; dsimp [𝒰]; infer_instance
  exact 𝒰.compactSpace

variable {Z : Scheme.{u}}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0089e9863bc5f1bbe575d893ef51e48d00cd625` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
