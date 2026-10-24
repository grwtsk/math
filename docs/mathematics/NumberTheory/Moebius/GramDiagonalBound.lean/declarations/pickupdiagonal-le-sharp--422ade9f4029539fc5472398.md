# pickupDiagonal_le_sharp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:884d5dac-9c7c-8c53-77ba-3ba721f3ae87",
  "kind": "theorem",
  "lexical_name": "pickupDiagonal_le_sharp",
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
  "slug": "pickupdiagonal-le-sharp--422ade9f4029539fc5472398",
  "source": {
    "blob": "73170183bfc55c49aa578ffbe940a2f84637ef02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 278,
    "path": "GRWTSK/NumberTheory/Moebius/GramDiagonalBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:422ade9f4029539fc547239804aa89d9c51a59c88063e43863e2f23d04577f9b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/GramDiagonalBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:884d5dac-9c7c-8c53-77ba-3ba721f3ae87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupDiagonal_le_sharp {T : ℝ} (hT : 0 ≤ T) :
    pickupDiagonal T ≤ 2 * T ^ 2 - 8 * T + 16 * (1 - Real.exp (-T / 2)) := by
  rw [pickupDiagonal_eq_integral_density]
  have hd : IntervalIntegrable (fun u : ℝ =>
      ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, moebiusReal n ^ 2 * pickupResponse n u ^ 2)
      volume 0 T := by
    apply Continuous.intervalIntegrable
    exact continuous_finsetSum _ fun n hn => continuous_const.mul
      ((pickupResponse_continuous (Finset.mem_Icc.mp hn).1).pow 2)
  have hb : IntervalIntegrable (fun u : ℝ => 4 * u - 8 + 8 * Real.exp (-u / 2)) volume 0 T :=
    (((continuous_const.mul continuous_id).sub continuous_const).add
      (continuous_const.mul
        (Real.continuous_exp.comp ((continuous_id.neg).div_const 2)))).intervalIntegrable 0 T
  calc
    _ ≤ ∫ u in (0 : ℝ)..T, 4 * u - 8 + 8 * Real.exp (-u / 2) := by
      apply intervalIntegral.integral_mono_on hT hd hb
      intro u hu
      exact pickup_diagonal_density_le hu.1 hu.2
    _ = _ := diagonal_time_integral T

/-- The literal three-part P01 statement for the actual source response Gram. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/GramDiagonalBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/GramDiagonalBound.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73170183bfc55c49aa578ffbe940a2f84637ef02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
