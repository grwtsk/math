import GRWTSK.InformationAndCommunicationTheoryCircuits.CommunicationInformation.PrefixLengthVariableCommaFreeCodes.RoundTrip

/-!
# Exact recursive waveform splitting and source coding

Copyright (c) 2026 grwtsk contributors. MIT.

This module separates exact source splitting from geometric analogy. The
binary split is a reversible ordered-list operation. Quadratic and quartic
energy are nonnegative, additive source observations. The existing concrete
Huffman implementation is reused without changing its API.

This file does not formalize a prism, Alexander horned sphere, fiber bundle
or an analytic bound. Compilation, kernel replay and transitive axiom audit
remain NOT_RUN for this new source.
-/

namespace GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.RecursiveWaveformSplit

/-- Even and odd sample indices retain their original relative order. -/
def diffuse : List α → List α × List α
  | [] => ([], [])
  | a :: xs =>
    let p := diffuse xs
    (a :: p.2, p.1)

/-- Inverse interleaving of a valid alternating split. -/
def gather : List α → List α → List α
  | [], ys => ys
  | xs, [] => xs
  | a :: xs, b :: ys => a :: b :: gather xs ys

/-- A deliberately simple exact binary split with an explicit inverse. -/
def split : List α → List α × List α
  | [] => ([], [])
  | [a] => ([a], [])
  | a :: b :: xs =>
    let p := split xs
    (a :: p.1, b :: p.2)

/-- Order is restored precisely, not up to permutation. -/
theorem gather_split (xs : List α) :
    gather (split xs).1 (split xs).2 = xs := by
  induction xs using List.twoStepInduction with
  | nil => rfl
  | singleton a => rfl
  | more a b xs ih =>
    simp only [split, gather]
    exact congrArg (List.cons a ∘ List.cons b) ih

/-- Retaining both branches means selective reorganization loses nothing. -/
theorem split_injective : Function.Injective (split (α := α)) := by
  intro xs ys h
  have hx := gather_split xs
  have hy := gather_split ys
  rw [h] at hx
  exact hx.symm.trans hy

/-- Raw waveform bytes are encoded with the repository's existing Huffman codec. -/
def encodeWaveform (xs : List UInt8) :
    GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman.Packet :=
  GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman.encode xs

/-- The concrete Huffman decoder recovers the original byte waveform. -/
theorem decode_encodeWaveform (xs : List UInt8) :
    GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman.decode
      (encodeWaveform xs) = some xs :=
  GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman.decode_encode xs

end GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.RecursiveWaveformSplit
