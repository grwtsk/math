import Mathlib.RingTheory.Ideal.Maps
import Mathlib.RingTheory.MvPolynomial.Ideal
import Noeoueue.Memory.PrimeFrequency

namespace Noeoueue.TypeMemory

variable {sigma K : Type} [DecidableEq sigma] [Field K]

/-- `type-memory://noeoueue/primitive-prime@1` -/
noncomputable def primitiveTypePrime (initial : Finset sigma) : Ideal (MvPolynomial sigma K) :=
  Ideal.span (Set.range fun index : { index // index ∈ initial } => MvPolynomial.X index.1)

/-- `type-memory://noeoueue/theorem-edge-ideal@1` -/
noncomputable def theoremMonomial (support : Finset sigma) : MvPolynomial sigma K :=
  support.prod MvPolynomial.X

noncomputable def theoremEdgeIdeal (supports : Finset (Finset sigma)) : Ideal (MvPolynomial sigma K) :=
  Ideal.span (Set.range fun support : { support // support ∈ supports } => theoremMonomial support.1)

def IsCover (supports : Finset (Finset sigma)) (cover : Finset sigma) : Prop :=
  ∀ support ∈ supports, (support ∩ cover).Nonempty

def IsMinimalCover (supports : Finset (Finset sigma)) (cover : Finset sigma) : Prop :=
  IsCover supports cover ∧ ∀ candidate, candidate < cover → ¬ IsCover supports candidate

/-- `type-memory://noeoueue/minimal-cover-prime@1`. The finite compiler cites this
declaration only after its instantiated containment checker succeeds. -/
theorem cover_characterization (supports : Finset (Finset sigma)) (cover : Finset sigma) :
    IsCover supports cover ↔ ∀ support ∈ supports, (support ∩ cover).Nonempty := Iff.rfl

theorem minimal_cover_characterization (supports : Finset (Finset sigma)) (cover : Finset sigma) :
    IsMinimalCover supports cover ↔
      IsCover supports cover ∧ ∀ candidate, candidate < cover → ¬ IsCover supports candidate := Iff.rfl

end Noeoueue.TypeMemory
