# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Kernel.Variant2ab9f9a2799135ce5afdbb1ee6e7d3893dfbc1761f3cbae7cde0068c480abc0b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47e2e4acefc804eb14a6a1eb5be13fea09036606` · SHA-256 `2ab9f9a2799135ce5afdbb1ee6e7d3893dfbc1761f3cbae7cde0068c480abc0b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Core.SemanticIdentity

/-!
# Kernel theorem authority and operational audit

Logical authority and replay metadata remain distinguishable but cannot be
detached after acceptance.  A `TheoremWitness` contains the proposition's
Lean proof.  A `KernelAuditEnvelope` records how an external checker
reproduced the declaration.  Their only authoritative join is the sealed
`KernelCheckedDeclarationBinding`; no digest, Boolean, address, self-reported
axiom list, or public record constructor can manufacture that binding.
-/

namespace Mathematics.Authority

/-- The one project-wide logical trust base; certificates cannot choose it. -/
def approvedLogicalTrustBase : List String :=
  ["Classical.choice", "Quot.sound", "propext"]

/-- Compiler, library, source, option, and checker identity. -/
structure FrozenKernelEnvironment where
  leanKernelDigest : Digest
  compilerDigest : Digest
  checkerSourceDigest : Digest
  checkerExecutableDigest : Digest
  libraryDigest : Digest
  sourceTreeDigest : Digest
  buildOptionsDigest : Digest
  environmentDigest : Digest
  leanKernelDigest_valid : leanKernelDigest.Valid
  compilerDigest_valid : compilerDigest.Valid
  checkerSourceDigest_valid : checkerSourceDigest.Valid
  checkerExecutableDigest_valid : checkerExecutableDigest.Valid
  libraryDigest_valid : libraryDigest.Valid
  sourceTreeDigest_valid : sourceTreeDigest.Valid
  buildOptionsDigest_valid : buildOptionsDigest.Valid
  environmentDigest_valid : environmentDigest.Valid
  deriving Repr

/-- One declaration identity shared by every component of an audit envelope. -/
structure KernelDeclarationIdentity where
  declarationName : String
  declarationAddress : ObjectAddress
  statementDigest : Digest
  declarationDigest : Digest
  proofTermDigest : Digest
  statementDigest_valid : statementDigest.Valid
  declarationDigest_valid : declarationDigest.Valid
  proofTermDigest_valid : proofTermDigest.Valid
  deriving Repr

/-- Reachability in an explicit declaration-dependency graph. -/
inductive DeclarationReachable
    (directDependencies : ObjectAddress → List ObjectAddress)
    (root : ObjectAddress) :
    ObjectAddress → Prop
  | root : DeclarationReachable directDependencies root root
  | step
      {parent child : ObjectAddress}
      (parentReachable :
        DeclarationReachable directDependencies root parent)
      (childDirect : child ∈ directDependencies parent) :
      DeclarationReachable directDependencies root child

/-- Exact, proof-bearing transitive dependency cone of one declaration. -/
structure DependencyCone
    (declaration : KernelDeclarationIdentity) where
  dependencies : List ObjectAddress
  directDependencies : ObjectAddress → List ObjectAddress
  root_listed :
    declaration.declarationAddress ∈ dependencies
  closed_under_direct_dependencies :
    ∀ parent ∈ dependencies,
      ∀ child ∈ directDependencies parent,
        child ∈ dependencies
  every_listed_dependency_reachable :
    ∀ dependency ∈ dependencies,
      DeclarationReachable directDependencies
        declaration.declarationAddress dependency
  every_reachable_dependency_listed :
    ∀ dependency,
      DeclarationReachable directDependencies
          declaration.declarationAddress dependency →
        dependency ∈ dependencies
  coneDigest : Digest
  coneDigest_valid : coneDigest.Valid

/-- Exact transitive axiom closure, bound to the audited declaration. -/
structure TrustedAxiomClosure
    (declaration : KernelDeclarationIdentity) where
  declarationName : String
  declaration_name_bound :
    declarationName = declaration.declarationName
  axioms : List String
  everyAxiomApproved :
    ∀ axiomName ∈ axioms,
      axiomName ∈ approvedLogicalTrustBase
  sorryAxAbsent : "sorryAx" ∉ axioms
  projectSpecificUnprovedAxioms : List String
  projectSpecificUnprovedAxioms_absent :
    projectSpecificUnprovedAxioms = []
  opaqueOracleConstants : List String
  opaqueOracleConstants_absent :
    opaqueOracleConstants = []
  unverifiedNativeAssertions : List String
  unverifiedNativeAssertions_absent :
    unverifiedNativeAssertions = []
  modelGeneratedAssumptions : List String
  modelGeneratedAssumptions_absent :
    modelGeneratedAssumptions = []
  reportDigest : Digest
  reportDigest_valid : reportDigest.Valid

