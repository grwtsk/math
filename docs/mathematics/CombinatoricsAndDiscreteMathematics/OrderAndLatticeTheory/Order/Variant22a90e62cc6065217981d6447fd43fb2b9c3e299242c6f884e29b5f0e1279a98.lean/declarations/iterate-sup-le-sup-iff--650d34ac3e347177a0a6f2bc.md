# iterate_sup_le_sup_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2775d5a6f2cbf35d9f773bea455a601d84b27259",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/22a90e62cc6065217981d6447fd43fb2b9c3e299242c6f884e29b5f0e1279a98.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e8a18409-4701-240b-6105-d200231b8d04",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cff0e0f9-aa3d-06d3-379f-00ab43b8fd57",
  "kind": "theorem",
  "lexical_name": "iterate_sup_le_sup_iff",
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
  "slug": "iterate-sup-le-sup-iff--650d34ac3e347177a0a6f2bc",
  "source": {
    "blob": "2775d5a6f2cbf35d9f773bea455a601d84b27259",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 118,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant22a90e62cc6065217981d6447fd43fb2b9c3e299242c6f884e29b5f0e1279a98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:650d34ac3e347177a0a6f2bc887e7222a4eebf0b8f8bbd24f1eedfd52ba281ef",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant22a90e62cc6065217981d6447fd43fb2b9c3e299242c6f884e29b5f0e1279a98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cff0e0f9-aa3d-06d3-379f-00ab43b8fd57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iterate_sup_le_sup_iff {α : Type*} [SemilatticeSup α] (f : α →o α) :
    (∀ n₁ n₂ a₁ a₂, f^[n₁ + n₂] (a₁ ⊔ a₂) ≤ f^[n₁] a₁ ⊔ f^[n₂] a₂) ↔
      ∀ a₁ a₂, f (a₁ ⊔ a₂) ≤ f a₁ ⊔ a₂ := by
  constructor <;> intro h
  · exact h 1 0
  · intro n₁ n₂ a₁ a₂
    have h' : ∀ n a₁ a₂, f^[n] (a₁ ⊔ a₂) ≤ f^[n] a₁ ⊔ a₂ := by
      intro n
      induction n with
      | zero => intro a₁ a₂; rfl
      | succ n ih =>
        intro a₁ a₂
        calc
          f^[n + 1] (a₁ ⊔ a₂) = f^[n] (f (a₁ ⊔ a₂)) := Function.iterate_succ_apply f n _
          _ ≤ f^[n] (f a₁ ⊔ a₂) := f.mono.iterate n (h a₁ a₂)
          _ ≤ f^[n] (f a₁) ⊔ a₂ := ih _ _
          _ = f^[n + 1] a₁ ⊔ a₂ := by rw [← Function.iterate_succ_apply]
    calc
      f^[n₁ + n₂] (a₁ ⊔ a₂) = f^[n₁] (f^[n₂] (a₁ ⊔ a₂)) :=
        Function.iterate_add_apply f n₁ n₂ _
      _ = f^[n₁] (f^[n₂] (a₂ ⊔ a₁)) := by rw [sup_comm]
      _ ≤ f^[n₁] (f^[n₂] a₂ ⊔ a₁) := f.mono.iterate n₁ (h' n₂ _ _)
      _ = f^[n₁] (a₁ ⊔ f^[n₂] a₂) := by rw [sup_comm]
      _ ≤ f^[n₁] a₁ ⊔ f^[n₂] a₂ := h' n₁ a₁ _

end Preorder

end OrderHom
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant22a90e62cc6065217981d6447fd43fb2b9c3e299242c6f884e29b5f0e1279a98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant22a90e62cc6065217981d6447fd43fb2b9c3e299242c6f884e29b5f0e1279a98.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2775d5a6f2cbf35d9f773bea455a601d84b27259` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
