import Mathematics.SemanticTokenization.Basic

/-!
# Interpretation authority
-/

namespace Mathematics.SemanticTokenization

inductive AuthorityClass
  | humanAccepted
  | lexicallyCertified
  | corpusSupported
  | parserSupported
  | modelSuggested
  | taskAssumed
deriving DecidableEq, Repr

inductive AssertionUse
  | structural
  | lexical
  | syntactic
  | semantic
  | pragmatic
  | theoremPremise
  | candidateOnly
deriving DecidableEq, Repr

structure AuthorityPolicy where
  permits : AuthorityClass → AssertionUse → Bool
  modelCannotProve :
    permits .modelSuggested .theoremPremise = false
  parserCannotProveSemantics :
    permits .parserSupported .semantic = false
  parserCannotProveTheorems :
    permits .parserSupported .theoremPremise = false

def conservativeAuthorityPolicy : AuthorityPolicy where
  permits
    | .humanAccepted, _ => true
    | .lexicallyCertified, .lexical => true
    | .corpusSupported, .lexical => true
    | .corpusSupported, .pragmatic => true
    | .parserSupported, .structural => true
    | .parserSupported, .syntactic => true
    | .modelSuggested, .candidateOnly => true
    | .taskAssumed, .candidateOnly => true
    | _, _ => false
  modelCannotProve := rfl
  parserCannotProveSemantics := rfl
  parserCannotProveTheorems := rfl

theorem model_suggestion_not_theorem_authority
    (policy : AuthorityPolicy) :
    policy.permits .modelSuggested .theoremPremise = false :=
  policy.modelCannotProve

end Mathematics.SemanticTokenization
