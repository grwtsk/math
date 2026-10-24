# powersetLen_sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0e55385-077b-1552-6541-fe667c3162f2",
  "kind": "theorem",
  "lexical_name": "powersetLen_sup",
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
  "slug": "powersetlen-sup--2056819e1d3dd021b3ed4a8a",
  "source": {
    "blob": "331a456b907a692ecc21ab6a0aeae1a050fc1bd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 309,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2056819e1d3dd021b3ed4a8a1b23e3a4bac9fb3ebe3ff0a323b3769c9dae6d56",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0e55385-077b-1552-6541-fe667c3162f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem powersetLen_sup [DecidableEq α] (u : Finset α) (n : ℕ) (hn : n < u.card) :
    (powersetLen n.succ u).sup id = u := by
  apply le_antisymm
  · simp_rw [Finset.sup_le_iff, mem_powersetLen]
    rintro x ⟨h, -⟩
    exact h
  · rw [sup_eq_biUnion, le_iff_subset, subset_iff]
    cases' (Nat.succ_le_of_lt hn).eq_or_lt with h' h'
    · simp [h']
    · intro x hx
      simp only [mem_biUnion, exists_prop, id.def]
      obtain ⟨t, ht⟩ : ∃ t, t ∈ powersetLen n (u.erase x) := powersetLen_nonempty
        (le_trans (Nat.le_pred_of_lt hn) pred_card_le_card_erase)
      · refine' ⟨insert x t, _, mem_insert_self _ _⟩
        rw [← insert_erase hx, powersetLen_succ_insert (not_mem_erase _ _)]
        exact mem_union_right _ (mem_image_of_mem _ ht)
#align finset.powerset_len_sup Finset.powersetLen_sup

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `331a456b907a692ecc21ab6a0aeae1a050fc1bd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
