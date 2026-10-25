# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.CorePositive.Variant4216cf8597fe553f70c1778ca468762b91d2ad97966634101c071570cfa62f81

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f149874b95eb7e267f56a9a528dd9eee625a71e` · SHA-256 `4216cf8597fe553f70c1778ca468762b91d2ad97966634101c071570cfa62f81`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Init
namespace TypingPositive
universe u
def identity {α : Type u} (a : α) : α := a
theorem identity_eq {α : Type u} (a : α) : identity a = a := rfl
inductive Flag where | off | on
end TypingPositive
```
