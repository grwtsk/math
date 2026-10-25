# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Token.Variant711b50e5f7812dfbae12e22c72ee8ed36b8c156d5c653e9ab04ba5d81fc2102f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce44fde5f30b5b6e293c57f1f1bb234936e7eb96` · SHA-256 `711b50e5f7812dfbae12e22c72ee8ed36b8c156d5c653e9ab04ba5d81fc2102f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Refactor.Syntax.Span

/-! # Normalized lossless-token references -/

public section

namespace Surface.Refactor.Syntax

@[surface_novel]
inductive TriviaClassification where
  | none
  | whitespace
  | lineComment
  | blockComment
  | documentationComment
  | other
deriving DecidableEq, Repr, BEq

@[surface_novel]
inductive TokenTextReference where
  | sourceSlice (span : SourceSpan)
  | stringTable (index : Nat)
deriving DecidableEq, Repr

@[surface_novel]
structure TokenFlags where
  identifier : Bool := false
  literal : Bool := false
  comment : Bool := false
  delimiter : Bool := false
deriving DecidableEq, Repr, BEq

@[surface_novel]
structure TokenRecord where
  tokenKindCode : Nat
  sourceSpan : SourceSpan
  trivia : TriviaClassification
  textReference : TokenTextReference
  flags : TokenFlags
deriving DecidableEq, Repr

@[expose] def TokenTextReference.Valid
    (layout : SourceByteLayout) (stringCount : Nat) : TokenTextReference → Prop
  | .sourceSlice span => span.Valid layout
  | .stringTable index => index < stringCount

@[expose] def TokenRecord.Valid
    (layout : SourceByteLayout) (stringCount : Nat) (token : TokenRecord) : Prop :=
  FitsU32 token.tokenKindCode ∧
    token.sourceSpan.Valid layout ∧
    token.textReference.Valid layout stringCount

end Surface.Refactor.Syntax
```
