# nodal_subgroup_eq_X_pow_card_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d90f9663-2389-4e96-9003-f058b79111ec",
  "kind": "theorem",
  "lexical_name": "nodal_subgroup_eq_X_pow_card_sub_one",
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
  "slug": "nodal-subgroup-eq-x-pow-card-sub-one--e4a8107fdd79bce2d2196dcc",
  "source": {
    "blob": "0507f8cfc109876f1c55fd293eb5667198b30ea8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 672,
    "line": 654,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lagrange/Variantf3ba8dbae934751bd24cfd1de5980daf30b1da376dceb541b1d305e7dcc1cf54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4a8107fdd79bce2d2196dcc6e293aea7931f8e0a3bb0f39f8f474724de9344e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lagrange/Variantf3ba8dbae934751bd24cfd1de5980daf30b1da376dceb541b1d305e7dcc1cf54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d90f9663-2389-4e96-9003-f058b79111ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 654–672.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem nodal_subgroup_eq_X_pow_card_sub_one (G : Subgroup Fˣ) [Fintype G] :
  nodal (G : Set Fˣ).toFinset ((↑) : Fˣ → F) = X ^ (Fintype.card G) - 1 := by
  have h : degree (1 : F[X]) < degree ((X : F[X]) ^ Fintype.card G) := by simp [Fintype.card_pos]
  apply eq_of_degree_le_of_eval_index_eq (v := ((↑) : Fˣ → F)) (G : Set Fˣ).toFinset
  · exact Set.injOn_of_injective Units.ext _
  · simp
  · rw [degree_sub_eq_left_of_degree_lt h, degree_nodal, Set.toFinset_card, degree_pow, degree_X,
      nsmul_eq_mul, mul_one, Nat.cast_inj]
    exact rfl
  · rw [nodal_monic, leadingCoeff_sub_of_degree_lt h, monic_X_pow]
  · intros i hi
    rw [eval_nodal_at_node hi]
    replace hi : i ∈ G := by simpa using hi
    obtain ⟨g, rfl⟩ : ∃ g : G, g.val = i := ⟨⟨i, hi⟩, rfl⟩
    simp [← Units.val_pow_eq_pow_val, ← Subgroup.coe_pow G]

end Nodal

end Lagrange
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lagrange/Variantf3ba8dbae934751bd24cfd1de5980daf30b1da376dceb541b1d305e7dcc1cf54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lagrange/Variantf3ba8dbae934751bd24cfd1de5980daf30b1da376dceb541b1d305e7dcc1cf54.lean#L654).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0507f8cfc109876f1c55fd293eb5667198b30ea8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
