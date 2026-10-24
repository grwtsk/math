# Complete source: GRWTSK.Analysis.FunctionalAnalysis.WeightedPathBudget.Variant58e735f5bf80bd7292a4af98a5587389eed63768f47abea3882c445a82975d40

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b240cb7f3e016c4ec1414587b69e267c8d03c418` · SHA-256 `13e2a87a81dff74fc5a07c08a39843df859c61067c18a61c35b8e26a677140c8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.WeightedCompensationBudget.Variant98089e597397b4a16dd187835d9be0472978eb3fc1ce6bf78caaaafd9fd15725","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"98089e597397b4a16dd187835d9be0472978eb3fc1ce6bf78caaaafd9fd15725","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.WeightedCompensationBudget.Variant98089e597397b4a16dd187835d9be0472978eb3fc1ce6bf78caaaafd9fd15725","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"98089e597397b4a16dd187835d9be0472978eb3fc1ce6bf78caaaafd9fd15725","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/ResidueDeflection/Trace/WeightedPathBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.ResidueDeflection.Trace.TransportGain
import Mathlib.Tactic.Ring

/-!
# Weighted path compensation budget

Every local compensation budget is amplified by all preceding transport
gains, matching Hilbert--Schmidt packet propagation.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.WeightedCompensationBudget.Variant98089e597397b4a16dd187835d9be0472978eb3fc1ce6bf78caaaafd9fd15725

namespace Mathematics.SemiLocalDefect.ResidueDeflection.Trace

open Mathematics.GraphAccess

universe uHilbert uTest

noncomputable def weightedCompensationBudget
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    {system :
      PolarTraceSystem cut Hilbert Test}
    (certificate :
      TraceCompensationBudget system)
    {source target : graph.Node} :
    DeflectionPath graph source target → ℝ
  | .nil _ => 0
  | .cons arc rest =>
      certificate.budget arc +
        ‖system.transport arc‖ ^ 2 *
          weightedCompensationBudget
            certificate rest

theorem weightedCompensationBudget_nonnegative
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    {system :
      PolarTraceSystem cut Hilbert Test}
    (certificate :
      TraceCompensationBudget system)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target) :
    0 ≤ weightedCompensationBudget
      certificate path := by
  induction path with
  | nil =>
      exact le_rfl
  | cons arc rest induction =>
      exact add_nonneg
        (certificate.budget_nonnegative arc)
        (mul_nonneg (sq_nonneg _) induction)

theorem pathCompensationBudget_le_weighted
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      PolarTraceSystem cut Hilbert Test)
    (certificate :
      TraceCompensationBudget system)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target)
    (test : Test)
    (safe :
      path.AllArcs
        (fun arc =>
          cut.safeArc arc = true)) :
    pathCompensationBudget
        certificate path test ≤
      weightedCompensationBudget
          certificate path *
        system.packet.packetNormSq source test := by
  induction path with
  | nil =>
      simp [pathCompensationBudget,
        weightedCompensationBudget]
  | cons arc rest induction =>
      rcases safe with ⟨arcSafe, restSafe⟩
      have downstream :=
        induction restSafe
      have localNorm :=
        system.packetNormTransport
          arc test arcSafe
      have weightedNonnegative :=
        weightedCompensationBudget_nonnegative
          certificate rest
      calc
        pathCompensationBudget certificate
            (.cons arc rest) test =
          certificate.budget arc *
              system.packet.packetNormSq
                arc.tail test +
            pathCompensationBudget
              certificate rest test := by
          rfl
        _ ≤
          certificate.budget arc *
              system.packet.packetNormSq
                arc.tail test +
            weightedCompensationBudget
                certificate rest *
              system.packet.packetNormSq
                arc.head test :=
          add_le_add le_rfl downstream
        _ ≤
          certificate.budget arc *
              system.packet.packetNormSq
                arc.tail test +
            weightedCompensationBudget
                certificate rest *
              (‖system.transport arc‖ ^ 2 *
                system.packet.packetNormSq
                  arc.tail test) :=
          add_le_add le_rfl
            (mul_le_mul_of_nonneg_left
              localNorm weightedNonnegative)
        _ =
          weightedCompensationBudget
              certificate (.cons arc rest) *
            system.packet.packetNormSq
              arc.tail test := by
          simp [weightedCompensationBudget]
          ring

theorem pathEnergy_weighted_compensation_bound
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      PolarTraceSystem cut Hilbert Test)
    (certificate :
      TraceCompensationBudget system)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target)
    (test : Test)
    (safe :
      path.AllArcs
        (fun arc =>
          cut.safeArc arc = true)) :
    abs
        (system.packetEnergy target test -
          system.packetEnergy source test) ≤
      weightedCompensationBudget
          certificate path *
        system.packet.packetNormSq source test :=
  le_trans
    (pathEnergy_compensation_bound
      system certificate path test safe)
    (pathCompensationBudget_le_weighted
      system certificate path test safe)

end Mathematics.SemiLocalDefect.ResidueDeflection.Trace
```
