# hasLeftCalculusOfFractions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0502b46a1a3a7b25fef0b66896e8b8a93623b0d8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/762655fc35c8e9253f77d9b18a2484538f6edc8976ff02aebd9015a7803b1d06.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:32ff6d5c-15cc-a281-c372-c78de12389ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cda0717b-a243-71a6-04a3-683e60b04c43",
  "kind": "lemma",
  "lexical_name": "hasLeftCalculusOfFractions",
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
  "slug": "hasleftcalculusoffractions--d1f951a20d0f7fec70cba917",
  "source": {
    "blob": "0502b46a1a3a7b25fef0b66896e8b8a93623b0d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 30,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfAdjunction/Variant762655fc35c8e9253f77d9b18a2484538f6edc8976ff02aebd9015a7803b1d06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1f951a20d0f7fec70cba917e1c26a686c87cbff0782432fb6f15c666e0f3d60",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfAdjunction/Variant762655fc35c8e9253f77d9b18a2484538f6edc8976ff02aebd9015a7803b1d06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cda0717b-a243-71a6-04a3-683e60b04c43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasLeftCalculusOfFractions (adj : G ⊣ F) :
    ((isomorphisms C₂).inverseImage G).HasLeftCalculusOfFractions where
  exists_leftFraction X Y φ := by
    obtain ⟨W, s, _, f, rfl⟩ := φ.cases
    have : IsIso (G.map s) := by assumption
    exact ⟨{
      f := adj.unit.app X ≫ F.map (inv (G.map s)) ≫ F.map (G.map f)
      s := adj.unit.app Y
      hs := by
        simp only [inverseImage_iff, isomorphisms.iff]
        infer_instance }, by
      have := adj.unit.naturality s
      dsimp at this ⊢
      rw [reassoc_of% this, Functor.map_inv, IsIso.hom_inv_id_assoc, adj.unit_naturality]⟩
  ext X' X Y f₁ f₂ s _ h := by
    have : IsIso (G.map s) := by assumption
    refine ⟨_, adj.unit.app Y, ?_, ?_⟩
    · simp only [inverseImage_iff, isomorphisms.iff]
      infer_instance
    · rw [← adj.unit_naturality f₁, ← adj.unit_naturality f₂]
      congr 2
      rw [← cancel_epi (G.map s), ← G.map_comp, ← G.map_comp, h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfAdjunction/Variant762655fc35c8e9253f77d9b18a2484538f6edc8976ff02aebd9015a7803b1d06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfAdjunction/Variant762655fc35c8e9253f77d9b18a2484538f6edc8976ff02aebd9015a7803b1d06.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0502b46a1a3a7b25fef0b66896e8b8a93623b0d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
