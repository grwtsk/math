# logSquareQuadrature_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "10731cfece213c0d8cb948acc1ac690c7f23adbe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d817b32a-8d9e-96e9-0534-1ce8be69bfab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:70dbb589-b224-9138-5315-3b145c9267af",
  "kind": "theorem",
  "lexical_name": "logSquareQuadrature_abs_le",
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
  "slug": "logsquarequadrature-abs-le--1402cf84f4e7d72623dbd8d0",
  "source": {
    "blob": "10731cfece213c0d8cb948acc1ac690c7f23adbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 68,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1402cf84f4e7d72623dbd8d0a35562e4f44f949dcc52fc203525383ff10e77c6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70dbb589-b224-9138-5315-3b145c9267af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logSquareQuadrature_abs_le (y : ℝ) (hy : 1 ≤ y) :
    |logSquareQuadrature y| ≤ (Real.log y) ^ 2 := by
  let N := ⌊y⌋₊
  have hN : 1 ≤ N := Nat.le_floor (by simpa using hy)
  have hN1 : (1 : ℝ) ≤ N := by exact_mod_cast hN
  have hNy : (N : ℝ) ≤ y := Nat.floor_le (zero_le_one.trans hy)
  have hgap : y - (N : ℝ) ≤ 1 := by
    have h := Nat.lt_floor_add_one y
    dsimp only [N]
    linarith
  have hi := logSquare_intervalIntegrable (N : ℝ) y hN1 hy
  have hzero : 0 ≤ ∫ t in (N : ℝ)..y, (Real.log t) ^ 2 :=
    intervalIntegral.integral_nonneg hNy (fun _ _ => sq_nonneg _)
  have htail : (∫ t in (N : ℝ)..y, (Real.log t) ^ 2) ≤ (Real.log y) ^ 2 := by
    have hb := intervalIntegral.integral_mono_on hNy hi
      (intervalIntegrable_const : IntervalIntegrable (fun _ : ℝ => (Real.log y) ^ 2)
        volume (N : ℝ) y)
      (fun t ht => logSquare_monotoneOn (hN1.trans ht.1) hy ht.2)
    rw [intervalIntegral.integral_const, smul_eq_mul] at hb
    exact hb.trans (mul_le_of_le_one_left (sq_nonneg _) hgap)
  have hmono := logSquare_monotoneOn hN1 hy hNy
  have hb := logSquare_integer_bounds N hN
  have hadd := intervalIntegral.integral_add_adjacent_intervals
    (logSquare_intervalIntegrable 1 (N : ℝ) le_rfl hN1) hi
  change |(∑ m ∈ Finset.Icc 1 N, (Real.log (m : ℝ)) ^ 2) -
    ∫ t in 1..y, (Real.log t) ^ 2| ≤ _
  exact abs_le.mpr ⟨by linarith [hb.1], by linarith [hb.2]⟩

end
end FormalResearch.RiemannHypothesis.SourceComparison.LogSquareQuadrature

set_option autoImplicit false
namespace MobiusQuadratureBoundScratch
open MeasureTheory Set Filter
open FormalResearch.RiemannHypothesis.SourceComparison
open scoped Topology
noncomputable section

/-- The positive logarithmic kernel, including its harmless totalized value at zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10731cfece213c0d8cb948acc1ac690c7f23adbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
