# primitivePrimeCombination

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ed8049e2ebd7fe1536b989344a355597c5452c996df3b9fe92941935869f062",
  "kind": "def",
  "lexical_name": "primitivePrimeCombination",
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
  "slug": "primitiveprimecombination--7d750be7c2f77fa0c90786ca",
  "source": {
    "blob": "d5e4eaf6982065de98b6a60d149cdc73ca49e765",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 119,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variantc3b586270142ff715940d5e847401e62a9dcff57be132398a8a3bbb94d13f10a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d750be7c2f77fa0c90786ca3f4b791507403f0ea107910c94a8be01ece25e37",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variantc3b586270142ff715940d5e847401e62a9dcff57be132398a8a3bbb94d13f10a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4ed8049e2ebd7fe1536b989344a355597c5452c996df3b9fe92941935869f062`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def primitivePrimeCombination (A : ℝ) : ℝ :=
  (∑ p ∈ primeLogInventory (2 * A), Real.log (p : ℝ) *
    Real.exp (-Real.log (p : ℝ) / 2) * primitiveCorrelationTwo A (Real.log p)) +
  (∑ p ∈ primeLogInventory (2 * A), Real.log (p : ℝ) *
    Real.exp (-Real.log (p : ℝ) / 2) * primitiveCorrelationOne A (Real.log p)) / 2 +
  (∑ p ∈ primeLogInventory (2 * A), Real.log (p : ℝ) *
    Real.exp (-Real.log (p : ℝ) / 2) * primitiveCorrelationZero A (Real.log p)) / 16

/-- The actual prime adapter is an exact signed expansion, not an absolute estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variantc3b586270142ff715940d5e847401e62a9dcff57be132398a8a3bbb94d13f10a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variantc3b586270142ff715940d5e847401e62a9dcff57be132398a8a3bbb94d13f10a.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5e4eaf6982065de98b6a60d149cdc73ca49e765` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
