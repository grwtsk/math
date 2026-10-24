# isConservative_pointsBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8f93b68-df8b-0ff9-0d81-1d253a33ac65",
  "kind": "lemma",
  "lexical_name": "isConservative_pointsBot",
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
  "slug": "isconservative-pointsbot--4e5a21c5b6cf6c4f0cf02c7d",
  "source": {
    "blob": "d11ae5efb1c0ed1a232b0b1e6493ea3dd9bcd663",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 97,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant10de33469d98a891450c37b264db227e9dcbd758c1bf2deb1c40acbb8f10f24d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e5a21c5b6cf6c4f0cf02c7d27d7cc349d0845f002dfd2f414eece390bb1499d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant10de33469d98a891450c37b264db227e9dcbd758c1bf2deb1c40acbb8f10f24d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8f93b68-df8b-0ff9-0d81-1d253a33ac65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isConservative_pointsBot :
    (pointsBot.{w} C).IsConservativeFamilyOfPoints :=
  .mk' (fun X S hS ↦ by
    obtain ⟨Y, a, ha, b, hb⟩ := hS ⟨_, ⟨X⟩⟩ (shrinkYonedaObjObjEquiv.symm (𝟙 X))
    obtain ⟨b, rfl⟩ := shrinkYonedaObjObjEquiv.symm.surjective b
    dsimp at b hb
    have : b ≫ a = 𝟙 _ :=
      shrinkYonedaObjObjEquiv.symm.injective (by
        rw [← hb, shrinkYoneda_map_app_shrinkYonedaObjObjEquiv_symm])
    simpa only [bot_covering, ← Sieve.id_mem_iff_eq_top, this]
      using S.downward_closed ha b)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant10de33469d98a891450c37b264db227e9dcbd758c1bf2deb1c40acbb8f10f24d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant10de33469d98a891450c37b264db227e9dcbd758c1bf2deb1c40acbb8f10f24d.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d11ae5efb1c0ed1a232b0b1e6493ea3dd9bcd663` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
