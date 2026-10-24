-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.RawCode.Variantd4a1493369ff2f441ac6f82a4f98336598a4f0ff728a8e8c0f331bc68c299138","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d4a1493369ff2f441ac6f82a4f98336598a4f0ff728a8e8c0f331bc68c299138","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.RawCode.Variantd4a1493369ff2f441ac6f82a4f98336598a4f0ff728a8e8c0f331bc68c299138","mathematical_subject":"Logic.SetTheory","original_sha256":"d4a1493369ff2f441ac6f82a4f98336598a4f0ff728a8e8c0f331bc68c299138","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/StratifiedBoundary/OrdinalTally/Syntax.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Executable ordinal-tally syntax

`RawCode` is proposal notation: `tall` and `succ` are conveniences that must
be normalized before persistence.  `ExecutableOrdinalTally` is the canonical
runtime grammar.  It contains only zero and positive Cantor blocks.

Countable limits are deliberately absent from both grammars.  They are
registered as separate certificate-bearing objects.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.RawCode.Variantd4a1493369ff2f441ac6f82a4f98336598a4f0ff728a8e8c0f331bc68c299138

namespace Mathematics.StratifiedBoundary.OrdinalTally

abbrev FundamentalSequenceId := String

inductive RawCode
  | zero
  | tall (count : Nat)
  | succ (value : RawCode)
  | block
      (exponent : RawCode)
      (coefficient : Nat)
      (remainder : RawCode)
  deriving DecidableEq, Repr

inductive ExecutableOrdinalTally
  | zero
  | block
      (exponent : ExecutableOrdinalTally)
      (coefficient : Nat)
      (coefficientPositive : 0 < coefficient)
      (remainder : ExecutableOrdinalTally)

namespace RawCode

def empty : RawCode :=
  .zero

def appendTall
    (left right : Nat) : RawCode :=
  .tall (left + right)

def derivedSuccessor
    (value : RawCode) : RawCode :=
  .succ value

def constructorName :
    RawCode → String
  | .zero => "zero"
  | .tall _ => "derived-tall"
  | .succ _ => "derived-successor"
  | .block _ _ _ => "block"

end RawCode

namespace ExecutableOrdinalTally

def tall : Nat → ExecutableOrdinalTally
  | 0 => .zero
  | count + 1 =>
      .block .zero (count + 1)
        (Nat.succ_pos count) .zero

def reify :
    ExecutableOrdinalTally → RawCode
  | .zero => .zero
  | .block exponent coefficient _ remainder =>
      .block (reify exponent) coefficient
        (reify remainder)

def constructorName :
    ExecutableOrdinalTally → String
  | .zero => "zero"
  | .block _ _ _ _ => "block"

end ExecutableOrdinalTally

@[simp] theorem RawCode.appendTall_eq
    (left right : Nat) :
    RawCode.appendTall left right =
      .tall (left + right) :=
  rfl

@[simp] theorem ExecutableOrdinalTally.reify_tall
    (count : Nat) :
    ExecutableOrdinalTally.reify
        (ExecutableOrdinalTally.tall count) =
      if count = 0 then .zero else .block .zero count .zero := by
  cases count <;> simp [ExecutableOrdinalTally.tall,
    ExecutableOrdinalTally.reify]

end Mathematics.StratifiedBoundary.OrdinalTally
