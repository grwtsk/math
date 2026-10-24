# determinant_symbol_boundary_summary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5d2c26a-5d74-b0a4-99ea-70ee008c35eb",
  "kind": "theorem",
  "lexical_name": "determinant_symbol_boundary_summary",
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
  "slug": "determinant-symbol-boundary-summary--cc6dda9fdb7a57fab938bbe7",
  "source": {
    "blob": "e3f225db0220f8fe779ca0d632248a9f71165079",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 257,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc6dda9fdb7a57fab938bbe7e3fd3569dbcf7a68f7dd06aa0c7402b08b762d70",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5d2c26a-5d74-b0a4-99ea-70ee008c35eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem determinant_symbol_boundary_summary
    (L : DeterminantLineSymbol)
    (Z : ZetaRegularizedDeterminantSymbol)
    (F : FredholmDeterminantSymbol)
    (T : TraceLogExpansionSymbol)
    (A : AnomalyFormulaSymbol) :
    ¬ DeterminantLineSymbolOwnsFunctoriality L ∧
      ¬ DeterminantLineSymbolOwnsAnalyticComparison L ∧
      ¬ ZetaRegularizedDeterminantSymbolOwnsRegularization Z ∧
      ¬ FredholmDeterminantSymbolOwnsConvergence F ∧
      ¬ TraceLogExpansionSymbolOwnsExpansion T ∧
      ¬ AnomalyFormulaSymbolOwnsFormula A :=
  ⟨determinant_line_symbol_not_functoriality_authority L,
    determinant_line_symbol_not_analytic_comparison_authority L,
    zeta_regularized_symbol_not_regularization_authority Z,
    fredholm_symbol_not_convergence_authority F,
    trace_log_symbol_not_expansion_authority T,
    anomaly_symbol_not_formula_authority A⟩

/-- Convert a determinant-line authority into an analytic certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3f225db0220f8fe779ca0d632248a9f71165079` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
