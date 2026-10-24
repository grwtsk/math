# extensiveTopology.presheafIsLocallySurjective_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dfcc3b9c-87bd-4e47-0647-e09fe32fcec3",
  "kind": "lemma",
  "lexical_name": "extensiveTopology.presheafIsLocallySurjective_iff",
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
  "slug": "extensivetopology-presheafislocallysurjective-iff--b3dc9be9b020469d50c29678",
  "source": {
    "blob": "02ce1e84681c6bccb81b62b701a9852f3eb67e4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 98,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant2ef9c21f35b988fc97c9b475b51155453ad0274bbb426903d3ecaa62ede79efc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3dc9be9b020469d50c29678269ce8bbb73e3e9345bf3e101f878070ef6ab71f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant2ef9c21f35b988fc97c9b475b51155453ad0274bbb426903d3ecaa62ede79efc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfcc3b9c-87bd-4e47-0647-e09fe32fcec3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma extensiveTopology.presheafIsLocallySurjective_iff [FinitaryPreExtensive C] {F G : Cᵒᵖ ⥤ D}
    (f : F ⟶ G) [PreservesFiniteProducts F] [PreservesFiniteProducts G]
      [PreservesFiniteProducts (forget D)] : Presheaf.IsLocallySurjective (extensiveTopology C) f ↔
        ∀ (X : C), Function.Surjective (f.app (op X)) := by
  constructor
  · rw [Presheaf.isLocallySurjective_iff_whisker_forget (J := extensiveTopology C)]
    exact fun h _ ↦ surjective_of_isLocallySurjective_sheaf_of_types (whiskerRight f (forget D)) h
  · intro h
    refine ⟨fun {X} y ↦ ?_⟩
    obtain ⟨x, hx⟩ := h X y
    convert (extensiveTopology C).top_mem' X
    rw [← Sieve.id_mem_iff_eq_top]
    simpa [Presheaf.imageSieve] using ⟨x, hx⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant2ef9c21f35b988fc97c9b475b51155453ad0274bbb426903d3ecaa62ede79efc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant2ef9c21f35b988fc97c9b475b51155453ad0274bbb426903d3ecaa62ede79efc.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02ce1e84681c6bccb81b62b701a9852f3eb67e4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
