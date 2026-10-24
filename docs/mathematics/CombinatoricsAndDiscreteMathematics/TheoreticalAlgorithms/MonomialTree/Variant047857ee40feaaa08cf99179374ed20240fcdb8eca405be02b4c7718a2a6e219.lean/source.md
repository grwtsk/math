# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MonomialTree.Variant047857ee40feaaa08cf99179374ed20240fcdb8eca405be02b4c7718a2a6e219

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b177d00d256fd0b15c4d86fa338f76657c49377` · SHA-256 `047857ee40feaaa08cf99179374ed20240fcdb8eca405be02b4c7718a2a6e219`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Kernel.Checked

set_option autoImplicit false

namespace FWR.Manuscript.MonomialTree

/-
This module formalizes the terminal finite monomial-tree clustering layer. The
Chebyshev envelope is a finite documentation envelope, not a new theorem about
prime counting.
-/

inductive Move where
  | q
  | l
  | d
  | m
  | e
  | s
  | c
deriving DecidableEq, Repr

structure Exponent where
  q : Nat
  l : Nat
  d : Nat
  m : Nat
  e : Nat
  s : Nat
  c : Nat
deriving DecidableEq, Repr

namespace Exponent

def zero : Exponent :=
  { q := 0, l := 0, d := 0, m := 0, e := 0, s := 0, c := 0 }

def weight (a : Exponent) : Nat :=
  a.q + a.l + a.d + a.m + a.e + a.s + a.c

def step (a : Exponent) : Move -> Exponent
  | .q => { a with q := a.q + 1 }
  | .l => { a with l := a.l + 1 }
  | .d => { a with d := a.d + 1 }
  | .m => { a with m := a.m + 1 }
  | .e => { a with e := a.e + 1 }
  | .s => { a with s := a.s + 1 }
  | .c => { a with c := a.c + 1 }

theorem step_q_weight (a : Exponent) :
    weight (step a Move.q) = weight a + 1 := by
  simp [weight, step, Nat.add_assoc, Nat.add_left_comm, Nat.add_comm]

end Exponent

inductive ClusterClass where
  | clustered
  | sparse
  | obstructed
  | distributionIrregular
  | schedulerOverloaded
  | parityBarrier
  | quotientBridgeBlocked
  | residueRequired
deriving DecidableEq, Repr

structure RegionData where
  InChebyshevEnvelope : Prop
  DenseScoreHigh : Prop
  SchedulerGuardHolds : Prop
  QuotientBridgeConsistent : Prop
  SchedulerOverloaded : Prop
  ParityDominates : Prop
  DistributionIrregular : Prop
  Obstructed : Prop
  MissingEnvelope : Prop
  MissingTorsionMetric : Prop

def clusteredCondition (R : RegionData) : Prop :=
  R.InChebyshevEnvelope ∧
  R.DenseScoreHigh ∧
  R.SchedulerGuardHolds ∧
  R.QuotientBridgeConsistent

def quotientBridgeBlockedCondition (R : RegionData) : Prop :=
  R.QuotientBridgeConsistent -> False

def residueRequiredCondition (R : RegionData) : Prop :=
  R.MissingEnvelope ∨ R.MissingTorsionMetric

structure Context where
  Region : Type
  data : Region -> RegionData
  classify : Region -> ClusterClass
  HasChebyshevEnvelope : Prop
  HasBalanceFunctional : Prop
  HasTorsionMetric : Prop
  HasClusterMap : Prop
  DoesNotClaimPrimeCountingTheorem : Prop

def deterministicClusterClaim (ctx : Context) : Prop :=
  ∀ R : ctx.Region, ctx.classify R = ctx.classify R

def deterministicClusterWitness (ctx : Context) :
    Checked (deterministicClusterClaim ctx) :=
  Checked.proved (by intro R; rfl)

theorem deterministicClusterWitness_isProved (ctx : Context) :
    (deterministicClusterWitness ctx).isProved = true := by
  rfl

inductive Atom where
  | monomialState
  | traversalRule
  | chebyshevEnvelope
  | balanceFunctional
  | torsionMetric
  | classifierScores
  | schedulerGuard
  | quotientBridgeFlag
  | clusterMap
  | primeCountingOverclaimRefused
deriving DecidableEq, Repr

def Atom.id : Atom -> String
  | .monomialState => "monomialState"
  | .traversalRule => "traversalRule"
  | .chebyshevEnvelope => "chebyshevEnvelope"
  | .balanceFunctional => "balanceFunctional"
  | .torsionMetric => "torsionMetric"
  | .classifierScores => "classifierScores"
  | .schedulerGuard => "schedulerGuard"
  | .quotientBridgeFlag => "quotientBridgeFlag"
  | .clusterMap => "clusterMap"
  | .primeCountingOverclaimRefused => "primeCountingOverclaimRefused"

def Atom.claim (ctx : Context) : Atom -> Prop
  | .monomialState => ∃ a : Exponent, a = Exponent.zero
  | .traversalRule => ∀ a : Exponent, Exponent.weight (a.step Move.q) =
      Exponent.weight a + 1
  | .chebyshevEnvelope => ctx.HasChebyshevEnvelope
  | .balanceFunctional => ctx.HasBalanceFunctional
  | .torsionMetric => ctx.HasTorsionMetric
  | .classifierScores => ∃ R : ctx.Region, ctx.classify R = ctx.classify R
  | .schedulerGuard => ∃ R : ctx.Region,
      (ctx.data R).SchedulerGuardHolds ∨ ¬ (ctx.data R).SchedulerGuardHolds
  | .quotientBridgeFlag => ∃ R : ctx.Region,
      (ctx.data R).QuotientBridgeConsistent ∨
      ¬ (ctx.data R).QuotientBridgeConsistent
  | .clusterMap => ctx.HasClusterMap
  | .primeCountingOverclaimRefused => ctx.DoesNotClaimPrimeCountingTheorem

def atomResidue (a : Atom) : Residue :=
  { target := Target.MonomialTreeClustering
    atomId := Atom.id a
    kind :=
      match a with
      | .monomialState => ResidueKind.missingDefinition
      | .traversalRule => ResidueKind.missingTransition
      | .chebyshevEnvelope => ResidueKind.missingDefinition
      | .balanceFunctional => ResidueKind.missingDefinition
      | .torsionMetric => ResidueKind.missingDefinition
      | .classifierScores => ResidueKind.missingFiniteWitness
      | .schedulerGuard => ResidueKind.missingUniformBound
      | .quotientBridgeFlag => ResidueKind.missingTraceQuotient
      | .clusterMap => ResidueKind.missingFiniteWitness
      | .primeCountingOverclaimRefused => ResidueKind.authorityOverclaim
    blocks := "promotion of finite monomial clustering to a prime-counting theorem"
    clearsBy := "a local finite clustering proof or a separate prime-counting proof artifact" }

def allAtoms : List Atom := [
  Atom.monomialState,
  Atom.traversalRule,
  Atom.chebyshevEnvelope,
  Atom.balanceFunctional,
  Atom.torsionMetric,
  Atom.classifierScores,
  Atom.schedulerGuard,
  Atom.quotientBridgeFlag,
  Atom.clusterMap,
  Atom.primeCountingOverclaimRefused
]

def clusterResidues : List Residue :=
  allAtoms.map atomResidue

def primeCountingOverclaim (ctx : Context) : Prop :=
  ctx.DoesNotClaimPrimeCountingTheorem

def primeCountingOverclaimWitness (ctx : Context) :
    Checked (primeCountingOverclaim ctx) :=
  Checked.residue clusterResidues

theorem primeCountingOverclaimWitness_hasResidue (ctx : Context) :
    (primeCountingOverclaimWitness ctx).hasResidue = true := by
  rfl

theorem clusterResidue_count :
    clusterResidues.length = 10 := by
  rfl

theorem clusterResidues_targets_correct :
    ∀ r ∈ clusterResidues,
      r.target = Target.MonomialTreeClustering := by
  intro r hr
  rw [clusterResidues] at hr
  rcases List.mem_map.mp hr with ⟨a, _ha, rfl⟩
  rfl

theorem allAtoms_nodup :
    allAtoms.Nodup := by
  decide

theorem atomId_injective :
    _root_.Function.Injective Atom.id := by
  intro a b h
  cases a <;> cases b <;> simp [Atom.id] at h ⊢

end FWR.Manuscript.MonomialTree
```
