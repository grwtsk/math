# isConj_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f6436e591fcf88179183f5db404bd2a3723669f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41d5d4b3-e54f-64c3-18a8-9dceed242cef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:80188577-255e-50b8-a163-91c6b1023ada",
  "kind": "theorem",
  "lexical_name": "isConj_of",
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
  "slug": "isconj-of--bb088e4a23ea040f4a1db22b",
  "source": {
    "blob": "2f6436e591fcf88179183f5db404bd2a3723669f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 109,
    "path": "GRWTSK/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb088e4a23ea040f4a1db22ba37779b105dfd3b44a91cd6e77d16b6803392771",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80188577-255e-50b8-a163-91c6b1023ada`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isConj_of {σ τ : alternatingGroup α} (hc : IsConj (σ : Perm α) (τ : Perm α))
    (hσ : (σ : Perm α).support.card + 2 ≤ Fintype.card α) : IsConj σ τ := by
  obtain ⟨σ, hσ⟩ := σ
  obtain ⟨τ, hτ⟩ := τ
  obtain ⟨π, hπ⟩ := isConj_iff.1 hc
  rw [Subtype.coe_mk, Subtype.coe_mk] at hπ
  cases' Int.units_eq_one_or (Perm.sign π) with h h
  · rw [isConj_iff]
    refine' ⟨⟨π, mem_alternatingGroup.mp h⟩, Subtype.val_injective _⟩
    simpa only [Subtype.val, Subgroup.coe_mul, coe_inv, coe_mk] using hπ
  · have h2 : 2 ≤ σ.supportᶜ.card := by
      rw [Finset.card_compl, le_tsub_iff_left σ.support.card_le_univ]
      exact hσ
    obtain ⟨a, ha, b, hb, ab⟩ := Finset.one_lt_card.1 h2
    refine' isConj_iff.2 ⟨⟨π * swap a b, _⟩, Subtype.val_injective _⟩
    · rw [mem_alternatingGroup, MonoidHom.map_mul, h, sign_swap ab, Int.units_mul_self]
    · simp only [← hπ, coe_mk, Subgroup.coe_mul, Subtype.val]
      have hd : Disjoint (swap a b) σ := by
        rw [disjoint_iff_disjoint_support, support_swap ab, Finset.disjoint_insert_left,
          Finset.disjoint_singleton_left]
        exact ⟨Finset.mem_compl.1 ha, Finset.mem_compl.1 hb⟩
      rw [mul_assoc π _ σ, hd.commute.eq, coe_inv, coe_mk]
      simp [mul_assoc]
#align alternating_group.is_conj_of alternatingGroup.isConj_of

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f6436e591fcf88179183f5db404bd2a3723669f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
