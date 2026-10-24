# anchoredPositiveDivisor_eq_authentic_matched_add_omitted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8db1dcc3-a580-5dcc-c2dd-52d81f053c03",
  "kind": "theorem",
  "lexical_name": "anchoredPositiveDivisor_eq_authentic_matched_add_omitted",
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
  "slug": "anchoredpositivedivisor-eq-authentic-matched-add-omitted--620b607fb65efc3a220764f1",
  "source": {
    "blob": "63ef7fb343828039e2104e63993799e54a7bcebd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 252,
    "path": "GRWTSK/NumberTheory/Moebius/AnchoredAuthenticCenteredDefectComparison.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:620b607fb65efc3a220764f14591d8297157994c21fd8cbb4d2c93fe708bcb24",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/AnchoredAuthenticCenteredDefectComparison.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8db1dcc3-a580-5dcc-c2dd-52d81f053c03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem anchoredPositiveDivisor_eq_authentic_matched_add_omitted
    {X n : ℕ} (hn : n ∈ centeredGreenWindow X)
    (H : Finset ℕ) :
    anchoredPositiveShiftDivisorTransform X n
        (fun a => (anchoredMobiusPair a).coefficient) =
      anchoredAuthenticMatchedDivisor X n H +
        anchoredAuthenticOmittedDivisor X n H := by
  classical
  unfold anchoredPositiveShiftDivisorTransform
    anchoredAuthenticMatchedDivisor anchoredAuthenticOmittedDivisor
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro p hp
  by_cases hsource : p.1 ∈ anchoredDyadicSourceIndices X
  · by_cases hpositive : 0 < (anchoredMobiusPair p.1).h
    · by_cases hcenter :
        (anchoredMobiusPair p.1).h ∈
          zeroWindingCenteredShiftSet (2 * X)
            (anchoredMobiusPair p.1).r
            (anchoredMobiusPair p.1).center H
      · have hpos : 0 < p.1 := by
          have hnotzero := Nat.left_ne_zero_of_mem_divisorsAntidiagonal hp
          omega
        have hbound : p.1 ≤ 2 * X :=
          (Finset.mem_Icc.mp (anchoredFactor_mem_source hn hp)).2
        have hH : (anchoredMobiusPair p.1).h ∈ H :=
          (anchored_shift_mem_authentic_centered_iff hpos hbound H).mp hcenter
        have hlocal :=
          authentic_center_amplitude_eq_anchor_add_other_shift
            hpos hbound H
        have hdiff :
            parityCenteredIntegerCoordinateAmplitude (2 * X)
                (anchoredMobiusPair p.1).r H
                (anchoredMobiusPair p.1).center -
              anchoredAuthenticOtherShiftDefect (2 * X) p.1 H =
                (anchoredMobiusPair p.1).coefficient := by
          simp only [if_pos hH] at hlocal
          linarith
        simp [hsource, hpositive, hcenter, hdiff]
      · simp [hsource, hpositive, hcenter]
    · simp [hsource, hpositive]
  · simp [hsource]

/-- Preserve the already-proved a=1,2 correction EXACTLY. The new centered
support comparison supplies no estimate for either correction channel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/AnchoredAuthenticCenteredDefectComparison.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/AnchoredAuthenticCenteredDefectComparison.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63ef7fb343828039e2104e63993799e54a7bcebd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
