# opParallelPairIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80fa543393a0e01a5fff9881e7691d44bf08778e08ee322178da2d986a276416",
  "kind": "def",
  "lexical_name": "opParallelPairIso",
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
  "slug": "opparallelpairiso--a0581af4590c6d071ff66b47",
  "source": {
    "blob": "3ddbc4178bbe2811237aa69751ef4e4ffdad9bf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 79,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant9f2ca4e7b216b0ca7ae50e715f94aba32fabfdb322710df994b477ce48b44832.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0581af4590c6d071ff66b47cb40d6f84ba0f67a8b58b5e343273c22e72aea4e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant9f2ca4e7b216b0ca7ae50e715f94aba32fabfdb322710df994b477ce48b44832.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80fa543393a0e01a5fff9881e7691d44bf08778e08ee322178da2d986a276416`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def opParallelPairIso {X Y : C} (f g : X ⟶ Y) :
    (parallelPair f g).op ≅ walkingParallelPairOpEquiv.inverse ⋙ parallelPair f.op g.op :=
  calc
    (parallelPair f g).op ≅ 𝟭 _ ⋙ (parallelPair f g).op := .refl _
    _ ≅ (walkingParallelPairOpEquiv.inverse ⋙ walkingParallelPairOpEquiv.functor) ⋙ _ :=
      isoWhiskerRight walkingParallelPairOpEquiv.symm.unitIso _
    _ ≅ walkingParallelPairOpEquiv.inverse ⋙ walkingParallelPairOpEquiv.functor ⋙ _ :=
      Functor.associator _ _ _
    _ ≅ walkingParallelPairOpEquiv.inverse ⋙ parallelPair f.op g.op :=
      isoWhiskerLeft _ (parallelPairOpIso f g).symm

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant9f2ca4e7b216b0ca7ae50e715f94aba32fabfdb322710df994b477ce48b44832.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant9f2ca4e7b216b0ca7ae50e715f94aba32fabfdb322710df994b477ce48b44832.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ddbc4178bbe2811237aa69751ef4e4ffdad9bf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
