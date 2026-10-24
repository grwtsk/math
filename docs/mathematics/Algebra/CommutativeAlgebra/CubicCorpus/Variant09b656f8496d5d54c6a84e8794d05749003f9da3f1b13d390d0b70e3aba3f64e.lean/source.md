# Complete source: GRWTSK.Algebra.CommutativeAlgebra.CubicCorpus.Variant09b656f8496d5d54c6a84e8794d05749003f9da3f1b13d390d0b70e3aba3f64e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7612cddddf16b169388e7aaf1e3af3f7ccaa2fc6` · SHA-256 `09b656f8496d5d54c6a84e8794d05749003f9da3f1b13d390d0b70e3aba3f64e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Discovery.IdeasCorpus
import Mathematics.Polynomial.Potential

/-!
# `ideas.md` cubic reconstruction links

These links retain exact source coordinates and hashes.  Their authority is
proposal-only; the target definitions and theorems stand on their own Lean
terms.
-/

namespace Mathematics.Polynomial.CubicCorpus

open Mathematics
open Mathematics.Discovery

private def source
    (ordinal : Nat)
    (name : String)
    (name_nonempty : name ≠ "")
    (kind : CorpusDeclarationKind)
    (digest : String)
    (digest_valid : ({ value := digest } : Digest).Valid) :
    CorpusDeclarationAddress where
  corpus := ideasCorpus
  moduleOrdinal := 31
  modulePath := "Analysis/Cubic.lean"
  modulePath_nonempty := by decide
  moduleDigest := {
    value := "17a42547a2d8080c9120ac164c3b739104131198c0b37989d1a1ab11d026650e"
  }
  moduleDigest_valid := by
    unfold Digest.Valid
    native_decide
  declarationOrdinal := ordinal
  declarationName := name
  declarationName_nonempty := name_nonempty
  declarationKind := kind
  declarationDigest := { value := digest }
  declarationDigest_valid := digest_valid

def quadraticCarrier : CorpusSubsumptionLink where
  linkId := { value := "ideas:analysis-cubic:quadratic:carrier" }
  linkId_valid := by
    simp [StableId.Valid]
  source := source
    0
    "Quadratic"
    (by decide)
    .structure
    "6406e5286255412f1d155dfb0aeb9554ea5b38f006f23f89867c6b1287a23943"
    (by
      unfold Digest.Valid
      native_decide)
  targetDeclaration := "Mathematics.Polynomial.quadratic"
  targetDeclaration_nonempty := by decide
  relation := .carrierReconstruction
  rationale :=
    "Replace the coefficient record by Mathlib's canonical real polynomial carrier."

def quadraticEvaluation : CorpusSubsumptionLink where
  linkId := { value := "ideas:analysis-cubic:quadratic:evaluation" }
  linkId_valid := by
    simp [StableId.Valid]
  source := source
    1
    "eval"
    (by decide)
    .definition
    "1db481327bc0077ab83b4b70e28084fc377f8fefaa5f1ebb28e8047e353fa1da"
    (by
      unfold Digest.Valid
      native_decide)
  targetDeclaration := "Mathematics.Polynomial.eval_quadratic"
  targetDeclaration_nonempty := by decide
  relation := .definitionReconstruction
  rationale := "Prove evaluation from the canonical polynomial representation."

def cubicCarrier : CorpusSubsumptionLink where
  linkId := { value := "ideas:analysis-cubic:cubic:carrier" }
  linkId_valid := by
    simp [StableId.Valid]
  source := source
    2
    "Cubic"
    (by decide)
    .structure
    "c2a0adc0bee96b3a5df4e59f0f72f449c3fd88ef2979f5013159d5d5eefc1819"
    (by
      unfold Digest.Valid
      native_decide)
  targetDeclaration := "Mathematics.Polynomial.cubic"
  targetDeclaration_nonempty := by decide
  relation := .carrierReconstruction
  rationale :=
    "Represent the cubic as a value in the same canonical polynomial carrier."

def cubicEvaluation : CorpusSubsumptionLink where
  linkId := { value := "ideas:analysis-cubic:cubic:evaluation" }
  linkId_valid := by
    simp [StableId.Valid]
  source := source
    3
    "eval"
    (by decide)
    .definition
    "c507621c434d327c6c08951c7d8a0a91da2a32cb0b8764016d472336c0040c0c"
    (by
      unfold Digest.Valid
      native_decide)
  targetDeclaration := "Mathematics.Polynomial.eval_cubic"
  targetDeclaration_nonempty := by decide
  relation := .definitionReconstruction
  rationale := "Prove evaluation from the canonical polynomial representation."

def cubicDerivative : CorpusSubsumptionLink where
  linkId := { value := "ideas:analysis-cubic:cubic:derivative" }
  linkId_valid := by
    simp [StableId.Valid]
  source := source
    4
    "derivative"
    (by decide)
    .definition
    "a39974d0770fc87c6b28c2c4fd9305a03171e927316c7492640c4ab369cdebad"
    (by
      unfold Digest.Valid
      native_decide)
  targetDeclaration := "Mathematics.Polynomial.derivative_cubic"
  targetDeclaration_nonempty := by decide
  relation := .theoremReconstruction
  rationale := "Replace a coefficient constructor with polynomial derivative equality."

def cubicPotentialEvaluation : CorpusSubsumptionLink where
  linkId := { value := "ideas:analysis-cubic:cubic:potential-evaluation" }
  linkId_valid := by
    simp [StableId.Valid]
  source := source
    5
    "antiderivativeEval"
    (by decide)
    .definition
    "fe521f9842fb3a5d0441021e9649fab61ed84ba8845dbee84844dd38a05ad9de"
    (by
      unfold Digest.Valid
      native_decide)
  targetDeclaration := "Mathematics.Polynomial.eval_cubicPotential"
  targetDeclaration_nonempty := by decide
  relation := .definitionReconstruction
  rationale :=
    "Reconstruct the formula as evaluation of a polynomial with a proved derivative."

def links : List CorpusSubsumptionLink := [
  quadraticCarrier,
  quadraticEvaluation,
  cubicCarrier,
  cubicEvaluation,
  cubicDerivative,
  cubicPotentialEvaluation
]

@[simp] theorem links_length : links.length = 6 := by decide

end Mathematics.Polynomial.CubicCorpus
```
