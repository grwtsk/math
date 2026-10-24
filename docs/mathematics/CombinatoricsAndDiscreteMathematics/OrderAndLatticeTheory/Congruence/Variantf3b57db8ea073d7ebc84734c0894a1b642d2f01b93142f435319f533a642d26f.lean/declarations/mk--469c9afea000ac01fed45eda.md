# mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8105506517573240b466ee67f62be12b4b878b2b8d74632a58d95905689639f",
  "kind": "def",
  "lexical_name": "mk'",
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
  "slug": "mk--469c9afea000ac01fed45eda",
  "source": {
    "blob": "ee7672a409b73e26317d35a2bd88eb6279834245",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 82,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Congruence/Variantf3b57db8ea073d7ebc84734c0894a1b642d2f01b93142f435319f533a642d26f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:469c9afea000ac01fed45eda6ebd002522434cd45b5af015ff1cd4fd676f5f82",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Congruence/Variantf3b57db8ea073d7ebc84734c0894a1b642d2f01b93142f435319f533a642d26f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8105506517573240b466ee67f62be12b4b878b2b8d74632a58d95905689639f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[no_expose] def mk' (r : α → α → Prop) [h₁ : Std.Refl r]
    (h₂ : ∀ ⦃x y : α⦄, r x y ↔ r (x ⊓ y) (x ⊔ y))
    (h₃ : ∀ ⦃x y z : α⦄, x ≤ y → y ≤ z → r x y → r y z → r x z)
    (h₄ : ∀ ⦃x y t : α⦄, x ≤ y → r x y → r (x ⊓ t) (y ⊓ t) ∧ r (x ⊔ t) (y ⊔ t)) : LatticeCon α where
  r := r
  iseqv.refl := h₁.refl
  iseqv.symm h := by simpa [h₂, inf_comm, sup_comm, ← h₂] using h
  iseqv.trans hxy hxz := transitive h₂ h₃ h₄ hxy hxz
  inf := by
    intro w _ _ _ h1 h2
    have compatible_left_inf {x y t : α} (hh : r x y) : r (x ⊓ t) (y ⊓ t) :=
      closed_interval h₂ h₄ ((x ⊓ y) ⊓ t) _ _ ((x ⊔ y) ⊓ t)
            (inf_le_inf_right _ inf_le_left) (inf_le_inf_right _ le_sup_left)
            (inf_le_inf_right _ inf_le_right) (inf_le_inf_right _ le_sup_right)
            (h₄ inf_le_sup (h₂.mp hh)).1
    exact transitive h₂ h₃ h₄ (by
          simpa [inf_comm w] using compatible_left_inf h2) (compatible_left_inf h1)
  sup := by
    intro w _ _ _ h1 h2
    have compatible_left_sup {x y t : α} (hh : r x y) : r (x ⊔ t) (y ⊔ t) :=
      closed_interval h₂ h₄ ((x ⊓ y) ⊔ t) _ _ ((x ⊔ y) ⊔ t)
        (sup_le_sup_right inf_le_left _) (sup_le_sup_right le_sup_left _)
        (sup_le_sup_right inf_le_right _) (sup_le_sup_right le_sup_right _)
        (h₄ inf_le_sup (h₂.mp hh)).2
    exact transitive h₂ h₃ h₄ (by
      simpa [sup_comm w] using compatible_left_sup h2)
      (compatible_left_sup h1)

variable [FunLike F α β]

open Function

/-- The kernel of a lattice homomorphism as a lattice congruence. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Congruence/Variantf3b57db8ea073d7ebc84734c0894a1b642d2f01b93142f435319f533a642d26f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Congruence/Variantf3b57db8ea073d7ebc84734c0894a1b642d2f01b93142f435319f533a642d26f.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee7672a409b73e26317d35a2bd88eb6279834245` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
