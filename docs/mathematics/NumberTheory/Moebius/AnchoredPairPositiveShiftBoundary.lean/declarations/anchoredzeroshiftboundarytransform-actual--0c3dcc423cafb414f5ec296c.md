# anchoredZeroShiftBoundaryTransform_actual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:542ef040-ba2d-8b1e-8e6a-a7e24df01f2d",
  "kind": "theorem",
  "lexical_name": "anchoredZeroShiftBoundaryTransform_actual",
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
  "slug": "anchoredzeroshiftboundarytransform-actual--0c3dcc423cafb414f5ec296c",
  "source": {
    "blob": "af3348cd0f04b43b0c57dab364efcdac95be9c24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 257,
    "path": "GRWTSK/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c3dcc423cafb414f5ec296cd77f337d8deeff76efe8f83a8e160956bff20e0a",
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

Occurrence: `result:542ef040-ba2d-8b1e-8e6a-a7e24df01f2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem anchoredZeroShiftBoundaryTransform_actual
    {X n : ℕ} (hn : n ∈ centeredGreenWindow X) :
    anchoredZeroShiftBoundaryTransform X n
        (fun a => (anchoredMobiusPair a).coefficient) =
      Real.log (n : ℝ) -
        (if 2 ∣ n then Real.log ((n / 2 : ℕ) : ℝ) else 0) := by
  have hnrange := Finset.mem_Ioc.mp hn
  have hnpos : 0 < n := by omega
  calc
    anchoredZeroShiftBoundaryTransform X n
        (fun a => (anchoredMobiusPair a).coefficient) =
      lowFactorMobiusLog n := by
        unfold anchoredZeroShiftBoundaryTransform lowFactorMobiusLog
        apply Finset.sum_congr rfl
        intro p hp
        have hmem := anchoredFactor_mem_source hn hp
        have hapos : 0 < p.1 := by
          have hne := Nat.left_ne_zero_of_mem_divisorsAntidiagonal hp
          omega
        by_cases hsmall : p.1 < 3
        · have hcase : p.1 = 1 ∨ p.1 = 2 := by omega
          have hzero :=
            (anchoredMobiusPair_shift_zero_iff_one_or_two hapos).2 hcase
          simp [hmem, hzero, hsmall,
            anchoredPair_signedCoefficient_eq_moebius hapos]
        · have hnot : (anchoredMobiusPair p.1).h ≠ 0 := by
            intro hzero
            have hcase :=
              (anchoredMobiusPair_shift_zero_iff_one_or_two hapos).1 hzero
            rcases hcase with hcase | hcase <;> omega
          simp [hmem, hnot, hsmall]
    _ = _ := lowFactorMobiusLog_eq_boundary hnpos

/-- MAIN FINITE COMPARISON: retain exactly the genuine positive anchored shifts
and write the complete discarded boundary; the sum is Lambda on the actual
Green half-open dyadic window. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af3348cd0f04b43b0c57dab364efcdac95be9c24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
