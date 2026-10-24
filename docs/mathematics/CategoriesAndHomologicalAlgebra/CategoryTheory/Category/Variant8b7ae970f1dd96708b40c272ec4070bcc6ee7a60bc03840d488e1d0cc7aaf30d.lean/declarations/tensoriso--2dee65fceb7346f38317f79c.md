# tensorIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50079f5bcbd96c2eacb25e1dbd8eed4b2395cd874e75efcb7af9d895579bd0b1",
  "kind": "def",
  "lexical_name": "tensorIso",
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
  "slug": "tensoriso--2dee65fceb7346f38317f79c",
  "source": {
    "blob": "e86d4cb8485c5f11439983bc0b98fc9aec0192b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 474,
    "line": 457,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant8b7ae970f1dd96708b40c272ec4070bcc6ee7a60bc03840d488e1d0cc7aaf30d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2dee65fceb7346f38317f79c2adabe6187316820caf7bf3fb9d8779c97ab175c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant8b7ae970f1dd96708b40c272ec4070bcc6ee7a60bc03840d488e1d0cc7aaf30d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50079f5bcbd96c2eacb25e1dbd8eed4b2395cd874e75efcb7af9d895579bd0b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–474.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tensorIso {X Y X' Y' : C} (f : X ≅ Y)
    (g : X' ≅ Y') : X ⊗ X' ≅ Y ⊗ Y' where
  hom := f.hom ⊗ₘ g.hom
  inv := f.inv ⊗ₘ g.inv
  hom_inv_id := by simp [Iso.hom_inv_id, Iso.hom_inv_id]
  inv_hom_id := by simp [Iso.inv_hom_id, Iso.inv_hom_id]

/-- Notation for `tensorIso`, the tensor product of isomorphisms -/
scoped infixr:70 " ⊗ᵢ " => tensorIso
-- TODO: Try setting this notation to `⊗` if the elaborator is improved and performs
-- better than currently on overloaded notations.

@[inherit_doc whiskerLeftIso]
scoped infixr:81 " ◁ᵢ " => whiskerLeftIso

@[inherit_doc whiskerRightIso]
scoped infixl:81 " ▷ᵢ " => whiskerRightIso

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant8b7ae970f1dd96708b40c272ec4070bcc6ee7a60bc03840d488e1d0cc7aaf30d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant8b7ae970f1dd96708b40c272ec4070bcc6ee7a60bc03840d488e1d0cc7aaf30d.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e86d4cb8485c5f11439983bc0b98fc9aec0192b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
