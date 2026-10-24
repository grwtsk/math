# frobeniusMorphism

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1707041afe7cbaae79a24f683534b2695302f93a5a8e183a63e2a210b4a595ce",
  "kind": "def",
  "lexical_name": "frobeniusMorphism",
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
  "slug": "frobeniusmorphism--2933c73058dc2195903ad28d",
  "source": {
    "blob": "41d89dde2f167ad0f1ef659bf5948d242a6bfa5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 188,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantef403824a333a3e816c010b9c7152eaddbe152a4c91b82b3a7cbe5efc60d6c34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2933c73058dc2195903ad28dde5061e7687a1859cc594c6179af1f4be8dbaa4f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantef403824a333a3e816c010b9c7152eaddbe152a4c91b82b3a7cbe5efc60d6c34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1707041afe7cbaae79a24f683534b2695302f93a5a8e183a63e2a210b4a595ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def frobeniusMorphism :
    underlying.obj (A' ⊓ (Subobject.pullback f).obj B') ⟶
      underlying.obj ((«exists» f).obj A' ⊓ B') :=
  (inf_isPullback ((«exists» f).obj A') B').flip.lift
    ((ofLE _ _ (inf_le_right A' ((Subobject.pullback f).obj B'))) ≫ (pullbackπ _ _))
    ((ofLE _ _ (inf_le_left A' ((Subobject.pullback f).obj B'))) ≫ (imageFactorisation f A').F.e)
    (by simp [← imageFactorisation_F_m, (isPullback _ _).w])

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantef403824a333a3e816c010b9c7152eaddbe152a4c91b82b3a7cbe5efc60d6c34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantef403824a333a3e816c010b9c7152eaddbe152a4c91b82b3a7cbe5efc60d6c34.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41d89dde2f167ad0f1ef659bf5948d242a6bfa5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
