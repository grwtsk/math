# map_chain_complex_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6e261a4044d3200b4f707c61dde9453f81a0690d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 236,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf407023524f04bb5fd26f576eedb96bddc1c52d13f757c668f224e4256dce43.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:10e19815-2fd5-e8f2-d36a-81a01c529f67",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:936a97a9-b1c4-3a7b-464b-b7d28fd6a4d0",
  "kind": "theorem",
  "lexical_name": "map_chain_complex_of",
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
  "slug": "map-chain-complex-of--8c207ebe8d3e1c7278064a06",
  "source": {
    "blob": "6e261a4044d3200b4f707c61dde9453f81a0690d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 236,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantbf407023524f04bb5fd26f576eedb96bddc1c52d13f757c668f224e4256dce43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c207ebe8d3e1c7278064a06d325679e2ad8819b30f440a017c44a42005c5180",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantbf407023524f04bb5fd26f576eedb96bddc1c52d13f757c668f224e4256dce43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:936a97a9-b1c4-3a7b-464b-b7d28fd6a4d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_chain_complex_of (F : W₁ ⥤ W₂) [F.PreservesZeroMorphisms] (X : α → W₁)
    (d : ∀ n, X (n + 1) ⟶ X n) (sq : ∀ n, d (n + 1) ≫ d n = 0) :
    (F.mapHomologicalComplex _).obj (ChainComplex.of X d sq) =
      ChainComplex.of (fun n => F.obj (X n)) (fun n => F.map (d n)) fun n => by
        rw [← F.map_comp, sq n, Functor.map_zero] :=
  HomologicalComplex.ext rfl (by cat_disch)

end ChainComplex

variable [HasZeroObject W₁] [HasZeroObject W₂] [HasZeroObject W₃]

namespace HomologicalComplex

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantbf407023524f04bb5fd26f576eedb96bddc1c52d13f757c668f224e4256dce43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantbf407023524f04bb5fd26f576eedb96bddc1c52d13f757c668f224e4256dce43.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e261a4044d3200b4f707c61dde9453f81a0690d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
