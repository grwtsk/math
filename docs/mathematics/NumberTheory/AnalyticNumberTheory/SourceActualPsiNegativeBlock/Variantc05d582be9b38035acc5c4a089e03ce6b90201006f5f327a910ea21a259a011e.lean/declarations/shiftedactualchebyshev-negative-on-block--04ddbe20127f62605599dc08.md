# shiftedActualChebyshev_negative_on_block

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc6c2d9a-bc78-ad98-9bbf-e1132df4fba5",
  "kind": "theorem",
  "lexical_name": "shiftedActualChebyshev_negative_on_block",
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
  "slug": "shiftedactualchebyshev-negative-on-block--04ddbe20127f62605599dc08",
  "source": {
    "blob": "65b265f85dddff7104913cde1e9a775136827982",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 63,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variantc05d582be9b38035acc5c4a089e03ce6b90201006f5f327a910ea21a259a011e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04ddbe20127f62605599dc089945dc399184d3919d907a69d50a8d60ddfdf554",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variantc05d582be9b38035acc5c4a089e03ce6b90201006f5f327a910ea21a259a011e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc6c2d9a-bc78-ad98-9bbf-e1132df4fba5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shiftedActualChebyshev_negative_on_block (y : ℝ)
    (hy : (13 / 2 : ℝ) ≤ y) (hy7 : y < 7) :
    shiftedActualChebyshev y ≤ -(1 / 6 : ℝ) := by
  have hlog : Real.log (60 : ℝ) = 2 * Real.log 2 + Real.log 15 := by
    rw [show (60 : ℝ) = 2 ^ 2 * 15 by norm_num,
      Real.log_mul (by positivity) (by norm_num), Real.log_pow]
    ring
  have hgamma := Real.eulerMascheroniConstant_lt_two_thirds
  unfold shiftedActualChebyshev
  rw [actual_psi_on_negative_block y hy hy7, hlog]
  linarith [log_fifteen_lt_three]

/-- The assigned closed prime-seven value includes its new log-seven atom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variantc05d582be9b38035acc5c4a089e03ce6b90201006f5f327a910ea21a259a011e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variantc05d582be9b38035acc5c4a089e03ce6b90201006f5f327a910ea21a259a011e.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65b265f85dddff7104913cde1e9a775136827982` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
