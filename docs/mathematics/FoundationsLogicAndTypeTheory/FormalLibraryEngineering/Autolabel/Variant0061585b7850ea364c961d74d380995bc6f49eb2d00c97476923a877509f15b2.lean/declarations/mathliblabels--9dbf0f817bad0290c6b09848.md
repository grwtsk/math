# mathlibLabels

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:daa8a382a867f5e431d0168c4d2fe8f2f7138f063580ec34ba81b0a9501390fa",
  "kind": "def",
  "lexical_name": "mathlibLabels",
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
  "slug": "mathliblabels--9dbf0f817bad0290c6b09848",
  "source": {
    "blob": "1cea174d649370c31b23ee606c2959dce31ec43c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 84,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variant0061585b7850ea364c961d74d380995bc6f49eb2d00c97476923a877509f15b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9dbf0f817bad0290c6b098481b18c866c0287c1a673580ea775d7196a1c4eac9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variant0061585b7850ea364c961d74d380995bc6f49eb2d00c97476923a877509f15b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:daa8a382a867f5e431d0168c4d2fe8f2f7138f063580ec34ba81b0a9501390fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mathlibLabels : Array Label := #[
  { label := "t-algebra",
    dirs := #[
      "Mathlib" / "Algebra",
      "Mathlib" / "FieldTheory",
      "Mathlib" / "RingTheory",
      "Mathlib" / "GroupTheory",
      "Mathlib" / "RepresentationTheory",
      "Mathlib" / "LinearAlgebra"] },
  { label := "t-algebraic-geometry",
    dirs := #[
      "Mathlib" / "AlgebraicGeometry",
      "Mathlib" / "Geometry" / "RingedSpace"] },
  { label := "t-analysis" },
  { label := "t-category-theory" },
  { label := "t-combinatorics" },
  { label := "t-computability" },
  { label := "t-condensed" },
  { label := "t-data"
    dirs := #[
      "Mathlib" / "Control",
      "Mathlib" / "Data",] },
  { label := "t-differential-geometry",
    dirs := #["Mathlib" / "Geometry" / "Manifold"] },
  { label := "t-dynamics" },
  { label := "t-euclidean-geometry",
    dirs := #["Mathlib" / "Geometry" / "Euclidean"] },
  { label := "t-geometric-group-theory",
    dirs := #["Mathlib" / "Geometry" / "Group"] },
  { label := "t-linter",
    dirs := #["Mathlib" / "Tactic" / "Linter"] },
  { label := "t-logic",
    dirs := #[
      "Mathlib" / "Logic",
      "Mathlib" / "ModelTheory"] },
  { label := "t-measure-probability",
    dirs := #[
      "Mathlib" / "MeasureTheory",
      "Mathlib" / "Probability",
      "Mathlib" / "InformationTheory"] },
  { label := "t-meta",
    dirs := #[
      "Mathlib" / "Lean",
      "Mathlib" / "Mathport",
      "Mathlib" / "Tactic",
      "Mathlib" / "Util"],
    exclusions := #["Mathlib" / "Tactic" / "Linter"] },
  { label := "t-number-theory" },
  { label := "t-order" },
  { label := "t-set-theory" },
  { label := "t-topology",
    dirs := #[
      "Mathlib" / "Topology",
      "Mathlib" / "AlgebraicTopology"] },
  { label := "CI",
    dirs := #[".github"] },
  { label := "IMO",
    dirs := #["Archive" / "Imo"] },
  { label := "dependency-bump",
    dirs := #["lake-manifest.json"] } ]

/-- Exceptions inside `Mathlib/` which are not covered by any label. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variant0061585b7850ea364c961d74d380995bc6f49eb2d00c97476923a877509f15b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variant0061585b7850ea364c961d74d380995bc6f49eb2d00c97476923a877509f15b2.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cea174d649370c31b23ee606c2959dce31ec43c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
