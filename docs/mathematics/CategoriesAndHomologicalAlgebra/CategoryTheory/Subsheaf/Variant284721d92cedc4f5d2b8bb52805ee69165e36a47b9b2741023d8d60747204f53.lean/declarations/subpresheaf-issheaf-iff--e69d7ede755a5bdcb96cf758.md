# Subpresheaf.isSheaf_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "117af275faa0934952fb1cd28e0bf3b1fade2e1d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 262,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9e40d66d-6dea-4ffc-822c-1f2dc81df51a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:846e4188-0f10-4cf5-4b67-6591878122b1",
  "kind": "theorem",
  "lexical_name": "Subpresheaf.isSheaf_iff",
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
  "slug": "subpresheaf-issheaf-iff--e69d7ede755a5bdcb96cf758",
  "source": {
    "blob": "117af275faa0934952fb1cd28e0bf3b1fade2e1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 262,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e69d7ede755a5bdcb96cf75837bc7990efc942ea0161e87c8b94ea8692ff0e61",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:846e4188-0f10-4cf5-4b67-6591878122b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Subpresheaf.isSheaf_iff (h : Presieve.IsSheaf J F) :
    Presieve.IsSheaf J G.toPresheaf ↔
      ∀ (U) (s : F.obj U), G.sieveOfSection s ∈ J (unop U) → s ∈ G.obj U := by
  rw [← G.eq_sheafify_iff h]
  change _ ↔ G.sheafify J ≤ G
  exact ⟨Eq.ge, (G.le_sheafify J).antisymm⟩
#align category_theory.grothendieck_topology.subpresheaf.is_sheaf_iff CategoryTheory.GrothendieckTopology.Subpresheaf.isSheaf_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `117af275faa0934952fb1cd28e0bf3b1fade2e1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
