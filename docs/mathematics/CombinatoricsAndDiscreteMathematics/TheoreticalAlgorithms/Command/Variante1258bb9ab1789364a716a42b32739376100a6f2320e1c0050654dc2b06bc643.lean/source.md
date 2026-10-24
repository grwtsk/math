# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Command.Variante1258bb9ab1789364a716a42b32739376100a6f2320e1c0050654dc2b06bc643

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c1519afc349fe15cd0e64b969b8a5b12c4b2a458` · SHA-256 `e1258bb9ab1789364a716a42b32739376100a6f2320e1c0050654dc2b06bc643`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.Atom.Id

/-! # Lean-front-end source command records -/

namespace MathDiscovery.Atom

open MathDiscovery

structure ByteRange where
  start : Nat
  stop : Nat
  deriving DecidableEq, Repr, Inhabited

def ByteRange.Valid (range : ByteRange) : Prop :=
  range.start ≤ range.stop

structure LineColumnRange where
  startLine : Nat
  startColumn : Nat
  stopLine : Nat
  stopColumn : Nat
  deriving DecidableEq, Repr, Inhabited

inductive CommandAuthority
  | leanFrontend
  | compiledEnvironment
  | aligned
  | sourceOnly
  | unresolved
  deriving DecidableEq, Repr, Inhabited

structure CommandRecord where
  id : SourceCommandId
  fileId : SourceFileId
  ordinal : Nat
  bytes : ByteRange
  position : LineColumnRange
  syntaxKind : String
  rawDigest : Digest
  canonicalSyntaxDigest : Digest
  leadingTriviaDigest : Digest
  trailingTriviaDigest : Digest
  contextBefore : SourceContextId
  contextAfter : SourceContextId
  emittedDeclarations : Array ExtractorDeclarationId
  generatedDeclarations : Array ExtractorDeclarationId
  referencedCommands : Array SourceCommandId
  attachedAttributes : Array SourceCommandId
  attachedDocumentation : Option SourceCommandId
  environmentBefore : Digest
  environmentAfter : Digest
  authority : CommandAuthority
  deriving DecidableEq, Repr

end MathDiscovery.Atom
```
