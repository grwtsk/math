# Data.evaluation_valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fef272c1-6246-2239-e055-478d474ae30e",
  "kind": "theorem",
  "lexical_name": "Data.evaluation_valid",
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
  "slug": "data-evaluation-valid--10099f1b56902366f9d4d39c",
  "source": {
    "blob": "e2901c1183b0d7d4ddc5468f49b9cecde6a19271",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 117,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluatedPair.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10099f1b56902366f9d4d39c63929d16d635eb9df873b912db5cd38a0fd681a2",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluatedPair.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fef272c1-6246-2239-e055-478d474ae30e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Data.evaluation_valid {A : Data} {N : ℕ} {x y : ℚ}
    (hoff : x ≠ 1/2)
    (hp : A.plus.check N (plusPoint x y)=true)
    (hm : A.minus.check N (minusPoint x y)=true) :
    (A.witness N x y).EvaluationValid (pairCenter y) (pairOffset x) := by
  have hep := RationalFiniteEvaluation.Data.encloses hp
  have hem := RationalFiniteEvaluation.Data.encloses hm
  have hd : 0 < (|displacement x| : ℝ) := by
    have h : (0 : ℚ) < |displacement x| := abs_pos.mpr (sub_ne_zero.mpr hoff)
    exact_mod_cast h
  have hs : ‖(finiteModel N (plusPoint x y).value-(A.plus.center N (plusPoint x y)).value)+
      (finiteModel N (minusPoint x y).value-(A.minus.center N (minusPoint x y)).value)‖ ≤
      ((A.plus.radius N (plusPoint x y)+A.minus.radius N (minusPoint x y) : ℚ) : ℝ) := by
    exact (norm_add_le _ _).trans (by simpa only [Rat.cast_add] using add_le_add hep hem)
  have hdif : ‖(finiteModel N (plusPoint x y).value-(A.plus.center N (plusPoint x y)).value)-
      (finiteModel N (minusPoint x y).value-(A.minus.center N (minusPoint x y)).value)‖ ≤
      ((A.plus.radius N (plusPoint x y)+A.minus.radius N (minusPoint x y) : ℚ) : ℝ) := by
    exact (norm_sub_le _ _).trans (by simpa only [Rat.cast_add] using add_le_add hep hem)
  constructor
  · change ‖even (finiteModel N) (pairCenter y) (pairOffset x)-
        (Gaussian.qscale (1/2) (Gaussian.qadd (A.plus.center N (plusPoint x y))
          (A.minus.center N (minusPoint x y)))).value‖ ≤ _
    rw [Gaussian.value_qscale,Gaussian.value_qadd]
    unfold even
    rw [(endpoints x y).1,(endpoints x y).2]
    have heq : (finiteModel N (plusPoint x y).value+finiteModel N (minusPoint x y).value)/2-
        (1/2 : ℂ)*((A.plus.center N (plusPoint x y)).value+(A.minus.center N (minusPoint x y)).value) =
        ((finiteModel N (plusPoint x y).value-(A.plus.center N (plusPoint x y)).value)+
          (finiteModel N (minusPoint x y).value-(A.minus.center N (minusPoint x y)).value))/2 := by ring
    norm_num only [Rat.cast_div,Rat.cast_one,Rat.cast_ofNat] at *
    rw [heq,norm_div]
    rw [show ‖(2 : ℂ)‖=(2 : ℝ) by norm_num]
    simpa only [Data.witness,Rat.cast_div,Rat.cast_ofNat] using
      div_le_div_of_nonneg_right hs (by norm_num : (0 : ℝ) ≤ 2)
  · change ‖odd (finiteModel N) (pairCenter y) (pairOffset x)-
        (Gaussian.qscale (1/(2*displacement x)) (Gaussian.qsub (A.plus.center N (plusPoint x y))
          (A.minus.center N (minusPoint x y)))).value‖ ≤ _
    rw [Gaussian.value_qscale,Gaussian.value_qsub]
    unfold odd
    rw [(endpoints x y).1,(endpoints x y).2]
    have hc : ((1/(2*displacement x) : ℚ) : ℂ)=1/(2*pairOffset x) := by
      simp [pairOffset]
    rw [hc]
    have hscale : (1/(2*pairOffset x))*
        ((A.plus.center N (plusPoint x y)).value-(A.minus.center N (minusPoint x y)).value) =
        ((A.plus.center N (plusPoint x y)).value-(A.minus.center N (minusPoint x y)).value)/(2*pairOffset x) := by ring
    rw [hscale,← sub_div,norm_div]
    have heq : finiteModel N (plusPoint x y).value-finiteModel N (minusPoint x y).value-
        ((A.plus.center N (plusPoint x y)).value-(A.minus.center N (minusPoint x y)).value) =
        (finiteModel N (plusPoint x y).value-(A.plus.center N (plusPoint x y)).value)-
        (finiteModel N (minusPoint x y).value-(A.minus.center N (minusPoint x y)).value) := by ring
    rw [heq,norm_mul,offset_norm]
    rw [show ‖(2 : ℂ)‖=(2 : ℝ) by norm_num]
    simpa only [Data.witness,Rat.cast_div,Rat.cast_mul,Rat.cast_ofNat,Rat.cast_abs] using
      div_le_div_of_nonneg_right hdif (by positivity : (0 : ℝ) ≤ 2*(|displacement x| : ℝ))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluatedPair.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluatedPair.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2901c1183b0d7d4ddc5468f49b9cecde6a19271` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
