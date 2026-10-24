# transitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee7672a409b73e26317d35a2bd88eb6279834245",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f3b57db8ea073d7ebc84734c0894a1b642d2f01b93142f435319f533a642d26f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f2dcb59-2348-63e8-d547-d41f01bb7af2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1da0bdfb-4215-bfab-1795-3de4426c3120",
  "kind": "lemma",
  "lexical_name": "transitive",
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
  "slug": "transitive--183269d83c55ab51c97b7c2b",
  "source": {
    "blob": "ee7672a409b73e26317d35a2bd88eb6279834245",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 63,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Congruence/Variantf3b57db8ea073d7ebc84734c0894a1b642d2f01b93142f435319f533a642d26f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:183269d83c55ab51c97b7c2b603bf3af718debcb398c212e937d8fb8e13aa619",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Congruence/Variantf3b57db8ea073d7ebc84734c0894a1b642d2f01b93142f435319f533a642d26f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1da0bdfb-4215-bfab-1795-3de4426c3120`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma transitive {r : α → α → Prop}
    (h₂ : ∀ ⦃x y : α⦄, r x y ↔ r (x ⊓ y) (x ⊔ y))
    (h₃ : ∀ ⦃x y z : α⦄, x ≤ y → y ≤ z → r x y → r y z → r x z)
    (h₄ : ∀ ⦃x y t : α⦄, x ≤ y → r x y → r (x ⊓ t) (y ⊓ t) ∧ r (x ⊔ t) (y ⊔ t)) :
    ∀ {x y z : α}, r x y → r y z → r x z := by
  intro x y z hxy hyz
  exact closed_interval h₂ h₄ (x ⊓ y ⊓ z) _ _ (x ⊔ y ⊔ z) (by simp [inf_assoc, inf_le_left])
    (by simp [sup_assoc, le_sup_left]) inf_le_right le_sup_right
    (h₃ (by simpa [inf_assoc] using inf_le_of_right_le inf_le_sup)
    (by simp [sup_assoc, le_sup_right]) (h₃
    (by simpa [inf_assoc] using inf_le_right (b := y ⊓ z)) inf_le_sup (by
      suffices r (x ⊓ y ⊓ (y ⊓ z)) ((x ⊔ y) ⊓ (y ⊓ z)) by
        rw [inf_comm x, inf_assoc]
        simpa [inf_comm x, ← inf_inf_distrib_left] using this
      exact (h₄ inf_le_sup (h₂.mp hxy)).1) (h₂.mp hyz)) (by
        simpa [sup_comm y x, sup_sup_distrib_left y x z, sup_assoc] using
          ((h₄ inf_le_sup (h₂.mp hxy)).2 : r (x ⊓ y ⊔ (y ⊔ z)) (x ⊔ y ⊔ (y ⊔ z)))))

/-- Alternative conditions for a lattice congruence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Congruence/Variantf3b57db8ea073d7ebc84734c0894a1b642d2f01b93142f435319f533a642d26f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Congruence/Variantf3b57db8ea073d7ebc84734c0894a1b642d2f01b93142f435319f533a642d26f.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee7672a409b73e26317d35a2bd88eb6279834245` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
