# norm_goldbachProgressionArcResidual_le_frequency_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddb741bd-9c5a-fe7b-7f2a-d3404f2f9d49",
  "kind": "theorem",
  "lexical_name": "norm_goldbachProgressionArcResidual_le_frequency_budget",
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
  "slug": "norm-goldbachprogressionarcresidual-le-frequency-budget--e466f317d4948b62dbd989e7",
  "source": {
    "blob": "c3a58baf8a462dd2c4a6fd6be73a4868cb569788",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 94,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e466f317d4948b62dbd989e7cc738b8f2cbb4369082ae838a1845b4ca598e538",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddb741bd-9c5a-fe7b-7f2a-d3404f2f9d49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_goldbachProgressionArcResidual_le_frequency_budget
    {Q N : ℕ} (B : ℕ → ℕ → ℝ)
    (hp : ∀ q, 0 < q → q ≤ Q → ∀ r, r < q → q.Coprime r →
      0 ≤ B q r ∧ ∀ k ≤ N, ‖goldbachResiduePrefixDiscrepancy k q r‖ ≤ B q r)
    {aq : ℕ × ℕ} (haq : aq ∈ goldbachRationalArcIndices Q) :
    ‖goldbachProgressionArcResidual Q N aq‖ ≤
      goldbachFrequencyArcErrorBudget Q N B aq := by
  rw [goldbachProgressionArcResidual_eq_integral]
  unfold goldbachFrequencyArcErrorBudget
  apply norm_integral_le_of_norm_le (integrableOn_goldbachClippedFrequencyEnvelope Q N B aq)
  rw [ae_restrict_iff' (measurable_goldbachClippedRationalArc Q N aq)]
  exact Filter.Eventually.of_forall fun x hx =>
    norm_goldbachProgressionResidual_le_clipped_frequency_envelope B hp haq hx

/-- The new per-arc budget cannot exceed the previous prefix budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3a58baf8a462dd2c4a6fd6be73a4868cb569788` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
