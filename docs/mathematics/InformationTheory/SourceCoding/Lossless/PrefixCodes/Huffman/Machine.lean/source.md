# Complete source: GRWTSK.InformationTheory.Huffman.Machine

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `290c678d0a5989df33e732919d486163d2274104` · SHA-256 `86d65d00e4169dde27d440ed02475ce649ac6fd42025db8ad8079cf3b10e81b8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.InformationTheory.Huffman.Stream
import GRWTSK.InformationTheory.Huffman.Wire

/-!
# Literal bit-by-bit Huffman decoder

A state contains the current node and emitted bytes. Every consumed bit selects
one child; reaching a leaf emits its byte and resets to the root, matching the
Rust/Python streaming loops. A singleton root accepts exactly one false bit per
emitted byte. No round-trip law is assumed.
-/
namespace GRWTSK.InformationTheory.Huffman.Machine

open GRWTSK.InformationTheory.Huffman

abbrev State := Tree × List UInt8

/-- Enter a child after a bit was consumed. A leaf emits and resets immediately. -/
def arrive (root node : Tree) (output : List UInt8) : State :=
  match node with
  | .leaf a => (root, output ++ [a])
  | .branch left right => (.branch left right, output)

/-- One literal bit transition, including the singleton-alphabet special case. -/
def step (root : Tree) (state : State) (bit : Bool) : Option State :=
  match state with
  | (.leaf a, output) => if bit then none else some (root, output ++ [a])
  | (.branch left right, output) =>
    some (arrive root (if bit then right else left) output)

def run (root : Tree) (state : State) : List Bool → Option State
  | [] => some state
  | bit :: bits => (step root state bit).bind (fun next => run root next bits)

/-- Running concatenated bits is the sequential execution of the same machine. -/
theorem run_append (root : Tree) (state : State) (left right : List Bool) :
    run root state (left ++ right) =
      (run root state left).bind (fun middle => run root middle right) := by
  induction left generalizing state with
  | nil => rfl
  | cons bit bits ih =>
    simp only [List.cons_append, run]
    cases h : step root state bit with
    | none => rfl
    | some next => simpa using ih next

/-- Entering a subtree and following its exact leaf path emits that byte and
ends at the root. This includes the zero-length path of an entered leaf. -/
theorem run_arrive_path (root node : Tree) (a : UInt8) (bits : List Bool)
    (output : List UInt8) (h : node.path a = some bits) :
    run root (arrive root node output) bits = some (root, output ++ [a]) := by
  induction node generalizing bits output with
  | leaf b =>
    simp only [Tree.path] at h
    split at h
    · rename_i hab
      subst a
      cases h
      rfl
    · simp at h
  | branch left right ihl ihr =>
    simp only [Tree.path] at h
    cases hl : left.path a with
    | some path =>
      simp only [hl] at h
      cases h
      simpa [arrive, run, step] using ihl path output hl
    | none =>
      simp only [hl] at h
      cases hr : right.path a with
      | none => simp [hr] at h
      | some path =>
        simp only [hr, Option.map_some] at h
        cases h
        simpa [arrive, run, step] using ihr path output hr

/-- Every concrete codeword emits exactly its byte and resets the current node. -/
theorem run_word (root : Tree) (a : UInt8) (bits : List Bool)
    (output : List UInt8) (h : root.word a = some bits) :
    run root (root, output) bits = some (root, output ++ [a]) := by
  cases root with
  | leaf b =>
    simp only [Tree.word] at h
    split at h
    · rename_i hab
      subst a
      cases h
      rfl
    · simp at h
  | branch left right =>
    exact run_arrive_path (.branch left right) (.branch left right) a bits output h

/-- The actual root-reset machine decodes the concatenated codewords, with no
count-driven recursive parser in its definition. Its final node is the root. -/
theorem run_encodeWith (root : Tree) (source : List UInt8) (bits : List Bool)
    (output : List UInt8) (encoded : encodeWith root source = some bits) :
    run root (root, output) bits = some (root, output ++ source) := by
  induction source generalizing bits output with
  | nil =>
    simp only [encodeWith, Option.some.injEq] at encoded
    subst bits
    simp [run]
  | cons a source ih =>
    cases hw : root.word a with
    | none => simp [encodeWith, hw] at encoded
    | some word =>
      cases hr : encodeWith root source with
      | none => simp [encodeWith, hw, hr] at encoded
      | some rest =>
        simp [encodeWith, hw, hr] at encoded
        subst bits
        rw [run_append, run_word root a word output hw]
        simp only [Option.bind_some]
        simpa [List.append_assoc] using ih rest (output ++ [a]) hr

/-- Only alphabet coverage is needed to obtain an executable encoded stream;
its bit-by-bit decoding is a derived equality, not an assumed inverse. -/
theorem run_encodeCovered (root : Tree) (source : List UInt8)
    (covered : ∀ a ∈ source, a ∈ root.symbols) :
    ∃ bits, encodeWith root source = some bits ∧
      run root (root, []) bits = some (root, source) := by
  obtain ⟨bits, encoded⟩ := encodeWith_exists root source covered
  exact ⟨bits, encoded, by simpa using run_encodeWith root source bits [] encoded⟩

/-- The count parser and literal streaming machine agree on all valid encodings. -/
theorem valid_encoding_decoders_agree (root : Tree) (source : List UInt8)
    (bits : List Bool) (encoded : encodeWith root source = some bits) :
    decodeCount root source.length bits = some (source, []) ∧
      run root (root, []) bits = some (root, source) := by
  exact ⟨decodeCount_encodeWith root source bits encoded,
    by simpa using run_encodeWith root source bits [] encoded⟩

/-- Exact concrete UInt8 wire packing is transparent to the streaming machine. -/
theorem run_packed_encoding (root : Tree) (source : List UInt8)
    (bits : List Bool) (encoded : encodeWith root source = some bits) :
    run root (root, []) (Wire.unpack (Wire.pack bits) bits.length) =
      some (root, source) := by
  rw [Wire.unpack_pack]
  simpa using run_encodeWith root source bits [] encoded

end GRWTSK.InformationTheory.Huffman.Machine
```
