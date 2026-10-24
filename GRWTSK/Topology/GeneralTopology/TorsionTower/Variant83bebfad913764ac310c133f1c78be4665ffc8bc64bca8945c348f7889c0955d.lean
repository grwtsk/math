-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.PrimePowerTorsionTower.Variant33ba059447a85ef098893bdcaacaf6394482842e27b3c5a9865aa6a0a7985656","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"33ba059447a85ef098893bdcaacaf6394482842e27b3c5a9865aa6a0a7985656","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.PrimePowerTorsionTower.Variant33ba059447a85ef098893bdcaacaf6394482842e27b3c5a9865aa6a0a7985656","mathematical_subject":"Topology.GeneralTopology","original_sha256":"33ba059447a85ef098893bdcaacaf6394482842e27b3c5a9865aa6a0a7985656","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Prismatic/TorsionTower.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Discovery.OpenElement
import Mathematics.Prismatic.Prism
import Mathlib.Topology.Compactness.Compact
import Mathlib.Topology.Constructions
import Mathlib.Topology.Order

/-!
# Discrete prime-power torsion tower and compatible-family carrier

Every finite level is explicitly finite and discrete.  The compatible inverse
limit is a different object.  No Tate-module structure or profinite topology is
inferred from the compatible-family type alone.
-/


namespace GRWTSK.Topology.GeneralTopology.PrimePowerTorsionTower.Variant33ba059447a85ef098893bdcaacaf6394482842e27b3c5a9865aa6a0a7985656

namespace Mathematics.Prismatic

universe u

open Set

/-- A finite `p`-power torsion system with explicit transition maps. -/
structure PrimePowerTorsionTower
    (prime : CertifiedPrime)
    (Level : Nat → Type u)
    [∀ level, AddCommGroup (Level level)]
    [∀ level, Fintype (Level level)] where
  transition :
    (level : Nat) → Level (Nat.succ level) →+ Level level
  killedByPrimePower :
    ∀ (level : Nat) (value : Level level),
      (prime.value ^ (Nat.succ level)) • value = 0
  transitionDigest : Nat → Digest
  transitionEvidence : Nat → ObjectAddress
  towerAddress : ObjectAddress

/-- One compatible point of the inverse limit of all finite torsion levels. -/
structure TorsionInverseLimitPoint
    {prime : CertifiedPrime}
    {Level : Nat → Type u}
    [∀ level, AddCommGroup (Level level)]
    [∀ level, Fintype (Level level)]
    (tower : PrimePowerTorsionTower prime Level) where
  coordinate : (level : Nat) → Level level
  compatible :
    ∀ level,
      tower.transition level (coordinate (Nat.succ level)) =
        coordinate level

/-- The disjoint union retains each finite level as a discrete stage. -/
abbrev DiscreteTorsionLevels
    (Level : Nat → Type u) :=
  (level : Nat) × Level level

/--
The inverse-limit carrier.  Additional module and topology structures require
their own proofs and are not inferred from this abbreviation.  In particular,
this is not named a Tate module: the levels have not been identified as the
`p^n`-torsion of one ambient object.
-/
abbrev TorsionInverseLimitCarrier
    {prime : CertifiedPrime}
    {Level : Nat → Type u}
    [∀ level, AddCommGroup (Level level)]
    [∀ level, Fintype (Level level)]
    (tower : PrimePowerTorsionTower prime Level) :=
  TorsionInverseLimitPoint tower

namespace PrimePowerTorsionTower

variable
    {prime : CertifiedPrime}
    {Level : Nat → Type u}
    [∀ level, AddCommGroup (Level level)]
    [∀ level, Fintype (Level level)]

/-- Compatible coordinate families as a subset of the full finite-level product. -/
def compatibleFamilies
    (tower : PrimePowerTorsionTower prime Level) :
    Set (∀ level, Level level) :=
  {coordinate |
    ∀ level,
      tower.transition level (coordinate (Nat.succ level)) =
        coordinate level}

