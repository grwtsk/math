# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Refinement.Variantcbd2a094d079a242bab331bd457c81a571547ffa1dad8e645781d60d80e806df

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1658442477eaf569766f9fa82051060ac223cf4` · SHA-256 `cbd2a094d079a242bab331bd457c81a571547ffa1dad8e645781d60d80e806df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Fabric.Realization
import DAF.Refinement

/-!
# Cell implementations and capability-gated global refinement

Local implementations reuse `DAF.Refinement`; no second refinement relation is
introduced.  `ImplementationFabric` additionally requires implementation
boundary maps to commute with abstraction.  Local refinements do not by
themselves assemble into a global refinement: that conclusion is exposed only
by `RefinementPreservingRealization`.
-/

namespace DAF.Fabric

universe uIS uXS uRS uOS uII uXI uRI uOI

/-- An executable system soundly implementing one declarative presentation. -/
structure CellImplementation (P : Presentation) where
  impl : DAF.System
  refinement : DAF.Refinement P.system impl

/-- A fabric of local executable implementations with coherent abstraction maps. -/
structure ImplementationFabric (F : Fabric) where
  implementation :
    ∀ {n : Nat} (x : F.Cell n),
      CellImplementation (F.cellPresentation x)
  boundaryImpl :
    ∀ {m n : Nat} (θ : SimplexOperator m n) (x : F.Cell n),
      DAF.System.Hom
        (implementation x).impl
        (implementation (F.shape.restrict θ x)).impl
  boundary_valid :
    ∀ {m n : Nat} (θ : SimplexOperator m n) (x : F.Cell n)
      (state : (implementation x).impl.State),
      (implementation x).refinement.Valid state →
        (implementation (F.shape.restrict θ x)).refinement.Valid
          ((boundaryImpl θ x).mapState state)
  boundary_input_sound :
    ∀ {m n : Nat} (θ : SimplexOperator m n) (x : F.Cell n)
      (input : (F.cellSystem x).Input),
      (boundaryImpl θ x).mapInput
          ((implementation x).refinement.mapInput input) =
        (implementation (F.shape.restrict θ x)).refinement.mapInput
          ((F.contract θ x).mapInput input)
  boundary_state_sound :
    ∀ {m n : Nat} (θ : SimplexOperator m n) (x : F.Cell n)
      (state : (implementation x).impl.State),
      (implementation x).refinement.Valid state →
        (implementation (F.shape.restrict θ x)).refinement.abstract
            ((boundaryImpl θ x).mapState state) =
          (F.contract θ x).mapState
            ((implementation x).refinement.abstract state)
  boundary_resolution_sound :
    ∀ {m n : Nat} (θ : SimplexOperator m n) (x : F.Cell n)
      (r : (F.cellSystem (F.shape.restrict θ x)).Resolution),
      (boundaryImpl θ x).pullResolution
          ((implementation (F.shape.restrict θ x)).refinement.mapResolution r) =
        (implementation x).refinement.mapResolution
          ((F.contract θ x).pullResolution r)
  boundary_observation_sound :
    ∀ {m n : Nat} (θ : SimplexOperator m n) (x : F.Cell n)
      (r : (F.cellSystem (F.shape.restrict θ x)).Resolution)
      (state : (implementation x).impl.State),
      (implementation x).refinement.Valid state →
        (implementation (F.shape.restrict θ x)).refinement.mapObservation r
            ((implementation (F.shape.restrict θ x)).impl.observe
              ((implementation (F.shape.restrict θ x)).refinement.mapResolution r)
              ((boundaryImpl θ x).mapState state)) =
          (F.contract θ x).mapObservation r
            ((F.cellSystem x).observe
              ((F.contract θ x).pullResolution r)
              ((implementation x).refinement.abstract state))

/--
An implementation-level natural transformation lying above a declarative
reaction and commuting with both abstraction and implementation boundaries.
-/
structure RefinementPreservingReaction
    {F G : Fabric}
    (reaction : Reaction F G)
    (source : ImplementationFabric F)
    (target : ImplementationFabric G) where
  implementationMap :
    ∀ {n : Nat} (x : F.Cell n),
      DAF.System.Hom
        (source.implementation x).impl
        (target.implementation (reaction.mapCell x)).impl
  implementation_valid :
    ∀ {n : Nat} (x : F.Cell n)
      (state : (source.implementation x).impl.State),
      (source.implementation x).refinement.Valid state →
        (target.implementation (reaction.mapCell x)).refinement.Valid
          ((implementationMap x).mapState state)
  abstraction_natural :
    ∀ {n : Nat} (x : F.Cell n)
      (state : (source.implementation x).impl.State),
      (source.implementation x).refinement.Valid state →
        (target.implementation (reaction.mapCell x)).refinement.abstract
            ((implementationMap x).mapState state) =
          (reaction.cellMap x).mapState
            ((source.implementation x).refinement.abstract state)
  boundary_natural :
    ∀ {m n : Nat} (θ : SimplexOperator m n) (x : F.Cell n),
      HEq
        ((target.boundaryImpl θ (reaction.mapCell x)).comp
          (implementationMap x))
        ((implementationMap (F.shape.restrict θ x)).comp
          (source.boundaryImpl θ x))

/--
An explicit capability asserting that a selected realization assembles local
implementations into a refinement of its realized declarative system.
-/
structure RefinementPreservingRealization
    (R : RealizationTheory) where
  GlobalSystem :
    R.Target → DAF.System.{uIS, uXS, uRS, uOS}
  assembleImplementation :
    ∀ {F : Fabric},
      ImplementationFabric F → DAF.System.{uII, uXI, uRI, uOI}
  globalRefinement :
    ∀ {F : Fabric} (implementationFabric : ImplementationFabric F),
      DAF.Refinement
        (GlobalSystem (R.realize.obj F))
        (assembleImplementation implementationFabric)

namespace RefinementPreservingRealization

/-- The declarative assembly is the system attached to the realized fabric. -/
def assembleSpecification
    {R : RealizationTheory}
    (C : RefinementPreservingRealization.{uIS, uXS, uRS, uOS,
      uII, uXI, uRI, uOI} R)
    (F : Fabric) : DAF.System.{uIS, uXS, uRS, uOS} :=
  C.GlobalSystem (R.realize.obj F)

end RefinementPreservingRealization

end DAF.Fabric
```
