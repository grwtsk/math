# Lifting₃.bifunctorComp₂₃

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6eda12674e3609d37150c496b1f9fa4912c8d6863036891a4cfd9efc8e5bc3b0",
  "kind": "def",
  "lexical_name": "Lifting₃.bifunctorComp₂₃",
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
  "slug": "lifting-bifunctorcomp--2cf696624d6743ef5cfba8aa",
  "source": {
    "blob": "2bea970ec5cc0f4d609582250893a507021735e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 189,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantef8ef362e33768a9a734bfe1cc8efb627690e4baa81705b3f5f911bae67ea971.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2cf696624d6743ef5cfba8aa981d433b2166bc0b04ec697769b36105fb808f19",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantef8ef362e33768a9a734bfe1cc8efb627690e4baa81705b3f5f911bae67ea971.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6eda12674e3609d37150c496b1f9fa4912c8d6863036891a4cfd9efc8e5bc3b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Lifting₃.bifunctorComp₂₃ :
    Lifting₃ L₁ L₂ L₃ W₁ W₂ W₃
      ((Functor.postcompose₃.obj L).obj (bifunctorComp₂₃ F G₂₃))
      (bifunctorComp₂₃ F' G₂₃') where
  iso :=
    ((whiskeringLeft _ _ _).obj L₁).mapIso ((bifunctorComp₂₃Functor.obj F').mapIso
      (Lifting₂.iso L₂ L₃ W₂ W₃ (G₂₃ ⋙ (whiskeringRight _ _ _).obj L₂₃) G₂₃')) ≪≫
        (bifunctorComp₂₃Functor.mapIso
          (Lifting₂.iso L₁ L₂₃ W₁ W₂₃ (F ⋙ (whiskeringRight _ _ _).obj L) F')).app G₂₃

variable {F₁₂ G F G₂₃}

/-- The associator isomorphism obtained by localization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantef8ef362e33768a9a734bfe1cc8efb627690e4baa81705b3f5f911bae67ea971.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantef8ef362e33768a9a734bfe1cc8efb627690e4baa81705b3f5f911bae67ea971.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bea970ec5cc0f4d609582250893a507021735e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
