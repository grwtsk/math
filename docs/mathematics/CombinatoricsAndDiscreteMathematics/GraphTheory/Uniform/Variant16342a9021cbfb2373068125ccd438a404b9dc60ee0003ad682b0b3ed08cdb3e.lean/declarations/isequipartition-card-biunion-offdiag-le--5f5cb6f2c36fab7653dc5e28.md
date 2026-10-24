# IsEquipartition.card_biUnion_offDiag_le'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58add6cb-e140-b3f5-469f-2b1de866021d",
  "kind": "lemma",
  "lexical_name": "IsEquipartition.card_biUnion_offDiag_le'",
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
  "slug": "isequipartition-card-biunion-offdiag-le--5f5cb6f2c36fab7653dc5e28",
  "source": {
    "blob": "93d6f2701df20d160a0d8bafc2e818ee19e84d42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 324,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f5cb6f2c36fab7653dc5e28ce15763123b92e5e8ecd2f07d13737bb133fb299",
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

Occurrence: `result:58add6cb-e140-b3f5-469f-2b1de866021d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsEquipartition.card_biUnion_offDiag_le' (hP : P.IsEquipartition) :
    (#(P.parts.biUnion offDiag) : 𝕜) ≤ #A * (#A + #P.parts) / #P.parts := by
  obtain h | h := P.parts.eq_empty_or_nonempty
  · simp [h]
  calc
    _ ≤ (#P.parts : 𝕜) * (↑(#A / #P.parts) * ↑(#A / #P.parts + 1)) :=
        mod_cast card_biUnion_le_card_mul _ _ _ fun U hU ↦ ?_
    _ = #P.parts * ↑(#A / #P.parts) * ↑(#A / #P.parts + 1) := by rw [mul_assoc]
    _ ≤ #A * (#A / #P.parts + 1) :=
        mul_le_mul (mod_cast Nat.mul_div_le _ _) ?_ (by positivity) (by positivity)
    _ = _ := by rw [← div_add_same (mod_cast h.card_pos.ne'), mul_div_assoc]
  · simpa using Nat.cast_div_le
  suffices (#U - 1) * #U ≤ #A / #P.parts * (#A / #P.parts + 1) by
    rwa [Nat.mul_sub_right_distrib, one_mul, ← offDiag_card] at this
  have := hP.card_part_le_average_add_one hU
  refine Nat.mul_le_mul ((Nat.sub_le_sub_right this 1).trans ?_) this
  simp only [Nat.add_succ_sub_one, add_zero, card_univ, le_rfl]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93d6f2701df20d160a0d8bafc2e818ee19e84d42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
