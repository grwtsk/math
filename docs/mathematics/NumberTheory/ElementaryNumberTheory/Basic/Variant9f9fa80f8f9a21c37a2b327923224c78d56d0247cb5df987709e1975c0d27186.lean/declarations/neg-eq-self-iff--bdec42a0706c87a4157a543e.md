# neg_eq_self_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e8439286e7193cad4ff3402dbea7cff2af16dda3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 824,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f9fa80f8f9a21c37a2b327923224c78d56d0247cb5df987709e1975c0d27186.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca172ca0-82f2-6c71-17a8-67866a0bd1d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f9c2e00c-0b6e-a15b-28b1-47db8fa00b4f",
  "kind": "theorem",
  "lexical_name": "neg_eq_self_iff",
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
  "slug": "neg-eq-self-iff--bdec42a0706c87a4157a543e",
  "source": {
    "blob": "e8439286e7193cad4ff3402dbea7cff2af16dda3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 851,
    "line": 824,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant9f9fa80f8f9a21c37a2b327923224c78d56d0247cb5df987709e1975c0d27186.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdec42a0706c87a4157a543e84203d23a2bc393c3487f9f82e3d464476158b11",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant9f9fa80f8f9a21c37a2b327923224c78d56d0247cb5df987709e1975c0d27186.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9c2e00c-0b6e-a15b-28b1-47db8fa00b4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 824–851.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem neg_eq_self_iff {n : ℕ} (a : ZMod n) : -a = a ↔ a = 0 ∨ 2 * a.val = n := by
  rw [neg_eq_iff_add_eq_zero, ← two_mul]
  cases n
  · erw [@mul_eq_zero ℤ, @mul_eq_zero ℕ, val_eq_zero]
    exact
      ⟨fun h => h.elim (by simp) Or.inl, fun h =>
        Or.inr (h.elim id fun h => h.elim (by simp) id)⟩
  conv_lhs =>
    rw [← a.nat_cast_zmod_val, ← Nat.cast_two, ← Nat.cast_mul, nat_cast_zmod_eq_zero_iff_dvd]
  constructor
  · rintro ⟨m, he⟩
    cases' m with m
    · erw [mul_zero, mul_eq_zero] at he
      rcases he with (⟨⟨⟩⟩ | he)
      exact Or.inl (a.val_eq_zero.1 he)
    cases m
    · right
      rwa [show Nat.succ Nat.zero = 1 from rfl, mul_one] at he
    refine' (a.val_lt.not_le <| Nat.le_of_mul_le_mul_left _ zero_lt_two).elim
    rw [he, mul_comm]
    apply Nat.mul_le_mul_left
    erw [Nat.succ_le_succ_iff, Nat.succ_le_succ_iff]; simp
  · rintro (rfl | h)
    · rw [val_zero, mul_zero]
      apply dvd_zero
    · rw [h]
#align zmod.neg_eq_self_iff ZMod.neg_eq_self_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant9f9fa80f8f9a21c37a2b327923224c78d56d0247cb5df987709e1975c0d27186.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant9f9fa80f8f9a21c37a2b327923224c78d56d0247cb5df987709e1975c0d27186.lean#L824).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8439286e7193cad4ff3402dbea7cff2af16dda3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
