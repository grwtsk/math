# perm_eraseIdx_of_getElem?_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "923c1c300d4a3065d5bb567287cee78a3fb0cccc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d61d349f9cd785d5ca6af9f3e88ef9f9ed533a25ece77575578cc3b29970e4e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bdeef385-20db-76fc-a718-acedd73ef7fa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:567310f4-aa41-93f1-d1f5-e8a45b9e8c64",
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
  "slug": "perm-eraseidx-of-getelem-eq--32302c0cef2e2acd0a2a25bc",
  "source": {
    "blob": "923c1c300d4a3065d5bb567287cee78a3fb0cccc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 86,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd61d349f9cd785d5ca6af9f3e88ef9f9ed533a25ece77575578cc3b29970e4e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32302c0cef2e2acd0a2a25bcce09f26244f4caa11b22504b08457bab465357d5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd61d349f9cd785d5ca6af9f3e88ef9f9ed533a25ece77575578cc3b29970e4e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:567310f4-aa41-93f1-d1f5-e8a45b9e8c64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–108.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd61d349f9cd785d5ca6af9f3e88ef9f9ed533a25ece77575578cc3b29970e4e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd61d349f9cd785d5ca6af9f3e88ef9f9ed533a25ece77575578cc3b29970e4e1.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `923c1c300d4a3065d5bb567287cee78a3fb0cccc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
