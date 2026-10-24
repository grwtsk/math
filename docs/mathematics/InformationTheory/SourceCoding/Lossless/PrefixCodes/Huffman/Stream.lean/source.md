# Complete source: GRWTSK.InformationTheory.Huffman.Stream

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c8e070975344ea9f0c6607086547be1dffc2459` · SHA-256 `83f49469cd15190163babcf852e9a24412434e9d8bc0d4f399fa3faf75e70c1c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.InformationTheory.Huffman.Tree

/-!
# Prefix-code streams with an exact retained byte count

The decoder consumes actual Boolean edge paths. Its count is the original
byte length, and its result includes the unconsumed suffix. The theorems are
derived from the concrete tree traversal, not from an assumed codec inverse.
-/

namespace GRWTSK.InformationTheory.Huffman

def encodeWith (tree : Tree) : List UInt8 → Option (List Bool)
  | [] => some []
  | a :: source => do
    let word ← tree.word a
    let rest ← encodeWith tree source
    pure (word ++ rest)

def decodeCount (tree : Tree) : Nat → List Bool → Option (List UInt8 × List Bool)
  | 0, bits => some ([], bits)
  | count + 1, bits => do
    let (a, tail) ← tree.readWord bits
    let (source, rest) ← decodeCount tree count tail
    pure (a :: source, rest)

theorem encodeWith_exists (tree : Tree) (source : List UInt8)
    (covered : ∀ a ∈ source, a ∈ tree.symbols) :
    ∃ bits, encodeWith tree source = some bits := by
  induction source with
  | nil => exact ⟨[], rfl⟩
  | cons a source ih =>
    obtain ⟨word, hw⟩ := tree.word_exists a (covered a (by simp))
    obtain ⟨rest, hr⟩ := ih (fun b hb => covered b (by simp [hb]))
    exact ⟨word ++ rest, by simp [encodeWith, hw, hr]⟩

theorem decodeCount_encodeWith_append (tree : Tree) (source : List UInt8)
    (bits tail : List Bool) (encoded : encodeWith tree source = some bits) :
    decodeCount tree source.length (bits ++ tail) = some (source, tail) := by
  induction source generalizing bits with
  | nil =>
    simp only [encodeWith, Option.some.injEq] at encoded
    subst bits
    rfl
  | cons a source ih =>
    cases hw : tree.word a with
    | none => simp [encodeWith, hw] at encoded
    | some word =>
      cases hr : encodeWith tree source with
      | none => simp [encodeWith, hw, hr] at encoded
      | some rest =>
        have heq : word ++ rest = bits := by
          simpa [encodeWith, hw, hr] using encoded
        subst bits
        rw [List.append_assoc]
        simp [decodeCount, tree.readWord_word a word (rest ++ tail) hw, ih rest hr]

theorem decodeCount_encodeWith (tree : Tree) (source : List UInt8)
    (bits : List Bool) (encoded : encodeWith tree source = some bits) :
    decodeCount tree source.length bits = some (source, []) := by
  simpa using decodeCount_encodeWith_append tree source bits [] encoded

end GRWTSK.InformationTheory.Huffman
```
