# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iterate.Variant5ec4bc6e0f5897c057f197579ef14976c7931088919aaa3ab46a88afbf4b0698

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d3d4c3398b58eaabe4e70cf4e0d071d0db8c3a3` · SHA-256 `52a31e2f213b4e270b25359370248750c3ec8057b27c7c944e3ad86ba2a1ad0a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HIterateFrom.Variant485d26387d0c8e1e8053db00127c675b529e26491ddaa2ce4134fc98c2dde3e7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"485d26387d0c8e1e8053db00127c675b529e26491ddaa2ce4134fc98c2dde3e7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.HIterateFrom.Variant485d26387d0c8e1e8053db00127c675b529e26491ddaa2ce4134fc98c2dde3e7","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"485d26387d0c8e1e8053db00127c675b529e26491ddaa2ce4134fc98c2dde3e7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Fin/Iterate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joe Hendrix
-/
module
prelude
public import Init.Data.Fin.Basic
import Init.PropLemmas
import Init.WFTactics
import Init.Hints

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HIterateFrom.Variant485d26387d0c8e1e8053db00127c675b529e26491ddaa2ce4134fc98c2dde3e7

public section
namespace Fin

/--
Applies an index-dependent function `f` to all of the values in `[i:n]`, starting at `i` with an
initial accumulator `a`.

Concretely, `Fin.hIterateFrom P f i a` is equal to
```lean
  a |> f i |> f (i + 1) |> ... |> f (n - 1)
```

Theorems about `Fin.hIterateFrom` can be proven using the general theorem `Fin.hIterateFrom_elim` or
other more specialized theorems.

`Fin.hIterate` is a variant that always starts at `0`.
-/
def hIterateFrom (P : Nat → Sort _) {n} (f : ∀(i : Fin n), P i.val → P (i.val+1))
      (i : Nat) (ubnd : i ≤ n) (a : P i) : P n :=
  if g : i < n then
    hIterateFrom P f (i+1) g (f ⟨i, g⟩ a)
  else
    have p : i = n := (or_iff_left g).mp (Nat.eq_or_lt_of_le ubnd)
    _root_.cast (congrArg P p) a
  termination_by n - i
  decreasing_by decreasing_trivial_pre_omega

/--
Applies an index-dependent function to all the values less than the given bound `n`, starting at
`0` with an accumulator.

Concretely, `Fin.hIterate P init f` is equal to
```lean
  init |> f 0 |> f 1 |> ... |> f (n-1)
```

Theorems about `Fin.hIterate` can be proven using the general theorem `Fin.hIterate_elim` or other more
specialized theorems.

`Fin.hIterateFrom` is a variant that takes a custom starting value instead of `0`.
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
    have r : Q n (_root_.cast (congrArg P p) s) :=
      @Eq.rec Nat i (fun k eq => Q k (_root_.cast (congrArg P eq) s)) init n p
    simp only [g, dite_false]; exact r
  | succ j inv =>
    unfold hIterateFrom
    have d : Nat.succ i + j = n := by simp [Nat.succ_add]; exact p
    have g : i < n := Nat.le.intro d
    simp only [g]
    exact inv _ _ (step ⟨i,g⟩ s init) d

/--
`hIterate_elim` provides a mechanism for showing that the result of
`hIterate` satisfies a property `Q stop` by showing that the states
at the intermediate indices `i : start ≤ i < stop` satisfy `Q i`.
-/
theorem hIterate_elim {P : Nat → Sort _} (Q : ∀(i : Nat), P i → Prop)
    {n : Nat} (f : ∀(i : Fin n), P i.val → P (i.val+1)) (s : P 0) (init : Q 0 s)
    (step : ∀(k : Fin n) (s : P k.val), Q k.val s → Q (k.val+1) (f k s)) :
    Q n (hIterate P s f) := by
  exact hIterateFrom_elim _ _ _ _ init step

/--
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
````
