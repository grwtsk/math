# isLimitMapMultiforkEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bddb9049de56a43f3a53a085ad4a89ff3243ae4a19d74bd0c50223b929fd785b",
  "kind": "def",
  "lexical_name": "isLimitMapMultiforkEquiv",
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
  "slug": "islimitmapmultiforkequiv--2ed07e310f8ba77471bffdfc",
  "source": {
    "blob": "eea18af00829d62913c76ec7e77fce0cd4636e70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 68,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantd4fe3d31462805630d23cc74a96f92e0a5b408b72122572d3b1cd4f8036ff28e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ed07e310f8ba77471bffdfca39f587f68b4630da509c8c8a88f80fcd84b9737",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantd4fe3d31462805630d23cc74a96f92e0a5b408b72122572d3b1cd4f8036ff28e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bddb9049de56a43f3a53a085ad4a89ff3243ae4a19d74bd0c50223b929fd785b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitMapMultiforkEquiv {A : Type u} [Category.{t} A] (P : Dᵒᵖ ⥤ A) :
    IsLimit ((E.map F).multifork P) ≃ IsLimit (E.multifork (F.op ⋙ P)) := by rfl

end PreOneHypercover

namespace GrothendieckTopology

namespace OneHypercover

variable {J : GrothendieckTopology C} {X : C} (E : J.OneHypercover X)

/-- A 1-hypercover in `C` is preserved by a functor `F : C ⥤ D` if the mapped 1-pre-hypercover
in `D` is a 1-hypercover for the given topology on `D`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantd4fe3d31462805630d23cc74a96f92e0a5b408b72122572d3b1cd4f8036ff28e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantd4fe3d31462805630d23cc74a96f92e0a5b408b72122572d3b1cd4f8036ff28e.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eea18af00829d62913c76ec7e77fce0cd4636e70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
