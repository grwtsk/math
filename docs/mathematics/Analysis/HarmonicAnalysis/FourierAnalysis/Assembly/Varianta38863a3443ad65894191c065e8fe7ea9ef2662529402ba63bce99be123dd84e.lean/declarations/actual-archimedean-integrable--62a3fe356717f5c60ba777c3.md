# actual_archimedean_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d202c43-a74f-77a6-c873-19d90ee42a9b",
  "kind": "theorem",
  "lexical_name": "actual_archimedean_integrable",
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
  "slug": "actual-archimedean-integrable--62a3fe356717f5c60ba777c3",
  "source": {
    "blob": "ecbf6d34d54cf9f338676dcd8f43c330f1c9f779",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 151,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Assembly/Varianta38863a3443ad65894191c065e8fe7ea9ef2662529402ba63bce99be123dd84e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62a3fe356717f5c60ba777c356db5feae4f54f5610e6f3b1c4c7d02c316073f8",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/Assembly/Varianta38863a3443ad65894191c065e8fe7ea9ef2662529402ba63bce99be123dd84e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d202c43-a74f-77a6-c873-19d90ee42a9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_archimedean_integrable
    (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun ξ ↦ archimedeanMultiplier ξ *
      Complex.normSq (sourceFourier (actualTest A) ξ)) volume := by
  let f := actualTest A
  have hfint : Integrable f volume := actualTest_integrable A hA
  have hfdiff : Differentiable ℝ f :=
    (actualTest_contDiff A hA).differentiable (by norm_num)
  have hfderiv : Integrable (deriv f) volume :=
    actualTest_deriv_integrable A hA
  have hzero :=
    BridgeFourier.fourier_normSq_integrable f hfint hfdiff hfderiv
  have hlog :=
    BridgeFourier.logarithmic_fourier_integrable f hfint hfdiff hfderiv
  have hc := BridgeFourier.sourceFourier_continuous hfint
  have hm : AEStronglyMeasurable (fun ξ ↦
      archimedeanMultiplier ξ *
        Complex.normSq (sourceFourier f ξ)) volume :=
    (BridgeMultiplier.archimedeanMultiplier_measurable.mul
      (Complex.continuous_normSq.comp hc).measurable).aestronglyMeasurable
  have hmajor :=
    (hzero.const_mul (|archimedeanConstant| + 4)).add
      (hlog.div_const 2)
  apply hmajor.mono' hm
  filter_upwards [] with ξ
  rw [Real.norm_eq_abs, abs_mul,
    abs_of_nonneg (Complex.normSq_nonneg _)]
  have hb := BridgeMultiplier.multiplier_abs_le_of_estimate
    AdmissionSource.multiplier_estimate ξ
  calc
    |archimedeanMultiplier ξ| *
        Complex.normSq (sourceFourier f ξ) ≤
      (|archimedeanConstant| + 4 +
        Real.log (1 + 4 * ξ ^ 2) / 2) *
        Complex.normSq (sourceFourier f ξ) :=
      mul_le_mul_of_nonneg_right hb (Complex.normSq_nonneg _)
    _ = _ := by simp only [Pi.add_apply]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/Assembly/Varianta38863a3443ad65894191c065e8fe7ea9ef2662529402ba63bce99be123dd84e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Assembly/Varianta38863a3443ad65894191c065e8fe7ea9ef2662529402ba63bce99be123dd84e.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecbf6d34d54cf9f338676dcd8f43c330f1c9f779` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
