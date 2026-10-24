# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.KakeyaMedoid.Variant3242ea807faef6e1c0fb9cef0de825b6901d37313fdfbdc9128f96a3cdacbeb9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2db8bd84a4f30c41b0231cbf9e7d4fd2ee078ee5` · SHA-256 `c029744988a2d713feff774adce81dd03e2b2d4b01a87aa1eb4dc94961e9349f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MedoidSelection.Variant8a8d0814102079d98bc145daff599b201a71d38eb687fee43fa2894da8f19487","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8a8d0814102079d98bc145daff599b201a71d38eb687fee43fa2894da8f19487","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MedoidSelection.Variant8a8d0814102079d98bc145daff599b201a71d38eb687fee43fa2894da8f19487","mathematical_subject":"Computation.DataStructures","original_sha256":"8a8d0814102079d98bc145daff599b201a71d38eb687fee43fa2894da8f19487","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/Pipeline/Center/KakeyaMedoid.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Algebra
import Think.Pipeline.Center.WeightedCenter


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MedoidSelection.Variant8a8d0814102079d98bc145daff599b201a71d38eb687fee43fa2894da8f19487

set_option autoImplicit false

namespace Think.Pipeline.Center.KakeyaMedoid

abbrev Phase := Think.PhaseId
abbrev MemoryVertex := Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.MemoryVertex
abbrev WeightedMemory := Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.WeightedMemory
abbrev ResidueAtom := Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueAtom

def centerPhase : Phase :=
  FWR.Pipeline.CenterWeighted.Phase.sectionSquareCheck

def centerDistance (p : Phase) : Nat :=
  FWR.Pipeline.CenterWeighted.Phase.centerDistance p

def phaseDistance (p q : Phase) : Nat :=
  if p.index ≤ q.index then q.index - p.index else p.index - q.index

def medoidObjective
    (projectionDistance : MemoryVertex -> Phase -> Nat)
    (M : WeightedMemory)
    (support : List MemoryVertex)
    (p : Phase) : Nat :=
  (support.map (fun v => M.coeff v * projectionDistance v p)).foldl Nat.add 0

def medoidBetter
    (objective : Phase -> Nat)
    (p q : Phase) : Bool :=
  if objective p < objective q then
    true
  else if objective q < objective p then
    false
  else if centerDistance p < centerDistance q then
    true
  else if centerDistance q < centerDistance p then
    false
  else
    p.index ≤ q.index

def chooseBest (objective : Phase -> Nat) : List Phase -> Phase -> Phase
  | [], best => best
  | p :: rest, best =>
      chooseBest objective rest
        (if medoidBetter objective p best then p else best)

def medoidK
    (projectionDistance : MemoryVertex -> Phase -> Nat)
    (M : WeightedMemory)
    (support : List MemoryVertex) : Phase :=
  chooseBest (medoidObjective projectionDistance M support)
    Think.centerSpine
    centerPhase

def leLex (a b c x y z : Nat) : Prop :=
  a < x ∨ (a = x ∧ b < y) ∨ (a = x ∧ b = y ∧ c ≤ z)

def preceqK (graphDistance : Phase -> Phase -> Nat) (m p q : Phase) :
    Prop :=
  leLex
    (graphDistance p m)
    (centerDistance p)
    p.index
    (graphDistance q m)
    (centerDistance q)
    q.index

def medoidResidues : List ResidueAtom :=
  [ Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueAtom.kakeyaMedoidNotKakeyaTheorem
  , Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueAtom.medoidSelectorNotTargetSettlement
  ]

structure MedoidSelection where
  medoid : Phase
  support : List MemoryVertex
  residues : List ResidueAtom
deriving Repr

def select
    (projectionDistance : MemoryVertex -> Phase -> Nat)
    (M : WeightedMemory)
    (support : List MemoryVertex) : MedoidSelection :=
  { medoid := medoidK projectionDistance M support
    support := support
    residues := medoidResidues }

theorem medoidResidues_contains_nonTheorem :
    Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueAtom.kakeyaMedoidNotKakeyaTheorem ∈
      medoidResidues := by
  simp [medoidResidues]

theorem medoidResidues_contains_nonSettlement :
    Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueAtom.medoidSelectorNotTargetSettlement ∈
      medoidResidues := by
  simp [medoidResidues]

theorem preceqK_total
    (graphDistance : Phase -> Phase -> Nat)
    (m p q : Phase) :
    preceqK graphDistance m p q ∨ preceqK graphDistance m q p := by
  unfold preceqK leLex
  by_cases hdist : graphDistance p m < graphDistance q m
  · exact Or.inl (Or.inl hdist)
  · by_cases hdist' : graphDistance q m < graphDistance p m
    · exact Or.inr (Or.inl hdist')
    · have hdistEq : graphDistance p m = graphDistance q m := by
        omega
      by_cases hcenter : centerDistance p < centerDistance q
      · exact Or.inl (Or.inr (Or.inl ⟨hdistEq, hcenter⟩))
      · by_cases hcenter' : centerDistance q < centerDistance p
        · exact Or.inr (Or.inr (Or.inl ⟨hdistEq.symm, hcenter'⟩))
        · have hcenterEq : centerDistance p = centerDistance q := by
            omega
          by_cases hindex : p.index ≤ q.index
          · exact Or.inl
              (Or.inr (Or.inr ⟨hdistEq, hcenterEq, hindex⟩))
          · have hindex' : q.index ≤ p.index := by
              omega
            exact Or.inr
              (Or.inr (Or.inr ⟨hdistEq.symm, hcenterEq.symm, hindex'⟩))

theorem centerSpine_preserved :
    Think.centerSpine.length = 61 := by
  rfl

end Think.Pipeline.Center.KakeyaMedoid
```
