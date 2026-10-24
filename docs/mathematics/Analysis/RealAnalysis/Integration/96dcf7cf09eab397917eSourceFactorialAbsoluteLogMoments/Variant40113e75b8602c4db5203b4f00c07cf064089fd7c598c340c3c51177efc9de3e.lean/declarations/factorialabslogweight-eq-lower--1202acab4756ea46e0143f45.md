# factorialAbsLogWeight_eq_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e66f3b76-513c-be9e-f417-acf9bc3a01b1",
  "kind": "theorem",
  "lexical_name": "factorialAbsLogWeight_eq_lower",
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
  "slug": "factorialabslogweight-eq-lower--1202acab4756ea46e0143f45",
  "source": {
    "blob": "ed8604a8da8851cbf97b7af7d2e775f71e423a99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 87,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variant40113e75b8602c4db5203b4f00c07cf064089fd7c598c340c3c51177efc9de3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1202acab4756ea46e0143f4516dd5a3b850990b1157a0d2826f35c3764a7a8bd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variant40113e75b8602c4db5203b4f00c07cf064089fd7c598c340c3c51177efc9de3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e66f3b76-513c-be9e-f417-acf9bc3a01b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorialAbsLogWeight_eq_lower (j : ℕ) {y : ℝ} (hy : y ∈ Ioo (0 : ℝ) 1) :
    factorialAbsLogWeight j y =
      (-1 : ℝ) ^ j * (lowerLogWeight j y - lowerLogWeight (j + 1) y) := by
  have hlog : Real.log y ≤ 0 := Real.log_nonpos hy.1.le hy.2.le
  have hn : 0 ≤ factorialMellinWeight y := by
    unfold factorialMellinWeight
    rw [factorialLogDefect_eq_lower hy]
    exact mul_nonneg (mul_nonneg hy.1.le (by linarith)) (Real.rpow_nonneg hy.1.le _)
  unfold factorialAbsLogWeight
  rw [abs_of_nonneg hn, factorialMellinWeight_eq_lower hy, abs_of_nonpos hlog, neg_pow]
  unfold lowerLogWeight
  simp only [pow_zero, mul_one, pow_succ]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variant40113e75b8602c4db5203b4f00c07cf064089fd7c598c340c3c51177efc9de3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variant40113e75b8602c4db5203b4f00c07cf064089fd7c598c340c3c51177efc9de3e.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed8604a8da8851cbf97b7af7d2e775f71e423a99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
