# foo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f73b7e1fa8a0ec0df0d068b9e680a37446ac841e41439b59cb3048cefaeadc63",
  "kind": "def",
  "lexical_name": "foo",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "foo--520f5b0d4ed0da9033d9e1fa",
  "source": {
    "blob": "148c21231cccaee3cc4e9edd159730eafa3d1f8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 151,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TheoremWanted/Varianta839d4afc35ca091caa8d90acb6f02dcadfd6ec7a47e18c502c77423817703a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:520f5b0d4ed0da9033d9e1faeed07869a6bfa6d1cfdd7524c657f77afdb8a2a9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TheoremWanted/Varianta839d4afc35ca091caa8d90acb6f02dcadfd6ec7a47e18c502c77423817703a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f73b7e1fa8a0ec0df0d068b9e680a37446ac841e41439b59cb3048cefaeadc63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def foo : Nat := 17
theorem_wanted foo_eq_37 : foo = 37
theorem_wanted thirtyseven_eq_41 : (37 : Nat) = 41

/-! Body-only references still become binders on the recorded placeholder. -/
theorem_wanted foo_eq_41 : foo = 41 := by
  rw [❰foo_eq_37❱]; exact ❰thirtyseven_eq_41❱

/--
info: @foo_eq_41 : {h_foo_eq_37 : foo_eq_37.Stmt} → {h_thirtyseven_eq_41 : thirtyseven_eq_41.Stmt} → ProofWanted (foo = 41)
-/
#guard_msgs in #check @foo_eq_41

/-! A reference shared between statement and body is deduplicated. -/
theorem_wanted foo_eq_41_fin :
    (⟨foo, by rw [❰foo_eq_37❱]; decide⟩ : Fin 50) = ⟨41, by decide⟩ := by
  apply Fin.ext
  show foo = 41
  rw [❰foo_eq_37❱]; exact ❰thirtyseven_eq_41❱

/--
info: @foo_eq_41_fin : {h_foo_eq_37 : foo_eq_37.Stmt} →
  {h_thirtyseven_eq_41 : thirtyseven_eq_41.Stmt} → ProofWanted (⟨foo, ⋯⟩ = ⟨41, ⋯⟩)
-/
#guard_msgs in #check @foo_eq_41_fin

/-! A body that doesn't type-check is rejected; the bracket has already been substituted for the
hypothesis binder by the time the error is reported. -/
/--
error: Type mismatch
  h_foo_eq_37✝
has type
  foo_eq_37.Stmt
but is expected to have type
  foo + 1 = 38
-/
#guard_msgs in theorem_wanted bad_body : foo + 1 = 38 := ❰foo_eq_37❱

/-! A body may reference a parametrised `theorem_wanted`. -/

theorem_wanted foo_param (m : Nat) : foo = m

theorem_wanted foo_eq_99 : foo = 99 := ❰foo_param❱ 99

/--
info: @foo_eq_99 : {h_foo_param : ∀ (m : Nat), (foo_param m).Stmt} → ProofWanted (foo = 99)
-/
#guard_msgs in #check @foo_eq_99

/-! A body with no `❰…❱` reference anywhere is rejected with a `Try this:` pointing at
`theorem`. -/
/--
info: Try this:
  [apply] theorem trivially_true : True :=
    trivial
---
error: `theorem_wanted` with a body but no `❰…❱` reference is just a `theorem`; either replace `theorem_wanted` with `theorem`, or reference another `theorem_wanted` / `proof_wanted` / `def_wanted` / `instance_wanted` via `❰…❱` in the statement or body
-/
#guard_msgs in theorem_wanted trivially_true : True := trivial

/-! ## Universe-polymorphic references

A reference to a universe-polymorphic wanted declaration is usable at a single use-site universe:
the generated hypothesis binder spells the reference's universe levels as holes, so they unify with
whatever universe the reference is used at (here `u`, distinct from the referenced `w`). -/

theorem_wanted exists_ulift.{w} : ∃ x : ULift.{w} Nat, x.down = 1

theorem_wanted exists_ulift_down.{u} : ∃ x : ULift.{u} Nat, x.down = 1 := by
  obtain ⟨x : ULift.{u} Nat, hx⟩ := ❰exists_ulift❱
  exact ⟨x, hx⟩

/--
info: @exists_ulift_down : {h_exists_ulift : exists_ulift.Stmt} → ProofWanted (∃ x, x.down = 1)
-/
#guard_msgs in #check @exists_ulift_down

/-! When the referenced declaration carries a binder whose *type* mentions its universe parameter
(`{α : Type _}`), that universe is also spelled as a hole in the generated hypothesis, so the
reference may be used at a concrete universe — here `Array Nat` at `Type` — not just at a shared
universe variable. -/

theorem_wanted size_poly {α : Type _} (a : Array α) (x y : α) :
    ((a.push x).push y).size = a.size + 2

theorem_wanted ref_size_concrete (a : Array Nat) (x y : Nat) :
    ((a.push x).push y).size = a.size + 2 := ❰size_poly❱ a x y

/--
info: ref_size_concrete : (a : Array Nat) →
  (x y : Nat) →
    {h_size_poly : ∀ {α : Type} (a : Array α) (x y : α), (size_poly a x y).Stmt} →
      ProofWanted (((a.push x).push y).size = a.size + 2)
-/
#guard_msgs in #check @ref_size_concrete

/-! TODO: a single `❰…❱` reference desugars to one hypothesis binder, which is monomorphic in
universes. Using that one reference at two *different* universes therefore fails: the binder unifies
with the first use's universe (`u` below) and the second use (`v`) then mismatches. Lifting this
would need a universe-polymorphic hypothesis, which the term language can't express; the alternative
is a separate wanted declaration per universe. Flagged for future contributors. -/
/--
error: Type mismatch
  h_exists_ulift✝
has type
  ProofWanted.Stmt.{0} exists_ulift.{u}
but is expected to have type
  Exists.{v + 1} fun y => Eq.{1} (ULift.down.{v, 0} y) 1
-/
#guard_msgs in
set_option pp.universes true in
theorem_wanted exists_ulift_two.{u, v} :
    ∃ x : ULift.{u} Nat, ∃ y : ULift.{v} Nat, x.down = y.down := by
  have hu : ∃ x : ULift.{u} Nat, x.down = 1 := ❰exists_ulift❱
  have hv : ∃ y : ULift.{v} Nat, y.down = 1 := ❰exists_ulift❱
  obtain ⟨x, hx⟩ := hu
  obtain ⟨y, hy⟩ := hv
  exact ⟨x, y, hx.trans hy.symm⟩

/-! Binder types from a universe-polymorphic wanted must not leak the referenced declaration's
level parameter names into the use site (#1911). -/
section UniverseBinderLeak
set_option autoImplicit false
universe v
theorem_wanted univ_poly_eq (a : Type v) : a = a
end UniverseBinderLeak

def_wanted univ_poly_use : Nat :=
  have _ := ❰univ_poly_eq❱ Nat
  0

/-! ## Namespacing -/

namespace N
  theorem_wanted ns_foo : 17 = 37

  /-- Bracket resolution works on namespaced names; the generated hypothesis uses just the last
      component of the name. -/
  theorem_wanted ns_bar :
      (⟨17, by rw [❰ns_foo❱]; decide⟩ : Fin 50) = 0
end N

/-! ## Soundness

A `theorem_wanted` must *not* be usable as a proof of its statement. The placeholder has type
`ProofWanted T`, not `T`, so any attempt to use it as a proof should fail to typecheck. -/

/--
error: Type mismatch
  env_trace
has type
  ProofWanted (17 = 37)
of sort `Type` but is expected to have type
  17 = 37
of sort `Prop`
-/
#guard_msgs in example : 17 = 37 := env_trace

/-- And the bracket itself is not a term-level escape hatch: outside `theorem_wanted` it errors,
and inside `theorem_wanted` it only adds a hypothesis to the recorded statement. So even chained
`theorem_wanted`s never produce a real proof, only a wanted theorem of the form "if … then …". -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TheoremWanted/Varianta839d4afc35ca091caa8d90acb6f02dcadfd6ec7a47e18c502c77423817703a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TheoremWanted/Varianta839d4afc35ca091caa8d90acb6f02dcadfd6ec7a47e18c502c77423817703a0.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `148c21231cccaee3cc4e9edd159730eafa3d1f8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
