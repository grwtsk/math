# cechNerveAdjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:380cc1e004381128f42562779da40efee955e7110e5f99f9cfe5bcf49d66aee0",
  "kind": "abbrev",
  "lexical_name": "cechNerveAdjunction",
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
  "slug": "cechnerveadjunction--4d17e0b753fb9004e4a7f8f3",
  "source": {
    "blob": "8545d54209844596b9d8252ef425254a2660476b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 179,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d17e0b753fb9004e4a7f8f35dc7ad1ee78ecb39a8de6d4282f27ee7cb54eae3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:380cc1e004381128f42562779da40efee955e7110e5f99f9cfe5bcf49d66aee0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev cechNerveAdjunction : (Augmented.toArrow : _ ⥤ Arrow C) ⊣ augmentedCechNerve :=
  Adjunction.mkOfHomEquiv
    { homEquiv := cechNerveEquiv
      homEquiv_naturality_left_symm := by dsimp [cechNerveEquiv]; aesop_cat
      homEquiv_naturality_right := by dsimp [cechNerveEquiv]; aesop_cat }
#align category_theory.simplicial_object.cech_nerve_adjunction CategoryTheory.SimplicialObject.cechNerveAdjunction

end SimplicialObject

end CategoryTheory

namespace CategoryTheory.Arrow

variable (f : Arrow C)

variable [∀ n : ℕ, HasWidePushout f.left (fun _ : Fin (n + 1) => f.right) fun _ => f.hom]

/-- The Čech conerve associated to an arrow. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8545d54209844596b9d8252ef425254a2660476b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
