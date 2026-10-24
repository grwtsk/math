# openToLocalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:007a8e93721980a48d4bc2be5b6b8717b3cdbd6b291ad34b7879908b206bee98",
  "kind": "def",
  "lexical_name": "openToLocalization",
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
  "slug": "opentolocalization--b199251f041a615d1b2f09b6",
  "source": {
    "blob": "4a568f6bba0307bac003a3a5ae4eab9ef6313a07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 261,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b199251f041a615d1b2f09b6acdd48f5457954a405ca74fc1ffe6c360bb4cd2b",
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

Occurrence: `declaration:007a8e93721980a48d4bc2be5b6b8717b3cdbd6b291ad34b7879908b206bee98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def openToLocalization (U : Opens (ProjectiveSpectrum.top 𝒜)) (x : ProjectiveSpectrum.top 𝒜)
    (hx : x ∈ U) : (Proj.structureSheaf 𝒜).1.obj (op U) ⟶ CommRingCat.of (at x) where
  toFun s := (s.1 ⟨x, hx⟩ : _)
  map_one' := rfl
  map_mul' _ _ := rfl
  map_zero' := rfl
  map_add' _ _ := rfl
#align algebraic_geometry.open_to_localization AlgebraicGeometry.openToLocalization

/-- The ring homomorphism from the stalk of the structure sheaf of `Proj` at a point corresponding
to a homogeneous prime ideal `x` to the *homogeneous localization* at `x`,
formed by gluing the `openToLocalization` maps. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a568f6bba0307bac003a3a5ae4eab9ef6313a07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
