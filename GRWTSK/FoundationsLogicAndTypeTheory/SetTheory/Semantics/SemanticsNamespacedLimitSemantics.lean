-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.ExecutableOrdinalDomainCertificate.Variant3db30ade37bdb6a960308a0d274e4ea729b961253c9934e2f3dd64f93327d710","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3db30ade37bdb6a960308a0d274e4ea729b961253c9934e2f3dd64f93327d710","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.ExecutableOrdinalDomainCertificate.Variant3db30ade37bdb6a960308a0d274e4ea729b961253c9934e2f3dd64f93327d710","mathematical_subject":"Logic.SetTheory","original_sha256":"3db30ade37bdb6a960308a0d274e4ea729b961253c9934e2f3dd64f93327d710","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/StratifiedBoundary/OrdinalTally/Semantics.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.SetTheory.Ordinal.Exponential
import Mathlib.SetTheory.Ordinal.Veblen
import Mathematics.StratifiedBoundary.OrdinalTally.Syntax

/-!
# Semantics of executable ordinal tallies

Executable values are interpreted directly.  The retained `LimitSemantics`
parameter is a compatibility name for registries used by neighboring modules;
it is intentionally ignored by executable evaluation.  A limit target enters
the architecture only through `RegisteredCountableLimit`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.ExecutableOrdinalDomainCertificate.Variant3db30ade37bdb6a960308a0d274e4ea729b961253c9934e2f3dd64f93327d710

namespace Mathematics.StratifiedBoundary.OrdinalTally

abbrev LimitSemantics :=
  FundamentalSequenceId → Ordinal

def evalExecutable :
    ExecutableOrdinalTally → Ordinal
  | .zero => 0
  | .block exponent coefficient _ remainder =>
      Ordinal.omega ^ evalExecutable exponent *
          (coefficient : Ordinal) +
        evalExecutable remainder

def evalRaw :
    RawCode → Ordinal
  | .zero => 0
  | .tall count => count
  | .succ value => evalRaw value + 1
  | .block exponent coefficient remainder =>
      Ordinal.omega ^ evalRaw exponent *
          (coefficient : Ordinal) +
        evalRaw remainder

def eval
    (_limits : LimitSemantics) :
    RawCode → Ordinal :=
  evalRaw

def leadingScale
    (_limits : LimitSemantics)
    (exponent : RawCode) : Ordinal :=
  Ordinal.omega ^ evalRaw exponent

def RemainderBelow
    (_limits : LimitSemantics)
    (exponent remainder : RawCode) : Prop :=
  evalRaw remainder <
    Ordinal.omega ^ evalRaw exponent

def ExecutableRemainderBelow
    (exponent remainder :
      ExecutableOrdinalTally) : Prop :=
  evalExecutable remainder <
    Ordinal.omega ^ evalExecutable exponent

def SemanticallyEqual
    (_limits : LimitSemantics)
    (left right : RawCode) : Prop :=
  evalRaw left = evalRaw right

structure ExecutableOrdinalDomainCertificate : Prop where
  allBelowEpsilonZero :
    ∀ code : ExecutableOrdinalTally,
      evalExecutable code <
        Ordinal.epsilon 0

@[simp] theorem eval_zero
    (limits : LimitSemantics) :
    eval limits .zero = 0 :=
  rfl

@[simp] theorem eval_tall
    (limits : LimitSemantics)
    (count : Nat) :
    eval limits (.tall count) = count :=
  rfl

@[simp] theorem eval_succ
    (limits : LimitSemantics)
    (value : RawCode) :
    eval limits (.succ value) =
      eval limits value + 1 :=
  rfl

@[simp] theorem eval_block
    (limits : LimitSemantics)
    (exponent remainder : RawCode)
    (coefficient : Nat) :
    eval limits
        (.block exponent coefficient remainder) =
      Ordinal.omega ^ eval limits exponent *
          (coefficient : Ordinal) +
        eval limits remainder :=
  rfl

@[simp] theorem evalExecutable_zero :
    evalExecutable .zero = 0 :=
  rfl

@[simp] theorem evalExecutable_block
    (exponent remainder : ExecutableOrdinalTally)
    (coefficient : Nat)
    (positive : 0 < coefficient) :
    evalExecutable
        (.block exponent coefficient positive remainder) =
      Ordinal.omega ^ evalExecutable exponent *
          (coefficient : Ordinal) +
        evalExecutable remainder :=
  rfl

theorem eval_reify
    (limits : LimitSemantics)
    (code : ExecutableOrdinalTally) :
    eval limits code.reify =
      evalExecutable code := by
  induction code with
  | zero => rfl
  | block exponent coefficient positive remainder
      exponentIH remainderIH =>
      simp [ExecutableOrdinalTally.reify, eval,
        evalRaw, evalExecutable, exponentIH, remainderIH]

theorem eval_appendTall
    (limits : LimitSemantics)
    (left right : Nat) :
    eval limits (RawCode.appendTall left right) =
      (left + right : Nat) :=
  rfl

end Mathematics.StratifiedBoundary.OrdinalTally
