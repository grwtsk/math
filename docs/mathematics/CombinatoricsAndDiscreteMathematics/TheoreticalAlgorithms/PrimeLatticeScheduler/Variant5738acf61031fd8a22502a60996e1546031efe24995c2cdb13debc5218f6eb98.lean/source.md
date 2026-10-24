# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PrimeLatticeScheduler.Variant5738acf61031fd8a22502a60996e1546031efe24995c2cdb13debc5218f6eb98

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4b5b847a5c4597f108199872aeae55804415b40b` · SHA-256 `78dab6b37b901fe23873fc192c62ca54a68b6b97a9c8a227e2b5ab35d43da632`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PrimeLatticeScheduler.Variant170bdf4d6dccfe40b2ca09307f6e97e3ae559a100a22af06470348b90ab5f544","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"170bdf4d6dccfe40b2ca09307f6e97e3ae559a100a22af06470348b90ab5f544","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PrimeLatticeScheduler.Variant170bdf4d6dccfe40b2ca09307f6e97e3ae559a100a22af06470348b90ab5f544","mathematical_subject":"Computation.DataStructures","original_sha256":"170bdf4d6dccfe40b2ca09307f6e97e3ae559a100a22af06470348b90ab5f544","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Refactor/PrimeLatticeScheduler.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Refactor.PrimeLatticePlan
public import Surface.Core.GoalGraph

/-!
# Closed-loop PrimeLattice scheduler

This is a Mealy-style deterministic planning surface.  Observations may change
which task is attempted next, but neither observations nor scheduler outputs
carry Lean theorem authority.  Kernel authority remains available only
through the existing proof-bearing verification and receipt types.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PrimeLatticeScheduler.Variant170bdf4d6dccfe40b2ca09307f6e97e3ae559a100a22af06470348b90ab5f544

public section

namespace Surface.Refactor

/-- Closed-loop observe/advance machinery with no proof or authority field. -/
@[surface_novel]
structure PrimeLatticeScheduler where
  State : Type
  Observation : Type
  observe : State → Observation
  advance : State → Observation → State

namespace PrimeLatticeScheduler

/-- One deterministic feedback tick. -/
@[expose]
def tick (scheduler : PrimeLatticeScheduler) :
    scheduler.State → scheduler.State :=
  fun state ↦ scheduler.advance state (scheduler.observe state)

@[surface_novel, surface_published]
theorem tick_eq_observe_then_advance
    (scheduler : PrimeLatticeScheduler) (state : scheduler.State) :
    scheduler.tick state =
      scheduler.advance state (scheduler.observe state) :=
  rfl

end PrimeLatticeScheduler

/-- Typed observations useful to a generator.  Every field is diagnostic or
planning data; none asserts that a proposition has been proved. -/
@[surface_novel]
structure PrimeLatticeObservation where
  unresolvedGoalIds : List Surface.Core.GoalCellId
  importFailures : List String
  axiomClosureChanges : List String
  packetScaleObligations : List String
  geometricSideConditions : List String
  gramDiagnostics : List String
  projectFingerprint : ContentHash256
  sourceFingerprint : ContentHash256
deriving Repr

/-- A deterministic scheduler output is explicitly planning authority. -/
@[expose]
def primeLatticeSchedulerAuthority : RefactorAuthority := .deterministic

@[surface_novel, surface_published]
theorem primeLattice_scheduler_not_kernel_authority :
    primeLatticeSchedulerAuthority ≠ .leanKernelChecked := by
  intro h
  cases h

end Surface.Refactor
```
