# functor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89cc5ccf3301668ca51181bdadec57363f308e9cdb745cc10fb44aca7802677c",
  "kind": "def",
  "lexical_name": "functor",
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
  "slug": "functor--aef30cbd4c1bf330b678bfa0",
  "source": {
    "blob": "60244614a926721b8753c8009d06de67b73c977c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 331,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant4ff43ea5863b137df1d29d4cf4dbb34dc5589ea41c03d2f070716b88364e214d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aef30cbd4c1bf330b678bfa0b6b6c3441eb45ec72f0fbdeb772df1eaa75488e0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant4ff43ea5863b137df1d29d4cf4dbb34dc5589ea41c03d2f070716b88364e214d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89cc5ccf3301668ca51181bdadec57363f308e9cdb745cc10fb44aca7802677c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def functor : Arrow C ⥤ Arrow C where
  obj π := Arrow.mk (πFunctorObj f π.hom)
  map {π₁ π₂} τ := Arrow.homMk (functorMap f τ) τ.right
  map_id g := by
    ext
    · apply functorMap_id
    · dsimp
  map_comp {π₁ π₂ π₃} τ τ' := by
    ext
    · dsimp
      simp only [functorMap, Arrow.comp_left, Arrow.mk_left]
      ext ⟨i, t, b, w⟩
      · simp
      · simp [ι_functorMapTgt_assoc f τ i t b w _ rfl _ rfl,
          ι_functorMapTgt_assoc f (τ ≫ τ') i t b w _ rfl _ rfl,
          ι_functorMapTgt_assoc f τ' i (t ≫ τ.left) (b ≫ τ.right)
            (by simp [reassoc_of% w]) (b ≫ τ.right ≫ τ'.right) (by simp)
            (t ≫ (τ ≫ τ').left) (by simp)]
    · dsimp

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- The canonical natural transformation `𝟭 (Arrow C) ⟶ functor f`. -/
@[simps app]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant4ff43ea5863b137df1d29d4cf4dbb34dc5589ea41c03d2f070716b88364e214d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant4ff43ea5863b137df1d29d4cf4dbb34dc5589ea41c03d2f070716b88364e214d.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60244614a926721b8753c8009d06de67b73c977c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
