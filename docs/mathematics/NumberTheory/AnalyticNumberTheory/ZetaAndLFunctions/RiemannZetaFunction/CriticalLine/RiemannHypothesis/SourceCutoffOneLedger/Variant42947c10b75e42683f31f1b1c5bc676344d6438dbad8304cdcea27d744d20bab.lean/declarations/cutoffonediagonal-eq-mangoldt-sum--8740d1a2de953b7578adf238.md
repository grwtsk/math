# cutoffOneDiagonal_eq_mangoldt_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34b571ed-9bee-8219-c69c-c327f0f4195e",
  "kind": "theorem",
  "lexical_name": "cutoffOneDiagonal_eq_mangoldt_sum",
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
  "slug": "cutoffonediagonal-eq-mangoldt-sum--8740d1a2de953b7578adf238",
  "source": {
    "blob": "9d9d741d4a9ed0601a754ac2608f59a977804b55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 64,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCutoffOneLedger/Variant42947c10b75e42683f31f1b1c5bc676344d6438dbad8304cdcea27d744d20bab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8740d1a2de953b7578adf238fa71d892cff549c6e5743b9e17f38a3bed1d60e7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCutoffOneLedger/Variant42947c10b75e42683f31f1b1c5bc676344d6438dbad8304cdcea27d744d20bab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34b571ed-9bee-8219-c69c-c327f0f4195e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cutoffOneDiagonal_eq_mangoldt_sum (A : ℝ) :
    cutoffOneDiagonal A =
      -∑ m ∈ Finset.Ioc 1 (sourceKernelCutoff A),
        vonMangoldt m / (m : ℝ) * diagonalCorrelation A (Real.log m) := by
  unfold cutoffOneDiagonal diagonal
  rw [← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  have hm1 : 1 < m := (Finset.mem_Ioc.mp hm).1
  have hmpos : 0 < (m : ℝ) := by exact_mod_cast (by omega : 0 < m)
  rw [beta_one_of_one_lt m hm1]
  unfold sourceKernel sourcePlainWeight diagonalCorrelation
  rw [Nat.cast_mul, Real.log_mul hmpos.ne' hmpos.ne', ← pow_two,
    Real.sqrt_sq hmpos.le]
  rw [show Real.log (m : ℝ) + Real.log (m : ℝ) = 2 * Real.log m by ring]
  ring

/-- Prime support reduces the original N_A inventory to exactly the window [0,A]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCutoffOneLedger/Variant42947c10b75e42683f31f1b1c5bc676344d6438dbad8304cdcea27d744d20bab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCutoffOneLedger/Variant42947c10b75e42683f31f1b1c5bc676344d6438dbad8304cdcea27d744d20bab.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d9d741d4a9ed0601a754ac2608f59a977804b55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
