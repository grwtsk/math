# diagonalObjPullbackFstIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:07aba50f46f5ced05441115a0847dc01dc44652c77ef331ebf50f65c709efbd3",
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
  "slug": "diagonalobjpullbackfstiso--5fff08a3f1be9f410ba6b6fa",
  "source": {
    "blob": "8003fbd15489cd5aa93c9dc48e864453a98e0d65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 310,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5fff08a3f1be9f410ba6b6fac7f20e1ee9bb9ac00eeebc9eb6deb2ed312b9075",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:07aba50f46f5ced05441115a0847dc01dc44652c77ef331ebf50f65c709efbd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–317.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8003fbd15489cd5aa93c9dc48e864453a98e0d65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
