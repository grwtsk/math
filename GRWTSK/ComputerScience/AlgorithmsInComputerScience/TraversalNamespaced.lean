-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MapAtoms.Variant7b24a9d58b846b5e779ca44e0b04af4c8cf97481114a3dd97c2a346f3cc30366","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7b24a9d58b846b5e779ca44e0b04af4c8cf97481114a3dd97c2a346f3cc30366","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MapAtoms.Variant7b24a9d58b846b5e779ca44e0b04af4c8cf97481114a3dd97c2a346f3cc30366","mathematical_subject":"Computation.DataStructures","original_sha256":"7b24a9d58b846b5e779ca44e0b04af4c8cf97481114a3dd97c2a346f3cc30366","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Formula/Traversal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Formula.Eval


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MapAtoms.Variant7b24a9d58b846b5e779ca44e0b04af4c8cf97481114a3dd97c2a346f3cc30366

namespace Boolean

universe u v w

namespace Formula

variable {α : Type u} {β : Type v} {γ : Type w}

/-- Rename the atoms of a formula. -/
def mapAtoms (f : α → β) : Formula α → Formula β
  | .var a => .var (f a)
  | .falsum => .falsum
  | .truth => .truth
  | .neg p => .neg (mapAtoms f p)
  | .conj p q => .conj (mapAtoms f p) (mapAtoms f q)
  | .disj p q => .disj (mapAtoms f p) (mapAtoms f q)
  | .impl p q => .impl (mapAtoms f p) (mapAtoms f q)
  | .eqv p q => .eqv (mapAtoms f p) (mapAtoms f q)

@[simp] theorem mapAtoms_const (f : α → β) (b : Bool) :
    mapAtoms f (const (α := α) b) = const (α := β) b := by
  cases b <;> rfl

@[simp] theorem mapAtoms_id (p : Formula α) :
    mapAtoms (fun a : α => a) p = p := by
  induction p with
  | var a => rfl
  | falsum => rfl
  | truth => rfl
  | neg p ih => simp [mapAtoms, ih]
  | conj p q ihp ihq => simp [mapAtoms, ihp, ihq]
  | disj p q ihp ihq => simp [mapAtoms, ihp, ihq]
  | impl p q ihp ihq => simp [mapAtoms, ihp, ihq]
  | eqv p q ihp ihq => simp [mapAtoms, ihp, ihq]

@[simp] theorem mapAtoms_comp (g : β → γ) (f : α → β) (p : Formula α) :
    mapAtoms g (mapAtoms f p) = mapAtoms (fun a : α => g (f a)) p := by
  induction p with
  | var a => rfl
  | falsum => rfl
  | truth => rfl
  | neg p ih => simp [mapAtoms, ih]
  | conj p q ihp ihq => simp [mapAtoms, ihp, ihq]
  | disj p q ihp ihq => simp [mapAtoms, ihp, ihq]
  | impl p q ihp ihq => simp [mapAtoms, ihp, ihq]
  | eqv p q ihp ihq => simp [mapAtoms, ihp, ihq]

@[simp] theorem eval_mapAtoms (ν : Valuation β) (f : α → β) (p : Formula α) :
    eval ν (mapAtoms f p) = eval (fun a : α => ν (f a)) p := by
  induction p with
  | var a => rfl
  | falsum => rfl
  | truth => rfl
  | neg p ih => simp [mapAtoms, eval, ih]
  | conj p q ihp ihq => simp [mapAtoms, eval, ihp, ihq]
  | disj p q ihp ihq => simp [mapAtoms, eval, ihp, ihq]
  | impl p q ihp ihq => simp [mapAtoms, eval, ihp, ihq]
  | eqv p q ihp ihq => simp [mapAtoms, eval, ihp, ihq]

/-- The list of atoms appearing in a formula, with repetitions preserved. -/
def atoms : Formula α → List α
  | .var a => [a]
  | .falsum => []
  | .truth => []
  | .neg p => atoms p
  | .conj p q => atoms p ++ atoms q
  | .disj p q => atoms p ++ atoms q
  | .impl p q => atoms p ++ atoms q
  | .eqv p q => atoms p ++ atoms q

/-- The number of connective and atom nodes in a formula. -/
def size : Formula α → Nat
  | .var _ => 1
  | .falsum => 1
  | .truth => 1
  | .neg p => size p + 1
  | .conj p q => size p + size q + 1
  | .disj p q => size p + size q + 1
  | .impl p q => size p + size q + 1
  | .eqv p q => size p + size q + 1

/-- The depth of a formula tree. -/
def depth : Formula α → Nat
  | .var _ => 1
  | .falsum => 1
  | .truth => 1
  | .neg p => depth p + 1
  | .conj p q => Nat.max (depth p) (depth q) + 1
  | .disj p q => Nat.max (depth p) (depth q) + 1
  | .impl p q => Nat.max (depth p) (depth q) + 1
  | .eqv p q => Nat.max (depth p) (depth q) + 1

@[simp] theorem size_mapAtoms (f : α → β) (p : Formula α) :
    size (mapAtoms f p) = size p := by
  induction p with
  | var a => rfl
  | falsum => rfl
  | truth => rfl
  | neg p ih => simp [size, mapAtoms, ih]
  | conj p q ihp ihq => simp [size, mapAtoms, ihp, ihq]
  | disj p q ihp ihq => simp [size, mapAtoms, ihp, ihq]
  | impl p q ihp ihq => simp [size, mapAtoms, ihp, ihq]
  | eqv p q ihp ihq => simp [size, mapAtoms, ihp, ihq]

@[simp] theorem depth_mapAtoms (f : α → β) (p : Formula α) :
    depth (mapAtoms f p) = depth p := by
  induction p with
  | var a => rfl
  | falsum => rfl
  | truth => rfl
  | neg p ih => simp [depth, mapAtoms, ih]
  | conj p q ihp ihq => simp [depth, mapAtoms, ihp, ihq]
  | disj p q ihp ihq => simp [depth, mapAtoms, ihp, ihq]
  | impl p q ihp ihq => simp [depth, mapAtoms, ihp, ihq]
  | eqv p q ihp ihq => simp [depth, mapAtoms, ihp, ihq]

end Formula

end Boolean
