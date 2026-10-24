# mem_of_iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb5750ea8477deeda472cfa6da00108dbd5219ee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 392,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da659575b95ab5e1b45779b6d9f73f56049fa10efe51e57cc4e53c70dd588c6c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e0424bda-6714-e6f9-2e4c-a355a7748bfb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c3ed8d1-4c18-5ca0-0eed-8180d1d0152d",
  "kind": "lemma",
  "lexical_name": "mem_of_iso",
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
  "slug": "mem-of-iso--51a4ebd59441ee78461add4e",
  "source": {
    "blob": "bb5750ea8477deeda472cfa6da00108dbd5219ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 392,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantda659575b95ab5e1b45779b6d9f73f56049fa10efe51e57cc4e53c70dd588c6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51a4ebd59441ee78461add4e0d276f74182ff3a2fb465790e446550e5609f9bb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantda659575b95ab5e1b45779b6d9f73f56049fa10efe51e57cc4e53c70dd588c6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c3ed8d1-4c18-5ca0-0eed-8180d1d0152d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_of_iso {K : Precoverage C} [K.IsStableUnderComposition] [K.HasIsos] {X : C}
    {E F : PreZeroHypercover.{w} X} (e : E ≅ F) (hE : E.presieve₀ ∈ K X) :
    F.presieve₀ ∈ K X := by
  have : F.presieve₀ =
      Presieve.ofArrows (fun (i : Σ (_ : F.I₀), Unit) ↦ _) (fun i ↦ e.inv.h₀ i.1 ≫ E.f _) := by
    simp only [Hom.w₀]
    refine le_antisymm ?_ ?_
    · rw [Presieve.ofArrows_le_iff]
      intro i
      exact .mk (⟨i, ⟨⟩⟩ : Σ (_ : F.I₀), Unit)
    · simp [Presieve.ofArrows_le_iff]
  rw [this]
  refine K.comp_mem_coverings (fun i ↦ E.f (e.inv.s₀ i)) ?_ (fun i (k : Unit) ↦ e.inv.h₀ i) ?_
  · rwa [← E.presieve₀_reindex (PreZeroHypercover.equivOfIso e.symm)] at hE
  · intro i
    rw [Presieve.ofArrows_pUnit]
    exact K.mem_coverings_of_isIso _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantda659575b95ab5e1b45779b6d9f73f56049fa10efe51e57cc4e53c70dd588c6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantda659575b95ab5e1b45779b6d9f73f56049fa10efe51e57cc4e53c70dd588c6c.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb5750ea8477deeda472cfa6da00108dbd5219ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
