# mapComp'_comp_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22fdfc5e-520a-c0a3-d81a-da4c324260bc",
  "kind": "lemma",
  "lexical_name": "mapComp'_comp_id",
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
  "slug": "mapcomp-comp-id--c63b6fda6f6fc4148bc413d1",
  "source": {
    "blob": "8cf1b7142c83fe90f026d14c4d7c93f33ebe580d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 49,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant682c3a2ca11bbce7274d0ad43973445e9a8c1928918874f4be50775c5061b021.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c63b6fda6f6fc4148bc413d14c7e38ec6a599f144e092da05db120019419eed6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant682c3a2ca11bbce7274d0ad43973445e9a8c1928918874f4be50775c5061b021.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22fdfc5e-520a-c0a3-d81a-da4c324260bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapComp'_comp_id {b₀ b₁ : B} (f : b₀ ⟶ b₁) :
    F.mapComp' f (𝟙 b₁) f = (ρ_ _).symm ≪≫ whiskerLeftIso _ (F.mapId b₁).symm := by
  ext
  rw [mapComp']
  dsimp
  rw [F.mapComp_id_right_hom f, Strict.rightUnitor_eqToIso, eqToIso.hom,
    ← F.map₂_comp_assoc, eqToHom_trans, eqToHom_refl, PrelaxFunctor.map₂_id,
    Category.id_comp]

#adaptation_note
/-- `respectTransparency.types true` changes the auto-generated lemmas' signature -/
set_option backward.isDefEq.respectTransparency.types false in
@[to_app (attr := reassoc)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant682c3a2ca11bbce7274d0ad43973445e9a8c1928918874f4be50775c5061b021.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant682c3a2ca11bbce7274d0ad43973445e9a8c1928918874f4be50775c5061b021.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cf1b7142c83fe90f026d14c4d7c93f33ebe580d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
