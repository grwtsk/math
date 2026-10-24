# IsMinor.exists_eq_contract_delete_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1e0a79f-8758-12d8-ebb5-87aa4e90c8f3",
  "kind": "lemma",
  "lexical_name": "IsMinor.exists_eq_contract_delete_disjoint",
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
  "slug": "isminor-exists-eq-contract-delete-disjoint--b379713c87bb37924e2df527",
  "source": {
    "blob": "81eb5a1c7eecc9337021cdbad7cd96d297c90035",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 65,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b379713c87bb37924e2df527b9aaa514410830b0e2659be1f6fe2ad72077b795",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1e0a79f-8758-12d8-ebb5-87aa4e90c8f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsMinor.exists_eq_contract_delete_disjoint (h : N ≤m M) :
    ∃ (C D : Set α), C ⊆ M.E ∧ D ⊆ M.E ∧ Disjoint C D ∧ N = M ／ C ＼ D := by
  obtain ⟨C, D, rfl⟩ := h
  exact ⟨C ∩ M.E, (D ∩ M.E) \ C, inter_subset_right, sdiff_subset.trans inter_subset_right,
    disjoint_sdiff_right.mono_left inter_subset_left,
    by simp [delete_eq_delete_iff, inter_assoc, inter_sdiff_assoc]⟩

/-- `N` is a strict minor of `M` if `N` is a minor of `M` and `N ≠ M`.
Equivalently, `N` is obtained from `M` by deleting/contracting subsets of the ground set
that are not both empty. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantd9cda38a3321a76c394250dfb36753458a276ac0e6057ce2e4a8347dbeb5574d.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81eb5a1c7eecc9337021cdbad7cd96d297c90035` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
