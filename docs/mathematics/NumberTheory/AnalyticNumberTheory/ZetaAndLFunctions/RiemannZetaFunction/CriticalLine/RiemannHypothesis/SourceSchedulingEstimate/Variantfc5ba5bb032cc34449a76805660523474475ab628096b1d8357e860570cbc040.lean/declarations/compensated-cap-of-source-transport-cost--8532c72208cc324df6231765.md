# compensated_cap_of_source_transport_cost

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b1f562c-49f3-b2e2-6411-400c8e232cdc",
  "kind": "theorem",
  "lexical_name": "compensated_cap_of_source_transport_cost",
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
  "slug": "compensated-cap-of-source-transport-cost--8532c72208cc324df6231765",
  "source": {
    "blob": "93106180b55ff6cd74db5e60b133a276a687e368",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 77,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingEstimate/Variantfc5ba5bb032cc34449a76805660523474475ab628096b1d8357e860570cbc040.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8532c72208cc324df6231765bf1e9d76ed8b87cfc88e0b9ec8170ad06d0ee953",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingEstimate/Variantfc5ba5bb032cc34449a76805660523474475ab628096b1d8357e860570cbc040.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b1f562c-49f3-b2e2-6411-400c8e232cdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensated_cap_of_source_transport_cost (R F C E : ℝ)
    (hR : 200 ≤ R) (hE : 0 ≤ E) (hbudget : SourceTransportBudget R F C E) :
    ∀ A : ℝ, R ≤ A → compensatedSourceSum A ≤ F + 5 * C + E / R ^ 2 := by
  intro A hRA
  have hA : 200 ≤ A := hR.trans hRA
  have hA0 : 0 < A := by linarith
  have hR0 : 0 < R := by linarith
  rcases hbudget A hRA with ⟨n, c, b, d, P, Q, hP, hQ, hb, hr, hsource, hcost⟩
  have hread := native_transport_abs_le A hA c b d P Q hP hQ hb hr
  have hcost' : (5 / A ^ 2) * transportCost c P Q ≤ 5 * C := by
    calc
      _ ≤ (5 / A ^ 2) * (C * A ^ 2) :=
        mul_le_mul_of_nonneg_left hcost (by positivity)
      _ = 5 * C := by field_simp; ring
  have herror : E / A ^ 2 ≤ E / R ^ 2 :=
    div_le_div_of_nonneg_left hE (sq_pos_of_pos hR0) (by nlinarith)
  linarith [le_abs_self
    (readout c b d (sourceCorrelation explicitSecondDerivative A)
      (deriv (sourceCorrelation explicitSecondDerivative A)))]

/-- Application to the existing original all-real #16 consumer, preserving its finite prefix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingEstimate/Variantfc5ba5bb032cc34449a76805660523474475ab628096b1d8357e860570cbc040.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingEstimate/Variantfc5ba5bb032cc34449a76805660523474475ab628096b1d8357e860570cbc040.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93106180b55ff6cd74db5e60b133a276a687e368` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
