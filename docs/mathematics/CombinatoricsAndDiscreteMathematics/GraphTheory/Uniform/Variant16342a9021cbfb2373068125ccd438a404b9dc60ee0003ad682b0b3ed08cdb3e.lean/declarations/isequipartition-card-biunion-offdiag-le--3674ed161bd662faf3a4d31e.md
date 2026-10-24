# IsEquipartition.card_biUnion_offDiag_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b272053-a3ba-140a-00e2-aa6ba2ec1f4d",
  "kind": "lemma",
  "lexical_name": "IsEquipartition.card_biUnion_offDiag_le",
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
  "slug": "isequipartition-card-biunion-offdiag-le--3674ed161bd662faf3a4d31e",
  "source": {
    "blob": "93d6f2701df20d160a0d8bafc2e818ee19e84d42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 342,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3674ed161bd662faf3a4d31eab8ff6df2e06151f709b54d2e515b8245bd9ffcc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b272053-a3ba-140a-00e2-aa6ba2ec1f4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsEquipartition.card_biUnion_offDiag_le (hε : 0 < ε) (hP : P.IsEquipartition)
    (hP' : 4 / ε ≤ #P.parts) : #(P.parts.biUnion offDiag) ≤ ε / 2 * #A ^ 2 := by
  obtain rfl | hA : A = ⊥ ∨ _ := A.eq_empty_or_nonempty
  · simp [Subsingleton.elim P ⊥]
  apply hP.card_biUnion_offDiag_le'.trans
  rw [div_le_iff₀ (Nat.cast_pos.2 (P.parts_nonempty hA.ne_empty).card_pos)]
  have : (#A : 𝕜) + #P.parts ≤ 2 * #A := by
    rw [two_mul]; gcongr; exact P.card_parts_le_card
  refine (mul_le_mul_of_nonneg_left this <| by positivity).trans ?_
  suffices 1 ≤ ε/4 * #P.parts by
    rw [mul_left_comm, ← sq]
    convert mul_le_mul_of_nonneg_left this (mul_nonneg zero_le_two <| sq_nonneg (#A : 𝕜))
      using 1 <;> ring
  rwa [← div_le_iff₀', one_div_div]
  positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93d6f2701df20d160a0d8bafc2e818ee19e84d42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
