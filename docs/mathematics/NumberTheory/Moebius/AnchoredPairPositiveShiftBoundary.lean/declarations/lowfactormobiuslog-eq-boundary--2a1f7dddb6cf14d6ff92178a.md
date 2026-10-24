# lowFactorMobiusLog_eq_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a3bb5ee-d889-62af-51b1-813111543328",
  "kind": "theorem",
  "lexical_name": "lowFactorMobiusLog_eq_boundary",
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
  "slug": "lowfactormobiuslog-eq-boundary--2a1f7dddb6cf14d6ff92178a",
  "source": {
    "blob": "af3348cd0f04b43b0c57dab364efcdac95be9c24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 220,
    "path": "GRWTSK/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a1f7dddb6cf14d6ff92178aa0971192981e37450b5818f00577b013deaae540",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a3bb5ee-d889-62af-51b1-813111543328`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem lowFactorMobiusLog_eq_boundary
    {n : ℕ} (hn : 0 < n) :
    lowFactorMobiusLog n =
      Real.log (n : ℝ) -
        (if 2 ∣ n then Real.log ((n / 2 : ℕ) : ℝ) else 0) := by
  have hsplit :
      lowFactorMobiusLog n =
        (∑ p ∈ n.divisorsAntidiagonal,
          if p.1 = 1 then
            (ArithmeticFunction.moebius p.1 : ℝ) *
              (ArithmeticFunction.log p.2 : ℝ)
          else 0) +
        (∑ p ∈ n.divisorsAntidiagonal,
          if p.1 = 2 then
            (ArithmeticFunction.moebius p.1 : ℝ) *
              (ArithmeticFunction.log p.2 : ℝ)
          else 0) := by
    unfold lowFactorMobiusLog
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro p hp
    have hp0 : p.1 ≠ 0 :=
      Nat.left_ne_zero_of_mem_divisorsAntidiagonal hp
    by_cases hone : p.1 = 1
    · simp [hone]
    · by_cases htwo : p.1 = 2
      · simp [htwo]
      · have hge : ¬ p.1 < 3 := by omega
        simp [hone, htwo, hge]
  rw [hsplit, firstFactorMobiusLog_eq_log hn,
    secondFactorMobiusLog_eq hn]
  by_cases htwo : 2 ∣ n
  · simp [htwo, sub_eq_add_neg]
  · simp [htwo]

/-- The actual zero-shift correction is the complete missing a=1,2
convolution. No additional source factors have been omitted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af3348cd0f04b43b0c57dab364efcdac95be9c24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
