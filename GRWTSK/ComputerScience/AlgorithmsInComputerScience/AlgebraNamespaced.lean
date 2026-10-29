-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.WeightedMemory.Variant4f6b0df4d2d277c59a363fa74dff815876c2f22b262e7b4d5deec25b8543b5b4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4f6b0df4d2d277c59a363fa74dff815876c2f22b262e7b4d5deec25b8543b5b4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.WeightedMemory.Variant4f6b0df4d2d277c59a363fa74dff815876c2f22b262e7b4d5deec25b8543b5b4","mathematical_subject":"Computation.DataStructures","original_sha256":"4f6b0df4d2d277c59a363fa74dff815876c2f22b262e7b4d5deec25b8543b5b4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/MemoryCore/Algebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Weighted


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.WeightedMemory.Variant4f6b0df4d2d277c59a363fa74dff815876c2f22b262e7b4d5deec25b8543b5b4

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected

structure WeightedMemory where
  coeff : MemoryVertex -> Nat

namespace WeightedMemory

def zero : WeightedMemory :=
  { coeff := fun _ => 0 }

def one : WeightedMemory :=
  { coeff := fun v => if v = noopVertex then 1 else 0 }

def add (M N : WeightedMemory) : WeightedMemory :=
  { coeff := fun v => M.coeff v + N.coeff v }

def mul (M N : WeightedMemory) : WeightedMemory :=
  { coeff := fun v => M.coeff v * N.coeff v }

def supportOver (S : List MemoryVertex) (M : WeightedMemory) :
    List MemoryVertex :=
  S.filter (fun v => decide (0 < M.coeff v))

def residueMagnitudeOver (S : List MemoryVertex) (M : WeightedMemory) : Nat :=
  (S.map (fun v => M.coeff v * v.residue.magnitude)).foldl Nat.add 0

def closedOver (S : List MemoryVertex) (M : WeightedMemory) : Prop :=
  residueMagnitudeOver S M = 0

def residueAtoms : List ResidueAtom :=
  [ ResidueAtom.weightedMemoryNotProof
  , ResidueAtom.semiringOnlyUntilInverseDefined
  ]

theorem ext {M N : WeightedMemory}
    (h : ∀ v : MemoryVertex, M.coeff v = N.coeff v) :
    M = N := by
  cases M
  cases N
  simp at h
  congr
  funext v
  exact h v

theorem add_zero (M : WeightedMemory) :
    add M zero = M := by
  apply ext
  intro v
  simp [add, zero]

theorem zero_add (M : WeightedMemory) :
    add zero M = M := by
  apply ext
  intro v
  simp [add, zero]

theorem add_assoc (M N K : WeightedMemory) :
    add (add M N) K = add M (add N K) := by
  apply ext
  intro v
  simp [add, Nat.add_assoc]

theorem add_comm (M N : WeightedMemory) :
    add M N = add N M := by
  apply ext
  intro v
  simp [add, Nat.add_comm]

theorem mul_zero (M : WeightedMemory) :
    mul M zero = zero := by
  apply ext
  intro v
  simp [mul, zero]

theorem zero_mul (M : WeightedMemory) :
    mul zero M = zero := by
  apply ext
  intro v
  simp [mul, zero]

theorem one_noop_coeff :
    one.coeff noopVertex = 1 := by
  simp [one]

theorem residueAtoms_contains_weightedMemoryNotProof :
    ResidueAtom.weightedMemoryNotProof ∈ residueAtoms := by
  simp [residueAtoms]

end WeightedMemory

structure MemoryEdge where
  source : MemoryVertex
  target : MemoryVertex
  composed : MemoryVertex
  confidence : Nat
  residue : Option ResidueAtom
deriving DecidableEq, Repr

def edgeCompositionResidue (e : MemoryEdge) : ResidueLedger :=
  match e.residue with
  | none => ResidueLedger.empty
  | some a => ResidueLedger.empty.emit a

end Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected
