# cpow_neg_half_sub_I_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e890563e-31ac-2441-ee3b-4f9238d6285a",
  "kind": "lemma",
  "lexical_name": "cpow_neg_half_sub_I_mul",
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
  "slug": "cpow-neg-half-sub-i-mul--847a710aa02ee4e60d1d1094",
  "source": {
    "blob": "3f951dc0e8825b99c9f30a71911a84172574dac8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 251,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:847a710aa02ee4e60d1d10940995a478a546a00f1ff33002649eac083d8b7b56",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e890563e-31ac-2441-ee3b-4f9238d6285a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cpow_neg_half_sub_I_mul {n : ℕ} (hn : 1 ≤ n) (τ : ℝ) :
    (n : ℂ) ^ (-(1 / 2 : ℂ) - Complex.I * τ)
      = (((Real.sqrt n)⁻¹ : ℝ) : ℂ) * Complex.exp ((-(τ * Real.log n) : ℝ) * Complex.I) := by
  have hn0 : (0:ℝ) < n := by exact_mod_cast hn
  have hnC : (n : ℂ) ≠ 0 := by
    simp only [ne_eq, Nat.cast_eq_zero]
    omega
  have hlog : Complex.log (n : ℂ) = ((Real.log n : ℝ) : ℂ) := by
    rw [show ((n : ℕ) : ℂ) = (((n : ℕ) : ℝ) : ℂ) by push_cast; rfl]
    exact (Complex.ofReal_log hn0.le).symm
  rw [Complex.cpow_def_of_ne_zero hnC, hlog]
  have harg : ((Real.log n : ℝ) : ℂ) * (-(1 / 2 : ℂ) - Complex.I * τ)
      = ((-(Real.log n / 2) : ℝ) : ℂ) + ((-(τ * Real.log n) : ℝ) : ℂ) * Complex.I := by
    push_cast
    ring
  rw [harg, Complex.exp_add]
  congr 1
  rw [← Complex.ofReal_exp]
  congr 1
  rw [Real.exp_neg]
  congr 1
  rw [Real.sqrt_eq_rpow, Real.rpow_def_of_pos hn0]
  congr 1
  ring

/-- The magnitude/phase form:  P_{X,c}(τ) = −(1/π) Σ_n a_n·‖c n‖·cos(τ·log n − arg(c n)). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f951dc0e8825b99c9f30a71911a84172574dac8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
