# actual_psi_floor_on_six_block

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d44e3be4-5356-9b17-7f8e-0f0d39c96474",
  "kind": "theorem",
  "lexical_name": "actual_psi_floor_on_six_block",
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
  "slug": "actual-psi-floor-on-six-block--f7e2f32c493632d76307ad46",
  "source": {
    "blob": "4b83d0d6aef024d0c4b94bd7822f7218e9499fad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorSignBlocks/Variant695263d56111abde3820406ae2b2797bb646cd7b69c31affc91f127508634674.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7e2f32c493632d76307ad46c68a55c6ae28d29fff0263361dbeaae1f657c7e7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorSignBlocks/Variant695263d56111abde3820406ae2b2797bb646cd7b69c31affc91f127508634674.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d44e3be4-5356-9b17-7f8e-0f0d39c96474`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_psi_floor_on_six_block (y : ℝ) (hy : (6 : ℝ) ≤ y) (hy7 : y < 7) :
    actualPsiFloorDiscrepancy y = Real.log (60 : ℝ) - 6 := by
  have hf : ⌊y⌋₊ = 6 := Nat.floor_eq_iff (by linarith : 0 ≤ y) |>.mpr
    (by constructor <;> norm_num <;> linarith)
  have hpsi : Chebyshev.psi y = Chebyshev.psi (6 : ℝ) := by
    unfold Chebyshev.psi
    rw [hf]
    norm_num
  have hlcm : Nat.lcmUpto 6 = 60 := by decide
  have hv : Chebyshev.psi (6 : ℝ) = Real.log (60 : ℝ) := by
    simpa only [hlcm, Nat.cast_ofNat] using Chebyshev.psi_eq_log_lcmUpto 6
  unfold actualPsiFloorDiscrepancy
  rw [hpsi, hv, hf]
  norm_num

/-- The true prime-nineteen jump and all preceding prime powers remain closed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorSignBlocks/Variant695263d56111abde3820406ae2b2797bb646cd7b69c31affc91f127508634674.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorSignBlocks/Variant695263d56111abde3820406ae2b2797bb646cd7b69c31affc91f127508634674.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b83d0d6aef024d0c4b94bd7822f7218e9499fad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
