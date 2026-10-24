# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Block.Variant16e02bbacba7039c2dfc2a2decee03ce88f947609bb1dc25dc226e0e2b84d3ad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `303d8b2231e4ffa6fbe96641ad9612e99703c764` · SHA-256 `16e02bbacba7039c2dfc2a2decee03ce88f947609bb1dc25dc226e0e2b84d3ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.Atom.Reason
import MathDiscovery.Oracle.Naming.Name

/-! # Certified source atoms and semantic receipts -/

namespace MathDiscovery.Atom

open MathDiscovery

structure UnitSemanticReceipt where
  publicNamesDigest : Digest
  declarationKindsDigest : Digest
  statementDigest : Digest
  implementationDigest : Digest
  generatedFamilyDigest : Digest
  dependencyDigest : Digest
  trustClosureDigest : Digest
  safetyDigest : Digest
  deriving DecidableEq, Repr

structure SourceAtom where
  id : SourceAtomId
  commands : Array SourceCommandId
  emittedDeclarations : Array ExtractorDeclarationId
  contextCapsule : ContextCapsule
  imports : Array String
  mustLinkReasons : Array CollapseReasonKind
  barriers : Array RefactorBarrier
  baselineReceipt : UnitSemanticReceipt
  name? : Option MathDiscovery.Oracle.Naming.AtomName := none
  probeValidated : Bool
  deriving DecidableEq, Repr

def SourceAtom.Valid (atom : SourceAtom) : Prop :=
  atom.id.Valid ∧ atom.commands.size > 0 ∧ atom.probeValidated = true ∧
    atom.barriers.all (fun barrier ↦ barrier.state != .unresolved) = true

end MathDiscovery.Atom
```
