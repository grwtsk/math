# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:096f3811645908d5b38a436df1432a888835bf111f7054f81b211b88ede1b034",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--4f291906bd82fc316c6ff67f",
  "source": {
    "blob": "f9b6ae0314caa1b7973f6aedb33229fbb426b628",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 121,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tauto/Variant1450dae473227ea3c2a109716858721f9d5dd23ad2eea734f0516aecf497ab20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f291906bd82fc316c6ff67fd1fc0145c528ec075ca7483824a77ca0a5523c12",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tauto/Variant1450dae473227ea3c2a109716858721f9d5dd23ad2eea734f0516aecf497ab20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:096f3811645908d5b38a436df1432a888835bf111f7054f81b211b88ede1b034`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : ¬(¬a ≤ b ∧ a ≤ c ∨ ¬a ≤ c ∧ a ≤ b) ↔ a ≤ b ∧ a ≤ c ∨ ¬a ≤ c ∧ ¬a ≤ b :=
by tauto

end implementation_detail_ldecl

section modulo_symmetry
variable {p q r : Prop} {α : Type} {x y : α}
variable (h : x = y)
variable (h'' : (p ∧ q ↔ q ∨ r) ↔ (r ∧ p ↔ r ∨ q))

-- Currently this hits a "failed to show termination error"
-- because it erroneously used a recursive hypothesis.
-- See https://github.com/leanprover-community/mathlib4/issues/1061 and
-- https://github.com/leanprover/lean4/issues/1963
-- example (h' : ¬ y = x) : p ∧ q := by tauto

/-
example (h' : p ∧ ¬ y = x) : p ∧ q := by tauto
example : y = x := by tauto
example (h' : ¬ x = y) : p ∧ q := by tauto
example : x = y := by tauto
-/
end modulo_symmetry

section pair_eq_pair_iff

variable (α : Type)
variable (x y z w : α)

-- This example is taken from pair_eq_pair_iff in Data.Set.Basic.
-- It currently doesn't work because `tauto` does not apply `symm`.
--example : ((x = z ∨ x = w) ∧ (y = z ∨ y = w)) ∧
--           (z = x ∨ z = y) ∧ (w = x ∨ w = y) → x = z ∧ y = w ∨ x = w ∧ y = z :=
--by tauto

end pair_eq_pair_iff

end tauto₃

/-
section closer

example {α : Type _} {β : Type _} (a : α)
  {s_1 : set α} :
  (∃ (a_1 : α), a_1 = a ∨ a_1 ∈ s_1) :=
begin
  tauto {closer := `[simp]}
end

variables {p q r : Prop} {α : Type} {x y z w : α}
variables (h : x = y) (h₁ : y = z) (h₂ : z = w)
variables (h'' : (p ∧ q ↔ q ∨ r) ↔ (r ∧ p ↔ r ∨ q))
include h h₁ h₂ h''

example : (((r ∧ p ↔ r ∨ q) ∧ (q ∨ r)) → (p ∧ (x = w) ∧ (¬ x = w → p ∧ q ∧ r))) :=
begin
  tauto {closer := `[cc]}
end

end closer
-/

/-  Zulip discussion:
https://leanprover.zulipchat.com/#narrow/stream/113488-general/topic/tauto!.20fails.20on.20ne
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tauto/Variant1450dae473227ea3c2a109716858721f9d5dd23ad2eea734f0516aecf497ab20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tauto/Variant1450dae473227ea3c2a109716858721f9d5dd23ad2eea734f0516aecf497ab20.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9b6ae0314caa1b7973f6aedb33229fbb426b628` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
