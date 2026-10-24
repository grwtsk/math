# CommShift₂Int

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:15019bd6b1a921393142b5cbb997cc00129a7cad15c13103574d21d21adbd14c",
  "kind": "abbrev",
  "lexical_name": "CommShift₂Int",
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
  "slug": "commshift-int--d20e66f39b28cb3225b49bdd",
  "source": {
    "blob": "4c5182fd9ca2cb1b12301ed0e77f71bfb898a14a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 208,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShiftTwo/Variant6f5552e20500087309102925bd1d1dbc14f4539c687a104325b4780825070d57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d20e66f39b28cb3225b49bddc2d3f7e1f298932128eba129c0f662afe50040d3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShiftTwo/Variant6f5552e20500087309102925bd1d1dbc14f4539c687a104325b4780825070d57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:15019bd6b1a921393142b5cbb997cc00129a7cad15c13103574d21d21adbd14c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev CommShift₂Int [HasShift C₁ ℤ] [HasShift C₂ ℤ] [HasShift D ℤ] [Preadditive D]
    [∀ (n : ℤ), (shiftFunctor D n).Additive]
    {G₁ G₂ : C₁ ⥤ C₂ ⥤ D} [G₁.CommShift₂Int] [G₂.CommShift₂Int] (τ : G₁ ⟶ G₂) : Prop :=
  NatTrans.CommShift₂ τ .int

end NatTrans

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShiftTwo/Variant6f5552e20500087309102925bd1d1dbc14f4539c687a104325b4780825070d57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShiftTwo/Variant6f5552e20500087309102925bd1d1dbc14f4539c687a104325b4780825070d57.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c5182fd9ca2cb1b12301ed0e77f71bfb898a14a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
