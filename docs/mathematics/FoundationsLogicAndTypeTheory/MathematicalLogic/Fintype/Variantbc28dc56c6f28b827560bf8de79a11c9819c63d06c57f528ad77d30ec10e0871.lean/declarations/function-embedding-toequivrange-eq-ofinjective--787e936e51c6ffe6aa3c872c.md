# Function.Embedding.toEquivRange_eq_ofInjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f55f058aaae200e353d2d3e0ff6c1fa8952c782",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc28dc56c6f28b827560bf8de79a11c9819c63d06c57f528ad77d30ec10e0871.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9074072-c38e-888f-4846-cc6c74e926c4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b20341d5-5715-c342-b047-ff2bb597845e",
  "kind": "theorem",
  "lexical_name": "Function.Embedding.toEquivRange_eq_ofInjective",
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
  "slug": "function-embedding-toequivrange-eq-ofinjective--787e936e51c6ffe6aa3c872c",
  "source": {
    "blob": "2f55f058aaae200e353d2d3e0ff6c1fa8952c782",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 57,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variantbc28dc56c6f28b827560bf8de79a11c9819c63d06c57f528ad77d30ec10e0871.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:787e936e51c6ffe6aa3c872cc43797efd65bc035d35305c4b7c6250b17e6c75a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variantbc28dc56c6f28b827560bf8de79a11c9819c63d06c57f528ad77d30ec10e0871.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b20341d5-5715-c342-b047-ff2bb597845e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Function.Embedding.toEquivRange_eq_ofInjective :
    f.toEquivRange = Equiv.ofInjective f f.injective := by
  ext
  simp

/-- Extend the domain of `e : Equiv.Perm α`, mapping it through `f : α ↪ β`.
Everything outside of `Set.range f` is kept fixed. Has poor computational performance,
due to exhaustive searching in constructed inverse due to using `Function.Embedding.toEquivRange`.
When a better `α ≃ Set.range f` is known, use `Equiv.Perm.viaSetRange`.
When `[Fintype α]` is not available, a noncomputable version is available as
`Equiv.Perm.viaEmbedding`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variantbc28dc56c6f28b827560bf8de79a11c9819c63d06c57f528ad77d30ec10e0871.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fintype/Variantbc28dc56c6f28b827560bf8de79a11c9819c63d06c57f528ad77d30ec10e0871.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f55f058aaae200e353d2d3e0ff6c1fa8952c782` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
