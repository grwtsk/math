-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iunfoldr.Variant0721ef2f990685cd74285612212160862986140821d7c6b6fdf8e1c4b0fa8fed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0721ef2f990685cd74285612212160862986140821d7c6b6fdf8e1c4b0fa8fed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Iunfoldr.Variant0721ef2f990685cd74285612212160862986140821d7c6b6fdf8e1c4b0fa8fed","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"0721ef2f990685cd74285612212160862986140821d7c6b6fdf8e1c4b0fa8fed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Data/BitVec/Folds.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Data.BitVec.Lemmas
import Std.Data.Fin.Iterate
import Std.Data.Nat.Lemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iunfoldr.Variant0721ef2f990685cd74285612212160862986140821d7c6b6fdf8e1c4b0fa8fed

namespace Std.BitVec

/--
iunfoldr is an iterative operation that applies a function `f` repeatedly.

It produces a sequence of state values `[s_0, s_1 .. s_w]` and a bitvector
`v` where `f i s_i = (s_{i+1}, b_i)` and `b_i` is bit `i`th least-significant bit
in `v` (e.g., `getLsb v i = b_i`).

Theorems involving `iunfoldr` can be eliminated using `iunfoldr_replace` below.
-/
def iunfoldr (f : Fin w -> α → α × Bool) (s : α) : α × BitVec w :=
  Fin.hIterate (fun i => α × BitVec i) (s, nil) fun i q =>
    (fun p => ⟨p.fst, cons p.snd q.snd⟩) (f i q.fst)

theorem iunfoldr.fst_eq
    {f : Fin w → α → α × Bool} (state : Nat → α) (s : α)
    (init : s = state 0)
    (ind : ∀(i : Fin w), (f i (state i.val)).fst = state (i.val+1)) :
    (iunfoldr f s).fst = state w := by
  unfold iunfoldr
  apply Fin.hIterate_elim (fun i (p : α × BitVec i) => p.fst = state i)
  case init =>
    exact init
  case step =>
    intro i ⟨s, v⟩ p
    simp_all [ind i]

private theorem iunfoldr.eq_test
    {f : Fin w → α → α × Bool} (state : Nat → α) (value : BitVec w) (a : α)
    (init : state 0 = a)
    (step : ∀(i : Fin w), f i (state i.val) = (state (i.val+1), value.getLsb i.val)) :
    iunfoldr f a = (state w, BitVec.truncate w value) := by
  apply Fin.hIterate_eq (fun i => ((state i, BitVec.truncate i value) : α × BitVec i))
  case init =>
    simp only [init, eq_nil]
  case step =>
    intro i
    simp_all [truncate_succ]

/--
Correctness theorem for `iunfoldr`.
-/
theorem iunfoldr_replace
    {f : Fin w → α → α × Bool} (state : Nat → α) (value : BitVec w) (a : α)
    (init : state 0 = a)
    (step : ∀(i : Fin w), f i (state i.val) = (state (i.val+1), value.getLsb i.val)) :
    iunfoldr f a = (state w, value) := by
  simp [iunfoldr.eq_test state value a init step]