/--
An operational replay record has no caller-selectable `accepted : Bool`.
Existence means that the trusted issuer returned a replay object; executable
validation must still reconstruct it from the retained source and `.olean`.
-/
structure KernelReplayReceipt
    (environment : FrozenKernelEnvironment)
    (declaration : KernelDeclarationIdentity) where
  checkerName : String
  checkerSourceDigest : Digest
  checker_source_bound :
    checkerSourceDigest = environment.checkerSourceDigest
  checkerExecutableDigest : Digest
  checker_executable_bound :
    checkerExecutableDigest = environment.checkerExecutableDigest
  environmentDigest : Digest
  environment_bound :
    environmentDigest = environment.environmentDigest
  declarationDigest : Digest
  declaration_bound :
    declarationDigest = declaration.declarationDigest
  proofTermDigest : Digest
  proof_bound :
    proofTermDigest = declaration.proofTermDigest
  retainedReplaySource : ObjectAddress
  retainedCompiledModule : ObjectAddress
  receiptAddress : ObjectAddress
  receiptDigest : Digest
  receiptDigest_valid : receiptDigest.Valid

/-- The only logically authoritative payload. -/
structure TheoremWitness (statement : Prop) : Prop where
  proof : statement

/-- Reproducibility evidence; this is not itself a theorem constructor. -/
structure KernelAuditEnvelope
    (environment : FrozenKernelEnvironment)
    (declaration : KernelDeclarationIdentity) where
  dependencyCone : DependencyCone declaration
  axiomClosure : TrustedAxiomClosure declaration
  replay : KernelReplayReceipt environment declaration
  auditAddress : ObjectAddress

/--
The sealed result of checking one exact declaration in one exact environment.
Its type indices make the proof and audit refer to the same proposition,
environment, and declaration identity.  The private constructor is the trust
boundary: callers may inspect a checked binding but cannot assemble one from a
detached witness and audit.
-/
structure KernelCheckedDeclarationBinding
    (environment : FrozenKernelEnvironment)
    (statement : Prop)
    (declaration : KernelDeclarationIdentity) where
  private mk ::
  witness : TheoremWitness statement
  audit : KernelAuditEnvelope environment declaration

/--
The common theorem certificate.  Its private constructor prevents callers
from replacing the declaration or certificate address around an unaudited
payload.  Operational extraction may retain values of this type, while public
consumers receive only inspection and theorem-elimination interfaces.
-/
structure AcceptedKernelCertificate
    (environment : FrozenKernelEnvironment)
    (statement : Prop) where
  private mk ::
  declaration : KernelDeclarationIdentity
  checked :
    KernelCheckedDeclarationBinding environment statement declaration
  certificateAddress : ObjectAddress

namespace AcceptedKernelCertificate

/-- The replayable audit inseparably carried by an accepted certificate. -/
def audit
    {environment : FrozenKernelEnvironment}
    {statement : Prop}
    (certificate :
      AcceptedKernelCertificate environment statement) :
    KernelAuditEnvelope environment certificate.declaration :=
  certificate.checked.audit

/-- The proof-bearing witness inseparably carried by an accepted certificate. -/
theorem witness
    {environment : FrozenKernelEnvironment}
    {statement : Prop}
    (certificate :
      AcceptedKernelCertificate environment statement) :
    TheoremWitness statement :=
  certificate.checked.witness

/-- Eliminate an accepted certificate only into its exact indexed proposition. -/
theorem proves
    {environment : FrozenKernelEnvironment}
    {statement : Prop}
    (certificate :
      AcceptedKernelCertificate environment statement) :
    statement :=
  certificate.witness.proof

/-- Every accepted certificate exposes an audit for its exact declaration. -/
theorem audit_declaration_bound
    {environment : FrozenKernelEnvironment}
    {statement : Prop}
    (certificate :
      AcceptedKernelCertificate environment statement) :
    certificate.audit.replay.declarationDigest =
      certificate.declaration.declarationDigest :=
  certificate.audit.replay.declaration_bound

/-- Every accepted certificate exposes a replay bound to its exact environment. -/
theorem audit_environment_bound
    {environment : FrozenKernelEnvironment}
    {statement : Prop}
    (certificate :
      AcceptedKernelCertificate environment statement) :
    certificate.audit.replay.environmentDigest =
      environment.environmentDigest :=
  certificate.audit.replay.environment_bound

end AcceptedKernelCertificate

end Mathematics.Authority
```
