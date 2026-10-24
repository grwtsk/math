# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Arithmetic.Variant0a107ec395d1676ad232364a61fb462c2c0f23df3c4d6c4e017576357d02dd79

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c7cd05232c32c0c0c2b4833d15cf8538648476e0` · SHA-256 `0a107ec395d1676ad232364a61fb462c2c0f23df3c4d6c4e017576357d02dd79`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Flow.Symbolic.Topology

namespace Surface

/-- Boolean divisor test. -/
def Flow.Prime.divides (d n : Nat) : Bool :=
  decide (d ≠ 0 ∧ n % d = 0)

/-- Candidate divisors `2 ≤ d < n`. -/
def Flow.Prime.candidateDivisors (n : Nat) : List Nat :=
  (List.range n).filter
    (fun d => decide (2 ≤ d ∧ d < n))

/-- Test whether any divisor in a finite list divides `n`. -/
def Flow.Prime.hasDivisorIn (n : Nat) : List Nat → Bool
  | [] => false
  | d :: ds =>
      Flow.Prime.divides d n ||
        Flow.Prime.hasDivisorIn n ds

/-- Boolean primality test for finite symbolic examples. -/
def Flow.Prime.isPrime (n : Nat) : Bool :=
  decide (2 ≤ n) &&
    !(Flow.Prime.hasDivisorIn n
      (Flow.Prime.candidateDivisors n))

/-- Finite list of primes up to a bound. -/
def Flow.Prime.primesLE (x : Nat) : List Nat :=
  (List.range (x + 1)).filter Flow.Prime.isPrime

/-- A local point-count datum for an elliptic curve modulo a prime. -/
structure Flow.LocalPointCount where
  curve : String
  p : Nat
  Np : Nat
deriving Repr, DecidableEq

/-- Symbolic name of an elliptic curve. -/
def Flow.ellipticCurve
    (label : String) :
    Flow.Expression String :=
  .symbol label

/-- Symbolic point-counting task for an elliptic curve over `𝔽_p`. -/
def Flow.pointCountModulo
    (curve : String)
    (p : Nat) :
    Flow.Expression String :=
  Flow.Expression.attendMany
    [.pointCounting, .sieve, .symmetryGroup, .homology]
    (.variadic (.pointCountModulo p)
      [Flow.ellipticCurve curve, .nat p])

/-- Batch point-counting tasks over a list of primes. -/
def Flow.pointCountingBatch
    (curve : String)
    (primes : List Nat) :
    Flow.Expression String :=
  .variadic .pointCountingBatch
    (primes.map (fun p => Flow.pointCountModulo curve p))

/-- Symbolic local factor `N_p / p` using an already supplied count. -/
def Flow.localFactorOfCount
    (c : Flow.LocalPointCount) :
    Flow.Expression String :=
  Flow.Expression.pendingBinaryAction
    .div
    (.nat c.Np)
    (.nat c.p)
    [.eulerProduct, .lFunction]

/-- Symbolic local factor `N_p / p` with `N_p` left as a point-counting node. -/
def Flow.localFactorSymbolic
    (curve : String)
    (p : Nat) :
    Flow.Expression String :=
  Flow.Expression.pendingBinaryAction
    .div
    (Flow.pointCountModulo curve p)
    (.nat p)
    [.eulerProduct, .lFunction, .pointCounting]

/-- Euler product approximation `∏_{p ≤ x} N_p / p` from explicit local counts. -/
def Flow.eulerProductApprox
    (bound : Nat)
    (counts : List Flow.LocalPointCount) :
    Flow.Expression String :=
  Flow.Expression.attendMany
    [.eulerProduct, .sieve, .lFunction]
    (.variadic (.eulerProduct bound)
      (counts.map Flow.localFactorOfCount))

/-- Symbolic Euler product approximation over all primes up to a bound. -/
def Flow.eulerProductSymbolic
    (curve : String)
    (bound : Nat) :
    Flow.Expression String :=
  Flow.Expression.attendMany
    [.eulerProduct, .sieve, .lFunction]
    (.variadic (.eulerProduct bound)
      ((Flow.Prime.primesLE bound).map
        (fun p => Flow.localFactorSymbolic curve p)))

/-- Symbolic logarithmic scaling target `(log x)^r`. -/
def Flow.logPowerRank
    (bound rank : Nat) :
    Flow.Expression String :=
  Flow.Expression.pendingBinaryAction
    .pow
    (Flow.Expression.log (.nat bound))
    (.nat rank)
    [.lFunction]

/-- Compare an Euler product with the expected asymptotic `(log x)^r`. -/
def Flow.asymptoticLogScaling
    (bound rank : Nat)
    (counts : List Flow.LocalPointCount) :
    Flow.Expression String :=
  Flow.Expression.attendMany
    [.eulerProduct, .lFunction]
    (Flow.Expression.pendingBinaryAction
      .proportional
      (Flow.eulerProductApprox bound counts)
      (Flow.logPowerRank bound rank)
      [.eulerProduct, .lFunction])

/-- Symbolic global `L`-function node attached to a curve. -/
def Flow.lFunction
    (curve : String) :
    Flow.Expression String :=
  .variadic .lFunction [Flow.ellipticCurve curve]

/-- Symbolic order-of-vanishing/rank statement at `s = 1`. -/
def Flow.rankAtOne
    (curve : String)
    (rank : Nat) :
    Flow.Expression String :=
  .variadic (.rankAtOne rank)
    [Flow.ellipticCurve curve, .nat rank]

/--
Symbolic analytic-continuation bridge:

finite-field local data are linked to the global `L`-function, and the order of
vanishing at `s = 1` is compared to the algebraic rank.
-/
def Flow.analyticContinuationBridge
    (curve : String)
    (rank : Nat) :
    Flow.Expression String :=
  Flow.Expression.attendMany
    [.lFunction, .prismaticTag, .homology]
    (Flow.Expression.pendingBinaryAction
      .analyticContinuation
      (Flow.lFunction curve)
      (Flow.rankAtOne curve rank)
      [.lFunction, .prismaticTag, .homology])

/-- Exponent `t·u^2` used in Tao-style heat-flow notation. -/
def Flow.TaoHeat.exponent
    (t u : Flow.Expression String) :
    Flow.Expression String :=
  Flow.Expression.pendingBinaryAction
    .mul
    t
    (Flow.Expression.pendingBinaryAction
      .pow u (.nat 2) [.heatResidue])
    [.heatResidue]

/--
Tao-style heat exponential with the base explicitly recorded.

This records the formal shape `base^(t·u^2)`.  For classical heat-flow notation,
the base is usually `e`.
-/
def Flow.TaoHeat.expWithBase
    (base t u : Flow.Expression String) :
    Flow.Expression String :=
  .expBase
    base
    (Flow.TaoHeat.exponent t u)
    (Flow.HeatResidue.pending [.heatResidue])

/-- Tao-style heat kernel skeleton `e^(t·u^2) · Φ(u) · cos(z·u)`. -/
def Flow.TaoHeat.kernel
    (t u z : Flow.Expression String) :
    Flow.Expression String :=
  Flow.Expression.product
    [ Flow.TaoHeat.expWithBase (.symbol "e") t u
    , .symbol "Φ(u)"
    , Flow.Expression.cos
        (Flow.Expression.pendingBinaryAction
          .mul z u [.heatResidue])
    ]

/-- Heat-sensitive local factor at a prime, pending binary heat action. -/
def Flow.TaoHeat.localHeatResidue
    (curve : String)
    (p : Nat)
    (t u z : Flow.Expression String) :
    Flow.Expression String :=
  Flow.Expression.attendMany
    [.heatResidue, .sieve, .lFunction]
    (Flow.Expression.pendingBinaryAction
      .heatKernel
      (Flow.localFactorSymbolic curve p)
      (Flow.TaoHeat.kernel t u z)
      [.heatResidue, .sieve, .lFunction])

/-- Prime-indexed heat flow over primes up to `bound`. -/
def Flow.TaoHeat.primeHeatFlow
    (curve : String)
    (bound : Nat)
    (t u z : Flow.Expression String) :
    Flow.Expression String :=
  .variadic (.productPrimesLE bound)
    ((Flow.Prime.primesLE bound).map
      (fun p => Flow.TaoHeat.localHeatResidue curve p t u z))

end Surface
```
