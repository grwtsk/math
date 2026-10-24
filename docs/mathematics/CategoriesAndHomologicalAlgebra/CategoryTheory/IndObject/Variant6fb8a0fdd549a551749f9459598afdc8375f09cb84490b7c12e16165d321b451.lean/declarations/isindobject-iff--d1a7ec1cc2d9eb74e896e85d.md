# isIndObject_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6e27e430e0f444f0211a731e18554be13f1a9020",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 181,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6dd6ddbe-462e-1817-d985-a43098c22f88",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3952b159-6f8a-8644-1b8d-9d385b89ecf8",
  "kind": "theorem",
  "lexical_name": "isIndObject_iff",
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
  "slug": "isindobject-iff--d1a7ec1cc2d9eb74e896e85d",
  "source": {
    "blob": "6e27e430e0f444f0211a731e18554be13f1a9020",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 181,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1a7ec1cc2d9eb74e896e85d91afdde7ea8b86c54be43df0b77549704652ce3e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3952b159-6f8a-8644-1b8d-9d385b89ecf8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIndObject_iff (A : Cᵒᵖ ⥤ Type v) : IsIndObject A ↔
    (IsFiltered (CostructuredArrow yoneda A) ∧ FinallySmall.{v} (CostructuredArrow yoneda A)) :=
  ⟨fun h => ⟨h.isFiltered, h.finallySmall⟩,
   fun ⟨_, _⟩ => isIndObject_of_isFiltered_of_finallySmall A⟩

/-- If a limit already exists in `C`, then the limit of the image of the diagram under the Yoneda
embedding is an ind-object. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant6fb8a0fdd549a551749f9459598afdc8375f09cb84490b7c12e16165d321b451.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e27e430e0f444f0211a731e18554be13f1a9020` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
