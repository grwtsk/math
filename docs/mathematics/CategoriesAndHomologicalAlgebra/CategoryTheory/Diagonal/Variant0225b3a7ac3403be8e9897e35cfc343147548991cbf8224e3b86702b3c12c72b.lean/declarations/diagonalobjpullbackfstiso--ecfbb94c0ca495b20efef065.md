# diagonalObjPullbackFstIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b07dc9196c8851d96632dd9df2ceadb56b57d83f8f594a2d7d2b1877062127cb",
  "kind": "def",
  "lexical_name": "diagonalObjPullbackFstIso",
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
  "slug": "diagonalobjpullbackfstiso--ecfbb94c0ca495b20efef065",
  "source": {
    "blob": "243bc397d4264f483462c84b7c2cd3174f6fc42b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 302,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ecfbb94c0ca495b20efef06518ff19588c300250219481a20db46fe99b69125d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b07dc9196c8851d96632dd9df2ceadb56b57d83f8f594a2d7d2b1877062127cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def diagonalObjPullbackFstIso {X Y Z : C} (f : X ⟶ Z) (g : Y ⟶ Z) :
    diagonalObj (pullback.fst f g) ≅
      pullback (pullback.snd _ _ ≫ g : diagonalObj g ⟶ Z) f :=
  pullbackRightPullbackFstIso _ _ _ ≪≫
    pullback.congrHom pullback.condition rfl ≪≫
      pullbackAssoc _ _ _ _ ≪≫ pullbackSymmetry _ _ ≪≫ pullback.congrHom pullback.condition rfl

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `243bc397d4264f483462c84b7c2cd3174f6fc42b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
