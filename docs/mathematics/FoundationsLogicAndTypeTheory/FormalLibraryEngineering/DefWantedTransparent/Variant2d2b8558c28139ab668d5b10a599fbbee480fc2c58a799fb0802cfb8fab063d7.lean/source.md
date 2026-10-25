# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DefWantedTransparent.Variant2d2b8558c28139ab668d5b10a599fbbee480fc2c58a799fb0802cfb8fab063d7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58e86d12de536c86dbea2e879429b31e3596455d` · SHA-256 `ecef65b32076e48db7d256c1788acc9fad827a4b5b353d76ddeb1dfa25a5f4ef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cls.Variant9ccbab94fb3240f3cd9e2146283e745dc621fb2101920be8316f2b2f602176f2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9ccbab94fb3240f3cd9e2146283e745dc621fb2101920be8316f2b2f602176f2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Cls.Variant9ccbab94fb3240f3cd9e2146283e745dc621fb2101920be8316f2b2f602176f2","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"9ccbab94fb3240f3cd9e2146283e745dc621fb2101920be8316f2b2f602176f2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/def_wanted_transparent.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Util.ProofWanted

/-!
# Tests for transparent (body-ful) `def_wanted`

A `def_wanted` *with a body* is **transparent**: emitted as a genuine `@[reducible]` definition
wrapped in `DerivedWanted`, with `❰foo❱` inlining it (projecting the carried value). This makes
`❰foo❱` definitionally equal to its body — so derived accessors over opaque holes compose — while
keeping the placeholder unusable as a direct inhabitant of its type and introducing no `axiom`/`sorry`.
A bodyless `def_wanted` stays an opaque `DefWanted` hole.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cls.Variant9ccbab94fb3240f3cd9e2146283e745dc621fb2101920be8316f2b2f602176f2

namespace TransparentTests

universe u

/-- An opaque leaf hole (think: a bundled "functor"). -/
def_wanted F (k : Type u) : Type u → Type u

/-- A transparent derived declaration built from the hole. -/
def_wanted G (k : Type u) (x : Type u) : Type u := (❰F❱ k) x

/-! ## Definitional transparency

`❰G❱` βιδ-reduces to its body, so these `rfl`s type-check — the whole point of transparency. -/

theorem_wanted G_defeq (k x : Type u) : ❰G❱ k x = (❰F❱ k) x := rfl

/-! Transparency composes through the elaborator's machinery on the *concerning* shapes. -/

/-- implicit user argument, inferred through the inlined reference -/
def_wanted Gi {α : Type u} (_a : α) : Type u := (❰F❱ α) α
theorem_wanted Gi_defeq {α : Type u} (a : α) : ❰Gi❱ a = (❰F❱ α) α := rfl

/-- instance user argument: synthesised from context and threaded through the inlined lambda -/
class Cls (α : Type u) : Prop
def_wanted Gc (α : Type u) [Cls α] : Type u := (❰F❱ α) α
theorem_wanted Gc_defeq (α : Type u) [Cls α] : ❰Gc❱ α = (❰F❱ α) α := rfl

/-- transitive: transparent → transparent → hole inlines down to the leaf -/
def_wanted G2 (k x : Type u) : Type u := (❰G❱ k x)
theorem_wanted G2_defeq (k x : Type u) : ❰G2❱ k x = (❰F❱ k) x := rfl

/-! Referencing a *universe-polymorphic* transparent def at a *concrete* universe. The referenced
decl's level params must be rewritten to holes in the inlined binder types; otherwise the fixed
`Type` here clashes with the reference's `Type u` (regression: this used to fail "Type vs Type u"). -/

def_wanted Gconcrete : Type := (❰G❱ Nat Nat)
theorem_wanted Gconcrete_defeq : ❰Gconcrete❱ = (❰F❱ Nat) Nat := rfl

/-! ## The bundled-accessor pattern

A wanted *instance* whose payload mentions a transparent reference is well-formed (because the
reference is a real value), and is usable at the transparent value's unfolding. This is the shape
that makes a bundled `Functor`-valued hole usable as `GrpObj (Jacobian C)` downstream. -/

instance_wanted gInst (k x : Type u) : Inhabited (❰G❱ k x)
def_wanted gInst_use (k x : Type u) : Inhabited ((❰F❱ k) x) := ❰gInst❱ k x

/-! ## Obfuscation

A transparent `def_wanted` is a `DerivedWanted`-wrapped placeholder, not a usable value of its type:
it cannot be used directly, only via `❰…❱`. -/

/--
info: G : Type u_1 → Type u_1 → {d_F : (k : Type u_1) → (F k).Val} → DerivedWanted (Type u_1)
-/
#guard_msgs in #check @G

/--
error: Type mismatch
  G
has type
  Type → Type → {d_F : (k : Type) → (F k).Val} → DerivedWanted Type
but is expected to have type
  Type → Type
-/
#guard_msgs in example : Type → Type := G

/-! ## Soundness: no axioms

The transparent machinery is axiom-free — a transparent def is a real definition parametrised over
its opaque holes. -/

/--
info: '_private.BatteriesTest.def_wanted_transparent.0.TransparentTests.G_defeq' does not depend on any axioms
-/
#guard_msgs in #print axioms G_defeq

/--
info: '_private.BatteriesTest.def_wanted_transparent.0.TransparentTests.G2_defeq' does not depend on any axioms
-/
#guard_msgs in #print axioms G2_defeq

end TransparentTests
```
