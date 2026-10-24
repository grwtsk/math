# isSheaf_coherent_of_hasPullbacks_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b3d0afdf47f80c44d743829410cb7943d047b4aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 281,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e1482e1b29048ac8c34a449591e5d56a36be4a18c9997e3bb24b79d24862283.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e95780dc-6246-7b57-d35b-38489819868a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8aa18d22-ebe6-2607-932f-109e269baed5",
  "kind": "lemma",
  "lexical_name": "isSheaf_coherent_of_hasPullbacks_comp",
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
  "slug": "issheaf-coherent-of-haspullbacks-comp--521695f6cd1927f7ff1aeb33",
  "source": {
    "blob": "b3d0afdf47f80c44d743829410cb7943d047b4aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 281,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant1e1482e1b29048ac8c34a449591e5d56a36be4a18c9997e3bb24b79d24862283.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:521695f6cd1927f7ff1aeb33f3c8b68283a76d20c9eefb77f90700f6e5b37b22",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant1e1482e1b29048ac8c34a449591e5d56a36be4a18c9997e3bb24b79d24862283.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8aa18d22-ebe6-2607-932f-109e269baed5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSheaf_coherent_of_hasPullbacks_comp [Preregular C] [FinitaryExtensive C]
    [h : ∀ {Y X : C} (f : Y ⟶ X) [EffectiveEpi f], HasPullback f f] [PreservesFiniteLimits s]
    (hF : IsSheaf (coherentTopology C) F) : IsSheaf (coherentTopology C) (F ⋙ s) := by
  rw [isSheaf_iff_preservesFiniteProducts_and_equalizerCondition (h := h)] at hF ⊢
  have := hF.1
  refine ⟨inferInstance, fun _ _ π _ c hc ↦ ⟨?_⟩⟩
  exact isLimitForkMapOfIsLimit s _ (hF.2 π c hc).some

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant1e1482e1b29048ac8c34a449591e5d56a36be4a18c9997e3bb24b79d24862283.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant1e1482e1b29048ac8c34a449591e5d56a36be4a18c9997e3bb24b79d24862283.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3d0afdf47f80c44d743829410cb7943d047b4aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
