# types_ι_jointly_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c1b3437fd49137daa23c24d703fa3635f3360c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 194,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b183124ed0be896054c234be7d05a8073b48cd23ad6f972194a444c9f98574f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c947c4b-509d-f239-338c-7d8a190235fd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc3e6234-167a-480a-793d-e64f4c8b59c6",
  "kind": "theorem",
  "lexical_name": "types_ι_jointly_surjective",
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
  "slug": "types-jointly-surjective--fe7252ce5c8993a9c20e46dd",
  "source": {
    "blob": "0c1b3437fd49137daa23c24d703fa3635f3360c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 194,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variantb183124ed0be896054c234be7d05a8073b48cd23ad6f972194a444c9f98574f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe7252ce5c8993a9c20e46dde5007c49b93861f899109666fea62a61cc4a99e5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variantb183124ed0be896054c234be7d05a8073b48cd23ad6f972194a444c9f98574f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc3e6234-167a-480a-793d-e64f4c8b59c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem types_ι_jointly_surjective (D : GlueData (Type v)) (x : D.glued) :
    ∃ (i : _) (y : D.U i), D.ι i y = x := by
  delta CategoryTheory.GlueData.ι
  simp_rw [← Multicoequalizer.ι_sigmaπ D.diagram]
  rcases D.types_π_surjective x with ⟨x', rfl⟩
  rw [← dsimp% ConcreteCategory.congr_hom
    (colimit.isoColimitCocone (Types.coproductColimitCocone _)).hom_inv_id x']
  rcases (colimit.isoColimitCocone (Types.coproductColimitCocone _)).hom x' with ⟨i, y⟩
  refine ⟨i, y, ?_⟩
  simp
  rfl

variable (F : C ⥤ C')

section
variable [∀ i j k, PreservesLimit (cospan (D.f i j) (D.f i k)) F]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variantb183124ed0be896054c234be7d05a8073b48cd23ad6f972194a444c9f98574f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variantb183124ed0be896054c234be7d05a8073b48cd23ad6f972194a444c9f98574f8.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c1b3437fd49137daa23c24d703fa3635f3360c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
