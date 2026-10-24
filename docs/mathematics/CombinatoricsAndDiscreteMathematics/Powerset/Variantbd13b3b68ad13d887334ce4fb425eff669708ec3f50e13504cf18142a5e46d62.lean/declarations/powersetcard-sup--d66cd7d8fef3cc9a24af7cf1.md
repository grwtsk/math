# powersetCard_sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4743c5ba-bb4c-e9bf-9ddf-0aba3b88a3b5",
  "kind": "theorem",
  "lexical_name": "powersetCard_sup",
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
  "slug": "powersetcard-sup--d66cd7d8fef3cc9a24af7cf1",
  "source": {
    "blob": "cdb4b38b9d6d328acf0838833c9b696a1a76a151",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 293,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variantbd13b3b68ad13d887334ce4fb425eff669708ec3f50e13504cf18142a5e46d62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d66cd7d8fef3cc9a24af7cf17f4ba4a62f6d97becea3b52083ba8423d2bae125",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Powerset/Variantbd13b3b68ad13d887334ce4fb425eff669708ec3f50e13504cf18142a5e46d62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4743c5ba-bb4c-e9bf-9ddf-0aba3b88a3b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem powersetCard_sup [DecidableEq α] (u : Finset α) (n : ℕ) (hn : n < u.card) :
    (powersetCard n.succ u).sup id = u := by
  apply le_antisymm
  · simp_rw [Finset.sup_le_iff, mem_powersetCard]
    rintro x ⟨h, -⟩
    exact h
  · rw [sup_eq_biUnion, le_iff_subset, subset_iff]
    intro x hx
    simp only [mem_biUnion, exists_prop, id]
    obtain ⟨t, ht⟩ : ∃ t, t ∈ powersetCard n (u.erase x) := powersetCard_nonempty.2
      (le_trans (Nat.le_sub_one_of_lt hn) pred_card_le_card_erase)
    refine ⟨insert x t, ?_, mem_insert_self _ _⟩
    rw [← insert_erase hx, powersetCard_succ_insert (notMem_erase _ _)]
    exact mem_union_right _ (mem_image_of_mem _ ht)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Powerset/Variantbd13b3b68ad13d887334ce4fb425eff669708ec3f50e13504cf18142a5e46d62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variantbd13b3b68ad13d887334ce4fb425eff669708ec3f50e13504cf18142a5e46d62.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdb4b38b9d6d328acf0838833c9b696a1a76a151` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
