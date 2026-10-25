# cmp_compares

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "662748c0fa51663685efded4a2e2a9ee5ad80563",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 324,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1bff2a5e6a91037db6db279fa420f9657f8b1440f19b36798acf926ef330e922.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98357c69-4212-b26b-b322-9a03960a43fb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e9d7f713-cb10-2cc2-820e-5f07a8856f99",
  "kind": "theorem",
  "lexical_name": "cmp_compares",
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
  "slug": "cmp-compares--a00a942ef10c51aeaa161358",
  "source": {
    "blob": "662748c0fa51663685efded4a2e2a9ee5ad80563",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 324,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant1bff2a5e6a91037db6db279fa420f9657f8b1440f19b36798acf926ef330e922.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a00a942ef10c51aeaa161358af9af015d0de297fb2264024d22683a6ce05dfdd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant1bff2a5e6a91037db6db279fa420f9657f8b1440f19b36798acf926ef330e922.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9d7f713-cb10-2cc2-820e-5f07a8856f99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cmp_compares : ∀ (a b : ONote) [NF a] [NF b], (cmp a b).Compares a b
  | 0, 0, _, _ => rfl
  | oadd e n a, 0, _, _ => oadd_pos _ _ _
  | 0, oadd e n a, _, _ => oadd_pos _ _ _
  | o₁@(oadd e₁ n₁ a₁), o₂@(oadd e₂ n₂ a₂), h₁, h₂ => by -- TODO: golf
    rw [cmp]
    have IHe := @cmp_compares _ _ h₁.fst h₂.fst
    simp [Ordering.Compares] at IHe; revert IHe
    cases cmp e₁ e₂
    case lt => intro IHe; exact oadd_lt_oadd_1 h₁ IHe
    case gt => intro IHe; exact oadd_lt_oadd_1 h₂ IHe
    case eq =>
      intro IHe; dsimp at IHe; subst IHe
      unfold _root_.cmp; cases nh : cmpUsing (· < ·) (n₁ : ℕ) n₂ <;>
      rw [cmpUsing, ite_eq_iff, not_lt] at nh
      case lt =>
        cases' nh with nh nh
        · exact oadd_lt_oadd_2 h₁ nh.left
        · rw [ite_eq_iff] at nh; cases' nh.right with nh nh <;> cases nh <;> contradiction
      case gt =>
        cases' nh with nh nh
        · cases nh; contradiction
        · cases' nh with _ nh
          rw [ite_eq_iff] at nh; cases' nh with nh nh
          · exact oadd_lt_oadd_2 h₂ nh.left
          · cases nh; contradiction
      cases' nh with nh nh
      · cases nh; contradiction
      cases' nh with nhl nhr
      rw [ite_eq_iff] at nhr
      cases' nhr with nhr nhr
      · cases nhr; contradiction
      obtain rfl := Subtype.eq (eq_of_incomp ⟨(not_lt_of_ge nhl), nhr.left⟩)
      have IHa := @cmp_compares _ _ h₁.snd h₂.snd
      revert IHa; cases cmp a₁ a₂ <;> intro IHa <;> dsimp at IHa
      case lt => exact oadd_lt_oadd_3 IHa
      case gt => exact oadd_lt_oadd_3 IHa
      subst IHa; exact rfl
#align onote.cmp_compares ONote.cmp_compares

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant1bff2a5e6a91037db6db279fa420f9657f8b1440f19b36798acf926ef330e922.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant1bff2a5e6a91037db6db279fa420f9657f8b1440f19b36798acf926ef330e922.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `662748c0fa51663685efded4a2e2a9ee5ad80563` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
