# exists_independent_column_selection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0020b369-230a-2d58-9665-b89d67ad0d79",
  "kind": "theorem",
  "lexical_name": "exists_independent_column_selection",
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
  "slug": "exists-independent-column-selection--e89cac011d34d9dec59bf4af",
  "source": {
    "blob": "6aace9f2684c1bf4f57419d9827903cd23c67c93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 98,
    "path": "GRWTSK/Algebra/LinearAlgebra/PivotExistence/Varianteb444d3c0481ae5c97d314657cdd9bf68df55b7641544e3619fab989ad2c3dbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e89cac011d34d9dec59bf4af166c497196b8d626a57cdc79ed79f68d59f6e99a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PivotExistence/Varianteb444d3c0481ae5c97d314657cdd9bf68df55b7641544e3619fab989ad2c3dbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0020b369-230a-2d58-9665-b89d67ad0d79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_independent_column_selection (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A.rank = k) :
    ∃ c : Fin k → Fin n, Function.Injective c ∧ LinearIndependent ℝ (A.col ∘ c) := by
  classical
  have hdim : Module.finrank ℝ (Submodule.span ℝ (Set.range A.col)) = k := by
    rw [← Matrix.rank_eq_finrank_span_cols, hA]
  have hex := Submodule.exists_fun_fin_finrank_span_eq ℝ (Set.range A.col)
  rw [hdim] at hex
  obtain ⟨v, hv, _, hlin⟩ := hex
  choose c hc using hv
  have he : A.col ∘ c = v := funext hc
  have hinj : Function.Injective c := by
    intro i j hij
    apply hlin.injective
    rw [← hc i, ← hc j, hij]
  exact ⟨c, hinj, he.symm ▸ hlin⟩

/-- An arbitrary full-rank real frame has a nonzero selected maximal minor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PivotExistence/Varianteb444d3c0481ae5c97d314657cdd9bf68df55b7641544e3619fab989ad2c3dbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PivotExistence/Varianteb444d3c0481ae5c97d314657cdd9bf68df55b7641544e3619fab989ad2c3dbb.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6aace9f2684c1bf4f57419d9827903cd23c67c93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
