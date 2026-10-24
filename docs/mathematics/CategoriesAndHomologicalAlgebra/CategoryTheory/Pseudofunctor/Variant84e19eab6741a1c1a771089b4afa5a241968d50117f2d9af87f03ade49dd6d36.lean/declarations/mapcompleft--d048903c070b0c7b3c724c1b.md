# mapCompLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0092baa5e363f107021466f7387059f56e84ae9929fc0ca79524393d2f022f73",
  "kind": "def",
  "lexical_name": "mapCompLeft",
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
  "slug": "mapcompleft--d048903c070b0c7b3c724c1b",
  "source": {
    "blob": "a3fa4d9f5f9e30f9b53fc943f3149ae96e1b2bd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 43,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant84e19eab6741a1c1a771089b4afa5a241968d50117f2d9af87f03ade49dd6d36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d048903c070b0c7b3c724c1b4a97db17aa2e3750fa3d87959e855de283f6c7cd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant84e19eab6741a1c1a771089b4afa5a241968d50117f2d9af87f03ade49dd6d36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0092baa5e363f107021466f7387059f56e84ae9929fc0ca79524393d2f022f73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapCompLeft (F : A ⥤ B) (G : B ⥤ C) :
    mapPair (F ⋙ G) (𝟭 D) ≅ mapPair F (𝟭 D) ⋙ mapPair G (𝟭 D) :=
  mapIsoWhiskerLeft _ (Functor.leftUnitor _).symm ≪≫ mapPairComp F (𝟭 D) G (𝟭 D)

#adaptation_note
/--
`mapIsoWhiskerRight`'s `simps` theorems were formulated in simp normal form under
`respectTransparency.types true`. We use `respectTransparency.types false` here because these
lemmas fail to match without this annotation.
Suggested way forward: Decide what the correct signatures of the `mapIsoWhiskerRight` lemmas
are, then update this proof accordingly.
-/
set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
variable (A) in
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant84e19eab6741a1c1a771089b4afa5a241968d50117f2d9af87f03ade49dd6d36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant84e19eab6741a1c1a771089b4afa5a241968d50117f2d9af87f03ade49dd6d36.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3fa4d9f5f9e30f9b53fc943f3149ae96e1b2bd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
