# determinant_symbol_boundary_summary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b7b1114b0ae9a896c41a0ab1105b0a1a8bc6f003",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 249,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cbe92b31-7d3b-9045-9dca-296ca3c30538",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1761b1a3-ffd2-5d22-e21a-47c15845c354",
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
  "slug": "determinant-symbol-boundary-summary--95440fb2621ce5291e83038d",
  "source": {
    "blob": "b7b1114b0ae9a896c41a0ab1105b0a1a8bc6f003",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 249,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95440fb2621ce5291e83038d30dadf6bd6edcfda52659d73160775045978d32b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1761b1a3-ffd2-5d22-e21a-47c15845c354`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–268.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7b1114b0ae9a896c41a0ab1105b0a1a8bc6f003` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
