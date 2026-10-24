# isFractionPrelocal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:20da405b4ed63686057d6e3f21cbc56634f9cc0c0af45fd7b2eba134f39e3666",
  "kind": "def",
  "lexical_name": "isFractionPrelocal",
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
  "slug": "isfractionprelocal--5024e2592a749abde4103f98",
  "source": {
    "blob": "4a568f6bba0307bac003a3a5ae4eab9ef6313a07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 86,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5024e2592a749abde4103f98b7bb4a8fd9ff64e2024efa9958acd25f5ee02be1",
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

Occurrence: `declaration:20da405b4ed63686057d6e3f21cbc56634f9cc0c0af45fd7b2eba134f39e3666`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isFractionPrelocal : PrelocalPredicate fun x : ProjectiveSpectrum.top 𝒜 => at x where
  pred f := IsFraction f
  res := by rintro V U i f ⟨j, r, s, w⟩; exact ⟨j, r, s, fun y => w (i y)⟩
#align algebraic_geometry.projective_spectrum.structure_sheaf.is_fraction_prelocal AlgebraicGeometry.ProjectiveSpectrum.StructureSheaf.isFractionPrelocal

/-- We will define the structure sheaf as the subsheaf of all dependent functions in
`Π x : U, HomogeneousLocalization 𝒜 x` consisting of those functions which can locally be expressed
as a ratio of `A` of same grading.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a568f6bba0307bac003a3a5ae4eab9ef6313a07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