/--
Compatibility is a closed condition in the product of discrete finite levels.
-/
theorem compatibleFamilies_isClosed
    [∀ level, TopologicalSpace (Level level)]
    [∀ level, DiscreteTopology (Level level)]
    (tower : PrimePowerTorsionTower prime Level) :
    IsClosed tower.compatibleFamilies := by
  rw [show tower.compatibleFamilies =
      ⋂ level,
        {coordinate |
          tower.transition level (coordinate (Nat.succ level)) =
            coordinate level} by
      ext coordinate
      simp [compatibleFamilies]]
  apply isClosed_iInter
  intro level
  apply isClosed_eq
  · exact
      continuous_of_discreteTopology.comp
        (continuous_apply (Nat.succ level))
  · exact continuous_apply level

/-- The topological inverse-limit carrier cut out by compatibility. -/
abbrev TopologicalInverseLimit
    [∀ level, TopologicalSpace (Level level)]
    (tower : PrimePowerTorsionTower prime Level) :=
  tower.compatibleFamilies

/--
The compatible inverse limit of finite discrete torsion levels is compact.
This supplies the topology omitted by the bare compatible-family carrier; it
does not infer a Tate module or any arithmetic comparison theorem.
-/
theorem topologicalInverseLimit_isCompact
    [∀ level, TopologicalSpace (Level level)]
    [∀ level, DiscreteTopology (Level level)]
    (tower : PrimePowerTorsionTower prime Level) :
    IsCompact
      (Set.univ :
        Set (tower.TopologicalInverseLimit)) := by
  letI : CompactSpace (tower.TopologicalInverseLimit) :=
    isCompact_iff_compactSpace.mp
      tower.compatibleFamilies_isClosed.isCompact
  exact isCompact_univ

end PrimePowerTorsionTower

/-- Closed proposal generated by the missing topology on the torsion loop. -/
def TorsionInverseLimitCompactStatement : Prop :=
  ∀ (prime : CertifiedPrime)
    (Level : Nat → Type)
    [∀ level, AddCommGroup (Level level)]
    [∀ level, Fintype (Level level)]
    [∀ level, TopologicalSpace (Level level)]
    [∀ level, DiscreteTopology (Level level)]
    (tower : PrimePowerTorsionTower prime Level),
      IsCompact
        (Set.univ :
          Set (tower.TopologicalInverseLimit))

/-- Immutable proposal seed for the profinite torsion-loop topology. -/
def torsionInverseLimitCompactOpenElement :
    Mathematics.Discovery.OpenConjectureElement
      TorsionInverseLimitCompactStatement where
  elementId := {
    id := {
      value := "open:prismatic:torsion-inverse-limit-compact"
    }
  }
  elementId_valid := by
    simp [StableId.Valid]
  name := "Finite torsion towers have compact compatible limits"
  name_nonempty := by
    decide
  leanDeclarationName :=
    "Mathematics.Prismatic.TorsionInverseLimitCompactStatement"
  leanDeclarationName_nonempty := by
    decide

/-- Kernel-checked discharge of the compact inverse-limit seed. -/
theorem torsionInverseLimitCompact :
    TorsionInverseLimitCompactStatement := by
  intro prime Level _ _ _ _ tower
  exact tower.topologicalInverseLimit_isCompact

/-- Proof-bearing element linked to the immutable torsion-limit seed. -/
def torsionInverseLimitCompactTheoremElement :
    Mathematics.Discovery.LeanTheoremElement
      torsionInverseLimitCompactOpenElement where
  theoremElementId := {
    id := {
      value := "theorem:prismatic:torsion-inverse-limit-compact"
    }
  }
  theoremElementId_valid := by
    simp [StableId.Valid]
  sourceSeedId := torsionInverseLimitCompactOpenElement.elementId.id
  sourceSeed_bound := rfl
  proof := torsionInverseLimitCompact

end Mathematics.Prismatic
