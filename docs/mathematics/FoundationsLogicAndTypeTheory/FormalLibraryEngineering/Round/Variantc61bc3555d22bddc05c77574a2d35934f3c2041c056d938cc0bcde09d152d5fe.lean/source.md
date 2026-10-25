# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Round.Variantc61bc3555d22bddc05c77574a2d35934f3c2041c056d938cc0bcde09d152d5fe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48962005722b515b5aada714e5f43d9d25abe339` · SHA-256 `40da9b83335d1b08da6fa98b0325d7230021e4189b7bf8c7b24aa1c8b70015c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Accuracy.Variantf4652202683db8a4c01fe7b18401ce9b07178052b66a4a43ba0037ab1cf838e8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f4652202683db8a4c01fe7b18401ce9b07178052b66a4a43ba0037ab1cf838e8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Accuracy.Variantf4652202683db8a4c01fe7b18401ce9b07178052b66a4a43ba0037ab1cf838e8","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"f4652202683db8a4c01fe7b18401ce9b07178052b66a4a43ba0037ab1cf838e8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Float/Model/Unpacked/Round.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julia M. Himmel
-/
module

prelude
public import Init.Data.Float.Model.Unpacked.Basic
public import Init.Data.Float.Model.Format.Basic
public import Init.Data.Float.Model.Unpacked.Sign

-- This file is part of the logical model for floats which authors of float libraries
-- need to rely on.

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Accuracy.Variantf4652202683db8a4c01fe7b18401ce9b07178052b66a4a43ba0037ab1cf838e8

@[expose] public section

namespace Float.Model.UnpackedFloat

/--
Suppose given a real number `x : ℝ` with binary expansion
`x = ± x₀.x₁x₂x₃…`. Truncating the expansion at some point gives an
approximation of `x` as a floating-point number `y`. We can then ask how `y`
is related to `x`. If `y` is exactly `x`, then we say that we are exact.
Otherwise we are inexact, and `y` is slightly smaller than `x`, but `x` is also
smaller than `y + 1ulp`. Together with the information that we are inexact,
we store the information of where `x` is located relative to `y + ½ulp`. This
is sufficient information for rounding `y` according to the various IEEE rounding
rules.
-/
inductive Accuracy where
  /--
  The approximation is exactly equal to the infinitely precise value.
  -/
  | exact
  /--
  The approximation is strictly smaller than the infinitely precise value,
  and the given `Ordering` describes the result of comparing the
  infinitely precise value and the approximation plus half a ulp.
  -/
  | inexact (relativeToPlusOneHalfUlp : Ordering)

namespace Accuracy

/--
Rounds the given mantissa with the given accuracy according to the
round-to-nearest strategy, with ties breaking in favor of even
mantissas.
-/
def roundToNearestEven (mantissa : Nat) : Accuracy → Nat
  | .exact => mantissa
  | .inexact .lt => mantissa
  | .inexact .eq => mantissa + mantissa % 2
  | .inexact .gt => mantissa + 1

end Accuracy

/--
Pairs a mantissa with two residual bits, the 'round bit' and the 'sticky bit',
which carry precisely the required information to compute the `Accuracy` of the
mantissa.
-/
structure ExtendedMantissa where
  /-- The mantissa. -/
  mantissa : Nat
  /-- The next bit after the least significant bit of the mantissa. -/
  roundBit : Bool
  /-- The bitwise `or` of all bits that are even less significant than the round bit.  -/
  stickyBit : Bool

namespace ExtendedMantissa

/-- Extract the accuracy of the mantissa. -/
def accuracy : ExtendedMantissa → Accuracy
  | ⟨_, false, false⟩ => .exact
  | ⟨_, false, true⟩ => .inexact .lt
  | ⟨_, true, false⟩ => .inexact .eq
  | ⟨_, true, true⟩ => .inexact .gt

/--
Extracts the mantissa, rounded according to the data in the residual bits.
-/
def roundedMantissa (em : ExtendedMantissa) : Nat :=
  em.accuracy.roundToNearestEven em.mantissa

/--
Transforms a mantissa and an accuracy into an extended mantissa with the
residual bits initialized to represent the given accuracy.
-/
def ofMantissaAndAccuracy (mantissa : Nat) (accuracy : Accuracy) : ExtendedMantissa :=
  match accuracy with
  | .exact => ⟨mantissa, false, false⟩
  | .inexact .lt => ⟨mantissa, false, true⟩
  | .inexact .eq => ⟨mantissa, true, false⟩
  | .inexact .gt => ⟨mantissa, true, true⟩

