# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.120d69fd950c156680651a0cb66897a158ba3bda408f8f5935a366bfa353db3eFiniteAudit.Variantc6a9a227ea12a543483e54dac76e1be0acfa113db02c2563e915e55af0ee27e8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e50d3e911ad014c977bfb0656c3d9185da22ee1` · SHA-256 `47b33b9328ef7b8282371a6b63a059bd37e616769768bb78cca41ea81db26550`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.XiFiniteOrder.Variant120d69fd950c156680651a0cb66897a158ba3bda408f8f5935a366bfa353db3e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"120d69fd950c156680651a0cb66897a158ba3bda408f8f5935a366bfa353db3e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.XiFiniteOrder.Variant120d69fd950c156680651a0cb66897a158ba3bda408f8f5935a366bfa353db3e","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"120d69fd950c156680651a0cb66897a158ba3bda408f8f5935a366bfa353db3e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/12/120d69fd950c156680651a0cb66897a158ba3bda408f8f5935a366bfa353db3e--FiniteAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.XiFiniteOrder
import Lean.Util.CollectAxioms

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.XiFiniteOrder.Variant120d69fd950c156680651a0cb66897a158ba3bda408f8f5935a366bfa353db3e

open Lean Elab Command
set_option pp.all true
set_option pp.privateNames true
set_option maxRecDepth 100000
set_option pp.maxSteps 1000000
run_cmd do
  let env := (← getEnv).setExporting false
  let mods : Array Name := #[`FormalResearch.PositiveAtlas.Grassmannian.PFClosure, `FormalResearch.PositiveAtlas.Grassmannian.SignedMinorElimination, `FormalResearch.PositiveAtlas.Grassmannian.FiniteOrder, `FormalResearch.PositiveAtlas.Grassmannian.FiniteCauchyBinet, `FormalResearch.PositiveAtlas.Grassmannian.QuadraticMinors, `FormalResearch.PositiveAtlas.Grassmannian.SectorProducts, `FormalResearch.PositiveAtlas.Grassmannian.ToeplitzMinors, `FormalResearch.PositiveAtlas.Grassmannian.SignedGraph, `FormalResearch.PositiveAtlas.Grassmannian.BraidCoordinates, `FormalResearch.PositiveAtlas.Grassmannian.ToeplitzChart24, `FormalResearch.PositiveAtlas.Grassmannian.Transverse, `FormalResearch.RiemannHypothesis.XiToeplitz, `FormalResearch.RiemannHypothesis.XiFiniteOrder]
  let maintained : Array Name := mods
  let moduleNames := env.allImportedModuleNames
  for mod in maintained do
    unless moduleNames.contains mod do
      throwError "Maintained module not root-reachable {mod}"
    logInfo m!"ROOT_REACHABLE {mod}"
  for mod in mods do
    unless moduleNames.contains mod do
      throwError "Missing applied module {mod}"
    logInfo m!"APPLIED_MODULE {mod}"
  let names : List Name := env.const2ModIdx.fold (fun acc n idx =>
    if mods.contains moduleNames[idx]! then n :: acc else acc) []
  let present := names.filter fun n => (env.find? n).isSome
  let metadataOnly := names.filter fun n => (env.find? n).isNone
  for n in metadataOnly.toArray.qsort Name.quickLt do
    unless n.isInternal do
      throwError "Missing public declaration {n}"
    logInfo m!"COMPILER_METADATA_ONLY {n}"
  for n in present.toArray.qsort Name.quickLt do
    let some ci := env.find? n | throwError "Declaration disappeared {n}"
    let kind := match ci with
      | .axiomInfo _ => "axiom"
      | .defnInfo _ => "definition"
      | .thmInfo _ => "theorem"
      | .opaqueInfo _ => "opaque"
      | .quotInfo _ => "quotient primitive"
      | .inductInfo _ => "inductive"
      | .ctorInfo _ => "constructor"
      | .recInfo _ => "recursor"
    logInfo m!"DECL {n} KIND {kind} LEVELS {ci.levelParams}"
    logInfo m!"TYPE {n}: {ci.type}"
    logInfo m!"TYPE_EXPR {n}: {repr ci.type}"
    let axioms ← collectAxioms n
    logInfo m!"AXIOMS {n}: {axioms.qsort Name.quickLt}"
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "Unexpected transitive axiom {ax} for {n}"
  logInfo m!"AUDITED {present.length} kernel declarations; compiler metadata-only {metadataOnly.length}"
```
