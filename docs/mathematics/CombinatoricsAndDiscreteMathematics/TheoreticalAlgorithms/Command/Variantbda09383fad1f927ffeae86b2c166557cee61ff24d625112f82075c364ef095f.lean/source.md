# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Command.Variantbda09383fad1f927ffeae86b2c166557cee61ff24d625112f82075c364ef095f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc57f5605ce591cca04939c5c3e66cd10a73362d` · SHA-256 `bda09383fad1f927ffeae86b2c166557cee61ff24d625112f82075c364ef095f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Element.Id

/-! # Lean-front-end source command records -/

namespace Mathematics.Element

open Mathematics

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

end Mathematics.Element
```
