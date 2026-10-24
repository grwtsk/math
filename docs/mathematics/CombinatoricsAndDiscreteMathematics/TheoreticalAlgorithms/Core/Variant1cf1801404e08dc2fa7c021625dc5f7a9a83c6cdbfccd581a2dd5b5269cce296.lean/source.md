# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Core.Variant1cf1801404e08dc2fa7c021625dc5f7a9a83c6cdbfccd581a2dd5b5269cce296

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b299ac06b1c4106686e672bb17f8e94395029ebd` · SHA-256 `1cf1801404e08dc2fa7c021625dc5f7a9a83c6cdbfccd581a2dd5b5269cce296`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Surface

namespace AST

inductive LeanDeclarationKind where
  | definition
  | theorem
  | structure
  | inductive
  | constructor
  | recursor
  | opaque
  | quotient
  | external
deriving DecidableEq, Repr

inductive LeanProofStatus where
  | checkedByLean
  | notATheorem
  | fixtureOnly
  | notClaimed
  | nonGoal
  | failedCheck
  | externalReference
deriving DecidableEq, Repr

inductive LeanTrustedStatus where
  | trusted
  | untrusted
  | fixtureOnly
  | externalReference
deriving DecidableEq, Repr

inductive PaperUseClassification where
  | bsdInfrastructure
  | rhInfrastructure
  | sharedInfrastructure
  | backgroundOnly
  | irrelevant
  | dangerousNeedsTheoremGate
deriving DecidableEq, Repr

inductive PaperAuthorityStatus where
  | noTheoremAuthority
  | definitionsOnly
  | statementOrObligationOnly
  | certificateInterfaceOnly
  | leanCheckedTheorem
deriving DecidableEq, Repr

structure PaperUseRecord where
  file : String
  sha256 : String
  classification : PaperUseClassification
  authorityStatus : PaperAuthorityStatus
  formalTargets : List String
  forbiddenClaims : List String
  claimBoundary : List String
deriving Repr

def PaperUseRecord.hasTheoremAuthority
    (record : PaperUseRecord) : Prop :=
  record.authorityStatus = PaperAuthorityStatus.leanCheckedTheorem

theorem paper_without_checked_theorem_has_no_theorem_authority
    (record : PaperUseRecord)
    (h :
      record.authorityStatus ≠
        PaperAuthorityStatus.leanCheckedTheorem) :
    ¬ record.hasTheoremAuthority := by
  intro hAuthority
  exact h hAuthority

structure LeanSource where
  file : String
  line : Nat
  column : Nat
deriving Repr

structure LeanModuleAst where
  moduleName : String
  slug : String
  file : String
  imports : List String
  trusted : Bool
  layer : String
  foundation : String
  summary : String
  claimBoundary : List String
deriving Repr

structure LeanDeclarationAst where
  fullName : String
  slug : String
  moduleName : String
  kind : LeanDeclarationKind
  namespaceName : String
  type : String
  source : LeanSource
  trusted : Bool
  proofStatus : LeanProofStatus
  dependencies : List String
  fixtures : List String
  paperReferences : List String
  claimBoundary : List String
deriving Repr

structure LeanAstEdge where
  fromName : String
  toName : String
  kind : String
deriving Repr

end AST

end Surface
```
