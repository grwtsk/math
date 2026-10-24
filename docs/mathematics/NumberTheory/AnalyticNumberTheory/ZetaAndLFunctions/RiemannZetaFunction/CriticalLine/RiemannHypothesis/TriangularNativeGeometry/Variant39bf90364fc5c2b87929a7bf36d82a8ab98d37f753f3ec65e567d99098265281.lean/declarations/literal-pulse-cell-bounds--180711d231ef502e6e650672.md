# literal_pulse_cell_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4aa695b-b33c-56d4-a99f-ef30c320dd63",
  "kind": "theorem",
  "lexical_name": "literal_pulse_cell_bounds",
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
  "slug": "literal-pulse-cell-bounds--180711d231ef502e6e650672",
  "source": {
    "blob": "1f9c05eca287447d198bdbbfd8afceed9c97c1d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 34,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularNativeGeometry/Variant39bf90364fc5c2b87929a7bf36d82a8ab98d37f753f3ec65e567d99098265281.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:180711d231ef502e6e6506723c4bf76e8979034bad779dcdf2a9c24d6c2ca00d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularNativeGeometry/Variant39bf90364fc5c2b87929a7bf36d82a8ab98d37f753f3ec65e567d99098265281.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4aa695b-b33c-56d4-a99f-ef30c320dd63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_pulse_cell_bounds {M n : ℕ} (hM : 2 ≤ M)
    (hn : M ^ 2 ≤ n) (hnU : n ≤ M ^ 2 + 2 * M) :
    1 / (8 * (M : ℝ) ^ 3) ≤ cellClock n (n + 1 : ℕ) ∧
      cellClock n (n + 1 : ℕ) ≤ 1 / (M : ℝ) ^ 3 := by
  have hMr : (2 : ℝ) ≤ M := by exact_mod_cast hM
  have hM0 : (0 : ℝ) < M := by linarith
  have hn1 : 1 ≤ n := by nlinarith
  have hnr : (M : ℝ) ^ 2 ≤ n := by exact_mod_cast hn
  have hnUr : (n : ℝ) ≤ (M : ℝ) ^ 2 + 2 * M := by exact_mod_cast hnU
  have ha : 0 < Real.sqrt (n : ℝ) := Real.sqrt_pos.mpr (by exact_mod_cast hn1)
  have hb : 0 < Real.sqrt (n + 1 : ℕ) := by positivity
  have ha2 := Real.sq_sqrt (Nat.cast_nonneg (α := ℝ) n)
  have hb2 : Real.sqrt (n + 1 : ℕ) ^ 2 = (n : ℝ) + 1 := by
    simpa only [Nat.cast_add, Nat.cast_one] using Real.sq_sqrt
      (Nat.cast_nonneg (α := ℝ) (n + 1))
  have hamin : (M : ℝ) ≤ Real.sqrt n := by nlinarith
  have hamax : Real.sqrt (n : ℝ) ≤ 2 * M := by nlinarith
  have hbmax : Real.sqrt (n + 1 : ℕ) ≤ 2 * M := by nlinarith
  have hden : Real.sqrt n * Real.sqrt (n + 1 : ℕ) *
      (Real.sqrt n + Real.sqrt (n + 1 : ℕ)) ≤ 16 * (M : ℝ) ^ 3 := by
    calc
      _ ≤ (2 * (M : ℝ)) * (2 * (M : ℝ)) * (4 * (M : ℝ)) := by gcongr; linarith
      _ = _ := by ring
  constructor
  · rw [exact_native_rationalization hn1]
    apply (div_le_div_iff₀ (by positivity : 0 < 8 * (M : ℝ) ^ 3)
      (by positivity : 0 < Real.sqrt n * Real.sqrt (n + 1 : ℕ) *
        (Real.sqrt n + Real.sqrt (n + 1 : ℕ)))).mpr
    nlinarith
  · have hp : (M : ℝ) ^ 3 ≤ (n : ℝ) * Real.sqrt n := by
      calc
        _ = (M : ℝ) ^ 2 * M := by ring
        _ ≤ (n : ℝ) * Real.sqrt n := mul_le_mul hnr hamin hM0.le (Nat.cast_nonneg n)
    exact (literal_native_cell_decay hn1).trans
      ((div_le_div_iff₀ (by positivity : 0 < (n : ℝ) * Real.sqrt n)
        (by positivity : 0 < (M : ℝ) ^ 3)).mpr (by simpa using hp))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularNativeGeometry/Variant39bf90364fc5c2b87929a7bf36d82a8ab98d37f753f3ec65e567d99098265281.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularNativeGeometry/Variant39bf90364fc5c2b87929a7bf36d82a8ab98d37f753f3ec65e567d99098265281.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f9c05eca287447d198bdbbfd8afceed9c97c1d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
