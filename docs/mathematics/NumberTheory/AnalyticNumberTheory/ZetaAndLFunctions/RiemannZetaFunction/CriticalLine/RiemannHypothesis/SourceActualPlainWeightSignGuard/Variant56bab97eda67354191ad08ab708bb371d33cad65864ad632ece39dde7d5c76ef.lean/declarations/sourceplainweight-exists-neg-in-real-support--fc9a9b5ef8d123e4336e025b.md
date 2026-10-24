# sourcePlainWeight_exists_neg_in_real_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e9e9b1e-0362-8cca-20f2-71693a3fe9d2",
  "kind": "theorem",
  "lexical_name": "sourcePlainWeight_exists_neg_in_real_support",
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
  "slug": "sourceplainweight-exists-neg-in-real-support--fc9a9b5ef8d123e4336e025b",
  "source": {
    "blob": "126344c6bd645cf247ac9196d0b4be38b2a7fc9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 26,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPlainWeightSignGuard/Variant56bab97eda67354191ad08ab708bb371d33cad65864ad632ece39dde7d5c76ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc9a9b5ef8d123e4336e025b10b43de2ab46f0e2f949f499ed7028c056781a01",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPlainWeightSignGuard/Variant56bab97eda67354191ad08ab708bb371d33cad65864ad632ece39dde7d5c76ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e9e9b1e-0362-8cca-20f2-71693a3fe9d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcePlainWeight_exists_neg_in_real_support (A : ℝ) (hA : 1 ≤ A) :
    ∃ x : ℝ, 1 < x ∧ x < Real.exp (2 * A) ∧ sourcePlainWeight A x < 0 := by
  have hpos : 0 < A := lt_of_lt_of_le (by norm_num : (0 : ℝ) < 1) hA
  obtain ⟨t, ht, htA, hneg⟩ := sourceCorrelation_exists_neg_in_half_support hpos
  refine ⟨Real.exp t, Real.one_lt_exp_iff.mpr ht, Real.exp_lt_exp.mpr htA, ?_⟩
  unfold sourcePlainWeight
  rw [Real.log_exp]
  exact div_neg_of_neg_of_pos hneg (Real.sqrt_pos.mpr (Real.exp_pos t))

end FormalResearch.RiemannHypothesis.SourceActualPlainWeightSignGuard
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPlainWeightSignGuard/Variant56bab97eda67354191ad08ab708bb371d33cad65864ad632ece39dde7d5c76ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPlainWeightSignGuard/Variant56bab97eda67354191ad08ab708bb371d33cad65864ad632ece39dde7d5c76ef.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `126344c6bd645cf247ac9196d0b4be38b2a7fc9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
