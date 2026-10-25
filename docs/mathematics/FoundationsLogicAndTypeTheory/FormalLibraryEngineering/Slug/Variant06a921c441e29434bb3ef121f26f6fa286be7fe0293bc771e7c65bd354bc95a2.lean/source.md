# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Slug.Variant06a921c441e29434bb3ef121f26f6fa286be7fe0293bc771e7c65bd354bc95a2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5857e4ba289b9f4136c16ba105d0e8013d93b11c` · SHA-256 `06a921c441e29434bb3ef121f26f6fa286be7fe0293bc771e7c65bd354bc95a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.AST.Core

namespace Surface

namespace AST

structure Slug where
  value : String
deriving Repr

namespace Slug

def Nonempty (slug : Slug) : Prop :=
  slug.value ≠ ""

end Slug

structure TrustedDeclaration where
  fullName : String
  trusted : Bool
  nonemptyName : fullName ≠ ""

def slugOfDeclaration (d : TrustedDeclaration) : Slug where
  value := d.fullName

def TrustedDeclarationValid (d : TrustedDeclaration) : Prop :=
  d.trusted = true ∧ d.fullName ≠ ""

theorem slug_nonempty_for_trusted_declaration
    {d : TrustedDeclaration} :
    TrustedDeclarationValid d ->
      Slug.Nonempty (slugOfDeclaration d) := by
  intro h
  exact h.2

end AST

end Surface
```
