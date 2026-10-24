# nerve₂Adj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b6cce8b1918a7c0746a454e593e63ef904a2d3544a86fc5b431c5390c5e4e40",
  "kind": "def",
  "lexical_name": "nerve₂Adj",
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
  "slug": "nerve-adj--88ac70280421fbf4fc0f27cd",
  "source": {
    "blob": "6e9a63b72c5a3f1d67883130eb00174af8b5107c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 325,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variante63e936f2dd8434c002e261c142bf1bb4496c023af51ae44c97346626ab003d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:88ac70280421fbf4fc0f27cd758fb2f99c035281c229bc7efee78358520e3545",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variante63e936f2dd8434c002e261c142bf1bb4496c023af51ae44c97346626ab003d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b6cce8b1918a7c0746a454e593e63ef904a2d3544a86fc5b431c5390c5e4e40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def nerve₂Adj : hoFunctor₂.{u} ⊣ nerveFunctor₂ :=
  Adjunction.mkOfHomEquiv
    { homEquiv _ _ := (Cat.Hom.equivFunctor _ _).trans HomotopyCategory.functorEquiv
      homEquiv_naturality_left_symm _ _ := by ext1; exact HomotopyCategory.descOfTruncation_comp _ _
      homEquiv_naturality_right _ _ := HomotopyCategory.homToNerveMk_comp _ _ }

end Truncated

end SSet

namespace CategoryTheory

namespace nerve

variable {C D : Type u} [SmallCategory C] [SmallCategory D]

set_option backward.isDefEq.respectTransparency.types false in
/-- The functor `C ⥤ D` that is reconstructed for a morphism
between the `2`-truncated nerves. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variante63e936f2dd8434c002e261c142bf1bb4496c023af51ae44c97346626ab003d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variante63e936f2dd8434c002e261c142bf1bb4496c023af51ae44c97346626ab003d2.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e9a63b72c5a3f1d67883130eb00174af8b5107c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
