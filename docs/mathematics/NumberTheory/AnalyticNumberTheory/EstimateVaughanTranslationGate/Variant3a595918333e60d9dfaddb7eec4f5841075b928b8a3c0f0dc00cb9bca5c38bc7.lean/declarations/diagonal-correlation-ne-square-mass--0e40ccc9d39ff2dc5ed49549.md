# diagonal_correlation_ne_square_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f90fe4db-55dd-3fd0-43e8-931641cf0fb8",
  "kind": "theorem",
  "lexical_name": "diagonal_correlation_ne_square_mass",
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
  "slug": "diagonal-correlation-ne-square-mass--0e40ccc9d39ff2dc5ed49549",
  "source": {
    "blob": "421b34c6dc2dd6dfd82bc861c0d19b7b0716991b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 204,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateVaughanTranslationGate/Variant3a595918333e60d9dfaddb7eec4f5841075b928b8a3c0f0dc00cb9bca5c38bc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e40ccc9d39ff2dc5ed49549580892494f925e9d2f0b550d91af3a54a2a3875d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/EstimateVaughanTranslationGate/Variant3a595918333e60d9dfaddb7eec4f5841075b928b8a3c0f0dc00cb9bca5c38bc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f90fe4db-55dd-3fd0-43e8-931641cf0fb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonal_correlation_ne_square_mass (A t : ℝ) (hA : 1 ≤ A) (ht : A ≤ t) :
    sourceCorrelation explicitSecondDerivative A (2*t) = 0 ∧
      sourceCorrelation explicitSecondDerivative A 0 = 1 := by
  constructor
  · apply sourceCorrelation_eq_zero_of_two_mul_le_abs A _ (by linarith)
    exact (by linarith : 2*A ≤ 2*t).trans (le_abs_self _)
  · exact EstimateCorrelation.actual_correlation_at_zero A hA

/-- Exact coupled remainder, including every short term and the actual diagonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/EstimateVaughanTranslationGate/Variant3a595918333e60d9dfaddb7eec4f5841075b928b8a3c0f0dc00cb9bca5c38bc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateVaughanTranslationGate/Variant3a595918333e60d9dfaddb7eec4f5841075b928b8a3c0f0dc00cb9bca5c38bc7.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `421b34c6dc2dd6dfd82bc861c0d19b7b0716991b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
