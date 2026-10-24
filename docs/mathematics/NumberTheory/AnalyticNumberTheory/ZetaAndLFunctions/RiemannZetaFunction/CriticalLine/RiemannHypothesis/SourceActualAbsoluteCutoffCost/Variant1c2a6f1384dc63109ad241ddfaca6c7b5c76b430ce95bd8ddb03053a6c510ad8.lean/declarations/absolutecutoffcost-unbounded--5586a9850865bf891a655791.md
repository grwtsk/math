# absoluteCutoffCost_unbounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c057b5fa29778b9671ce287235a06ab5d31ea417",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 191,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c2a6f1384dc63109ad241ddfaca6c7b5c76b430ce95bd8ddb03053a6c510ad8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c5616504-5768-9b02-6c6a-2791ca899e68",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8cd6af33-debd-4e9a-bbe2-b78dce206863",
  "kind": "theorem",
  "lexical_name": "absoluteCutoffCost_unbounded",
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
  "slug": "absolutecutoffcost-unbounded--5586a9850865bf891a655791",
  "source": {
    "blob": "c057b5fa29778b9671ce287235a06ab5d31ea417",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 191,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsoluteCutoffCost/Variant1c2a6f1384dc63109ad241ddfaca6c7b5c76b430ce95bd8ddb03053a6c510ad8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5586a9850865bf891a6557919132c0ec85f78068b04379c44449243c8545cc02",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsoluteCutoffCost/Variant1c2a6f1384dc63109ad241ddfaca6c7b5c76b430ce95bd8ddb03053a6c510ad8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cd6af33-debd-4e9a-bbe2-b78dce206863`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem absoluteCutoffCost_unbounded (C R : ℝ) :
    ∃ A : ℝ, max 1 R ≤ A ∧ C < absoluteCutoffCost A := by
  obtain ⟨k, hk⟩ := exists_nat_gt (max (Real.exp (12 * C)) ((max 1 R) ^ 2 + 1))
  have hkexp : Real.exp (12 * C) < (k : ℝ) := (le_max_left _ _).trans_lt hk
  have hklarge : (max 1 R) ^ 2 + 1 < (k : ℝ) := (le_max_right _ _).trans_lt hk
  let A : ℝ := Real.sqrt (12 * (k : ℝ))
  have hR : max 1 R ≤ A := by
    apply Real.le_sqrt_of_sq_le
    have hkR : (0 : ℝ) ≤ k := Nat.cast_nonneg k
    nlinarith
  have hA : 1 ≤ A := (le_max_left _ _).trans hR
  have hU : vaughanCutoff A = 12 * k := vaughanCutoff_sqrt_twelve_mul k
  have hdiv : vaughanCutoff A / 12 = k := by rw [hU]; omega
  have hlog : 12 * C < Real.log (k + 1 : ℕ) := by
    have hlt : Real.exp (12 * C) < (k + 1 : ℕ) := by
      simpa only [Nat.cast_add, Nat.cast_one] using hkexp.trans (lt_add_one (k : ℝ))
    simpa only [Real.log_exp] using Real.log_lt_log (Real.exp_pos _) hlt
  have hbound := log_div_twelve_le_absoluteCutoffCost hA
  rw [hdiv] at hbound
  have hC : C < Real.log (k + 1 : ℕ) / 12 := by
    apply (lt_div_iff₀ (by norm_num : (0 : ℝ) < 12)).2
    nlinarith
  exact ⟨A, hR, hC.trans_le hbound⟩

/-- An eventual uniform absolute-event budget cannot replace the complete signed cancellation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsoluteCutoffCost/Variant1c2a6f1384dc63109ad241ddfaca6c7b5c76b430ce95bd8ddb03053a6c510ad8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsoluteCutoffCost/Variant1c2a6f1384dc63109ad241ddfaca6c7b5c76b430ce95bd8ddb03053a6c510ad8.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c057b5fa29778b9671ce287235a06ab5d31ea417` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
