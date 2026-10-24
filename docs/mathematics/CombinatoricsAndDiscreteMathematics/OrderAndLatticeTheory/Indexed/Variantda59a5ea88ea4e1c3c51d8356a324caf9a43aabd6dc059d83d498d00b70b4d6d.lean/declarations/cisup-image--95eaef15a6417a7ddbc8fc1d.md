# ciSup_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "98e12a32363fb2d3fd85eb0e4af6f5f3a597da20",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 273,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da59a5ea88ea4e1c3c51d8356a324caf9a43aabd6dc059d83d498d00b70b4d6d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de7e6529-cc52-82f2-528e-23923c8eca08",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d2240104-1d45-1e5f-0703-8c391a0a5e8d",
  "kind": "lemma",
  "lexical_name": "ciSup_image",
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
  "slug": "cisup-image--95eaef15a6417a7ddbc8fc1d",
  "source": {
    "blob": "98e12a32363fb2d3fd85eb0e4af6f5f3a597da20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 273,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indexed/Variantda59a5ea88ea4e1c3c51d8356a324caf9a43aabd6dc059d83d498d00b70b4d6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95eaef15a6417a7ddbc8fc1d91ab7d128d3f625ec2f86d51ddaf7090c7891979",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indexed/Variantda59a5ea88ea4e1c3c51d8356a324caf9a43aabd6dc059d83d498d00b70b4d6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2240104-1d45-1e5f-0703-8c391a0a5e8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ciSup_image {ι ι' : Type*} {s : Set ι} {f : ι → ι'} {g : ι' → α}
    (hf : BddAbove (Set.range fun i : s ↦ g (f i))) (hg' : sSup ∅ ≤ ⨆ i : s, g (f i)) :
    ⨆ i ∈ (f '' s), g i = ⨆ x ∈ s, g (f x) := by
  rcases s.eq_empty_or_nonempty with (rfl | hs)
  · rw [Set.image_empty, cbiSup_empty, cbiSup_empty]
  have hg : BddAbove (Set.range fun i : f '' s ↦ g i) := by
    simpa [bddAbove_def] using hf
  have hf' : sSup ∅ ≤ ⨆ i : f '' s, g i := by
    refine hg'.trans ?_
    have : Nonempty s := Set.Nonempty.to_subtype hs
    refine ciSup_le ?_
    intro ⟨i, h⟩
    obtain ⟨t, ht⟩ : ∃ t : f '' s, g t = g (f (Subtype.mk i h)) := by
      have : f i ∈ f '' s := Set.mem_image_of_mem _ h
      exact ⟨⟨f i, this⟩, by simp⟩
    rw [← ht]
    refine le_ciSup_set ?_ t.prop
    simpa [bddAbove_def] using hf
  rw [← csSup_image hg hf', ← csSup_image hf hg', ← Set.image_comp, comp_def]

@[to_dual ciInf_ciInf_eq_left_le]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indexed/Variantda59a5ea88ea4e1c3c51d8356a324caf9a43aabd6dc059d83d498d00b70b4d6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indexed/Variantda59a5ea88ea4e1c3c51d8356a324caf9a43aabd6dc059d83d498d00b70b4d6d.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98e12a32363fb2d3fd85eb0e4af6f5f3a597da20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
