# prodComparison_iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1db69e0342437a91c9d70a5546b42ec7295aa863",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 311,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e180ec7ba397ffe9bb1942799d298d03e8d8beccaff79683b219ae5d0c7a2b07.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae124163-9262-dacb-cad0-372ab3c196b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a108af2-d0d5-5b7f-aba2-ede2908376db",
  "kind": "theorem",
  "lexical_name": "prodComparison_iso",
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
  "slug": "prodcomparison-iso--8dd9980ead8beeb10fdaedef",
  "source": {
    "blob": "1db69e0342437a91c9d70a5546b42ec7295aa863",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 311,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variante180ec7ba397ffe9bb1942799d298d03e8d8beccaff79683b219ae5d0c7a2b07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8dd9980ead8beeb10fdaedef6555c8baa494ea033ca85d58679689b24ad118a8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variante180ec7ba397ffe9bb1942799d298d03e8d8beccaff79683b219ae5d0c7a2b07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a108af2-d0d5-5b7f-aba2-ede2908376db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prodComparison_iso (A B : C) : IsIso
    (prodComparison (reflector i) A B) :=
  ⟨⟨bijection i _ _ _ (𝟙 _), by
      rw [← (bijection i _ _ _).injective.eq_iff, bijection_natural, ← bijection_symm_apply_id,
        Equiv.apply_symm_apply, Category.id_comp],
      by rw [← bijection_natural, Category.id_comp, ← bijection_symm_apply_id,
        Equiv.apply_symm_apply]⟩⟩

attribute [local instance] prodComparison_iso

open Limits

/--
If a reflective subcategory is an exponential ideal, then the reflector preserves binary products.
This is the converse of `exponentialIdeal_of_preserves_binary_products`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variante180ec7ba397ffe9bb1942799d298d03e8d8beccaff79683b219ae5d0c7a2b07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variante180ec7ba397ffe9bb1942799d298d03e8d8beccaff79683b219ae5d0c7a2b07.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1db69e0342437a91c9d70a5546b42ec7295aa863` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
