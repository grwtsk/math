# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Random.Variant17c44148737fcc9c3f03586fee77b7ba712eff11b237a62d03ce83acf4b79c26

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f41d852169e093c0ea69c638dd5735fd6c19aa9f` · SHA-256 `99907e0c50eb845b53cbfb5f67d22902d8c1f9c99fd727c6de81ce17f0e93bba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RandomGen.Variant10bc81cac764ae9d426e141954af5a3ba21f89acd9130b437db39e01059a6ec2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"10bc81cac764ae9d426e141954af5a3ba21f89acd9130b437db39e01059a6ec2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.RandomGen.Variant10bc81cac764ae9d426e141954af5a3ba21f89acd9130b437db39e01059a6ec2","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"10bc81cac764ae9d426e141954af5a3ba21f89acd9130b437db39e01059a6ec2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Random.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.System.IO
import Init.Data.ByteArray.Extra


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RandomGen.Variant10bc81cac764ae9d426e141954af5a3ba21f89acd9130b437db39e01059a6ec2

public section
universe u

/-!
Basic random number generator support based on the one
available on the Haskell library
-/

/-- Interface for random number generators. -/
class RandomGen (g : Type u) where
  /-- `range` returns the range of values returned by
      the generator. -/
  range : g → Nat × Nat
  /-- `next` operation returns a natural number that is uniformly distributed
      the range returned by `range` (including both end points),
     and a new generator. -/
  next  : g → Nat × g
  /--
    The 'split' operation allows one to obtain two distinct random number
    generators. This is very useful in functional programs (for example, when
    passing a random number generator down to recursive calls). -/
  split : g → g × g

/-- "Standard" random number generator. -/
structure StdGen where
  s1 : Nat
  s2 : Nat

/-- Returns a standard number generator. -/
def mkStdGen (s : Nat := 0) : StdGen :=
  let q  := s / 2147483562
  let s1 := s % 2147483562
  let s2 := q % 2147483398
  ⟨s1 + 1, s2 + 1⟩

instance : Inhabited StdGen := ⟨mkStdGen⟩

/-- The range of values returned by `StdGen` -/
def stdRange := (1, 2147483562)

instance : Repr StdGen where
  reprPrec | ⟨s1, s2⟩, _ => Std.Format.bracket "⟨" (repr s1 ++ ", " ++ repr s2) "⟩"

/--
The next value from a `StdGen`, paired with an updated generator state.
-/
def stdNext : StdGen → Nat × StdGen
  | ⟨s1, s2⟩ =>
    let k    : Int := Int.ofNat (s1 / 53668)
    let s1'  : Int := 40014 * (Int.ofNat s1 - k * 53668) - k * 12211
    let s1'' : Nat := if s1' < 0 then (s1' + 2147483563).toNat else s1'.toNat
    let k'   : Int := Int.ofNat (s2 / 52774)
    let s2'  : Int := 40692 * (Int.ofNat s2 - k' * 52774) - k' * 3791
    let s2'' : Nat := if s2' < 0 then (s2' + 2147483399).toNat else s2'.toNat
    let z    : Int := Int.ofNat s1'' - Int.ofNat s2''
    let z'   : Nat := if z < 1 then (z + 2147483562).toNat else z.toNat % 2147483562
    (z', ⟨s1'', s2''⟩)

/--
Splits a `StdGen` into two separate states.
-/
def stdSplit : StdGen → StdGen × StdGen
  | g@⟨s1, s2⟩ =>
    let newS1  := if s1 = 2147483562 then 1 else s1 + 1
    let newS2  := if s2 = 1          then 2147483398 else s2 - 1
    let newG   := (stdNext g).2
    let leftG  := StdGen.mk newS1 newG.2
    let rightG := StdGen.mk newG.1 newS2
    (leftG, rightG)

instance : RandomGen StdGen := {
  range  := fun _ => stdRange,
  next   := stdNext,
  split  := stdSplit
}

/--
Auxiliary function for randomNatVal.
Generate random values until we exceed the target magnitude.
`genLo` and `genMag` are the generator lower bound and magnitude.
The parameter `r` is the "remaining" magnitude.
-/
private partial def randNatAux {gen : Type u} [RandomGen gen] (genLo genMag : Nat) : Nat → (Nat × gen) → Nat × gen
  | 0,        (v, g) => (v, g)
  | r'@(_+1), (v, g) =>
    let (x, g') := RandomGen.next g
    let v'      := v*genMag + (x - genLo)
    randNatAux genLo genMag (r' / genMag - 1) (v', g')

/-- Generates a random natural number in the interval [lo, hi]. -/
def randNat {gen : Type u} [RandomGen gen] (g : gen) (lo hi : Nat) : Nat × gen :=
  let lo'            := if lo > hi then hi else lo
  let hi'            := if lo > hi then lo else hi
  let (genLo, genHi) := RandomGen.range g
  let genMag         := genHi - genLo + 1
      /-
        Probabilities of the most likely and least likely result
        will differ at most by a factor of (1 +- 1/q).  Assuming the RandomGen
        is uniform, of course
      -/
  let q       := 1000
  let k       := hi' - lo' + 1
  let tgtMag  := k * q
  let (v, g') := randNatAux genLo genMag tgtMag (0, g)
  let v'      := lo' + (v % k)
  (v', g')

/-- Generates a random Boolean. -/
def randBool {gen : Type u} [RandomGen gen] (g : gen) : Bool × gen :=
  let (v, g') := randNat g 0 1
  (v = 1, g')

initialize IO.stdGenRef : IO.Ref StdGen ←
  let seed := UInt64.toNat (ByteArray.toUInt64LE! (← IO.getRandomBytes 8))
  IO.mkRef (mkStdGen seed)

/--
Seeds the random number generator state used by `IO.rand`.
-/
def IO.setRandSeed (n : Nat) : BaseIO Unit :=
  IO.stdGenRef.set (mkStdGen n)

/--
Returns a pseudorandom number between `lo` and `hi`, using and updating a saved random generator
state.

This state can be seeded using `IO.setRandSeed`.
-/
def IO.rand (lo hi : Nat) : BaseIO Nat := do
  let gen ← IO.stdGenRef.get
  let (r, gen) := randNat gen lo hi
  IO.stdGenRef.set gen
  pure r
```
