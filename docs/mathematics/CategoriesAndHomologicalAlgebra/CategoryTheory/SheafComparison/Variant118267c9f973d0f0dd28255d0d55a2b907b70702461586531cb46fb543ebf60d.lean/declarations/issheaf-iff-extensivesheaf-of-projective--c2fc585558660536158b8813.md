# isSheaf_iff_extensiveSheaf_of_projective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "42659c7da24085423f8e4ac561f1f193a50f8049",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 247,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8252df25-d351-4f32-37db-b942c8cc3024",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4e2e2dc3-2625-a8ea-1432-9cb5c949c956",
  "kind": "theorem",
  "lexical_name": "isSheaf_iff_extensiveSheaf_of_projective",
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
  "slug": "issheaf-iff-extensivesheaf-of-projective--c2fc585558660536158b8813",
  "source": {
    "blob": "42659c7da24085423f8e4ac561f1f193a50f8049",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 247,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2fc585558660536158b8813f00d47c8282d00217b43f66fb41db0651d0907a5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e2e2dc3-2625-a8ea-1432-9cb5c949c956`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSheaf_iff_extensiveSheaf_of_projective [Preregular C] [FinitaryExtensive C]
    [∀ (X : C), Projective X] :
    IsSheaf (coherentTopology C) F ↔ IsSheaf (extensiveTopology C) F := by
  rw [isSheaf_iff_preservesFiniteProducts_of_projective, isSheaf_iff_preservesFiniteProducts]

/--
The categories of coherent sheaves and extensive sheaves on `C` are equivalent if `C` is
preregular, finitary extensive, and every object is projective.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42659c7da24085423f8e4ac561f1f193a50f8049` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
