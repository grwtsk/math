# actualXiTerminalFraction_le_inverse_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:481919eb-7316-f41a-daf4-9be4a4aea8ed",
  "kind": "theorem",
  "lexical_name": "actualXiTerminalFraction_le_inverse_sqrt",
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
  "slug": "actualxiterminalfraction-le-inverse-sqrt--9eb624965def1832e5d6b102",
  "source": {
    "blob": "336efdd1ccb55cc09d1fad1c8a6183824eacdafa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualXiTerminalFractionBudgetAttempt02/Variant12137ce1b0561dc34e6d89eeee7570d4325ff3bc1fcbe5c30fc29a7d9a91bc64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9eb624965def1832e5d6b102513a80666c42704eb6af405e6d97252f4a799bba",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualXiTerminalFractionBudgetAttempt02/Variant12137ce1b0561dc34e6d89eeee7570d4325ff3bc1fcbe5c30fc29a7d9a91bc64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:481919eb-7316-f41a-daf4-9be4a4aea8ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiTerminalFraction_le_inverse_sqrt {T : ℝ} (hT : Real.log 7 ≤ T) :
    actualXiTerminalFraction T ≤
      2 * actualXiExponentialEnvelopeConstant / Real.sqrt (Nat.floor (Real.exp T) : ℝ) := by
  let N : ℕ := Nat.floor (Real.exp T)
  have hn : 7 ≤ N := (terminal_orders hT).1
  have hp : 0 < (N : ℝ) := by exact_mod_cast (show 0 < N by omega)
  have hs : 0 < Real.sqrt (N : ℝ) := Real.sqrt_pos.2 hp
  have hd0 : 0 ≤ T - Real.log (N : ℝ) := sub_nonneg.mpr (terminal_orders hT).2.1
  have hd1 : T - Real.log (N : ℝ) ≤ 1 / (N : ℝ) := by
    have hh := Real.log_le_sub_one_of_pos
      (div_pos (by positivity : 0 < ((N + 1 : ℕ) : ℝ)) hp)
    rw [Real.log_div (by positivity) hp.ne'] at hh
    have hu : T ≤ Real.log ((N + 1 : ℕ) : ℝ) := (terminal_orders hT).2.2
    have he : ((N + 1 : ℕ) : ℝ) / (N : ℝ) - 1 = 1 / (N : ℝ) := by
      push_cast
      field_simp
      ring
    rw [he] at hh
    linarith
  have hl : Real.log 7 ≤ Real.log (N : ℝ) :=
    Real.log_le_log (by norm_num) (by exact_mod_cast hn)
  have hf := actualAnchoredXiTailPrimitive_abs_le hl
  rw [Real.exp_half, Real.exp_log hp] at hf
  have hc : 0 ≤ actualXiExponentialEnvelopeConstant := by
    unfold actualXiExponentialEnvelopeConstant
    positivity
  have hfs : |actualAnchoredXiTailPrimitive (Real.log (N : ℝ))| ≤
      2 * actualXiExponentialEnvelopeConstant * Real.sqrt (N : ℝ) := by
    exact hf.trans (by nlinarith [Real.sqrt_nonneg 7])
  change |actualAnchoredXiTailPrimitive (Real.log (N : ℝ))| *
    (T - Real.log (N : ℝ)) ≤
      2 * actualXiExponentialEnvelopeConstant / Real.sqrt (N : ℝ)
  have hns : Real.sqrt (N : ℝ) * (1 / (N : ℝ)) = 1 / Real.sqrt (N : ℝ) := by
    field_simp
    nlinarith [Real.sq_sqrt hp.le]
  calc
    _ ≤ (2 * actualXiExponentialEnvelopeConstant * Real.sqrt (N : ℝ)) *
        (1 / (N : ℝ)) := mul_le_mul hfs hd1 hd0 (by positivity)
    _ = 2 * actualXiExponentialEnvelopeConstant *
        (Real.sqrt (N : ℝ) * (1 / (N : ℝ))) := by ring
    _ = _ := by rw [hns]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualXiTerminalFractionBudgetAttempt02/Variant12137ce1b0561dc34e6d89eeee7570d4325ff3bc1fcbe5c30fc29a7d9a91bc64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualXiTerminalFractionBudgetAttempt02/Variant12137ce1b0561dc34e6d89eeee7570d4325ff3bc1fcbe5c30fc29a7d9a91bc64.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `336efdd1ccb55cc09d1fad1c8a6183824eacdafa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
