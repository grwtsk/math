# singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64ece1aad6dc1046acdc1bad5cc4cc14ba01e166825f19bf6dce0dc54a52b8be",
  "kind": "abbrev",
  "lexical_name": "singleton",
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
  "slug": "singleton--52a333921aaf4b5ad1e71864",
  "source": {
    "blob": "17b09ef7bfcebda13fd61fb4ce3f6cacd3d29878",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 307,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant90e4767b8e4504c4c4154d2c355b01b3f343ce93e5915bdcdaacff968b189293.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52a333921aaf4b5ad1e71864bf4a148ac905651e3b1d891ecb812ae051a6f053",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant90e4767b8e4504c4c4154d2c355b01b3f343ce93e5915bdcdaacff968b189293.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64ece1aad6dc1046acdc1bad5cc4cc14ba01e166825f19bf6dce0dc54a52b8be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev singleton (j : J) : Subtype (IsCardinalFilteredAndHasCardinalLT κ₁ κ₂ J) :=
  ⟨{j}, by
    let : OrderTop ({j} : Set J) :=
      { top := ⟨j, by simp⟩
        le_top := by simp }
    exact isCardinalFiltered_of_hasTerminal _ _,
    hasCardinalLT_of_finite _ _ (IsRegular.aleph0_le Fact.out)⟩

/-- A pair `{j ≤ j'}`, as a term in
`IsCardinalFilteredAndHasCardinalLT κ₁ κ₂ J`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant90e4767b8e4504c4c4154d2c355b01b3f343ce93e5915bdcdaacff968b189293.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant90e4767b8e4504c4c4154d2c355b01b3f343ce93e5915bdcdaacff968b189293.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17b09ef7bfcebda13fd61fb4ce3f6cacd3d29878` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
