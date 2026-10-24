# tensor_left_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b178ef51-336d-be73-210c-0400c2c3f9ff",
  "kind": "theorem",
  "lexical_name": "tensor_left_iff",
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
  "slug": "tensor-left-iff--570633f8c4b7c67bef0c4782",
  "source": {
    "blob": "4c5afe2bfa139540d778ba42a1b2e9c29c8f92e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 317,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant26402d2f31289107df66cd53bff61282cc1b5098fff58ca7af409728212861f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:570633f8c4b7c67bef0c47829cb96e5ee9709e2bc7fc0d62710a5008c6216ca2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant26402d2f31289107df66cd53bff61282cc1b5098fff58ca7af409728212861f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b178ef51-336d-be73-210c-0400c2c3f9ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tensor_left_iff {X Y : C} (f g : X ⟶ Y) : 𝟙 (𝟙_ C) ⊗ f = 𝟙 (𝟙_ C) ⊗ g ↔ f = g := by simp
#align category_theory.monoidal_category.tensor_left_iff CategoryTheory.MonoidalCategory.tensor_left_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant26402d2f31289107df66cd53bff61282cc1b5098fff58ca7af409728212861f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant26402d2f31289107df66cd53bff61282cc1b5098fff58ca7af409728212861f5.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c5afe2bfa139540d778ba42a1b2e9c29c8f92e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
