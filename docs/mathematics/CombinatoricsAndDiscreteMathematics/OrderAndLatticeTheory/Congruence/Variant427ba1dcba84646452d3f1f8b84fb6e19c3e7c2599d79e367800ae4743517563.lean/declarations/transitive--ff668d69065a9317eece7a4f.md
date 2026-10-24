# transitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a13a3c3e-e7ef-7bd5-d322-64a386ad0599",
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
  "slug": "transitive--ff668d69065a9317eece7a4f",
  "source": {
    "blob": "148a18cc31f7547b2aac0a6b5873ef21fd2e8e11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 71,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Congruence/Variant427ba1dcba84646452d3f1f8b84fb6e19c3e7c2599d79e367800ae4743517563.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff668d69065a9317eece7a4fdeb5885cf5861edf44e26406b0eaf8dcac13fb4f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Congruence/Variant427ba1dcba84646452d3f1f8b84fb6e19c3e7c2599d79e367800ae4743517563.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a13a3c3e-e7ef-7bd5-d322-64a386ad0599`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–89.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Congruence/Variant427ba1dcba84646452d3f1f8b84fb6e19c3e7c2599d79e367800ae4743517563.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Congruence/Variant427ba1dcba84646452d3f1f8b84fb6e19c3e7c2599d79e367800ae4743517563.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `148a18cc31f7547b2aac0a6b5873ef21fd2e8e11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
