# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Targets.Variantf18ad7281e41d49b4e9672ca3e1e045cadc6855dac2594c7fa3e67478e4bb7a9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a109c1788329b67c4040434eddad09d5e7303db` · SHA-256 `f18ad7281e41d49b4e9672ca3e1e045cadc6855dac2594c7fa3e67478e4bb7a9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.FullFixtures
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Fixtures
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.AssemblyFixtures

/-!
# Source-bound finite model admission targets

Each stage combines its precise generic checker statement with the concrete
full-profile fixture. These are semantic Lean obligations, not native decoder,
cryptographic, C ABI, infinite-grammar, or cross-repository import claims.
The exact declaration contains the conditional generator presentation; it does
not assert literal syntax equality for the declared quotient equations.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model
namespace Targets

/-- Sound snapshot validation and validity of the concrete full-profile source/signature. -/
def K1Obligation : Prop :=
  (∀ snapshot, checkSnapshot snapshot = true → SnapshotValid snapshot) ∧
    SnapshotValid FullFixtures.snapshot

theorem k1_checked : K1Obligation :=
  ⟨checkSnapshot_sound, FullFixtures.checkedSnapshot.valid⟩

/-- Sound ordered-syntax validation and the exact full-profile occurrence/yield fixture. -/
def K2Obligation : Prop :=
  (∀ snapshot certificate, checkSyntax snapshot certificate = true →
    SyntaxValid snapshot certificate) ∧
    SyntaxValid FullFixtures.checkedSnapshot FullFixtures.tree

theorem k2_checked : K2Obligation :=
  ⟨checkSyntax_sound, FullFixtures.checkedTree.valid⟩

/-- Sound primitive-ledger validation and the fixture’s separate valuation, support and parity. -/
def K3Obligation : Prop :=
  (∀ snapshot tree certificate, checkLedger snapshot tree certificate = true →
    LedgerValid snapshot tree certificate) ∧
    LedgerValid FullFixtures.checkedSnapshot FullFixtures.checkedTree FullFixtures.ledger

theorem k3_checked : K3Obligation :=
  ⟨checkLedger_sound, FullFixtures.checkedLedger.valid⟩

/-- Successful admission of the complete immutable candidate bundle before higher stages. -/
def FullDeclarationObligation : Prop :=
  (admitFullDeclaration FullFixtures.declaration).isSome = true

theorem full_declaration_checked : FullDeclarationObligation :=
  FullFixtures.full_declaration_admitted

/-- Soundness and a positive fixture for the supported singleton InternalOnly critical profile
only. -/
def K4Obligation : Prop :=
  (∀ declaration, checkCritical declaration = true → SingletonCriticalValid declaration.value) ∧
    SingletonCriticalValid FullFixtures.checkedFull.value

theorem k4_checked : K4Obligation :=
  ⟨checkCritical_sound, FullFixtures.checkedCritical.valid⟩

/-- Sound exact involution checking and the full fixture’s checked signed permutation. -/
def K5Obligation : Prop :=
  (∀ declaration critical, checkInvolution declaration critical = true →
    InvolutionValid declaration.value) ∧ InvolutionValid FullFixtures.checkedFull.value

theorem k5_checked : K5Obligation :=
  ⟨checkInvolution_sound, FullFixtures.checkedInvolution.valid⟩

/-- Independent finite role-algebra and tree-run soundness, with the fixture’s accepted root. -/
def K6Obligation : Prop :=
  (∀ declaration, checkRoleAlgebra declaration = true → RoleAlgebraValid declaration) ∧
  (∀ declaration, checkRoleRun declaration = true → RoleRunValid declaration) ∧
    RoleAlgebraValid FullFixtures.checkedFull ∧ RoleRunValid FullFixtures.checkedFull ∧
    RoleAccepted FullFixtures.checkedFull

theorem k6_checked : K6Obligation :=
  ⟨checkRoleAlgebra_sound, checkRoleRun_sound, FullFixtures.checkedAlgebra.valid,
    FullFixtures.checkedRun.valid, FullFixtures.checkedAcceptedRoot.accepted⟩

/-- Sound grammar checking and exact reconstruction of the fixture’s entire role table. -/
def K7Obligation : Prop :=
  (∀ declaration, checkGrammar declaration = true → GrammarValid declaration) ∧
    GrammarValid FullFixtures.checkedFull

theorem k7_checked : K7Obligation :=
  ⟨checkGrammar_sound, FullFixtures.checkedGrammar.valid⟩

/-- Every proof-bearing checked finite congruence satisfies its scoped validity predicate; the
concrete catalog is admitted. -/
def K8Obligation : Prop :=
  (∀ full algebra grammar (congruence : CheckedCongruence full algebra grammar),
    CongruenceValid full congruence.candidate) ∧
    CongruenceValid FullFixtures.checkedFull AssemblyFixtures.checkedCongruence.candidate

theorem k8_checked : K8Obligation :=
  ⟨checkedCongruence_sound, AssemblyFixtures.checkedCongruence.valid⟩

/-- Every checked descent preserves the scoped finite interpretation; the concrete quotient
fixture has that capability. -/
def K9Obligation : Prop :=
  (∀ full algebra grammar congruence
    (_descent : CheckedDescent full algebra grammar congruence),
      DescentValid full congruence.candidate) ∧
    DescentValid FullFixtures.checkedFull AssemblyFixtures.checkedCongruence.candidate

theorem k9_checked : K9Obligation :=
  ⟨checkedDescent_sound, AssemblyFixtures.checkedDescent.valid⟩

/-- The supported full-profile fixture passes every stage through finite semantic descent. -/
def EndToEndObligation : Prop :=
  FullModelStages FullFixtures.checkedFull AssemblyFixtures.candidate

theorem end_to_end_checked : EndToEndObligation := AssemblyFixtures.end_to_end_positive

/-- Permanent rejection obligations for the thirteen central K8/K9 identity, scope and coverage
attacks. -/
def HostileCongruenceDescentObligation : Prop := AssemblyFixtures.HostileK8K9Checks

theorem hostile_congruence_descent_checked : HostileCongruenceDescentObligation :=
  AssemblyFixtures.hostile_k8_k9_checks

end Targets
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model
```
