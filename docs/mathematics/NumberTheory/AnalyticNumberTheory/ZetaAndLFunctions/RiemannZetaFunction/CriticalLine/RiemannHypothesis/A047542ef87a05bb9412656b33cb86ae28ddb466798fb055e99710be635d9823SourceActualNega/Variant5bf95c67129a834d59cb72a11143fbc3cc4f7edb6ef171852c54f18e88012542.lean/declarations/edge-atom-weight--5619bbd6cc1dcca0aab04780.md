# edge_atom_weight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f0113ab-2a33-f73a-ae43-19b2c709cf57",
  "kind": "theorem",
  "lexical_name": "edge_atom_weight",
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
  "slug": "edge-atom-weight--5619bbd6cc1dcca0aab04780",
  "source": {
    "blob": "4c6df9679d31312703fcc3cf3e07320ab78a9b05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 143,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A047542ef87a05bb9412656b33cb86ae28ddb466798fb055e99710be635d9823SourceActualNega/Variant5bf95c67129a834d59cb72a11143fbc3cc4f7edb6ef171852c54f18e88012542.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5619bbd6cc1dcca0aab04780daa1e4f3f82d7ad6606bbc78470c08c083910c4b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A047542ef87a05bb9412656b33cb86ae28ddb466798fb055e99710be635d9823SourceActualNega/Variant5bf95c67129a834d59cb72a11143fbc3cc4f7edb6ef171852c54f18e88012542.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f0113ab-2a33-f73a-ae43-19b2c709cf57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem edge_atom_weight {A : ℝ} (hA : 20000000000000 ≤ A) {n : ℕ}
    (hn : n ∈ actualNegativeEdgeWindow A) :
    closedPrimeWeight A n ≤ -(1 / (A ^ 9 * Real.exp A)) := by
  have hp : 0 < A := by linarith
  have hm := Finset.mem_Ioc.mp hn
  have hnlo : Real.exp (2 * A - 13) < (n : ℝ) :=
    (Nat.floor_lt (Real.exp_pos _).le).1 hm.1
  have hn0 : (0 : ℝ) < n := (Real.exp_pos _).trans hnlo
  have hnN : (n : ℝ) ≤ Real.exp (2 * A - 12) :=
    (show (n : ℝ) ≤ ⌊Real.exp (2 * A - 12)⌋₊ by exact_mod_cast hm.2).trans
      (Nat.floor_le (Real.exp_pos _).le)
  have hl : 2 * A - 13 < Real.log n := by
    simpa only [Real.log_exp] using Real.log_lt_log (Real.exp_pos _) hnlo
  have hu : Real.log n ≤ 2 * A - 12 := by
    simpa only [Real.log_exp] using Real.log_le_log hn0 hnN
  have hc := actualCorrelation_negative_edge hA (by linarith : 12 ≤ 2 * A - Real.log n)
    (by linarith : 2 * A - Real.log n ≤ 13)
  rw [show 2 * A - (2 * A - Real.log n) = Real.log n by ring] at hc
  have hn0N : 0 < n := by exact_mod_cast hn0
  have hsn : 0 < Real.sqrt (n : ℝ) := Real.sqrt_pos.2 hn0
  have hs : Real.sqrt (n : ℝ) ≤ Real.exp A := by
    have hns : (n : ℝ) ≤ (Real.exp A) ^ 2 := by
      calc
        _ ≤ Real.exp (2 * A - 12) := hnN
        _ ≤ Real.exp (2 * A) := Real.exp_le_exp.mpr (by linarith)
        _ = (Real.exp A) ^ 2 := by rw [show 2 * A = A + A by ring, Real.exp_add]; ring
    exact (Real.sqrt_le_sqrt hns).trans_eq (Real.sqrt_sq (Real.exp_pos _).le)
  unfold closedPrimeWeight
  rw [exponentialTest_log _ _ hn0N]
  calc
    _ ≤ -(1 / A ^ 9) / Real.sqrt (n : ℝ) := div_le_div_of_nonneg_right hc hsn.le
    _ ≤ -(1 / (A ^ 9 * Real.exp A)) := by
      have hh := div_le_div_of_nonneg_left (by positivity : 0 ≤ 1 / A ^ 9) hsn hs
      simpa only [neg_div, div_div] using neg_le_neg hh

/-- A true signed negative prime-power block has critical exponential scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A047542ef87a05bb9412656b33cb86ae28ddb466798fb055e99710be635d9823SourceActualNega/Variant5bf95c67129a834d59cb72a11143fbc3cc4f7edb6ef171852c54f18e88012542.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A047542ef87a05bb9412656b33cb86ae28ddb466798fb055e99710be635d9823SourceActualNega/Variant5bf95c67129a834d59cb72a11143fbc3cc4f7edb6ef171852c54f18e88012542.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c6df9679d31312703fcc3cf3e07320ab78a9b05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
