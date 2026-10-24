# homologySequence_exact₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5552b70022e379268543fb0d313b5d17150e33d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 220,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe9dcbf9-4e7a-d4e6-718b-db081501bb9f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c40d96b5-12be-56e0-efb5-bc0570897d43",
  "kind": "lemma",
  "lexical_name": "homologySequence_exact₁",
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
  "slug": "homologysequence-exact--035f278aa759e30ae1926e46",
  "source": {
    "blob": "5552b70022e379268543fb0d313b5d17150e33d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 220,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:035f278aa759e30ae1926e4613c401e94d9f40951d7f95fb127c92a17f6f7422",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c40d96b5-12be-56e0-efb5-bc0570897d43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma homologySequence_exact₁ :
    (ShortComplex.mk _ _ (F.homologySequenceδ_comp T hT _ _ h)).Exact := by
  refine ShortComplex.exact_of_iso ?_ (F.homologySequence_exact₂ _ (inv_rot_of_distTriang _ hT) n₁)
  refine ShortComplex.isoMk (-((F.shiftIso (-1) n₁ n₀ (by omega)).app _))
    (Iso.refl _) (Iso.refl _) ?_ (by simp)
  dsimp
  simp only [homologySequenceδ, neg_comp, map_neg, comp_id,
    F.shiftIso_hom_app_comp_shiftMap_of_add_eq_zero T.mor₃ (-1) (neg_add_cancel 1) n₀ n₁ (by omega)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5552b70022e379268543fb0d313b5d17150e33d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
