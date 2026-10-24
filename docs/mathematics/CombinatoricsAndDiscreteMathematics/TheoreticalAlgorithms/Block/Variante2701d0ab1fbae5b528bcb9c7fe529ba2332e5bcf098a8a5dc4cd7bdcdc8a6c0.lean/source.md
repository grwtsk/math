# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Block.Variante2701d0ab1fbae5b528bcb9c7fe529ba2332e5bcf098a8a5dc4cd7bdcdc8a6c0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1036804c6c0be3ddf339b6d2be092e856c426f6d` · SHA-256 `e2701d0ab1fbae5b528bcb9c7fe529ba2332e5bcf098a8a5dc4cd7bdcdc8a6c0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.Atom.Reason

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
  probeValidated : Bool
  deriving DecidableEq, Repr

def SourceAtom.Valid (atom : SourceAtom) : Prop :=
  atom.id.Valid ∧ atom.commands.size > 0 ∧ atom.probeValidated = true ∧
    atom.barriers.all (fun barrier ↦ barrier.state != .unresolved) = true

end MathDiscovery.Atom
```
