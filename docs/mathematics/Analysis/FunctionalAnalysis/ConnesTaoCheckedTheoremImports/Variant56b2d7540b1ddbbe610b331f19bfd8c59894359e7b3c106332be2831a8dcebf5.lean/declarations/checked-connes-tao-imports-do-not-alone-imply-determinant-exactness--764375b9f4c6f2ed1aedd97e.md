# checked_connes_tao_imports_do_not_alone_imply_determinant_exactness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed9dd3b2-8f40-3791-c34f-253329065c8a",
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
  "slug": "checked-connes-tao-imports-do-not-alone-imply-determinant-exactness--764375b9f4c6f2ed1aedd97e",
  "source": {
    "blob": "777df0e965b16626a31bcc2b74a7b88ca8e18768",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 218,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ConnesTaoCheckedTheoremImports/Variant56b2d7540b1ddbbe610b331f19bfd8c59894359e7b3c106332be2831a8dcebf5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:764375b9f4c6f2ed1aedd97e7bdd349058175cb79b0f1c0ac6ea946a1f76481c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ConnesTaoCheckedTheoremImports/Variant56b2d7540b1ddbbe610b331f19bfd8c59894359e7b3c106332be2831a8dcebf5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed9dd3b2-8f40-3791-c34f-253329065c8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–224.

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

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ConnesTaoCheckedTheoremImports/Variant56b2d7540b1ddbbe610b331f19bfd8c59894359e7b3c106332be2831a8dcebf5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ConnesTaoCheckedTheoremImports/Variant56b2d7540b1ddbbe610b331f19bfd8c59894359e7b3c106332be2831a8dcebf5.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `777df0e965b16626a31bcc2b74a7b88ca8e18768` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