/--
Shift the mantissa right by one, propagating information into the residual bits
as required.
-/
def shiftRightOne (em : ExtendedMantissa) : ExtendedMantissa where
  mantissa := em.mantissa / 2
  roundBit := em.mantissa % 2 != 0
  stickyBit := em.roundBit || em.stickyBit

instance : HShiftRight ExtendedMantissa Nat ExtendedMantissa where
  hShiftRight em n := n.repeat shiftRightOne em

end ExtendedMantissa

/--
Shifts the mantissa and exponent and initial accuracy to the target exponent, returning
the new extended mantissa and exponent.

Important: this function will only drop bits from the mantissa and increase the exponent,
not the other way around. The result will only conform to the given specification if
the exponent was not too large to begin with. If this may be the case, you should call
`round` instead.
-/
def shiftToExponent (mantissa : Nat) (exponent : Int)
    (accuracy : Accuracy) (targetExponent : Int) : ExtendedMantissa × Int :=
  let shiftAmount := (targetExponent - exponent).toNat -- negative to 0
  let initialExtendedMantissa := ExtendedMantissa.ofMantissaAndAccuracy mantissa accuracy
  (initialExtendedMantissa >>> shiftAmount, exponent + shiftAmount)

/--
Computes the target exponent for the given mantissa and exponent and shifts the
mantissa and exponent and initial accuracy to the target exponent, returning
the new extended mantissa and exponent.

Important: this function will only drop bits from the mantissa and increase the exponent,
not the other way around. The result will only conform to the given specification if
the exponent was not too large to begin with. If this may be the case, you should call
`round` instead.
-/
def shiftToTargetExponent (spec : Format) (mantissa : Nat) (exponent : Int)
    (accuracy : Accuracy) : ExtendedMantissa × Int :=
  let targetExponent := spec.targetExponent (totalExponent mantissa exponent)
  shiftToExponent mantissa exponent accuracy targetExponent

/--
Given a finite float represented by a sign, mantissa and exponent, together with an
`Accuracy` datum, round it to conform to the given `Format`.

Important: this function will only drop bits from the mantissa and increase the exponent,
not the other way around. The result will only conform to the given specification if
the exponent was not too large to begin with. If this may be the case, you should call
`round` instead.
-/
def roundWithAccuracy (spec : Format) (sign : Sign) (mantissa : Nat) (exponent : Int) (accuracy : Accuracy) : UnpackedFloat :=
  -- First shift: this performs the bulk of the shifting
  let (em₁, e₁) := shiftToTargetExponent spec mantissa exponent accuracy
  -- Round mantissa
  let roundedEm₁ := em₁.roundedMantissa
  -- Rounding the mantissa may have overflowed it, causing it to take too many bits, so we shift
  -- once more (no rounding is necessary after this):
  let (finalExtendedMantissa, finalExponent) := shiftToTargetExponent spec roundedEm₁ e₁ .exact
  let finalMantissa := finalExtendedMantissa.mantissa

  if h : finalMantissa = 0 then
    .zero sign
  else
    .finite sign finalMantissa finalExponent (Nat.pos_of_ne_zero h)

/--
If the target exponent is smaller than the given exponent, decreases the exponent of the mantissa to
the target exponent; otherwise does nothing.
-/
def decreaseExponent (mantissa : Nat) (exponent : Int) (targetExponent : Int) : Nat × Int :=
  let shiftAmount := (exponent - targetExponent).toNat -- negative to 0
  (mantissa <<< shiftAmount, exponent - shiftAmount)

/--
Given a finite float represented by a sign, mantissa and exponent,
round it to conform to the given `Format`.

If necessary, this will both decrease and increase the exponent.
-/
def round (spec : Format) (sign : Sign) (mantissa : Nat) (exponent : Int) : UnpackedFloat :=
  let targetExponent := spec.targetExponent (totalExponent mantissa exponent)
  let (mantissa, exponent) := decreaseExponent mantissa exponent targetExponent
  roundWithAccuracy spec sign mantissa exponent .exact

/--
Given a finite float represented as a signed mantissa and an exponent, round it to conform to the
given `Format`.

If necessary, this will both decrease and increase the exponent.
-/
def normalize (spec : Format) (mantissa : Int) (exponent : Int) (zeroSign : Sign) : UnpackedFloat :=
  match compare mantissa 0 with
  | .lt => round spec .negative (-mantissa).toNat exponent
  | .eq => .zero zeroSign
  | .gt => round spec .positive mantissa.toNat exponent

end Float.Model.UnpackedFloat
```
