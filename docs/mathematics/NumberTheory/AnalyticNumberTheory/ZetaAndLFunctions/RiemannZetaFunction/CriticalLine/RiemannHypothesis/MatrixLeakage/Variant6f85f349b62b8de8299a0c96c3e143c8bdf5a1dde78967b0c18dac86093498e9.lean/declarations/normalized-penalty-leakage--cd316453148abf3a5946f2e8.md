# normalized_penalty_leakage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3b21620-3b7c-10f9-5538-3ed974519dcb",
  "kind": "theorem",
  "lexical_name": "normalized_penalty_leakage",
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
  "slug": "normalized-penalty-leakage--cd316453148abf3a5946f2e8",
  "source": {
    "blob": "ba641c96fc11935a688f23c19a07d5f3176543ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MatrixLeakage/Variant6f85f349b62b8de8299a0c96c3e143c8bdf5a1dde78967b0c18dac86093498e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd316453148abf3a5946f2e84f3c48000ee1c0749d82d1ad8d01b7b593feb19d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MatrixLeakage/Variant6f85f349b62b8de8299a0c96c3e143c8bdf5a1dde78967b0c18dac86093498e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3b21620-3b7c-10f9-5538-3ed974519dcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_penalty_leakage {ι κ : Type*} [Fintype ι] [Fintype κ]
    [DecidableEq ι] (M : Matrix ι ι ℝ) (B : Matrix κ κ ℝ)
    (L : Matrix κ ι ℝ) (d : ι → ℝ) {ε Z : ℝ} (hZ : 0 < Z)
    (hpositive : (M + L.transpose * B * L + ε • (1 : Matrix ι ι ℝ)).PosSemidef) :
    quadratic M d / Z ≥
      -ε * (∑ i, d i ^ 2) / Z - quadratic B (L.mulVec d) / Z := by
  have hp := hpositive.dotProduct_mulVec_nonneg d
  have ht : dotProduct d ((L.transpose * B * L).mulVec d) = quadratic B (L.mulVec d) := by
    unfold quadratic
    rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec,
      Matrix.dotProduct_mulVec, Matrix.vecMul_transpose]
  have hi : dotProduct d ((ε • (1 : Matrix ι ι ℝ)).mulVec d) = ε * ∑ i, d i ^ 2 := by
    simp only [Matrix.smul_mulVec, Matrix.one_mulVec, Pi.smul_apply, smul_eq_mul,
      dotProduct, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro i _
    ring
  simp only [star_trivial, Matrix.add_mulVec, dotProduct_add, ht, hi] at hp
  unfold quadratic
  have hn : -ε * (∑ i, d i ^ 2) - quadratic B (L.mulVec d) ≤ dotProduct d (M.mulVec d) := by
    linarith
  have h := div_le_div_of_nonneg_right hn hZ.le
  simpa only [quadratic, sub_div] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MatrixLeakage/Variant6f85f349b62b8de8299a0c96c3e143c8bdf5a1dde78967b0c18dac86093498e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MatrixLeakage/Variant6f85f349b62b8de8299a0c96c3e143c8bdf5a1dde78967b0c18dac86093498e9.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba641c96fc11935a688f23c19a07d5f3176543ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
