-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HIterateFrom.Variantc937db0f401bc8895f892700ea6325e93dd00dc1fb0ae2f202f887e8faca90c6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c937db0f401bc8895f892700ea6325e93dd00dc1fb0ae2f202f887e8faca90c6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.HIterateFrom.Variantc937db0f401bc8895f892700ea6325e93dd00dc1fb0ae2f202f887e8faca90c6","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"c937db0f401bc8895f892700ea6325e93dd00dc1fb0ae2f202f887e8faca90c6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Data/Fin/Iterate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 by the authors listed in the file AUTHORS and their
institutional affiliations. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joe Hendrix
-/
import Std.Logic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HIterateFrom.Variantc937db0f401bc8895f892700ea6325e93dd00dc1fb0ae2f202f887e8faca90c6

namespace Fin

/--
`hIterateFrom f i bnd a` applies `f` over indices `[i:n]` to compute `P n`
from `P i`.

See `hIterate` below for more details.
-/
def hIterateFrom (P : Nat → Sort _) {n} (f : ∀(i : Fin n), P i.val → P (i.val+1))
      (i : Nat) (ubnd : i ≤ n) (a : P i) : P n :=
  if g : i < n then
    hIterateFrom P f (i+1) g (f ⟨i, g⟩ a)
  else
    have p : i = n := (or_iff_left g).mp (Nat.eq_or_lt_of_le ubnd)
    cast (congrArg P p) a
  termination_by hIterateFrom i _ _ => n - i

/--
`hIterate` is a heterogenous iterative operation that applies a
index-dependent function `f` to a value `init : P start` a total of
`stop - start` times to produce a value of type `P stop`.

Concretely, `hIterate start stop f init` is equal to
```lean
  init |> f start _ |> f (start+1) _ ... |> f (end-1) _
```

Because it is heterogenous and must return a value of type `P stop`,
`hIterate` requires proof that `start ≤ stop`.

One can prove properties of `hIterate` using the general theorem
`hIterate_elim` or other more specialized theorems.
 -/
def hIterate (P : Nat → Sort _) {n : Nat} (init : P 0) (f : ∀(i : Fin n), P i.val → P (i.val+1)) :
    P n :=
  hIterateFrom P f 0 (Nat.zero_le n) init

private theorem hIterateFrom_elim {P : Nat → Sort _}(Q : ∀(i : Nat), P i → Prop)
    {n  : Nat}
    (f : ∀(i : Fin n), P i.val → P (i.val+1))
    {i : Nat} (ubnd : i ≤ n)
    (s : P i)
    (init : Q i s)
    (step : ∀(k : Fin n) (s : P k.val), Q k.val s → Q (k.val+1) (f k s)) :
    Q n (hIterateFrom P f i ubnd s) := by
  let ⟨j, p⟩ := Nat.le.dest ubnd
  induction j generalizing i ubnd init with
  | zero =>
    unfold hIterateFrom
    have g : ¬ (i < n) := by simp at p; simp [p]
    have r : Q n (cast (congrArg P p) s) :=
      @Eq.rec Nat i (fun k eq => Q k (cast (congrArg P eq) s)) init n p
    simp only [g, r, dite_false]
  | succ j inv =>
    unfold hIterateFrom
    have d : Nat.succ i + j = n := by simp [Nat.succ_add]; exact p
    have g : i < n := Nat.le.intro d
    simp only [g]
    exact inv _ _ (step ⟨i,g⟩ s init) d

/-
`hIterate_elim` provides a mechanism for showing that the result of
`hIterate` satisifies a property `Q stop` by showing that the states
at the intermediate indices `i : start ≤ i < stop` satisfy `Q i`.
-/
theorem hIterate_elim {P : Nat → Sort _} (Q : ∀(i : Nat), P i → Prop)
    {n : Nat} (f : ∀(i : Fin n), P i.val → P (i.val+1)) (s : P 0) (init : Q 0 s)
    (step : ∀(k : Fin n) (s : P k.val), Q k.val s → Q (k.val+1) (f k s)) :
    Q n (hIterate P s f) := by
  exact hIterateFrom_elim _ _ _ _ init step

/-
`hIterate_eq`provides a mechanism for replacing `hIterate P s f` with a
function `state` showing that matches the steps performed by `hIterate`.

This allows rewriting incremental code using `hIterate` with a
non-incremental state function.
-/
theorem hIterate_eq {P : Nat → Sort _} (state : ∀(i : Nat), P i)
    {n : Nat} (f : ∀(i : Fin n), P i.val → P (i.val+1)) (s : P 0)
    (init : s = state 0)
    (step : ∀(i : Fin n), f i (state i) = state (i+1)) :
    hIterate P s f = state n := by
  apply hIterate_elim (fun i s => s = state i) f s init
  intro i s s_eq
  simp only [s_eq, step]
