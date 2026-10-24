# sumDualDistrib

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d92f50dd03c0d263500f24ffef171366ffffc065fe37b208261b212b3e3ba9b0",
  "kind": "def",
  "lexical_name": "sumDualDistrib",
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
  "slug": "sumdualdistrib--93e31eeaae910dfd7fa4c41a",
  "source": {
    "blob": "9866a8f524f0e05e017a3695cd18cbacc876c39b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 599,
    "line": 588,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantee82e8810ec992083e68f11545e0512ce4d4620d735a5082b014a62fc3313c0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:93e31eeaae910dfd7fa4c41a569467af560726601f8e01b2a65ff033d2db994c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantee82e8810ec992083e68f11545e0512ce4d4620d735a5082b014a62fc3313c0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d92f50dd03c0d263500f24ffef171366ffffc065fe37b208261b212b3e3ba9b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 588–599.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sumDualDistrib (α β : Type*) [LE α] [LE β] : (α ⊕ β)ᵒᵈ ≃o αᵒᵈ ⊕ βᵒᵈ :=
  { Equiv.refl _ with
    map_rel_iff' := by
      rintro (a | a) (b | b)
      · change inl (toDual a) ≤ inl (toDual b) ↔ toDual (inl a) ≤ toDual (inl b)
        simp [toDual_le_toDual, inl_le_inl_iff]
      · exact iff_of_false (@not_inl_le_inr (OrderDual β) (OrderDual α) _ _ _ _) not_inr_le_inl
      · exact iff_of_false (@not_inr_le_inl (OrderDual α) (OrderDual β) _ _ _ _) not_inl_le_inr
      · change inr (toDual a) ≤ inr (toDual b) ↔ toDual (inr a) ≤ toDual (inr b)
        simp [toDual_le_toDual, inr_le_inr_iff] }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantee82e8810ec992083e68f11545e0512ce4d4620d735a5082b014a62fc3313c0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantee82e8810ec992083e68f11545e0512ce4d4620d735a5082b014a62fc3313c0d.lean#L588).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9866a8f524f0e05e017a3695cd18cbacc876c39b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
