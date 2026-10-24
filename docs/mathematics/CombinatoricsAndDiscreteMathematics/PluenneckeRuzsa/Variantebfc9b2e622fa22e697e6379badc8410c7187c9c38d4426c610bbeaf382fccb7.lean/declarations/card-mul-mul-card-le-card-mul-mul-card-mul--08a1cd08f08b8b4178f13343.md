# card_mul_mul_card_le_card_mul_mul_card_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7c9503686fc7d729b3cfc372667622bc221e8a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/ebfc9b2e622fa22e697e6379badc8410c7187c9c38d4426c610bbeaf382fccb7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9cb8c419-4233-fbbe-3ad3-3f56dce981c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc7d3dca-32c4-f7ca-0e32-934eef68c44f",
  "kind": "theorem",
  "lexical_name": "card_mul_mul_card_le_card_mul_mul_card_mul",
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
  "slug": "card-mul-mul-card-le-card-mul-mul-card-mul--08a1cd08f08b8b4178f13343",
  "source": {
    "blob": "d7c9503686fc7d729b3cfc372667622bc221e8a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 139,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variantebfc9b2e622fa22e697e6379badc8410c7187c9c38d4426c610bbeaf382fccb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08a1cd08f08b8b4178f13343ee21f4cce7958f657d248fc314994eca72444ce0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variantebfc9b2e622fa22e697e6379badc8410c7187c9c38d4426c610bbeaf382fccb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc7d3dca-32c4-f7ca-0e32-934eef68c44f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_mul_mul_card_le_card_mul_mul_card_mul (A B C : Finset α) :
    (A * C).card * B.card ≤ (A * B).card * (B * C).card := by
  obtain rfl | hB := B.eq_empty_or_nonempty
  · simp
  have hB' : B ∈ B.powerset.erase ∅ := mem_erase_of_ne_of_mem hB.ne_empty (mem_powerset_self _)
  obtain ⟨U, hU, hUA⟩ :=
    exists_min_image (B.powerset.erase ∅) (fun U ↦ (U * A).card / U.card : _ → ℚ≥0) ⟨B, hB'⟩
  rw [mem_erase, mem_powerset, ← nonempty_iff_ne_empty] at hU
  refine' cast_le.1 (_ : (_ : ℚ≥0) ≤ _)
  push_cast
  refine' (le_div_iff <| cast_pos.2 hB.card_pos).1 _
  rw [mul_div_right_comm, mul_comm _ B]
  refine' (cast_le.2 <| card_le_card_mul_left _ hU.1).trans _
  refine' le_trans _
    (mul_le_mul (hUA _ hB') (cast_le.2 <| card_le_of_subset <| mul_subset_mul_right hU.2)
      (zero_le _) (zero_le _))
  rw [← mul_div_right_comm, ← mul_assoc]
  refine' (le_div_iff <| cast_pos.2 hU.1.card_pos).2 _
  exact_mod_cast mul_pluennecke_petridis C (mul_aux hU.1 hU.2 hUA)
#align finset.card_mul_mul_card_le_card_mul_mul_card_mul Finset.card_mul_mul_card_le_card_mul_mul_card_mul
#align finset.card_add_mul_card_le_card_add_mul_card_add Finset.card_add_mul_card_le_card_add_mul_card_add

/-- **Ruzsa's triangle inequality**. Add-sub-sub version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variantebfc9b2e622fa22e697e6379badc8410c7187c9c38d4426c610bbeaf382fccb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variantebfc9b2e622fa22e697e6379badc8410c7187c9c38d4426c610bbeaf382fccb7.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7c9503686fc7d729b3cfc372667622bc221e8a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
