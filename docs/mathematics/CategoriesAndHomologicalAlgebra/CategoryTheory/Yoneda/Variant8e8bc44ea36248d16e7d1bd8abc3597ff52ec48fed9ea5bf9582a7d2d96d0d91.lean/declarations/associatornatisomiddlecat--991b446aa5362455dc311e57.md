# associatorNatIsoMiddleCat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:04199fb8864f361be9961cfb5a29cd4729b0e5119e24700cf313c0e00ad2a702",
  "kind": "def",
  "lexical_name": "associatorNatIsoMiddleCat",
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
  "slug": "associatornatisomiddlecat--991b446aa5362455dc311e57",
  "source": {
    "blob": "771a1f527272db0b41522f4cee03aff1db6c4934",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 60,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant8e8bc44ea36248d16e7d1bd8abc3597ff52ec48fed9ea5bf9582a7d2d96d0d91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:991b446aa5362455dc311e57b096d148ed6cf197c4950bd6baaedd8a1e28f68b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant8e8bc44ea36248d16e7d1bd8abc3597ff52ec48fed9ea5bf9582a7d2d96d0d91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:04199fb8864f361be9961cfb5a29cd4729b0e5119e24700cf313c0e00ad2a702`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def associatorNatIsoMiddleCat {a b c d : B} (f : a ⟶ b) (h : c ⟶ d) :
    (precomposingCat ..).obj f ≫ (postcomposingCat ..).obj h ≅
      (postcomposingCat ..).obj h ≫ (precomposingCat ..).obj f :=
  Cat.Hom.isoMk <| NatIso.ofComponents (α_ f · h)

set_option backward.defeqAttrib.useBackward true in
/-- Right unitor as a 2-isomorphism in `Cat`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant8e8bc44ea36248d16e7d1bd8abc3597ff52ec48fed9ea5bf9582a7d2d96d0d91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant8e8bc44ea36248d16e7d1bd8abc3597ff52ec48fed9ea5bf9582a7d2d96d0d91.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `771a1f527272db0b41522f4cee03aff1db6c4934` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
