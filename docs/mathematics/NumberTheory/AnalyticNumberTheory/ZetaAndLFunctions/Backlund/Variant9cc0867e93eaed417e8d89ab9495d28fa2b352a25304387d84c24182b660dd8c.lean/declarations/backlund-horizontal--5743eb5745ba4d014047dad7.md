# backlund_horizontal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19566197-0513-472b-db8a-fd177eb7774b",
  "kind": "theorem",
  "lexical_name": "backlund_horizontal",
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
  "slug": "backlund-horizontal--5743eb5745ba4d014047dad7",
  "source": {
    "blob": "b53b984edd7dd34a14c656c928b79798ae274f69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 338,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5743eb5745ba4d014047dad7ce4fb78941481f675a90155c2571eac15899ee71",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19566197-0513-472b-db8a-fd177eb7774b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem backlund_horizontal : ∃ C T₀ : ℝ, ∀ T : ℝ, T₀ ≤ T →
    (∀ ρ, IsNontrivialZero ρ → ρ.im ≠ T) →
    |(∫ σ in (1 / 2 : ℝ)..2, logDeriv riemannZeta (σ + T * I)).im| ≤ C * Real.log T :=
  backlund_horizontal_of_count reZeroSet_card_le

/-- **Backlund's bound, explicit**: for T ≥ 4 a zero-free height,
|Im ∫_{1/2}^{2} ζ'/ζ(σ+iT)dσ| ≤ 2π·(C_J + 1)·log T with C_J = (1/log(0.9/0.8))(|log 40| + 2) ≈ 48.3
(so the constant is ≈ 310). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b53b984edd7dd34a14c656c928b79798ae274f69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
