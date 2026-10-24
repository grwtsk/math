# exists_nat_measurableEquiv_range_coe_fin_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e12173d-d930-239b-b92d-d3e41afb536b",
  "kind": "theorem",
  "lexical_name": "exists_nat_measurableEquiv_range_coe_fin_of_finite",
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
  "slug": "exists-nat-measurableequiv-range-coe-fin-of-finite--dd36095b68cc1804f3065f9e",
  "source": {
    "blob": "8c38dafd8a2f841d4ff3a8836bf2c14f2e54b0b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 26,
    "path": "GRWTSK/Analysis/MeasureTheory/EmbeddingReal/Variant2372d3ade28ce7b92c7793931f0c97ec96f20da3647bb51bdd7c454609590354.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd36095b68cc1804f3065f9efedde89a9d51431cc7dc7f7c4a812337429d5a75",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/EmbeddingReal/Variant2372d3ade28ce7b92c7793931f0c97ec96f20da3647bb51bdd7c454609590354.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e12173d-d930-239b-b92d-d3e41afb536b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_nat_measurableEquiv_range_coe_fin_of_finite [Finite α] :
    ∃ n : ℕ, Nonempty (α ≃ᵐ range ((↑) : Fin n → ℝ)) := by
  obtain ⟨n, ⟨n_equiv⟩⟩ := Finite.exists_equiv_fin α
  refine ⟨n, ⟨PolishSpace.Equiv.measurableEquiv (n_equiv.trans ?_)⟩⟩
  exact Equiv.ofInjective _ (Nat.cast_injective.comp Fin.val_injective)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/EmbeddingReal/Variant2372d3ade28ce7b92c7793931f0c97ec96f20da3647bb51bdd7c454609590354.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/EmbeddingReal/Variant2372d3ade28ce7b92c7793931f0c97ec96f20da3647bb51bdd7c454609590354.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c38dafd8a2f841d4ff3a8836bf2c14f2e54b0b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
