# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TaoSorting.Variant7b2d91f3a5142df1606d4cb19f64853db0edc7804ec94b4b20acbadca0c964fc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c92687cdb2a90109f7da7b8f7b9c1ffd2acbe9b` · SHA-256 `7b2d91f3a5142df1606d4cb19f64853db0edc7804ec94b4b20acbadca0c964fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Carrier.BinaryMatrixStream
import Folder.GrandChallenge.NavierStokes.SmoothContinuation
import Folder.GrandChallenge.NavierStokes.NonBlowupObstruction

/-!
# Folder.GrandChallenge.NavierStokes.TaoSorting

Radiation role: research-boundary
BinaryMatrix spine: This module sorts encoded flow frames by supplied Tao-style critical-control certificates.
Ontology: navier_stokes_tao_sorting
Pivot role: flow
Zero typology: blowup-obstruction
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace NavierStokes

/--
Critical-control certificate inspired by Tao-style quantitative regularity
filters.

This is supplied data. It does not prove Navier-Stokes regularity.
-/
structure CriticalControlCertificate where
  criticalNormBounded : Prop
  criticalNormBounded_certified : criticalNormBounded
  preservesTrueNonlinearity : Prop
  preservesTrueNonlinearity_certified : preservesTrueNonlinearity
  quantitativeRegularityControl : Prop
  quantitativeRegularityControl_certified : quantitativeRegularityControl
  sourceLabel : String

/-- A finite encoded flow frame used by the BinaryMatrixStream branch. -/
structure FlowFrame where
  flowComplex : FlowComplex
  encodedStream : Carrier.BinaryMatrixStream
  label : String

/-- The encoded continuation stream is classified as non-glitched. -/
structure NonGlitchStream
    (_F : FlowFrame) : Prop where
  witness : True

/-- The encoded continuation stream is charted as a glitch candidate. -/
structure GlitchCandidate
    (_F : FlowFrame) : Prop where
  witness : True

/--
Loss or absence of the critical-control filter.

This marks a candidate obstruction chart. It is not itself a blowup theorem.
-/
structure CriticalControlGap
    (_C : CriticalControlCertificate) : Prop where
  witness : True

/--
Warning interface for averaged-equation blowup phenomena.

It records the methodological point that energy cancellation alone is too weak.
-/
structure AveragedBlowupWarning where
  energyCancellationAloneInsufficient : Prop
  energyCancellationAloneInsufficient_certified :
    energyCancellationAloneInsufficient
  sourceLabel : String

/--
Tao sorting contract for recursive streams.

If a flow frame carries critical boundedness, true-nonlinearity preservation,
and quantitative regularity control, it is sorted as non-glitched. If the
critical-control filter has a supplied gap, the frame is only a glitch
candidate.
-/
structure TaoSortingContract where
  frame : FlowFrame
  criticalControl : CriticalControlCertificate
  warning : AveragedBlowupWarning
  nonBlowupImpliesNonGlitch :
    criticalControl.criticalNormBounded →
    criticalControl.preservesTrueNonlinearity →
    criticalControl.quantitativeRegularityControl →
    NonGlitchStream frame
  criticalGapChartsGlitch :
    CriticalControlGap criticalControl →
    GlitchCandidate frame
  sourceLabel : String

theorem critical_norm_bounded_if_supplied
    (C : CriticalControlCertificate) :
    C.criticalNormBounded :=
  C.criticalNormBounded_certified

theorem critical_control_preserves_true_nonlinearity_if_supplied
    (C : CriticalControlCertificate) :
    C.preservesTrueNonlinearity :=
  C.preservesTrueNonlinearity_certified

theorem quantitative_regularity_control_if_supplied
    (C : CriticalControlCertificate) :
    C.quantitativeRegularityControl :=
  C.quantitativeRegularityControl_certified

theorem averaged_blowup_warning_if_supplied
    (W : AveragedBlowupWarning) :
    W.energyCancellationAloneInsufficient :=
  W.energyCancellationAloneInsufficient_certified

/--
Tao sorting lemma for recursive streams.

This is field exposure from the supplied sorting contract.
-/
theorem tao_sorting_if_supplied
    (T : TaoSortingContract)
    (h1 : T.criticalControl.criticalNormBounded)
    (h2 : T.criticalControl.preservesTrueNonlinearity)
    (h3 : T.criticalControl.quantitativeRegularityControl) :
    NonGlitchStream T.frame :=
  T.nonBlowupImpliesNonGlitch h1 h2 h3

theorem tao_gap_charts_glitch_candidate_if_supplied
    (T : TaoSortingContract)
    (hgap : CriticalControlGap T.criticalControl) :
    GlitchCandidate T.frame :=
  T.criticalGapChartsGlitch hgap

end NavierStokes
end GrandChallenge
end Folder
```
