# regular_def_dw

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f509942069e4d5f6554d14d295cdf1b30cdf21e847e00b2d9b70868ae08b123f",
  "kind": "def",
  "lexical_name": "regular_def_dw",
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
  "slug": "regular-def-dw--e6ff94e0e083279b5d221cb8",
  "source": {
    "blob": "6aa0ca7571e1f9dd05301ca5ad7f8d72c6895cb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 94,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefWanted/Variantf7b04a4dc22f7e31733c3fa4564339397a385fdf8137342f41ecd896c3b1cf82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6ff94e0e083279b5d221cb89740b2ee019c27e6d77406a864c18142f14bc576",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefWanted/Variantf7b04a4dc22f7e31733c3fa4564339397a385fdf8137342f41ecd896c3b1cf82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f509942069e4d5f6554d14d295cdf1b30cdf21e847e00b2d9b70868ae08b123f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def regular_def_dw : Nat := 0

/--
error: `regular_def_dw` is not a `theorem_wanted`, `proof_wanted`, or `def_wanted` declaration (its type doesn't end in `ProofWanted _` or `DefWanted _`)
-/
#guard_msgs in def_wanted bad_not_wanted : ❰regular_def_dw❱

/-! `❰…❱` in a binder type is rejected explicitly. -/
/--
error: `❰…❱` may not appear inside binder type of `def_wanted`
-/
#guard_msgs in def_wanted bad_in_binder_dw (h : ❰prime_dec❱) : True

/-! Unlike `proof_wanted`, `def_wanted` accepts non-`Prop` statements (that's the point)
and also allows `Prop` statements (any `Sort` is fine). -/
#guard_msgs in def_wanted is_prop : True
#guard_msgs in def_wanted is_type : Nat

/-! ## Bodies

A `def_wanted` *with* a body is **transparent**: it is emitted as a genuine `@[reducible]` definition
(wrapped in `DerivedWanted` so it cannot be used directly as a value of its type), and `❰foo❱`
*inlines* it. So `foo`'s own `❰…❱` references do not become `d_foo` binders on the referrer; only the
opaque *leaf* holes survive. A bodyless `def_wanted` stays an opaque `DefWanted` hole. -/

def_wanted any_nat_plus_one : Nat := ❰any_nat❱ + 1

/--
info: @any_nat_plus_one : {d_any_nat : any_nat.Val} → DerivedWanted Nat
-/
#guard_msgs in #check @any_nat_plus_one

/-! A body that doesn't type-check is rejected. -/
/--
error: Application type mismatch: The argument
  d_any_nat✝
has type
  any_nat.Val
but is expected to have type
  Bool
in the application
  { val := d_any_nat✝ }
-/
#guard_msgs in def_wanted bad_body_dw : Bool := ❰any_nat❱

/-! A body with no `❰…❱` reference anywhere falls back to a `def` suggestion. -/
/--
info: Try this:
  [apply] def trivially_unit : Unit :=
    ()
---
error: `def_wanted` with a body but no `❰…❱` reference is just a `def`; either replace `def_wanted` with `def`, or reference another `theorem_wanted` / `proof_wanted` / `def_wanted` / `instance_wanted` via `❰…❱` in the statement or body
-/
#guard_msgs in def_wanted trivially_unit : Unit := ()

/-! ## Parametrised references

(The corresponding cases for parametrised `proof_wanted` refs are in
`BatteriesTest/theorem_wanted.lean`.) -/

def_wanted param_dw (n : Nat) : Fin (n + 1)

def_wanted use_param_dw : Fin 4 := ❰param_dw❱ 3

/--
info: @use_param_dw : {d_param_dw : (n : Nat) → (param_dw n).Val} → DerivedWanted (Fin 4)
-/
#guard_msgs in #check @use_param_dw

/-! Multiple binders, mixing implicit and explicit. -/

def_wanted param_many {α : Type} (xs : List α) (n : Nat) : Option α
def_wanted use_param_many : Option Nat := ❰param_many❱ [1, 2, 3] 0

/--
info: @use_param_many : {d_param_many : {α : Type} → (xs : List α) → (n : Nat) → (param_many xs n).Val} →
  DerivedWanted (Option Nat)
-/
#guard_msgs in #check @use_param_many

/-! Universe-polymorphic references work when the use site shares the universe variable. -/

universe u
def_wanted poly_dw (α : Type u) : Type u
def_wanted use_poly_dw (α : Type u) : Type u := ❰poly_dw❱ α

/--
info: use_poly_dw : Type u_1 → {d_poly_dw : (α : Type u_1) → (poly_dw α).Val} → DerivedWanted (Type u_1)
-/
#guard_msgs in #check @use_poly_dw

/-! A universe-polymorphic `def_wanted` may equally be referenced at a *concrete* universe: the
generated binder spells `poly_dw`'s universe as a hole, so `❰poly_dw❱ Nat` resolves at `Type` rather
than pinning the reference to a rigid universe parameter that no concrete type could match. -/
def_wanted use_poly_concrete : Type := ❰poly_dw❱ Nat

/--
info: @use_poly_concrete : {d_poly_dw : (α : Type) → (poly_dw α).Val} → DerivedWanted Type
-/
#guard_msgs in #check @use_poly_concrete

/-! ## Transitive dependencies

A transparent (body-ful) wanted is inlined at each reference, so referencing it surfaces only the
opaque *leaf* holes it ultimately depends on — never the transparent intermediates. Class-valued and
proof leaves are surfaced too. -/

def_wanted base_dep (R : Type) : Nat
def_wanted derived_dep (R : Type) : Nat := ❰base_dep❱ R + 1

/-- `derived_dep` is transparent, so referencing it inlines its body; only its leaf hole `base_dep`
surfaces as a `d_base_dep` binder (there is no `d_derived_dep`). -/
def_wanted use_chain : Nat := ❰derived_dep❱ Nat

/--
info: @use_chain : {d_base_dep : (R : Type) → (base_dep R).Val} → DerivedWanted Nat
-/
#guard_msgs in #check @use_chain

/-! A transparent `def_wanted` (`foo_dep`) referencing a `theorem_wanted` (`boo_dep`) inlines,
leaving only the proof leaf hole `h_boo_dep` (Filippo Nuccio's reported shape). The inlined `foo_dep`
shows as an η-expanded projection in the recorded statement. -/

theorem_wanted boo_dep (R : Type) : (0 : Nat) < 5
def_wanted foo_dep (R : Type) : Fin 5 := ⟨0, ❰boo_dep❱ R⟩
theorem_wanted ref_with_proof_dep : (❰foo_dep❱ Nat).val = 0

/--
info: @ref_with_proof_dep : {h_boo_dep : ∀ (R : Type), (boo_dep R).Stmt} → ProofWanted (↑((fun R => (foo_dep R).val) Nat) = 0)
-/
#guard_msgs in #check @ref_with_proof_dep

/-- Deduplication still applies: `base_dep` referenced both directly and (transitively, via the
inlined `derived_dep`) yields a single `d_base_dep` binder. -/
def_wanted use_chain_and_base : Nat := ❰base_dep❱ Nat + ❰derived_dep❱ Nat

/--
info: @use_chain_and_base : {d_base_dep : (R : Type) → (base_dep R).Val} → DerivedWanted Nat
-/
#guard_msgs in #check @use_chain_and_base

/-! A chain of transparent defs inlines all the way down: referencing the top surfaces only the
single opaque leaf hole. -/

def_wanted leaf_dep (R : Type) : Nat
def_wanted mid_dep (R : Type) : Nat := ❰leaf_dep❱ R + 1
def_wanted top_dep (R : Type) : Nat := ❰mid_dep❱ R + 1
def_wanted use_three_levels : Nat := ❰top_dep❱ Nat

/--
info: @use_three_levels : {d_leaf_dep : (R : Type) → (leaf_dep R).Val} → DerivedWanted Nat
-/
#guard_msgs in #check @use_three_levels

/-! ## Namespacing -/

namespace M
  def_wanted ns_foo : Nat

  /-- Bracket resolution works on namespaced names; the generated parameter uses just the last
      component of the name. -/
  def_wanted ns_bar : Nat := ❰ns_foo❱ + 1
end M

/-! ## Soundness

A `def_wanted` must *not* be usable as an inhabitant of its declared type. The
placeholder has type `DefWanted T`, not `T`, so any attempt to use it as a value should
fail to typecheck. -/

/--
error: Type mismatch
  any_nat
has type
  DefWanted Nat
but is expected to have type
  Nat
-/
#guard_msgs in example : Nat := any_nat

/-! ## `instance_wanted`

A wanted typeclass instance is registered like `instance`, so Lean's typeclass synth can find it in
later wanted declarations with no explicit `❰…❱`. This is *include-on-use* (like `variable [inst]`):
a later declaration carries the instance binder only when its statement or body actually needs it. -/

namespace InstWantedTests
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefWanted/Variantf7b04a4dc22f7e31733c3fa4564339397a385fdf8137342f41ecd896c3b1cf82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefWanted/Variantf7b04a4dc22f7e31733c3fa4564339397a385fdf8137342f41ecd896c3b1cf82.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6aa0ca7571e1f9dd05301ca5ad7f8d72c6895cb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
