# exact_quarter_budget_dominates_subexponential_profile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50806844-2f25-f7de-aaa9-bf336979f891",
  "kind": "theorem",
  "lexical_name": "exact_quarter_budget_dominates_subexponential_profile",
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
  "slug": "exact-quarter-budget-dominates-subexponential-profile--12be4aaf25614f8541855eb2",
  "source": {
    "blob": "c9ebe7dc79214c3895a32c1981f16617f93d25e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AbsoluteEnvelopeFiniteBudget/Variant0e30fbe73b88e20f271411642fbac1fe64231b1352a30f82b1966eb5e293686e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12be4aaf25614f8541855eb281bbfa23e72de7018d805bf9a22eb484da0d4604",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AbsoluteEnvelopeFiniteBudget/Variant0e30fbe73b88e20f271411642fbac1fe64231b1352a30f82b1966eb5e293686e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50806844-2f25-f7de-aaa9-bf336979f891`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_quarter_budget_dominates_subexponential_profile {A : ℝ} (hA : 16 ≤ A) :
    comparisonProfile A ≤ quarterBudget A := by
  have hA0 : 0 ≤ A := by linarith
  have hs := Real.sq_sqrt hA0
  have hy : 4 ≤ Real.sqrt A := by nlinarith [Real.sqrt_nonneg A]
  have hhalf : Real.sqrt A + Real.sqrt A ≤ A / 2 := by nlinarith
  have he := Real.add_one_le_exp (Real.sqrt A)
  have he2 : Real.exp (Real.sqrt A) ^ 2 ≤ Real.exp (A / 2) := by
    simpa only [Real.exp_add, pow_two] using Real.exp_le_exp.mpr hhalf
  rw [exact_source_quarter_budget hA0, comparisonProfile]
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AbsoluteEnvelopeFiniteBudget/Variant0e30fbe73b88e20f271411642fbac1fe64231b1352a30f82b1966eb5e293686e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AbsoluteEnvelopeFiniteBudget/Variant0e30fbe73b88e20f271411642fbac1fe64231b1352a30f82b1966eb5e293686e.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9ebe7dc79214c3895a32c1981f16617f93d25e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
