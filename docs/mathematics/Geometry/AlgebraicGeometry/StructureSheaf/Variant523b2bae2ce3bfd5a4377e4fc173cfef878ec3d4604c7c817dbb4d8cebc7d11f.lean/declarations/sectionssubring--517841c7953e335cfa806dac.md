# sectionsSubring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f72c0de1041e5d13622a2ab548da4a2b7d6983d5a469a8004f68eee3f76a3422",
  "kind": "def",
  "lexical_name": "sectionsSubring",
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
  "slug": "sectionssubring--517841c7953e335cfa806dac",
  "source": {
    "blob": "1f870aa82f0e8310c65da76dfc818c81b8a89500",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 170,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/StructureSheaf/Variant523b2bae2ce3bfd5a4377e4fc173cfef878ec3d4604c7c817dbb4d8cebc7d11f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:517841c7953e335cfa806dac5e1078e4ababc7042aecb56ea6e51eafdd9f4da2",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/StructureSheaf/Variant523b2bae2ce3bfd5a4377e4fc173cfef878ec3d4604c7c817dbb4d8cebc7d11f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f72c0de1041e5d13622a2ab548da4a2b7d6983d5a469a8004f68eee3f76a3422`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sectionsSubring (U : (Opens (ProjectiveSpectrum.top 𝒜))ᵒᵖ) :
    Subring (∀ x : U.unop, at x.1) where
  carrier := {f | (isLocallyFraction 𝒜).pred f}
  zero_mem' := zero_mem' U
  one_mem' := one_mem' U
  add_mem' := add_mem' U _ _
  neg_mem' := neg_mem' U _
  mul_mem' := mul_mem' U _ _

end

/-- The structure sheaf (valued in `Type`, not yet `CommRing`) is the subsheaf consisting of
functions satisfying `isLocallyFraction`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/StructureSheaf/Variant523b2bae2ce3bfd5a4377e4fc173cfef878ec3d4604c7c817dbb4d8cebc7d11f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/StructureSheaf/Variant523b2bae2ce3bfd5a4377e4fc173cfef878ec3d4604c7c817dbb4d8cebc7d11f.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f870aa82f0e8310c65da76dfc818c81b8a89500` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
