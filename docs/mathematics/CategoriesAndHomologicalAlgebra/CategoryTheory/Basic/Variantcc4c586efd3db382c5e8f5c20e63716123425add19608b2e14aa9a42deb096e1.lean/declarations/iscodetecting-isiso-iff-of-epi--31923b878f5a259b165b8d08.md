# IsCodetecting.isIso_iff_of_epi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "48633484c25765e80e08cbc6cbf477a24d81232e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cc4c586efd3db382c5e8f5c20e63716123425add19608b2e14aa9a42deb096e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:204e09b8-061e-733e-6b3c-71ac5a454024",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:490ef4fb-b95f-ccc0-420f-6cbc114ba9b2",
  "kind": "lemma",
  "lexical_name": "IsCodetecting.isIso_iff_of_epi",
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
  "slug": "iscodetecting-isiso-iff-of-epi--31923b878f5a259b165b8d08",
  "source": {
    "blob": "48633484c25765e80e08cbc6cbf477a24d81232e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 190,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcc4c586efd3db382c5e8f5c20e63716123425add19608b2e14aa9a42deb096e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31923b878f5a259b165b8d08831fe9b9d98e2a0723f93b11fefdb9dedea22b0e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcc4c586efd3db382c5e8f5c20e63716123425add19608b2e14aa9a42deb096e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:490ef4fb-b95f-ccc0-420f-6cbc114ba9b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCodetecting.isIso_iff_of_epi {𝒢 : Set C} (h𝒢 : IsCodetecting 𝒢)
    {X Y : C} (f : X ⟶ Y) [Epi f] :
    IsIso f ↔ ∀ s ∈ 𝒢, Function.Surjective ((yoneda.obj s).map f.op) := by
  constructor
  · intro h
    rw [isIso_iff_coyoneda_map_bijective] at h
    intro A _
    exact (h A).2
  · intro hf
    refine h𝒢 _ (fun A hA g ↦ existsUnique_of_exists_of_unique ?_ ?_)
    · exact hf A hA g
    · intro l₁ l₂ h₁ h₂
      rw [← cancel_epi f, h₁, h₂]

section

attribute [local instance] balanced_opposite

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcc4c586efd3db382c5e8f5c20e63716123425add19608b2e14aa9a42deb096e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcc4c586efd3db382c5e8f5c20e63716123425add19608b2e14aa9a42deb096e1.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48633484c25765e80e08cbc6cbf477a24d81232e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
