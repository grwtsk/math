import FormalResearch.PositiveAtlas.FutureObservable
import FormalResearch.RiemannHypothesis.SourceObservableAdapter
import Lean.Util.FoldConsts

open Lean

run_meta do
  let env ← getEnv
  let names : Array Name := #[
    ``FormalResearch.PositiveAtlas.FutureObservable.execute,
    ``FormalResearch.PositiveAtlas.FutureObservable.execute_append,
    ``FormalResearch.PositiveAtlas.FutureObservable.Certificate,
    ``FormalResearch.PositiveAtlas.FutureObservable.Certificate.observe,
    ``FormalResearch.PositiveAtlas.FutureObservable.Certificate.advance,
    ``FormalResearch.PositiveAtlas.FutureObservable.Certificate.observe_step,
    ``FormalResearch.PositiveAtlas.FutureObservable.Certificate.observe_execute,
    ``FormalResearch.PositiveAtlas.FutureObservable.Certificate.readout_execute,
    ``FormalResearch.PositiveAtlas.FutureObservable.Certificate.futureFamily,
    ``FormalResearch.PositiveAtlas.FutureObservable.Certificate.representation,
    ``FormalResearch.PositiveAtlas.FutureObservable.Certificate.future_equivalent_of_observe_eq,
    ``FormalResearch.PositiveAtlas.FutureObservable.Certificate.Provenance,
    ``FormalResearch.PositiveAtlas.FutureObservable.Certificate.observe_eq_iff_future_equivalent,
    ``FormalResearch.PositiveAtlas.FutureObservable.Certificate.transition_involution_on_image,
    ``FormalResearch.PositiveAtlas.FutureObservable.Certificate.transition_involution,
    ``FormalResearch.PositiveAtlas.FutureObservable.quadratic,
    ``FormalResearch.PositiveAtlas.FutureObservable.pullback,
    ``FormalResearch.PositiveAtlas.FutureObservable.quadratic_pullback,
    ``FormalResearch.PositiveAtlas.FutureObservable.pullback_comp,
    ``FormalResearch.PositiveAtlas.FutureObservable.signedDefect,
    ``FormalResearch.PositiveAtlas.FutureObservable.quadratic_signedDefect,
    ``FormalResearch.PositiveAtlas.FutureObservable.signedDefect_comp,
    ``FormalResearch.PositiveAtlas.FutureObservable.quadratic_expansion,
    ``FormalResearch.PositiveAtlas.FutureObservable.generator_transport_of_matrix_expansion,
    ``FormalResearch.PositiveAtlas.FutureObservable.quadratic_neg,
    ``FormalResearch.RiemannHypothesis.SourceObservableAdapter.sourceSynthesis,
    ``FormalResearch.RiemannHypothesis.SourceObservableAdapter.sourceGramReadout,
    ``FormalResearch.RiemannHypothesis.SourceObservableAdapter.sourceReflectedReadout,
    ``FormalResearch.RiemannHypothesis.SourceObservableAdapter.signedReadout,
    ``FormalResearch.RiemannHypothesis.SourceObservableAdapter.sourceGramReadout_eq_norm_sq,
    ``FormalResearch.RiemannHypothesis.SourceObservableAdapter.sourceReflectedReadout_eq_signedReadout,
    ``FormalResearch.RiemannHypothesis.SourceObservableAdapter.sourceResidual,
    ``FormalResearch.RiemannHypothesis.SourceObservableAdapter.source_add_residual,
    ``FormalResearch.RiemannHypothesis.SourceObservableAdapter.signedReadout_add,
    ``FormalResearch.RiemannHypothesis.SourceObservableAdapter.signedReadout_source_reconstruction,
    ``FormalResearch.RiemannHypothesis.SourceObservableAdapter.sourceSynthesis_refinement,
    ``FormalResearch.RiemannHypothesis.SourceObservableAdapter.sourceGramReadout_refinement,
    ``FormalResearch.RiemannHypothesis.SourceObservableAdapter.sourceReflectedReadout_refinement,
    ``FormalResearch.RiemannHypothesis.SourceObservableAdapter.sourceResidual_refinement,
    ``FormalResearch.RiemannHypothesis.SourceObservableAdapter.signed_reconstruction_refinement,
    ``FormalResearch.RiemannHypothesis.SourceObservableAdapter.estimate_of_criticalAbel_tail]
  for name in names do
    let some info := env.find? name | throwError "missing declaration {name}"
    let body := match info.value? (allowOpaque := true) with
      | some value => value.getUsedConstants
      | none => #[]
    let record := Json.mkObj [("declaration", toJson name.toString),
      ("type_constants", toJson (info.type.getUsedConstants.map Name.toString)),
      ("proof_or_definition_constants", toJson (body.map Name.toString))]
    logInfo m!"{record.compress}"
