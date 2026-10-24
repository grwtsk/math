# noRepetition_append_cons_of_noRepetition_append_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61493a1b-4aeb-4f3d-684f-135847ef8dd5",
  "kind": "theorem",
  "lexical_name": "noRepetition_append_cons_of_noRepetition_append_singleton",
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
  "slug": "norepetition-append-cons-of-norepetition-append-singleton--ff5173408a276c0d8199e17d",
  "source": {
    "blob": "9b2a521c8e2c87c6b11c4d34b03718f7bc6548dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 87,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff5173408a276c0d8199e17dbc0e862afd701a1280c71ed36404faa6f2773469",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61493a1b-4aeb-4f3d-684f-135847ef8dd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem noRepetition_append_cons_of_noRepetition_append_singleton {α : Type u} {a : α} {l m : List α}
    (h : NoRepetition a (l ++ [a])) (h' : NoRepetition a (a :: m)) : NoRepetition a (l ++ a :: m) := by
  simp [noRepetition_iff] at h h' ⊢
  simp [List.infix_append_iff_ne_nil]
  refine ⟨(h <| List.infix_append_of_infix_left ·), h',
    fun l₁ hl₁ l₂ hl₂ h₁ h₂ h₃ => h (List.IsSuffix.isInfix ?_)⟩
  obtain ⟨rfl, rfl⟩ : l₁ = [a] ∧ l₂ = [a] := by
    match l₁, hl₁, l₂, hl₂ with
    | [b], _, [c], _ =>
      simp only [List.cons_append, List.nil_append, List.cons.injEq, and_true] at h₁
      obtain ⟨rfl, rfl⟩ := h₁
      simp
    | b::b'::bs, _, c::cs, _ => simp at h₁
  rwa [← List.singleton_append, List.suffix_append_self_iff]

end NoRepetition

namespace String.Slice

open Std.Do in
set_option mvcgen.warning false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b2a521c8e2c87c6b11c4d34b03718f7bc6548dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
