# shortDivisorCumulative_eq_continuous_add_defect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fcd5927d-07bd-e9f1-7e43-8de35d796c42",
  "kind": "theorem",
  "lexical_name": "shortDivisorCumulative_eq_continuous_add_defect",
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
  "slug": "shortdivisorcumulative-eq-continuous-add-defect--5f1b338724bb95fa9b8986f9",
  "source": {
    "blob": "15d249152bbc27f6be4f722d92bf0cb80836faa3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 138,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/89359cd36be561bb8a10SourceActualFactorialTailDecomposition/Variantd8881a5415a4a176a4f72efa63c4b78a4dc016b0d6884919b26dc10d96b3a831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f1b338724bb95fa9b8986f907a99d5c45e436752aa44622946b1060bfdf2c58",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/89359cd36be561bb8a10SourceActualFactorialTailDecomposition/Variantd8881a5415a4a176a4f72efa63c4b78a4dc016b0d6884919b26dc10d96b3a831.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcd5927d-07bd-e9f1-7e43-8de35d796c42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shortDivisorCumulative_eq_continuous_add_defect (U : ℕ) {x : ℝ} (hx : 0 < x) :
    shortDivisorCumulative U x =
      x * (Real.log x - 1) * shortReciprocalMoebius U -
        x * shortLogReciprocalMoebius U + shortFactorialDefect U x := by
  rw [shortDivisorCumulative_eq_log_factorial]
  unfold shortReciprocalMoebius shortLogReciprocalMoebius shortFactorialDefect
  simp_rw [Finset.mul_sum, ← Finset.sum_sub_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro d hd
  have hd0 : (d : ℝ) ≠ 0 := by
    exact_mod_cast (by have := (Finset.mem_Icc.mp hd).1; omega : d ≠ 0)
  unfold factorialLogDefect
  rw [Real.log_div hx.ne' hd0]
  field_simp
  ring

/-- The actual G retains psi, the negative unit floor, both signed moments and the full defect. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/89359cd36be561bb8a10SourceActualFactorialTailDecomposition/Variantd8881a5415a4a176a4f72efa63c4b78a4dc016b0d6884919b26dc10d96b3a831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/89359cd36be561bb8a10SourceActualFactorialTailDecomposition/Variantd8881a5415a4a176a4f72efa63c4b78a4dc016b0d6884919b26dc10d96b3a831.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15d249152bbc27f6be4f722d92bf0cb80836faa3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
