# actualDampedXiFinitePrimitive_eq_square_readout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d6466c9-336f-01b6-3fe8-8941b15690a0",
  "kind": "theorem",
  "lexical_name": "actualDampedXiFinitePrimitive_eq_square_readout",
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
  "slug": "actualdampedxifiniteprimitive-eq-square-readout--4947d91e54fa311d1e6f712b",
  "source": {
    "blob": "95ad81f55ea481b016297022e99d6ccf79c65ecf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 111,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiDampedSquareReadout/Variantee82d79deb1f5cc4c0dbdefcccc2f06cf6be7d1acfe2d44928535b7a947c3b6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4947d91e54fa311d1e6f712ba77c276106500fa55c09be12210d6c91d8a08240",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiDampedSquareReadout/Variantee82d79deb1f5cc4c0dbdefcccc2f06cf6be7d1acfe2d44928535b7a947c3b6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d6466c9-336f-01b6-3fe8-8941b15690a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualDampedXiFinitePrimitive_eq_square_readout {Y : ℝ} (hY : 7 ≤ Y) :
    (1 / 2 : ℝ) * actualDampedXiFinitePrimitive (Real.log Y) =
      actualDampedXiSquareWindowSeven Y - Real.log (Y / 7) + 3 +
        shiftedActualChebyshev 7 / 7 +
          (Chebyshev.psi 7 + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) / Y -
            2 * (Chebyshev.psi 7 + 7 +
              2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) /
                (Real.sqrt 7 * Real.sqrt Y) := by
  have hp : 0 < Y := by linarith
  have ht : Real.log 7 ≤ Real.log Y := Real.log_le_log (by norm_num) hY
  have he := actualDampedXiFinitePrimitive_closed_readout ht
  have hf := actualAnchoredXiTailPrimitive_eq_finite ht
  rw [Real.exp_log hp] at he hf
  have hpow : Real.exp (-Real.log Y / 2) = 1 / Real.sqrt Y := by
    rw [Real.exp_neg, Real.exp_half, Real.exp_log hp]
    rfl
  rw [hf, hpow, error_window hY] at he
  rw [actualDampedXiSquareWindowSeven_eq_expanded hY]
  rw [he]
  unfold shiftedActualChebyshev
  have hs := Real.sq_sqrt hp.le
  have hn : Real.sqrt Y ≠ 0 := (Real.sqrt_pos.mpr hp).ne'
  have hn7 : Real.sqrt (7 : ℝ) ≠ 0 := (Real.sqrt_pos.mpr (by norm_num)).ne'
  field_simp
  rw [hs]
  ring

end
end FormalResearch.RiemannHypothesis.RootActualXiDampedSquareReadout
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiDampedSquareReadout/Variantee82d79deb1f5cc4c0dbdefcccc2f06cf6be7d1acfe2d44928535b7a947c3b6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiDampedSquareReadout/Variantee82d79deb1f5cc4c0dbdefcccc2f06cf6be7d1acfe2d44928535b7a947c3b6b.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95ad81f55ea481b016297022e99d6ccf79c65ecf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
