# IsEquipartition.card_interedges_sparsePairs_le'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d2e41fc81283a95f539265b839889245e9cdaa5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 272,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aeb8c3ab-bc0d-2671-ebf9-500cb8916f85",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b0263880-c907-d4ba-9fc8-189ed8a5af97",
  "kind": "lemma",
  "lexical_name": "IsEquipartition.card_interedges_sparsePairs_le'",
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
  "slug": "isequipartition-card-interedges-sparsepairs-le--dd7db63a39a06e9ad89c3c45",
  "source": {
    "blob": "6d2e41fc81283a95f539265b839889245e9cdaa5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 272,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd7db63a39a06e9ad89c3c452c086b0975bdf573314d9f0345694e8f1bd505df",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0263880-c907-d4ba-9fc8-189ed8a5af97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsEquipartition.card_interedges_sparsePairs_le' (hP : P.IsEquipartition)
    (hε : 0 ≤ ε) :
    #((P.sparsePairs G ε).biUnion fun (U, V) ↦ G.interedges U V) ≤ ε * (#A + #P.parts) ^ 2 := by
  calc
    _ ≤ ∑ UV ∈ P.sparsePairs G ε, (#(G.interedges UV.1 UV.2) : 𝕜) := mod_cast card_biUnion_le
    _ ≤ ∑ UV ∈ P.sparsePairs G ε, ε * (#UV.1 * #UV.2) := ?_
    _ ≤ ∑ UV ∈ P.parts.offDiag, ε * (#UV.1 * #UV.2) := by gcongr; apply filter_subset
    _ = ε * ∑ UV ∈ P.parts.offDiag, (#UV.1 * #UV.2 : 𝕜) := (mul_sum _ _ _).symm
    _ ≤ _ := ?_
  · gcongr with UV hUV
    obtain ⟨U, V⟩ := UV
    simp [mk_mem_sparsePairs, ← card_interedges_div_card] at hUV
    refine ((div_lt_iff₀ ?_).1 hUV.2.2.2).le
    exact mul_pos (Nat.cast_pos.2 (P.nonempty_of_mem_parts hUV.1).card_pos)
      (Nat.cast_pos.2 (P.nonempty_of_mem_parts hUV.2.1).card_pos)
  norm_cast
  gcongr
  calc
    (_ : ℕ) ≤ _ := sum_le_card_nsmul P.parts.offDiag (fun i ↦ #i.1 * #i.2)
            ((#A / #P.parts + 1)^2 : ℕ) ?_
    _ ≤ (#P.parts * (#A / #P.parts) + #P.parts) ^ 2 := ?_
    _ ≤ _ := by gcongr; apply Nat.mul_div_le
  · simp only [Prod.forall, Finpartition.mk_mem_nonUniforms, and_imp, mem_offDiag, sq]
    rintro U V hU hV -
    exact_mod_cast Nat.mul_le_mul (hP.card_part_le_average_add_one hU)
      (hP.card_part_le_average_add_one hV)
  · rw [smul_eq_mul, offDiag_card, Nat.mul_sub_right_distrib, ← sq, ← mul_pow, mul_add_one (α := ℕ)]
    exact Nat.sub_le _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d2e41fc81283a95f539265b839889245e9cdaa5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
