# actualAdjointLowerColumnTrace_eq_half_inventory_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6217f58-277a-af7b-9fb9-f9ca4f8f26d5",
  "kind": "theorem",
  "lexical_name": "actualAdjointLowerColumnTrace_eq_half_inventory_product",
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
  "slug": "actualadjointlowercolumntrace-eq-half-inventory-product--bb35a7c22906b6da7e53a844",
  "source": {
    "blob": "5d4b903ac1363645998f72d4247f072494ca4759",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 178,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Ceb98b3d10eb4e947ac3ActualLowerTraceArithmeticExpansion/Variant8739dd9be8bbd0032d363fce33074a015f73a30a8b33f4248a013037bda02a97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb35a7c22906b6da7e53a8448fca9f8b533b64c88b92fe517b9aed73100f44b0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Ceb98b3d10eb4e947ac3ActualLowerTraceArithmeticExpansion/Variant8739dd9be8bbd0032d363fce33074a015f73a30a8b33f4248a013037bda02a97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6217f58-277a-af7b-9fb9-f9ca4f8f26d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAdjointLowerColumnTrace_eq_half_inventory_product {A : ℝ} (hA : 1 ≤ A) :
    actualAdjointLowerColumnTrace A =
      -2 * (actualCenteredColumnHalfInventory A - actualCenteredColumnTerminalTrace A) *
        actualLowerColumnMangoldtBracket A := by
  have hUa : 0 < ((vaughanCutoff A + 1 : ℕ) : ℝ) := by positivity
  have hs : Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) ≠ 0 :=
    Real.sqrt_ne_zero'.mpr hUa
  unfold actualAdjointLowerColumnTrace
  rw [actualAdjointColumnPrimitive_at_lower_closed_inventory hA,
    actualLowerColumnTimeFactor_eq_closed_window hA,
    actualLowerColumnPrimeWindow_eq_halfRow hA]
  unfold actualLowerColumnMangoldtBracket
  field_simp

end
end FormalResearch.RiemannHypothesis.ActualLowerTraceArithmeticExpansion
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Ceb98b3d10eb4e947ac3ActualLowerTraceArithmeticExpansion/Variant8739dd9be8bbd0032d363fce33074a015f73a30a8b33f4248a013037bda02a97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Ceb98b3d10eb4e947ac3ActualLowerTraceArithmeticExpansion/Variant8739dd9be8bbd0032d363fce33074a015f73a30a8b33f4248a013037bda02a97.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d4b903ac1363645998f72d4247f072494ca4759` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
