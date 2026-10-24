# finite_factor_product_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa9c391c-90d3-6ee9-2f9f-893301954965",
  "kind": "theorem",
  "lexical_name": "finite_factor_product_limit",
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
  "slug": "finite-factor-product-limit--66eca435244637b449820c67",
  "source": {
    "blob": "ef5f6d1e3115a4d850dd204f45ed7e4e957e9659",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 344,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FrozenSourceTransferStatements/Variant84bb92ad6f9909579d95ad23d277931bde1b86600a07936b15af87ffa505cb78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66eca435244637b449820c67205a8c8bcf7844fc082a0077cb52636d42f78735",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FrozenSourceTransferStatements/Variant84bb92ad6f9909579d95ad23d277931bde1b86600a07936b15af87ffa505cb78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa9c391c-90d3-6ee9-2f9f-893301954965`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_factor_product_limit (E : ℂ → ℂ) (hE : ContinuousAt E (1 / 2)) :
    Tendsto (fun z : ℂ ↦ Complex.exp (-z) * E z * V z)
      (𝓝 (1 / 2)) (𝓝 0) := by
  have h := ((Complex.continuous_exp.comp continuous_neg).continuousAt.tendsto.mul
    hE.tendsto).mul V_hasDerivAt_positive_pole.continuousAt.tendsto
  simpa only [V_positive_pole_zero, mul_zero, Function.comp_apply] using h

/-- The entire discrepancy at the removed pole persists for every finite-valued factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FrozenSourceTransferStatements/Variant84bb92ad6f9909579d95ad23d277931bde1b86600a07936b15af87ffa505cb78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FrozenSourceTransferStatements/Variant84bb92ad6f9909579d95ad23d277931bde1b86600a07936b15af87ffa505cb78.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef5f6d1e3115a4d850dd204f45ed7e4e957e9659` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
