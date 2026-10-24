# IsEquipartition.card_biUnion_offDiag_le'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1ea99a3dd6edf4e87dcd9010dc7bf9c3a09f16dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 326,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:593561f6-01bc-8094-0601-fb04f2094a60",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4543af9e-4a69-a902-e352-0d494de08d34",
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
  "slug": "isequipartition-card-biunion-offdiag-le--4dc727ffcf924457f4639f07",
  "source": {
    "blob": "1ea99a3dd6edf4e87dcd9010dc7bf9c3a09f16dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 326,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4dc727ffcf924457f4639f07256dfbdb04d49d8e7aed6ca4cb8bdf4741ed34b9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4543af9e-4a69-a902-e352-0d494de08d34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–343.

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
  simp only [Nat.add_succ_sub_one, add_zero, le_rfl]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ea99a3dd6edf4e87dcd9010dc7bf9c3a09f16dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
