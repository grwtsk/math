# Functor.Elements

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:693346cbe63e79da27655774f5b06f02f1549de1db3e072154c828797787a517",
  "kind": "def",
  "lexical_name": "Functor.Elements",
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
  "slug": "functor-elements--000920e8bd4f5a8bd7b98866",
  "source": {
    "blob": "8a41ebf1f5b662213cf67a0c6adec870c81e8af1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 46,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:000920e8bd4f5a8bd7b98866f188553c20109a73dfdfdb250be77415b51428a9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:693346cbe63e79da27655774f5b06f02f1549de1db3e072154c828797787a517`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Functor.Elements (F : C ⥤ Type w) :=
  Σc : C, F.obj c
#align category_theory.functor.elements CategoryTheory.Functor.Elements

-- porting note: added because Sigma.ext would be triggered automatically
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a41ebf1f5b662213cf67a0c6adec870c81e8af1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
