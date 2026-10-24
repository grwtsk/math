# checked_connes_tao_imports_do_not_alone_imply_determinant_exactness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f2f23e0fafda458ded151f0f44c3160de6ee094c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 210,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/dad03915adf8fbcaf8795a2a37bfb47cfa5bcda70a000b55a69bac445dbd7271.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9a45e087-7a21-8304-0317-88bf1dda2f5c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ed61a8c-8610-16c2-19c6-d3ee087a91e0",
  "kind": "theorem",
  "lexical_name": "checked_connes_tao_imports_do_not_alone_imply_determinant_exactness",
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
  "slug": "checked-connes-tao-imports-do-not-alone-imply-determinant-exactness--a0283e859e7f1f2161d86c6b",
  "source": {
    "blob": "f2f23e0fafda458ded151f0f44c3160de6ee094c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 210,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ConnesTaoCheckedTheoremImports/Variantdad03915adf8fbcaf8795a2a37bfb47cfa5bcda70a000b55a69bac445dbd7271.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0283e859e7f1f2161d86c6b5816148b8f540a183d8a69a6495c23f0a1b67bab",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ConnesTaoCheckedTheoremImports/Variantdad03915adf8fbcaf8795a2a37bfb47cfa5bcda70a000b55a69bac445dbd7271.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ed61a8c-8610-16c2-19c6-d3ee087a91e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem checked_connes_tao_imports_do_not_alone_imply_determinant_exactness :
    checkedConnesSpectralTripleImportSurface.determinantBoundaryTransferAllowed = true ∧
      checkedTaoHeatflowImportSurface.determinantBoundaryTransferAllowed = true ∧
      Think.Arithmetic.GNSDeterminantExactnessBoundary.defaultGNSDeterminantExactnessBoundary.determinantExactness = false := by
  exact ⟨rfl, rfl, rfl⟩

end Think.Arithmetic.ConnesTaoCheckedTheoremImports
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ConnesTaoCheckedTheoremImports/Variantdad03915adf8fbcaf8795a2a37bfb47cfa5bcda70a000b55a69bac445dbd7271.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ConnesTaoCheckedTheoremImports/Variantdad03915adf8fbcaf8795a2a37bfb47cfa5bcda70a000b55a69bac445dbd7271.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2f23e0fafda458ded151f0f44c3160de6ee094c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
