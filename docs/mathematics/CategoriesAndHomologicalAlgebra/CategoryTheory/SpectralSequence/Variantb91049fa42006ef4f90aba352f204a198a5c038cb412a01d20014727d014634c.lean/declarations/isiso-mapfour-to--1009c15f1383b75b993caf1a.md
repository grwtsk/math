# isIso_mapFourδ₁Toδ₀'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d99fce03cf3f4bc73b211b213f2227ae04e8e94",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 276,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b91049fa42006ef4f90aba352f204a198a5c038cb412a01d20014727d014634c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7e212eb-32c9-c099-3134-26d1145e0f1e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd9ecfb4-ccee-8cea-9ad1-52695f7bde51",
  "kind": "lemma",
  "lexical_name": "isIso_mapFourδ₁Toδ₀'",
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
  "slug": "isiso-mapfour-to--1009c15f1383b75b993caf1a",
  "source": {
    "blob": "9d99fce03cf3f4bc73b211b213f2227ae04e8e94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 276,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variantb91049fa42006ef4f90aba352f204a198a5c038cb412a01d20014727d014634c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1009c15f1383b75b993caf1a6c4f0b0a01e15e82e1cc10f995a63a07fabeb48b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variantb91049fa42006ef4f90aba352f204a198a5c038cb412a01d20014727d014634c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd9ecfb4-ccee-8cea-9ad1-52695f7bde51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIso_mapFourδ₁Toδ₀' (h : ¬ (c r).Rel pq' pq'')
    (hn₁ : n₀ + 1 = n₁ := by lia) (hn₂ : n₁ + 1 = n₂ := by lia) :
    IsIso (X.mapFourδ₁Toδ₀'
      i₀' i₀ i₁ i₂ i₃ (data.i₀_le' hrr' hr pq' hi₀' hi₀) (data.le₀₁' r hr pq' hi₀ hi₁)
        (data.le₁₂' pq' hi₁ hi₂) (data.le₂₃' r hr pq' hi₂ hi₃) n₀ n₁ n₂ hn₁ hn₂) := by
  apply X.isIso_map_fourδ₁Toδ₀_of_isZero ..
  refine X.isZero_H_obj_mk₁_i₀_le' data r r' hrr' hr pq' (fun k hk ↦ ?_) _ (by lia) _ _ hi₀' hi₀
  obtain rfl := (c r).next_eq' hk
  subst hpq'
  exact h hk

set_option backward.defeqAttrib.useBackward true in
variable [X.HasSpectralSequence data] in
include hpq' in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variantb91049fa42006ef4f90aba352f204a198a5c038cb412a01d20014727d014634c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variantb91049fa42006ef4f90aba352f204a198a5c038cb412a01d20014727d014634c.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d99fce03cf3f4bc73b211b213f2227ae04e8e94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
