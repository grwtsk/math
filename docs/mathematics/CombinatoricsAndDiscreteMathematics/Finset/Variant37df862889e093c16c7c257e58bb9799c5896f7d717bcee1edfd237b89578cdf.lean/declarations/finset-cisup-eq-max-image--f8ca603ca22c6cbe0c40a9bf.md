# Finset.ciSup_eq_max'_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "118224acb470fe7c28b7f6460ce93f05ad6b6299",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8cfeaaef-a063-e646-121d-c3986176c3d4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2f2cc717-f5d0-6943-18a3-489c03d5b755",
  "kind": "theorem",
  "lexical_name": "Finset.ciSup_eq_max'_image",
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
  "slug": "finset-cisup-eq-max-image--f8ca603ca22c6cbe0c40a9bf",
  "source": {
    "blob": "118224acb470fe7c28b7f6460ce93f05ad6b6299",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 90,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8ca603ca22c6cbe0c40a9bf3bf432e080dea79296d7a268fe944af67d86020c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f2cc717-f5d0-6943-18a3-489c03d5b755`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Finset.ciSup_eq_max'_image {s : Finset ι} (h : ∃ x ∈ s, sSup ∅ ≤ f x)
    (h' : (s.image f).Nonempty := by exact image_nonempty.mpr (h.imp fun _ ↦ And.left)) :
    ⨆ i ∈ s, f i = (s.image f).max' h' := by
  classical
  rw [iSup, ← h'.csSup_eq_max', coe_image]
  refine csSup_eq_csSup_of_forall_exists_le ?_ ?_
  · simp only [ciSup_eq_ite, dite_eq_ite, Set.mem_range, Set.mem_image, mem_coe,
      exists_exists_and_eq_and, forall_exists_index, forall_apply_eq_imp_iff]
    intro i
    split_ifs
    · exact ⟨_, by assumption, le_rfl⟩
    · assumption
  · simp only [Set.mem_image, mem_coe, ciSup_eq_ite, dite_eq_ite, Set.mem_range,
      exists_exists_eq_and, forall_exists_index, and_imp, forall_apply_eq_imp_iff₂]
    intro i hi
    refine ⟨i, ?_⟩
    simp [hi]

@[to_dual]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant37df862889e093c16c7c257e58bb9799c5896f7d717bcee1edfd237b89578cdf.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `118224acb470fe7c28b7f6460ce93f05ad6b6299` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
