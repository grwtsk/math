# functorEquivFunctorCompFstIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:94d0f1bc1e66117b8d5f9076fdc40b5093039795733cfed6aa6bd2635530cf26",
  "kind": "def",
  "lexical_name": "functorEquivFunctorCompFstIso",
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
  "slug": "functorequivfunctorcompfstiso--cab76e83667eb9e5c494b9d8",
  "source": {
    "blob": "ce20d7659ae1a013b73e1b3918adc475044fe813",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 84,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantdd7162abb546ff02c89e307d279e158a6ef5abb8dcfe47079f609b8c684358f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cab76e83667eb9e5c494b9d80dba0a0f81368075a7fa8b135aceaa3e634a7688",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantdd7162abb546ff02c89e307d279e158a6ef5abb8dcfe47079f609b8c684358f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:94d0f1bc1e66117b8d5f9076fdc40b5093039795733cfed6aa6bd2635530cf26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def functorEquivFunctorCompFstIso :
    (functorEquiv A A' B).functor ⋙ Prod.fst (A ⥤ B) (A' ⥤ B) ≅
    (whiskeringLeft A (A ⊕ A') B).obj (inl_ A A') :=
  NatIso.ofComponents (fun _ ↦ Iso.refl _)

set_option backward.defeqAttrib.useBackward true in
/-- Composing the forward direction of `functorEquiv` with the second projection is the same as
precomposition with `inr_ A A'`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantdd7162abb546ff02c89e307d279e158a6ef5abb8dcfe47079f609b8c684358f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantdd7162abb546ff02c89e307d279e158a6ef5abb8dcfe47079f609b8c684358f3.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce20d7659ae1a013b73e1b3918adc475044fe813` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
