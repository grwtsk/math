# boundary_compression_residue_controls_macro_absorption

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3b13dd2-4f09-579a-e30f-93a2c47bb371",
  "kind": "theorem",
  "lexical_name": "boundary_compression_residue_controls_macro_absorption",
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
  "slug": "boundary-compression-residue-controls-macro-absorption--211eb068bd4cd7de8fb7b959",
  "source": {
    "blob": "44afa7167ff32ae392c5e555f706a96a0bf3e1d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 326,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MacroCompression/Variant798954990535ee1d2951fb5014671c7bc4f23c93a3bcac048c03e0d19a687127.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:211eb068bd4cd7de8fb7b9591583c03fcfd531133f212e4d8888ff877917c0f2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MacroCompression/Variant798954990535ee1d2951fb5014671c7bc4f23c93a3bcac048c03e0d19a687127.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3b13dd2-4f09-579a-e30f-93a2c47bb371`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_compression_residue_controls_macro_absorption :
    (boundaryCompressionResidue
        "residual_complex_paired_obstruction" ["a", "b"] 2 2).macroAbsorbed =
        true ∧
      (boundaryCompressionResidue
        "residual_complex_paired_obstruction" ["a", "b", "c"] 4 2).macroAbsorbed =
        false ∧
      (boundaryCompressionResidue
        "residual_complex_paired_obstruction" ["a", "b", "c"] 4 2).compressionResidue =
        2 := by
  native_decide

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MacroCompression/Variant798954990535ee1d2951fb5014671c7bc4f23c93a3bcac048c03e0d19a687127.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MacroCompression/Variant798954990535ee1d2951fb5014671c7bc4f23c93a3bcac048c03e0d19a687127.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44afa7167ff32ae392c5e555f706a96a0bf3e1d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
