# map_fst_le_of_subset_toEnumFinset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2af1708d-acbf-8d54-f853-b66f6e058937",
  "kind": "lemma",
  "lexical_name": "map_fst_le_of_subset_toEnumFinset",
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
  "slug": "map-fst-le-of-subset-toenumfinset--345ecbff2114c3cc57ccef4d",
  "source": {
    "blob": "ac80571d69ae61d9c80d9a0c7c200ed665254ccb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 119,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:345ecbff2114c3cc57ccef4d73da5d61fba882b63b02515ad2884732e2aac958",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2af1708d-acbf-8d54-f853-b66f6e058937`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma map_fst_le_of_subset_toEnumFinset {s : Finset (α × ℕ)} (hsm : s ⊆ m.toEnumFinset) :
    s.1.map Prod.fst ≤ m := by
  simp_rw [le_iff_count, count_map]
  rintro a
  obtain ha | ha := (s.1.filter fun x ↦ a = x.1).card.eq_zero_or_pos
  · rw [ha]
    exact Nat.zero_le _
  obtain ⟨n, han, hn⟩ : ∃ n ≥ card (s.1.filter fun x ↦ a = x.1) - 1, (a, n) ∈ s := by
    by_contra! h
    replace h : {x ∈ s | x.1 = a} ⊆ {a} ×ˢ .range (card (s.1.filter fun x ↦ a = x.1) - 1) := by
      simpa +contextual [forall_swap (β := _ = a), Finset.subset_iff,
        imp_not_comm, not_le, Nat.lt_sub_iff_add_lt] using h
    have : card (s.1.filter fun x ↦ a = x.1) ≤ card (s.1.filter fun x ↦ a = x.1) - 1 := by
      simpa [Finset.card, eq_comm] using Finset.card_mono h
    omega
  exact Nat.le_of_pred_lt (han.trans_lt <| by simpa using hsm hn)

@[mono]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Fintype/Variantc4935e71b8e875914726525764309efb5a42687418949c036e097eaecfb28dc5.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac80571d69ae61d9c80d9a0c7c200ed665254ccb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
