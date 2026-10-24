# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.03587d752087eb4512246e405e1808ae3ba9c3f07166ce7f6c9f482e8f63e8efGrassmannianV1Au.Variant75db600f1c6fda4207e1adf38c620892199ef7a82feb2f53809bb4234ce41b18

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f39feded428d3184ded6deef3cfa310c266d592f` · SHA-256 `0891481e5ae7ec8c4ea7777e0349ca07da626978e5e07550416c73fa6d097787`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Grassmannian.Variant03587d752087eb4512246e405e1808ae3ba9c3f07166ce7f6c9f482e8f63e8ef","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"03587d752087eb4512246e405e1808ae3ba9c3f07166ce7f6c9f482e8f63e8ef","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Grassmannian.Variant03587d752087eb4512246e405e1808ae3ba9c3f07166ce7f6c9f482e8f63e8ef","mathematical_subject":"Computation.DataStructures","original_sha256":"03587d752087eb4512246e405e1808ae3ba9c3f07166ce7f6c9f482e8f63e8ef","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/03/03587d752087eb4512246e405e1808ae3ba9c3f07166ce7f6c9f482e8f63e8ef--GrassmannianV1Audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.Grassmannian
import Lean.Util.CollectAxioms

-- Ignored audit probe only. This imports compiled candidate modules and proves no program lemma.
-- Prepared against Lean 4.33.0; not executed when this template was created.

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Grassmannian.Variant03587d752087eb4512246e405e1808ae3ba9c3f07166ce7f6c9f482e8f63e8ef

open Lean Elab Command
set_option pp.all true
set_option pp.privateNames true

run_cmd do
  let env := (← getEnv).setExporting false
  let mods : Array Name := #[
    `FormalResearch.PositiveAtlas.Grassmannian.OrderedMinors,
    `FormalResearch.PositiveAtlas.Grassmannian.Plucker24,
    `FormalResearch.PositiveAtlas.Grassmannian.Fixtures,
    `FormalResearch.PositiveAtlas.Grassmannian]
  let expected : Array Name := #[
    `FormalResearch.PositiveAtlas.Grassmannian.positiveFixture24,
    `FormalResearch.PositiveAtlas.Grassmannian.positiveFixture24_coordinates,
    `FormalResearch.PositiveAtlas.Grassmannian.positiveFixture24_positive,
    `FormalResearch.PositiveAtlas.Grassmannian.positiveFixture24_ordered_minors,
    `FormalResearch.PositiveAtlas.Grassmannian.positiveFixture24_pivot,
    `FormalResearch.PositiveAtlas.Grassmannian.boundaryFixture24,
    `FormalResearch.PositiveAtlas.Grassmannian.boundaryFixture24_coordinates,
    `FormalResearch.PositiveAtlas.Grassmannian.boundaryFixture24_ordered_minors,
    `FormalResearch.PositiveAtlas.Grassmannian.boundaryFixture24_not_positive,
    `FormalResearch.PositiveAtlas.Grassmannian.boundaryFixture24_pivot,
    `FormalResearch.PositiveAtlas.Grassmannian.incompatibleOnes24,
    `FormalResearch.PositiveAtlas.Grassmannian.incompatibleOnes24_positive,
    `FormalResearch.PositiveAtlas.Grassmannian.incompatibleOnes24_not_compatible,
    `FormalResearch.PositiveAtlas.Grassmannian.incompatibleOnes24_not_matrix,
    `FormalResearch.PositiveAtlas.Grassmannian.positiveRow,
    `FormalResearch.PositiveAtlas.Grassmannian.mixedSignRow,
    `FormalResearch.PositiveAtlas.Grassmannian.rows_same_squares,
    `FormalResearch.PositiveAtlas.Grassmannian.rows_not_proportional,
    `FormalResearch.PositiveAtlas.Grassmannian.mixedSignRow_positive_gram_and_mixed_signs,
    `FormalResearch.PositiveAtlas.Grassmannian.columnSubmatrix,
    `FormalResearch.PositiveAtlas.Grassmannian.columnMinor,
    `FormalResearch.PositiveAtlas.Grassmannian.orderedMinor,
    `FormalResearch.PositiveAtlas.Grassmannian.AllOrderedMinorsNonneg,
    `FormalResearch.PositiveAtlas.Grassmannian.AllOrderedMinorsPos,
    `FormalResearch.PositiveAtlas.Grassmannian.allOrderedMinorsNonneg_of_pos,
    `FormalResearch.PositiveAtlas.Grassmannian.columnSubmatrix_mul_left,
    `FormalResearch.PositiveAtlas.Grassmannian.columnMinor_mul_left,
    `FormalResearch.PositiveAtlas.Grassmannian.orderedMinor_mul_left,
    `FormalResearch.PositiveAtlas.Grassmannian.orderedMinor_mul_left_eq_zero_iff,
    `FormalResearch.PositiveAtlas.Grassmannian.allOrderedMinorsPos_mul_left_iff,
    `FormalResearch.PositiveAtlas.Grassmannian.allOrderedMinorsNonneg_mul_left_iff,
    `FormalResearch.PositiveAtlas.Grassmannian.minor₂,
    `FormalResearch.PositiveAtlas.Grassmannian.minor₂_eq_columnMinor,
    `FormalResearch.PositiveAtlas.Grassmannian.orderedMinor_two,
    `FormalResearch.PositiveAtlas.Grassmannian.minor₂_swap,
    `FormalResearch.PositiveAtlas.Grassmannian.minor₂_plucker,
    `FormalResearch.PositiveAtlas.Grassmannian.PluckerCoordinates24,
    `FormalResearch.PositiveAtlas.Grassmannian.PluckerCoordinates24.Compatible,
    `FormalResearch.PositiveAtlas.Grassmannian.PluckerCoordinates24.StrictlyPositive,
    `FormalResearch.PositiveAtlas.Grassmannian.PluckerCoordinates24.Nonnegative,
    `FormalResearch.PositiveAtlas.Grassmannian.PluckerCoordinates24.ofMatrix,
    `FormalResearch.PositiveAtlas.Grassmannian.PluckerCoordinates24.ofMatrix_compatible,
    `FormalResearch.PositiveAtlas.Grassmannian.PluckerCoordinates24.allOrderedMinorsPos_of_strictlyPositive,
    `FormalResearch.PositiveAtlas.Grassmannian.PluckerCoordinates24.allOrderedMinorsNonneg_of_nonnegative,
    `FormalResearch.PositiveAtlas.Grassmannian.Chart24,
    `FormalResearch.PositiveAtlas.Grassmannian.Chart24.matrix,
    `FormalResearch.PositiveAtlas.Grassmannian.Chart24.coordinates,
    `FormalResearch.PositiveAtlas.Grassmannian.Chart24.coordinates_eq,
    `FormalResearch.PositiveAtlas.Grassmannian.Chart24.pivot_eq_one,
    `FormalResearch.PositiveAtlas.Grassmannian.Chart24.Positive,
    `FormalResearch.PositiveAtlas.Grassmannian.Chart24.coordinates_strictlyPositive_iff,
    `FormalResearch.PositiveAtlas.Grassmannian.Chart24.coordinates_injective,
    `FormalResearch.PositiveAtlas.Grassmannian.Chart24.fromCoordinates,
    `FormalResearch.PositiveAtlas.Grassmannian.Chart24.coordinates_fromCoordinates,
    `FormalResearch.PositiveAtlas.Grassmannian.Chart24.fromCoordinates_coordinates,
    `FormalResearch.PositiveAtlas.Grassmannian.Chart24.normalized_recognition,
    `FormalResearch.PositiveAtlas.Grassmannian.Chart24.positive_normalized_recognition]
  let moduleNames := env.allImportedModuleNames
  for mod in mods do
    unless moduleNames.contains mod do
      throwError "Missing candidate import {mod}"
  let names : List Name := env.const2ModIdx.fold (fun acc n idx =>
    if mods.contains moduleNames[idx]! then n :: acc else acc) []
  let present := names.filter fun n => (env.find? n).isSome
  let metadataOnly := names.filter fun n => (env.find? n).isNone
  for n in expected do
    unless present.contains n do
      throwError "Missing source-declared candidate kernel declaration {n}"
  for n in metadataOnly.toArray.qsort Name.quickLt do
    unless n.isInternal do
      throwError "Missing public candidate declaration {n}"
    logInfo m!"COMPILER_METADATA_ONLY {n}"
  for n in present.toArray.qsort Name.quickLt do
    let some ci := env.find? n | throwError "Candidate declaration disappeared: {n}"
    let userName := privateToUserName n
    unless userName.toString.startsWith "FormalResearch.PositiveAtlas.Grassmannian." do
      throwError "Candidate declaration outside intended namespace {n} (user name {userName})"
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
    -- Raw Expr representation supplements pretty printing, which has a display-step budget.
    logInfo m!"TYPE_EXPR {n}: {repr ci.type}"
    let axioms ← collectAxioms n
    logInfo m!"AXIOMS {n}: {axioms.qsort Name.quickLt}"
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "Unexpected transitive axiom {ax} for {n}"
  logInfo m!"AUDITED {present.length} candidate kernel declarations; source-declared {expected.size}; compiler metadata-only {metadataOnly.length}"
```
