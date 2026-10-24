-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.F.Variant13f8703d9b397e75b2cd0ba9dee47087b542bfe51e5d52eafc70a63bdc274ec6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"13f8703d9b397e75b2cd0ba9dee47087b542bfe51e5d52eafc70a63bdc274ec6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.F.Variant13f8703d9b397e75b2cd0ba9dee47087b542bfe51e5d52eafc70a63bdc274ec6","mathematical_subject":"Computation.DataStructures","original_sha256":"13f8703d9b397e75b2cd0ba9dee47087b542bfe51e5d52eafc70a63bdc274ec6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/NthRewrite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.NthRewrite
import Mathlib.Algebra.Group.Defs
import Mathlib.Data.Vector.Defs
import Mathlib.Algebra.Ring.Nat


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.F.Variant13f8703d9b397e75b2cd0ba9dee47087b542bfe51e5d52eafc70a63bdc274ec6

set_option autoImplicit true

open Mathlib

example [AddZeroClass G] {a : G} (h : a = a): a = (a + 0) := by
  nth_rewrite 2 [← add_zero a] at h
  exact h

example [AddZeroClass G] {a : G} : a + a = a + (a + 0) := by
  nth_rw 2 [← add_zero a]

structure F where
  (a : ℕ)
  (v : List.Vector ℕ a)
  (p : v.val = [])

example (f : F) : f.v.val = [] := by
  nth_rw 1 [f.p]

structure Cat where
  (O : Type)
  (H : O → O → Type)
  (i : (o : O) → H o o)
  (c : {X Y Z : O} → (f : H X Y) → (g : H Y Z) → H X Z)
  (li : ∀ {X Y : O} (f : H X Y), c (i X) f = f)
  (ri : ∀ {X Y : O} (f : H X Y), c f (i Y) = f)
  (a : ∀ {W X Y Z : O} (f : H W X) (g : H X Y) (h : H Y Z), c (c f g) h = c f (c g h))

example (C : Cat) (W X Y Z : C.O) (f : C.H X Y) (g : C.H W X) (h _k : C.H Y Z) :
    C.c (C.c g f) h = C.c g (C.c f h) := by
  nth_rw 1 [C.a]

example (C : Cat) (X Y : C.O) (f : C.H X Y) : C.c f (C.i Y) = f := by
  nth_rw 1 [C.ri]

example (x y z : ℕ) (h1 : x = y) (h2 : y = z) :
    x + x + x + y = y + y + x + x := by
  nth_rewrite 3 [h1, h2] -- h2 *is* used, this is different from mathlib3
  nth_rewrite 3 [h2]
  rw [h1]
  rw [h2]

axiom foo : [1] = [2]

example : [[1], [1], [1]] = [[1], [2], [1]] := by
  nth_rw 2 [foo]

axiom foo' : [6] = [7]
axiom bar' : [[5],[5]] = [[6],[6]]

example : [[7],[6]] = [[5],[5]] := by
  nth_rewrite 1 [foo']
  nth_rewrite 1 [bar']
  nth_rewrite 1 [← foo']
  nth_rewrite 1 [← foo']
  rfl

example (a b c : ℕ) : c + a + b = a + c + b := by
  nth_rewrite 4 [add_comm]
  rfl

axiom wowzer : (3, 3) = (5, 2)
axiom kachow (n : ℕ) : (4, n) = (5, n)
axiom pchew (n : ℕ) : (n, 5) = (5, n)
axiom smash (n m : ℕ) : (n, m) = (1, 1)

example : [(3, 3), (5, 9), (5, 9)] = [(4, 5), (3, 6), (1, 1)] := by
  nth_rewrite 1 [wowzer]
  nth_rewrite 3 [← pchew]
  nth_rewrite 1 [pchew]

  nth_rewrite 1 [smash]
  nth_rewrite 2 [smash]
  nth_rewrite 3 [smash]
  nth_rewrite 4 [smash]
  nth_rewrite 5 [smash]
  nth_rewrite 6 [smash]
  rfl

example (x y : Prop) (h₁ : x ↔ y) (h₂ : x ↔ x ∧ x) : x ∧ x ↔ x := by
  nth_rewrite 3 [h₁] at h₂
  nth_rewrite 1 [← h₁] at h₂
  nth_rewrite 3 [h₂]
  rfl

example (x y : ℕ) (h₁ : x = y) (h₂ : x = x + x) : x + x = x := by
  nth_rewrite 3 [h₁] at h₂
  nth_rewrite 1 [← h₁] at h₂
  nth_rewrite 3 [h₂]
  rfl

example (x y : ℕ) (h : x = y) : x + x + x = x + y + y := by
  nth_rw 2 3 [h]
