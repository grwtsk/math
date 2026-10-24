# card_points

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c5259344d91591aadefbb16e34fc3bed00027a85",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 430,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:54c68e36-6c15-6ae1-8f51-a79aa6cdcdea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b76e83c9-b0b1-8b0d-b719-ad59a7c72007",
  "kind": "theorem",
  "lexical_name": "card_points",
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
  "slug": "card-points--f0b807bce5c71ee4a2ff0525",
  "source": {
    "blob": "c5259344d91591aadefbb16e34fc3bed00027a85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 457,
    "line": 430,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0b807bce5c71ee4a2ff0525d2f19e3b4e5fc5f3ad599029aa0ddf655bc2fb8b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b76e83c9-b0b1-8b0d-b719-ad59a7c72007`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–457.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_points [Fintype P] [Finite L] : Fintype.card P = order P L ^ 2 + order P L + 1 := by
  cases nonempty_fintype L
  obtain ⟨p, -⟩ := @exists_config P L _ _
  let ϕ : { q // q ≠ p } ≃ Σl : { l : L // p ∈ l }, { q // q ∈ l.1 ∧ q ≠ p } :=
    { toFun := fun q => ⟨⟨mkLine q.2, (mkLine_ax q.2).2⟩, q, (mkLine_ax q.2).1, q.2⟩
      invFun := fun lq => ⟨lq.2, lq.2.2.2⟩
      left_inv := fun q => Subtype.ext rfl
      right_inv := fun lq =>
        Sigma.subtype_ext
          (Subtype.ext
            ((eq_or_eq (mkLine_ax lq.2.2.2).1 (mkLine_ax lq.2.2.2).2 lq.2.2.1 lq.1.2).resolve_left
              lq.2.2.2))
          rfl }
  classical
    have h1 : Fintype.card { q // q ≠ p } + 1 = Fintype.card P := by
      apply (eq_tsub_iff_add_eq_of_le (Nat.succ_le_of_lt (Fintype.card_pos_iff.mpr ⟨p⟩))).mp
      convert (Fintype.card_subtype_compl _).trans (congr_arg _ (Fintype.card_subtype_eq p))
    have h2 : ∀ l : { l : L // p ∈ l }, Fintype.card { q // q ∈ l.1 ∧ q ≠ p } = order P L := by
      intro l
      rw [← Fintype.card_congr (Equiv.subtypeSubtypeEquivSubtypeInter (· ∈ l.val) (· ≠ p)),
        Fintype.card_subtype_compl fun x : Subtype (· ∈ l.val) => x.val = p, ←
        Nat.card_eq_fintype_card]
      refine tsub_eq_of_eq_add ((pointCount_eq P l.1).trans ?_)
      rw [← Fintype.card_subtype_eq (⟨p, l.2⟩ : { q : P // q ∈ l.1 })]
      simp_rw [Subtype.ext_iff_val]
    simp_rw [← h1, Fintype.card_congr ϕ, Fintype.card_sigma, h2, Finset.sum_const, Finset.card_univ]
    rw [← Nat.card_eq_fintype_card, ← lineCount, lineCount_eq, smul_eq_mul, Nat.succ_mul, sq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5259344d91591aadefbb16e34fc3bed00027a85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
