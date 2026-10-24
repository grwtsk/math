# perm_eraseIdx_of_getElem?_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a65f7b6d24cd6a8e4fc494d522a0713dffa8fb6c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24aac5b75ae5f9b03626ded0004785bc8c4800b5738c24e5b15d0168034e235f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19edb812-eff7-e9ee-8c6b-4413706fa4fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dcb48755-5333-29ac-2a3a-3497467eb7c0",
  "kind": "theorem",
  "lexical_name": "perm_eraseIdx_of_getElem?_eq",
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
  "slug": "perm-eraseidx-of-getelem-eq--86a2c3bdb8e542f476579a4f",
  "source": {
    "blob": "a65f7b6d24cd6a8e4fc494d522a0713dffa8fb6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 97,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant24aac5b75ae5f9b03626ded0004785bc8c4800b5738c24e5b15d0168034e235f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86a2c3bdb8e542f476579a4f23adb797d7ce3a9879111acf79a8db98881d5498",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant24aac5b75ae5f9b03626ded0004785bc8c4800b5738c24e5b15d0168034e235f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcb48755-5333-29ac-2a3a-3497467eb7c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perm_eraseIdx_of_getElem?_eq {l₁ l₂ : List α} {m n : ℕ} (h : l₁[m]? = l₂[n]?) :
    eraseIdx l₁ m ~ eraseIdx l₂ n ↔ l₁ ~ l₂ := by
  cases Nat.lt_or_ge m l₁.length with
  | inl hm =>
    rw [getElem?_eq_getElem hm, eq_comm, getElem?_eq_some_iff] at h
    cases h with
    | intro hn hnm =>
      rw [← perm_cons l₁[m], rel_congr_left (getElem_cons_eraseIdx_perm ..), ← hnm,
        rel_congr_right (getElem_cons_eraseIdx_perm ..)]
  | inr hm =>
    rw [getElem?_eq_none hm, eq_comm, getElem?_eq_none_iff] at h
    rw [eraseIdx_of_length_le h, eraseIdx_of_length_le hm]

alias ⟨_, Perm.eraseIdx_of_getElem?_eq⟩ := perm_eraseIdx_of_getElem?_eq

section Rel

open Relator

variable {r : α → β → Prop}

local infixr:80 " ∘r " => Relation.Comp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant24aac5b75ae5f9b03626ded0004785bc8c4800b5738c24e5b15d0168034e235f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant24aac5b75ae5f9b03626ded0004785bc8c4800b5738c24e5b15d0168034e235f.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a65f7b6d24cd6a8e4fc494d522a0713dffa8fb6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
