# isCardinalFiltered_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bfb94a90719cfaaa366c5ad09a1f8c57264c36b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 301,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57eebe3d70ef55f6bc68b4d2880eff9200478c842cf5d95f0558472c56e7c198.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1891d05e-d199-ef51-afc8-e713df563bc3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:121fcf54-e72b-97a9-f2b0-57448ca7b042",
  "kind": "lemma",
  "lexical_name": "isCardinalFiltered_iff",
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
  "slug": "iscardinalfiltered-iff--5da97c4a0044b48693171e3c",
  "source": {
    "blob": "bfb94a90719cfaaa366c5ad09a1f8c57264c36b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 301,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant57eebe3d70ef55f6bc68b4d2880eff9200478c842cf5d95f0558472c56e7c198.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5da97c4a0044b48693171e3ce152a38914f6ecbada828b3e2bc20d75b4b30ac1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant57eebe3d70ef55f6bc68b4d2880eff9200478c842cf5d95f0558472c56e7c198.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:121fcf54-e72b-97a9-f2b0-57448ca7b042`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCardinalFiltered_iff :
    IsCardinalFiltered J κ ↔
      (∀ ⦃ι : Type w⦄ (j : ι → J) (_ : HasCardinalLT ι κ),
        ∃ (k : J), ∀ (i : ι), Nonempty (j i ⟶ k)) ∧
      ∀ ⦃ι : Type w⦄ ⦃j k : J⦄ (f : ι → (j ⟶ k)) (_ : HasCardinalLT ι κ),
        ∃ (l : J) (a : k ⟶ l) (b : j ⟶ l), ∀ (i : ι), f i ≫ a = b := by
  refine ⟨fun _ ↦ ⟨fun ι j hι ↦ ⟨_, fun i ↦ ⟨toMax j hι i⟩⟩,
    fun ι j k f hι ↦ ⟨_, _, _, coeq_condition f hι⟩⟩,
    fun ⟨h₁, h₂⟩ ↦ ⟨fun {A _} F hA ↦ ?_⟩⟩
  obtain ⟨j, hj⟩ := h₁ F.obj (hasCardinalLT_of_hasCardinalLT_arrow hA)
  let a (i : A) : F.obj i ⟶ j := (hj i).some
  obtain ⟨l, b, hb⟩ := isCardinalFiltered_iff_aux₂ h₁ h₂
    (fun (f : Arrow A) ↦ F.map f.hom ≫ a f.right)
    (fun (f : Arrow A) ↦ a f.left) hA
  exact ⟨{
    pt := l
    ι.app i := a i ≫ b
    ι.naturality _ _ f := by simpa using hb (Arrow.mk f) }⟩

/-- Same as `isCardinalFiltered_iff`, but for the second condition involving
coequalizing morphisms, we assume that the index type `ι` is nonempty. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant57eebe3d70ef55f6bc68b4d2880eff9200478c842cf5d95f0558472c56e7c198.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant57eebe3d70ef55f6bc68b4d2880eff9200478c842cf5d95f0558472c56e7c198.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfb94a90719cfaaa366c5ad09a1f8c57264c36b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
