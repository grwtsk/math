# safeQuarticDyadicPackingValue_le_of_envelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1230fc8-aec1-d0f7-903a-5bfb2180dd38",
  "kind": "theorem",
  "lexical_name": "safeQuarticDyadicPackingValue_le_of_envelope",
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
  "slug": "safequarticdyadicpackingvalue-le-of-envelope--500e6956f76fccd19db341ab",
  "source": {
    "blob": "bc83bf1f65d66d02e65534c5056b86b00f6a4d1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 429,
    "line": 334,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:500e6956f76fccd19db341abb8b40beee7482e3cbaa7822e401e8c7b8e5c6d61",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1230fc8-aec1-d0f7-903a-5bfb2180dd38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–429.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem safeQuarticDyadicPackingValue_le_of_envelope
    (z : ZeroPoint) (B : ℕ → ℝ)
    (hB : ∀ j, 0 ≤ B j)
    (heven : ∀ j, ‖safeEvenDyadicBlock z j‖ ≤ B j)
    (hdefect : ∀ j, ‖safeEvenDefectDyadicBlock z j‖ ≤ 2 * B j)
    (hodd : ∀ j, ‖safeOddDyadicBlock z j‖ ≤ B j)
    (j : ℕ) :
    safeQuarticDyadicPackingValue z j ≤
      148 *
        (((B j)^2 + (B (j+1))^2) *
          ((B (j+1))^2 + (B (j+2))^2)) := by
  have hAx (k : ℕ) :
      (safeAxialDyadicPoint z k).normSq ≤ 5 * (B k)^2 := by
    have hx := (Complex.abs_re_le_norm _).trans (heven k)
    have hy := (Complex.abs_re_le_norm _).trans (hdefect k)
    have hxSq : (safeEvenDyadicBlock z k).re^2 ≤ (B k)^2 := by
      rw [sq_le_sq]
      simpa [abs_of_nonneg (hB k)] using hx
    have hySq : (safeEvenDefectDyadicBlock z k).re^2 ≤ (2*B k)^2 := by
      rw [sq_le_sq]
      have h2 : 0 ≤ 2 * B k := mul_nonneg (by norm_num) (hB k)
      simpa [abs_of_nonneg h2] using hy
    unfold safeAxialDyadicPoint PackingPoint.normSq PackingPoint.dot
    nlinarith
  have hTr (k : ℕ) :
      (safeTransverseDyadicPoint z k).normSq ≤ 2 * (B k)^2 := by
    have hx := (Complex.abs_re_le_norm _).trans (heven k)
    have hy := (Complex.abs_im_le_norm _).trans (hodd k)
    have hxSq : (safeEvenDyadicBlock z k).re^2 ≤ (B k)^2 := by
      rw [sq_le_sq]
      simpa [abs_of_nonneg (hB k)] using hx
    have hySq : (safeOddDyadicBlock z k).im^2 ≤ (B k)^2 := by
      rw [sq_le_sq]
      simpa [abs_of_nonneg (hB k)] using hy
    unfold safeTransverseDyadicPoint PackingPoint.normSq PackingPoint.dot
    nlinarith
  have hA01 :=
    PackingPoint.sub_normSq_le_two
      (safeAxialDyadicPoint z (j+1)) (safeAxialDyadicPoint z j)
  have hA12 :=
    PackingPoint.sub_normSq_le_two
      (safeAxialDyadicPoint z (j+2)) (safeAxialDyadicPoint z (j+1))
  have hT01 :=
    PackingPoint.sub_normSq_le_two
      (safeTransverseDyadicPoint z (j+1)) (safeTransverseDyadicPoint z j)
  have hT12 :=
    PackingPoint.sub_normSq_le_two
      (safeTransverseDyadicPoint z (j+2)) (safeTransverseDyadicPoint z (j+1))
  have hAe01 :
      (safeAxialDyadicPacking z j).edge01.normSq ≤
        10 * ((B j)^2 + (B (j+1))^2) := by
    simpa [safeAxialDyadicPacking, dyadicPackingAt,
      ThreePointPacking.edge01] using hA01.trans (by nlinarith [hAx j, hAx (j+1)])
  have hAe12 :
      (safeAxialDyadicPacking z j).edge12.normSq ≤
        10 * ((B (j+1))^2 + (B (j+2))^2) := by
    simpa [safeAxialDyadicPacking, dyadicPackingAt,
      ThreePointPacking.edge12] using hA12.trans (by nlinarith [hAx (j+1), hAx (j+2)])
  have hTe01 :
      (safeTransverseDyadicPacking z j).edge01.normSq ≤
        4 * ((B j)^2 + (B (j+1))^2) := by
    simpa [safeTransverseDyadicPacking, dyadicPackingAt,
      ThreePointPacking.edge01] using hT01.trans (by nlinarith [hTr j, hTr (j+1)])
  have hTe12 :
      (safeTransverseDyadicPacking z j).edge12.normSq ≤
        4 * ((B (j+1))^2 + (B (j+2))^2) := by
    simpa [safeTransverseDyadicPacking, dyadicPackingAt,
      ThreePointPacking.edge12] using hT12.trans (by nlinarith [hTr (j+1), hTr (j+2)])
  have hAg :=
    (safeAxialDyadicPacking z j).gramVolume_le_edgeProductEnclosure
  have hTg :=
    (safeTransverseDyadicPacking z j).gramVolume_le_edgeProductEnclosure
  have hAedge :
      (safeAxialDyadicPacking z j).edgeProductEnclosure ≤
        100 * (((B j)^2 + (B (j+1))^2) *
          ((B (j+1))^2 + (B (j+2))^2)) := by
    unfold ThreePointPacking.edgeProductEnclosure
    calc
      _ ≤ (10 * ((B j)^2 + (B (j+1))^2)) *
          (10 * ((B (j+1))^2 + (B (j+2))^2)) := by
        exact mul_le_mul hAe01 hAe12 (PackingPoint.normSq_nonneg _) (by positivity)
      _ = _ := by ring
  have hTedge :
      (safeTransverseDyadicPacking z j).edgeProductEnclosure ≤
        16 * (((B j)^2 + (B (j+1))^2) *
          ((B (j+1))^2 + (B (j+2))^2)) := by
    unfold ThreePointPacking.edgeProductEnclosure
    calc
      _ ≤ (4 * ((B j)^2 + (B (j+1))^2)) *
          (4 * ((B (j+1))^2 + (B (j+2))^2)) := by
        exact mul_le_mul hTe01 hTe12 (PackingPoint.normSq_nonneg _) (by positivity)
      _ = _ := by ring
  unfold safeQuarticDyadicPackingValue
    safeAxialDyadicGram safeTransverseDyadicGram
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc83bf1f65d66d02e65534c5056b86b00f6a4d1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
