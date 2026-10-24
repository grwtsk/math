# curriedActionActionOfMonoidalFunctorToEndofunctorIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50b2cdfc01bca2c27bebd48c71cbf429bade6e4608c41af7e21b714208f6d5c2",
  "kind": "def",
  "lexical_name": "curriedActionActionOfMonoidalFunctorToEndofunctorIso",
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
  "slug": "curriedactionactionofmonoidalfunctortoendofunctoriso--56efd832487257e1b524589d",
  "source": {
    "blob": "bafeb84db829117f0e1d0b2f06fc37ea1a987c24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 213,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant24232f82e9225adc558c5a35bcac2d06a0e35fddbebb27949434ab8f7e87e616.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56efd832487257e1b524589d0018336a98c4a204a181e36b8bf1494f58f50baf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant24232f82e9225adc558c5a35bcac2d06a0e35fddbebb27949434ab8f7e87e616.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50b2cdfc01bca2c27bebd48c71cbf429bade6e4608c41af7e21b714208f6d5c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def curriedActionActionOfMonoidalFunctorToEndofunctorIso
    (F : C ⥤ (D ⥤ D)) [F.Monoidal] :
    letI := actionOfMonoidalFunctorToEndofunctor F
    curriedAction C D ≅ F :=
  .refl _

end MonoidalRightAction

namespace endofunctorMonoidalCategory
/-- Functor evaluation gives a right action of `C ⥤ C`.

Note that in the literature, this is defined as a left action, but mathlib's
monoidal structure on `C ⥤ C` is the monoidal opposite of the one usually
considered in the literature. -/
@[simps! actionObj actionHomLeft actionHomRight actionAssocIso actionUnitIso]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant24232f82e9225adc558c5a35bcac2d06a0e35fddbebb27949434ab8f7e87e616.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant24232f82e9225adc558c5a35bcac2d06a0e35fddbebb27949434ab8f7e87e616.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bafeb84db829117f0e1d0b2f06fc37ea1a987c24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
