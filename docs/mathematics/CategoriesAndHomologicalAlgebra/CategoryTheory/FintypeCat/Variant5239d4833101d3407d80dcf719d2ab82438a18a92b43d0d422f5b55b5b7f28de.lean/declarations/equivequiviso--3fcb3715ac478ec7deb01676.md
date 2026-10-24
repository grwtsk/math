# equivEquivIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f6c3396274ad93a6f401dbf55141ca8f54be0ef64d9f6b30e5522b0f9fa4a24a",
  "kind": "def",
  "lexical_name": "equivEquivIso",
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
  "slug": "equivequiviso--3fcb3715ac478ec7deb01676",
  "source": {
    "blob": "cf3122a2d7d9081c9080759a9929d34c34c56b67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 95,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3fcb3715ac478ec7deb016762b192dd7e6421df4fad5b40361b7858e0353f72d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f6c3396274ad93a6f401dbf55141ca8f54be0ef64d9f6b30e5522b0f9fa4a24a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivEquivIso {A B : FintypeCat} : A ≃ B ≃ (A ≅ B) where
  toFun e :=
    { hom := e
      inv := e.symm }
  invFun i :=
    { toFun := i.hom
      invFun := i.inv
      left_inv := congr_fun i.hom_inv_id
      right_inv := congr_fun i.inv_hom_id }
  left_inv := by aesop_cat
  right_inv := by aesop_cat

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant5239d4833101d3407d80dcf719d2ab82438a18a92b43d0d422f5b55b5b7f28de.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf3122a2d7d9081c9080759a9929d34c34c56b67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
