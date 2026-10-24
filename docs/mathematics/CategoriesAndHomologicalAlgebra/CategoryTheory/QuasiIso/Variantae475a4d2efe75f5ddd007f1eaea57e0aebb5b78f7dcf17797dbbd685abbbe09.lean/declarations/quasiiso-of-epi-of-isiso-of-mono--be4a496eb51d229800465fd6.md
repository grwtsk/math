# quasiIso_of_epi_of_isIso_of_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7a111c7cce765e3cf1cc48ce46589b8799ac8170",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae475a4d2efe75f5ddd007f1eaea57e0aebb5b78f7dcf17797dbbd685abbbe09.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:827f8421-cab4-a8a8-0e86-615bd77f1efa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0be46a2a-7ed8-81fb-6059-ed7d8eb49511",
  "kind": "lemma",
  "lexical_name": "quasiIso_of_epi_of_isIso_of_mono",
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
  "slug": "quasiiso-of-epi-of-isiso-of-mono--be4a496eb51d229800465fd6",
  "source": {
    "blob": "7a111c7cce765e3cf1cc48ce46589b8799ac8170",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 142,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variantae475a4d2efe75f5ddd007f1eaea57e0aebb5b78f7dcf17797dbbd685abbbe09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be4a496eb51d229800465fd6e1fbc0a4483bd04d7eaeaf87c5571a2f8c840263",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variantae475a4d2efe75f5ddd007f1eaea57e0aebb5b78f7dcf17797dbbd685abbbe09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0be46a2a-7ed8-81fb-6059-ed7d8eb49511`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma quasiIso_of_epi_of_isIso_of_mono (φ : S₁ ⟶ S₂) [Epi φ.τ₁] [IsIso φ.τ₂] [Mono φ.τ₃] :
    QuasiIso φ := by
  rw [((LeftHomologyMapData.ofEpiOfIsIsoOfMono φ) S₁.leftHomologyData).quasiIso_iff]
  dsimp
  infer_instance

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variantae475a4d2efe75f5ddd007f1eaea57e0aebb5b78f7dcf17797dbbd685abbbe09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variantae475a4d2efe75f5ddd007f1eaea57e0aebb5b78f7dcf17797dbbd685abbbe09.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a111c7cce765e3cf1cc48ce46589b8799ac8170` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
