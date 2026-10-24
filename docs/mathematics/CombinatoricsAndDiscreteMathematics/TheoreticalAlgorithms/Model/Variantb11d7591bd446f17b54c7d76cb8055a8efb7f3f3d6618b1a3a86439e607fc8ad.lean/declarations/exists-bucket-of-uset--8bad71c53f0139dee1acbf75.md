# exists_bucket_of_uset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "528f47ab01ff5445a14fc8945038fcd0aef051c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b11d7591bd446f17b54c7d76cb8055a8efb7f3f3d6618b1a3a86439e607fc8ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fed44fb0-d47d-7846-bf8f-3ad7b3eaede8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2829d17d-d2e0-1b26-0cb4-4a7c351b2dca",
  "kind": "theorem",
  "lexical_name": "exists_bucket_of_uset",
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
  "slug": "exists-bucket-of-uset--8bad71c53f0139dee1acbf75",
  "source": {
    "blob": "528f47ab01ff5445a14fc8945038fcd0aef051c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 104,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Model/Variantb11d7591bd446f17b54c7d76cb8055a8efb7f3f3d6618b1a3a86439e607fc8ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bad71c53f0139dee1acbf75411c8859c0ccda5c92ea99d5ab6598f9c3652421",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Model/Variantb11d7591bd446f17b54c7d76cb8055a8efb7f3f3d6618b1a3a86439e607fc8ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2829d17d-d2e0-1b26-0cb4-4a7c351b2dca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_bucket_of_uset [BEq α] [Hashable α]
  (self : Array (AssocList α β)) (i : USize) (hi : i.toNat < self.size) (d : AssocList α β) :
    ∃ l, Perm (toListModel self) (self[i.toNat].toList ++ l) ∧
      Perm (toListModel (self.uset i d hi)) (d.toList ++ l) ∧
      (∀ [LawfulHashable α], IsHashSelf self →
        ∀ k : α, (mkIdx self.size (by omega) (hash k)).1.toNat = i.toNat →
          containsKey k l = false) := by
  have h₀ : 0 < self.size := by omega
  obtain ⟨l₁, l₂, h₁, h₂, h₃⟩ := Array.exists_of_uset hi
  refine ⟨l₁.flatMap AssocList.toList ++ l₂.flatMap AssocList.toList, ?_, ?_, ?_⟩
  · rw [toListModel, h₁]
    simpa using perm_append_comm_assoc _ _ _
  · rw [toListModel, h₃]
    simpa using perm_append_comm_assoc _ _ _
  · intro _ h k hki
    simp only [containsKey_append, Bool.or_eq_false_iff]
    refine ⟨?_, ?_⟩
    · apply List.containsKey_flatMap_eq_false
      intro j hj
      rw [List.getElem_append_left' (l₂ := self[i] :: l₂), getElem_congr_coll h₁.symm]
      apply (h.hashes_to j _).containsKey_eq_false h₀ k
      omega
    · apply List.containsKey_flatMap_eq_false
      intro j hj
      rw [← List.getElem_cons_succ self[i] _ _
        (by simp only [Array.ugetElem_eq_getElem, List.length_cons]; omega)]
      rw [List.getElem_append_right' l₁, getElem_congr_coll h₁.symm]
      apply (h.hashes_to (j + 1 + l₁.length) _).containsKey_eq_false h₀ k
      omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Model/Variantb11d7591bd446f17b54c7d76cb8055a8efb7f3f3d6618b1a3a86439e607fc8ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Model/Variantb11d7591bd446f17b54c7d76cb8055a8efb7f3f3d6618b1a3a86439e607fc8ad.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `528f47ab01ff5445a14fc8945038fcd0aef051c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
