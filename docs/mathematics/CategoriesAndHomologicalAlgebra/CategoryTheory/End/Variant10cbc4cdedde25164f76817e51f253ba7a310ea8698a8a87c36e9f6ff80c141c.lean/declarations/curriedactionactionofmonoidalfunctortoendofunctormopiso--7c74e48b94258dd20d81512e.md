# curriedActionActionOfMonoidalFunctorToEndofunctorMopIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b6d97b5fee8d0c8f321d42013729ac4d6ddbf3d41f2ef2806c2c61a3f45654ff",
  "kind": "def",
  "lexical_name": "curriedActionActionOfMonoidalFunctorToEndofunctorMopIso",
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
  "slug": "curriedactionactionofmonoidalfunctortoendofunctormopiso--7c74e48b94258dd20d81512e",
  "source": {
    "blob": "5c7daac6f2a9ac333e4779cc52a7fc3a43617013",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 148,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant10cbc4cdedde25164f76817e51f253ba7a310ea8698a8a87c36e9f6ff80c141c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c74e48b94258dd20d81512eaec96a687269c163071ae8325a98304e22e535b7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant10cbc4cdedde25164f76817e51f253ba7a310ea8698a8a87c36e9f6ff80c141c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b6d97b5fee8d0c8f321d42013729ac4d6ddbf3d41f2ef2806c2c61a3f45654ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def curriedActionActionOfMonoidalFunctorToEndofunctorMopIso
    (F : C ⥤ (D ⥤ D)ᴹᵒᵖ) [F.Monoidal] :
    letI := actionOfMonoidalFunctorToEndofunctorMop F
    curriedActionMop C D ≅ F :=
  .refl _

end MonoidalLeftAction

namespace MonoidalRightAction

variable {C D}

set_option backward.defeqAttrib.useBackward true in
open MonoidalOpposite in
/-- When `C` acts on the right on `D`, the functor `curriedAction : C ⥤ (D ⥤ D)`
is monoidal, where `D ⥤ D` has the composition monoidal structure. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant10cbc4cdedde25164f76817e51f253ba7a310ea8698a8a87c36e9f6ff80c141c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant10cbc4cdedde25164f76817e51f253ba7a310ea8698a8a87c36e9f6ff80c141c.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c7daac6f2a9ac333e4779cc52a7fc3a43617013` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
