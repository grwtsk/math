# CostructuredArrow.initial_post

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d382f0b73dce445dd32bb1e9bddbc87d8ab65b836f534ee1a2516d13d2d7b11",
  "kind": "instance",
  "lexical_name": "CostructuredArrow.initial_post",
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
  "slug": "costructuredarrow-initial-post--9e62280d4608d2bc2560d2a9",
  "source": {
    "blob": "3d4252f7c42e003d21e3a296f36a9ebba69691b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 409,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant159a1b594023dbe13f3281eca2e01e4723cd211da9020a0ba5c682bd33eb1210.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e62280d4608d2bc2560d2a94086bd07a0df7deae919eff5a61368997c87dff7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant159a1b594023dbe13f3281eca2e01e4723cd211da9020a0ba5c682bd33eb1210.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2d382f0b73dce445dd32bb1e9bddbc87d8ab65b836f534ee1a2516d13d2d7b11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance CostructuredArrow.initial_post [IsCofiltered C] {E : Type u₃} [Category.{v₃} E] (X : D)
    (T : C ⥤ D) [T.Initial] (S : D ⥤ E) [S.Initial] : Initial (post T S X) := by
  apply initial_of_natIso (postIsoMap₂ X T S).symm

section Pi

variable {α : Type u₁} {I : α → Type u₂} [∀ s, Category.{v₂} (I s)]

open IsFiltered in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant159a1b594023dbe13f3281eca2e01e4723cd211da9020a0ba5c682bd33eb1210.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant159a1b594023dbe13f3281eca2e01e4723cd211da9020a0ba5c682bd33eb1210.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d4252f7c42e003d21e3a296f36a9ebba69691b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
