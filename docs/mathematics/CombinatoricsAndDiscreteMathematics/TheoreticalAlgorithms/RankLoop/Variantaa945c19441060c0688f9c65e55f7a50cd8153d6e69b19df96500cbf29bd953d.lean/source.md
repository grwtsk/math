# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RankLoop.Variantaa945c19441060c0688f9c65e55f7a50cd8153d6e69b19df96500cbf29bd953d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ecff562bbb247afaa397fd6100b1b58451cefeab` · SHA-256 `aa945c19441060c0688f9c65e55f7a50cd8153d6e69b19df96500cbf29bd953d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Arithmetic.EllipticCurve.TopologicalEmbedding
import Surface.Arithmetic.EllipticCurve.BSD

namespace Surface.Arithmetic
namespace EllipticCurve

universe u

/-!
# Rank-loop correspondence interface

The rank-loop bridge is conjectural unless a
`RankLoopEquivalenceCertificate` supplies well-definedness, homomorphism,
injectivity, and surjectivity.
-/

variable {K : FieldLike.{u}}
variable {E : ShortWeierstrass K}

/-- A symbolic first homology group descriptor. -/
structure HomologyGroupH1 where
  label : String
  loopRank : Nat
  boundary : List String
deriving Repr, DecidableEq

/-- Quotient of `E(K)` by torsion, represented as a descriptor. -/
structure MordellWeilModuloTorsion
    (MW : MordellWeilGroup.{u}) where
  representatives : List String
  quotientLabel : String
  boundary : List String

/-- Rank-loop map data. -/
structure RankLoopMap
    (MW : MordellWeilGroup.{u})
    (H1 : HomologyGroupH1) where
  source : MordellWeilModuloTorsion MW
  Psi : String
  map_well_defined : Prop
  homomorphism : Prop
  injective : Prop
  surjective : Prop
  boundary : List String

/-- Rank-loop equivalence certificate. -/
structure RankLoopEquivalenceCertificate
    {MW : MordellWeilGroup.{u}}
    {H1 : HomologyGroupH1}
    (R : RankLoopMap MW H1)
    (MWCert : FinitelyGeneratedAbelianCertificate MW) where
  wellDefinedCertified : R.map_well_defined
  homomorphismCertified : R.homomorphism
  injectiveCertified : R.injective
  surjectiveCertified : R.surjective
  loopRank_eq_rank :
    H1.loopRank = rank MWCert
  boundary : List String

/-- The conjectural statement that a rank-loop map identifies algebraic rank and loop rank. -/
def RankLoopConjecture
    {MW : MordellWeilGroup.{u}}
    {H1 : HomologyGroupH1}
    (R : RankLoopMap MW H1)
    (MWCert : FinitelyGeneratedAbelianCertificate MW) :
    Prop :=
  R.map_well_defined ∧
  R.homomorphism ∧
  R.injective ∧
  R.surjective ∧
  H1.loopRank = rank MWCert

theorem rank_eq_loop_rank
    {MW : MordellWeilGroup.{u}}
    {H1 : HomologyGroupH1}
    {R : RankLoopMap MW H1}
    {MWCert : FinitelyGeneratedAbelianCertificate MW}
    (C : RankLoopEquivalenceCertificate R MWCert) :
    rank MWCert = H1.loopRank := by
  exact C.loopRank_eq_rank.symm

/-- Conditional rank-zero schema metadata. -/
structure RankZeroConditionalSchema where
  certificateName : String
  coatesWilesBoundary : List String
  statement : Prop

/-- Conditional rank-one schema metadata. -/
structure RankOneConditionalSchema where
  certificateName : String
  grossZagierKolyvaginBoundary : List String
  statement : Prop

end EllipticCurve
end Surface.Arithmetic
```
