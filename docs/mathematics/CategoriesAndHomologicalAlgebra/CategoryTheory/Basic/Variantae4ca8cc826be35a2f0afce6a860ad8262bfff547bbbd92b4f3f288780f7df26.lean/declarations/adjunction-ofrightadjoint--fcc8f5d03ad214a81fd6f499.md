# Adjunction.ofRightAdjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4994e72979ccecd8a5d61c34d20790ac86fa0220dc02a86ec01c644788460d4",
  "kind": "def",
  "lexical_name": "Adjunction.ofRightAdjoint",
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
  "slug": "adjunction-ofrightadjoint--fcc8f5d03ad214a81fd6f499",
  "source": {
    "blob": "427dd6265732914e32468191367030e2dea57fa4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 126,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantae4ca8cc826be35a2f0afce6a860ad8262bfff547bbbd92b4f3f288780f7df26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fcc8f5d03ad214a81fd6f499a2ec3fcffd31edb284c64b989426c1b27f7f6e1d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantae4ca8cc826be35a2f0afce6a860ad8262bfff547bbbd92b4f3f288780f7df26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4994e72979ccecd8a5d61c34d20790ac86fa0220dc02a86ec01c644788460d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Adjunction.ofRightAdjoint (right : C ⥤ D) [IsRightAdjoint right] :
    Adjunction (leftAdjoint right) right :=
  IsRightAdjoint.adj
#align category_theory.adjunction.of_right_adjoint CategoryTheory.Adjunction.ofRightAdjoint

namespace Adjunction

-- porting note: Workaround not needed in Lean 4
-- restate_axiom homEquiv_unit'

-- restate_axiom homEquiv_counit'

attribute [simp] homEquiv_unit homEquiv_counit

section

variable {F : C ⥤ D} {G : D ⥤ C} (adj : F ⊣ G) {X' X : C} {Y Y' : D}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantae4ca8cc826be35a2f0afce6a860ad8262bfff547bbbd92b4f3f288780f7df26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantae4ca8cc826be35a2f0afce6a860ad8262bfff547bbbd92b4f3f288780f7df26.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `427dd6265732914e32468191367030e2dea57fa4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
