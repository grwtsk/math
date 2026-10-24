# Proj.structureSheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e4ad86d6775c7f1a630cfb094db6502265993c2391dcb681839ba62983c8034",
  "kind": "def",
  "lexical_name": "Proj.structureSheaf",
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
  "slug": "proj-structuresheaf--bb415b6556d3e90d5b3a7f71",
  "source": {
    "blob": "4a568f6bba0307bac003a3a5ae4eab9ef6313a07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 228,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb415b6556d3e90d5b3a7f71c6e8aac1a6fe5356867df0f700aa58e9ed8f24c4",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e4ad86d6775c7f1a630cfb094db6502265993c2391dcb681839ba62983c8034`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Proj.structureSheaf : Sheaf CommRingCat (ProjectiveSpectrum.top 𝒜) :=
  ⟨structurePresheafInCommRing 𝒜,
    (-- We check the sheaf condition under `forget CommRing`.
          isSheaf_iff_isSheaf_comp
          _ _).mpr
      (isSheaf_of_iso (structurePresheafCompForget 𝒜).symm (structureSheafInType 𝒜).cond)⟩
set_option linter.uppercaseLean3 false in
#align algebraic_geometry.projective_spectrum.Proj.structure_sheaf AlgebraicGeometry.ProjectiveSpectrum.Proj.structureSheaf

end ProjectiveSpectrum

section

open ProjectiveSpectrum ProjectiveSpectrum.StructureSheaf Opens

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a568f6bba0307bac003a3a5ae4eab9ef6313a07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
