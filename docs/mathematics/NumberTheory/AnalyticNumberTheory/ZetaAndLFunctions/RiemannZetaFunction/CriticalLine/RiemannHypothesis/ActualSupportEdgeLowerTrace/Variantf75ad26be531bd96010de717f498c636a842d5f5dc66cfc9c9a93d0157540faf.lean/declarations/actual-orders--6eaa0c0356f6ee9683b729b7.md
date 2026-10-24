# actual_orders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d684434d-303d-270f-60fa-994b1efe97fd",
  "kind": "theorem",
  "lexical_name": "actual_orders",
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
  "slug": "actual-orders--6eaa0c0356f6ee9683b729b7",
  "source": {
    "blob": "9ea9faaf056b788be3ddff77b8975d5acd85057c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeLowerTrace/Variantf75ad26be531bd96010de717f498c636a842d5f5dc66cfc9c9a93d0157540faf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6eaa0c0356f6ee9683b729b7c8a03d605c923c6255062d548f5e54d876eac9f0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeLowerTrace/Variantf75ad26be531bd96010de717f498c636a842d5f5dc66cfc9c9a93d0157540faf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d684434d-303d-270f-60fa-994b1efe97fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_orders {A : ℝ} (hA : 1 ≤ A) :
    0 ≤ actualTimeLower A ∧
      actualTimeLower A ≤ Real.log (sourceKernelCutoff A : ℝ) ∧
        0 ≤ 2 * A - Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ∧
          2 * A - Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤
            Real.log (sourceKernelCutoff A : ℝ) := by
  have hU : 0 < (vaughanCutoff A : ℝ) := by exact_mod_cast vaughanCutoff_pos A hA
  have hUN : (vaughanCutoff A : ℝ) ≤ (sourceKernelCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_le_sourceKernelCutoff A hA
  have hK := SourceActualLogColumnTransport.actual_column_window_nonempty hA
  have hN : vaughanCutoff A + 1 ≤ sourceKernelCutoff A :=
    hK.trans (Nat.div_le_self _ _)
  have hNF : (sourceKernelCutoff A : ℝ) ≤ Real.exp (2 * A) :=
    Nat.floor_le (Real.exp_pos _).le
  have ha : Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ 2 * A := by
    rw [Real.log_le_iff_le_exp (by positivity)]
    exact (by exact_mod_cast hN : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤
      (sourceKernelCutoff A : ℝ)).trans hNF
  exact ⟨Real.log_nonneg (by exact_mod_cast vaughanCutoff_pos A hA),
    Real.log_le_log hU hUN, by linarith,
    actualJointSupportUpper_le_log_sourceCutoff A hA⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeLowerTrace/Variantf75ad26be531bd96010de717f498c636a842d5f5dc66cfc9c9a93d0157540faf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeLowerTrace/Variantf75ad26be531bd96010de717f498c636a842d5f5dc66cfc9c9a93d0157540faf.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ea9faaf056b788be3ddff77b8975d5acd85057c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
