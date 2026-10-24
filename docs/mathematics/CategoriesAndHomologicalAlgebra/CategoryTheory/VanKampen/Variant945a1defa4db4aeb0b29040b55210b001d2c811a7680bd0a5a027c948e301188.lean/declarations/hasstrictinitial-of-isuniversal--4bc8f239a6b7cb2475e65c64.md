# hasStrictInitial_of_isUniversal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce223966b2663cfcfbbf978cf8dfa85f0b9a27e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 455,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b41d5031-ca13-71f9-a819-5120efa964c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:606b7abe-2840-03cf-cfe7-584a13728911",
  "kind": "theorem",
  "lexical_name": "hasStrictInitial_of_isUniversal",
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
  "slug": "hasstrictinitial-of-isuniversal--4bc8f239a6b7cb2475e65c64",
  "source": {
    "blob": "ce223966b2663cfcfbbf978cf8dfa85f0b9a27e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 455,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bc8f239a6b7cb2475e65c64c86f7806f81cdbba8055bdd6f60bb00e2d144e2d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:606b7abe-2840-03cf-cfe7-584a13728911`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 455–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasStrictInitial_of_isUniversal [HasInitial C]
    (H : IsUniversalColimit (BinaryCofan.mk (𝟙 (⊥_ C)) (𝟙 (⊥_ C)))) : HasStrictInitialObjects C :=
  hasStrictInitialObjects_of_initial_is_strict
    (by
      intro A f
      suffices IsColimit (BinaryCofan.mk (𝟙 A) (𝟙 A)) by
        obtain ⟨l, h₁, h₂⟩ := Limits.BinaryCofan.IsColimit.desc' this (f ≫ initial.to A) (𝟙 A)
        rcases(Category.id_comp _).symm.trans h₂ with rfl
        exact ⟨⟨_, ((Category.id_comp _).symm.trans h₁).symm, initialIsInitial.hom_ext _ _⟩⟩
      refine (H (BinaryCofan.mk (𝟙 _) (𝟙 _)) (mapPair f f) f (by ext ⟨⟨⟩⟩ <;> dsimp <;> simp)
        (mapPair_equifibered _) ?_).some
      rintro ⟨⟨⟩⟩ <;> dsimp <;>
        exact IsPullback.of_horiz_isIso ⟨(Category.id_comp _).trans (Category.comp_id _).symm⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean#L455).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce223966b2663cfcfbbf978cf8dfa85f0b9a27e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
