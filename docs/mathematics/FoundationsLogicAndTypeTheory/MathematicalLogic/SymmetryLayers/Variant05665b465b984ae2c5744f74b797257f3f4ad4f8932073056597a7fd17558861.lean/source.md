# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SymmetryLayers.Variant05665b465b984ae2c5744f74b797257f3f4ad4f8932073056597a7fd17558861

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `030fd0b907fd4e746fd501370ab5657a40324f73` · SHA-256 `05665b465b984ae2c5744f74b797257f3f4ad4f8932073056597a7fd17558861`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.ConnesBitfield.OrbitSymmetry

/-!
# Registered automorphism layers

Graph, phase, semantic, and arithmetic symmetries remain separate groups.
They enter one crossed product only through a certified direct- or
semidirect-product realization.  Every registered layer carries its own
kernel-equivariance certificate.
-/

namespace Mathematics.ConnesBitfield

universe uSchedule

inductive SymmetryLayerKind
  | graph
  | phase
  | semantic
  | arithmetic
  | composite
  deriving DecidableEq, Repr

inductive SymmetryCompositionMode
  | directProduct
  | semidirectProduct
  deriving DecidableEq, Repr

structure RegisteredKernelSymmetryLayer
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type uSchedule}
    (family :
      ScheduleKernelFamily system carrier Schedule) where
  kind : SymmetryLayerKind
  model : FiniteCrossedProductModel system
  equivariance :
    EquivariantScheduleKernelCertificate
      model family

/--
The embeddings and factorization law required before two symmetry layers may
be treated as one automorphism group.  The normal-factor condition covers
semidirect products; direct products additionally require commuting factors.
-/
structure SymmetryLayerCompositionCertificate
    {system : RandomBitfieldSystem}
    (left right combined :
      FiniteCrossedProductModel system) where
  mode : SymmetryCompositionMode
  embedLeft :
    left.Automorphism →
      combined.Automorphism
  embedRight :
    right.Automorphism →
      combined.Automorphism
  embedLeftIdentity :
    embedLeft 1 = 1
  embedRightIdentity :
    embedRight 1 = 1
  embedLeftMultiplicative :
    ∀ first second,
      embedLeft (first * second) =
        embedLeft first * embedLeft second
  embedRightMultiplicative :
    ∀ first second,
      embedRight (first * second) =
        embedRight first * embedRight second
  embedLeftInjective :
    Function.Injective embedLeft
  embedRightInjective :
    Function.Injective embedRight
  leftActionAgrees :
    ∀ automorphism state,
      combined.action.act
          (embedLeft automorphism) state =
        left.action.act automorphism state
  rightActionAgrees :
    ∀ automorphism state,
      combined.action.act
          (embedRight automorphism) state =
        right.action.act automorphism state
  factorization :
    ∀ automorphism : combined.Automorphism,
      ∃ leftAutomorphism rightAutomorphism,
        automorphism =
          embedLeft leftAutomorphism *
            embedRight rightAutomorphism
  factorizationUnique :
    ∀ {leftFirst leftSecond
        rightFirst rightSecond},
      embedLeft leftFirst * embedRight rightFirst =
          embedLeft leftSecond *
            embedRight rightSecond →
        leftFirst = leftSecond ∧
          rightFirst = rightSecond
  rightFactorNormal :
    ∀ leftAutomorphism rightAutomorphism,
      ∃ transported : right.Automorphism,
        embedLeft leftAutomorphism *
              embedRight rightAutomorphism *
              (embedLeft leftAutomorphism)⁻¹ =
          embedRight transported
  directFactorsCommute :
    mode = SymmetryCompositionMode.directProduct →
      ∀ leftAutomorphism rightAutomorphism,
        embedLeft leftAutomorphism *
            embedRight rightAutomorphism =
          embedRight rightAutomorphism *
            embedLeft leftAutomorphism

/--
Recursive composition of two already registered layers.  The combined layer
has its own exact equivariance certificate; compatibility of the component
actions is not used as a substitute for checking the combined kernel action.
-/
structure LayeredSymmetryBoundaryCertificate
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type uSchedule}
    (family :
      ScheduleKernelFamily system carrier Schedule) where
  left :
    RegisteredKernelSymmetryLayer family
  right :
    RegisteredKernelSymmetryLayer family
  combined :
    RegisteredKernelSymmetryLayer family
  combinedIsComposite :
    combined.kind = SymmetryLayerKind.composite
  compatibility :
    SymmetryLayerCompositionCertificate
      left.model right.model combined.model

end Mathematics.ConnesBitfield
```
