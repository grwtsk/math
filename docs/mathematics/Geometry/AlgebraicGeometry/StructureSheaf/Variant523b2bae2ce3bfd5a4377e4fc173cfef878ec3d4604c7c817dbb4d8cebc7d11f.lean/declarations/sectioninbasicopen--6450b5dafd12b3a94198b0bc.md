# sectionInBasicOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec7a8ccf4f81eafeb68509c4ce60ebed0e2e1a70e12ccc959204b8c2c88f2c38",
  "kind": "def",
  "lexical_name": "sectionInBasicOpen",
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
  "slug": "sectioninbasicopen--6450b5dafd12b3a94198b0bc",
  "source": {
    "blob": "1f870aa82f0e8310c65da76dfc818c81b8a89500",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 300,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/StructureSheaf/Variant523b2bae2ce3bfd5a4377e4fc173cfef878ec3d4604c7c817dbb4d8cebc7d11f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6450b5dafd12b3a94198b0bc913a24896cf1e4f5c925e47547b8c68cd85587d0",
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

Occurrence: `declaration:ec7a8ccf4f81eafeb68509c4ce60ebed0e2e1a70e12ccc959204b8c2c88f2c38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sectionInBasicOpen (x : ProjectiveSpectrum.top 𝒜) :
    ∀ f : HomogeneousLocalization.NumDenSameDeg 𝒜 x.asHomogeneousIdeal.toIdeal.primeCompl,
    (Proj.structureSheaf 𝒜).1.obj (op (ProjectiveSpectrum.basicOpen 𝒜 f.den)) :=
  fun f =>
  ⟨fun y => HomogeneousLocalization.mk ⟨f.deg, f.num, f.den, y.2⟩, fun y =>
    ⟨ProjectiveSpectrum.basicOpen 𝒜 f.den, y.2,
      ⟨𝟙 _, ⟨f.deg, ⟨f.num, f.den, _, fun _ => rfl⟩⟩⟩⟩⟩

set_option backward.isDefEq.respectTransparency.types false in
open HomogeneousLocalization in
/-- Given any point `x` and `f` in the homogeneous localization at `x`, there is an element in the
stalk at `x` obtained by `sectionInBasicOpen`. This is the inverse of `stalkToFiberRingHom`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/StructureSheaf/Variant523b2bae2ce3bfd5a4377e4fc173cfef878ec3d4604c7c817dbb4d8cebc7d11f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/StructureSheaf/Variant523b2bae2ce3bfd5a4377e4fc173cfef878ec3d4604c7c817dbb4d8cebc7d11f.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f870aa82f0e8310c65da76dfc818c81b8a89500` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
