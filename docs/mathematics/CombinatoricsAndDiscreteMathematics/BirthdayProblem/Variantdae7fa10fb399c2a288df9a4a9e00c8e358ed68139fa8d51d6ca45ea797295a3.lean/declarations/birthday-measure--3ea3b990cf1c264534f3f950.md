# birthday_measure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4c3224823ebb2c1295a5106341c93d06132d85a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/dae7fa10fb399c2a288df9a4a9e00c8e358ed68139fa8d51d6ca45ea797295a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7252bb50-8e68-49c8-f03a-07bfdf1ea762",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3ace36ab-f23f-6ee1-c413-ad5ba41d479d",
  "kind": "theorem",
  "lexical_name": "birthday_measure",
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
  "slug": "birthday-measure--3ea3b990cf1c264534f3f950",
  "source": {
    "blob": "4c3224823ebb2c1295a5106341c93d06132d85a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 69,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variantdae7fa10fb399c2a288df9a4a9e00c8e358ed68139fa8d51d6ca45ea797295a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ea3b990cf1c264534f3f950be2d21c825a0ff1a414d6d550a520b0807e9cf3d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variantdae7fa10fb399c2a288df9a4a9e00c8e358ed68139fa8d51d6ca45ea797295a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ace36ab-f23f-6ee1-c413-ad5ba41d479d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem birthday_measure :
    ℙ ({f | (Function.Injective f)} : Set ((Fin 23) → (Fin 365))) < 1 / 2 := by
  rw [FinFin.measure_apply]
  generalize_proofs hfin
  have : |hfin.toFinset| = 42200819302092359872395663074908957253749760700776448000000 := by
    trans ‖Fin 23 ↪ Fin 365‖
    · simp_rw [← Fintype.card_coe, Set.Finite.coeSort_toFinset, Set.coe_setOf]
      exact Fintype.card_congr (Equiv.subtypeInjectiveEquivEmbedding _ _)
    · simp only [Fintype.card_embedding_eq, Fintype.card_fin, Nat.descFactorial]
  rw [this, ENNReal.lt_div_iff_mul_lt, mul_comm, mul_div, ENNReal.div_lt_iff]
  rotate_left; (iterate 2 right; norm_num); (iterate 2 left; norm_num)
  norm_cast
  simp only [Fintype.card_pi]
  norm_num
#align theorems_100.birthday_measure Theorems100.birthday_measure

end MeasureTheory

end Theorems100
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variantdae7fa10fb399c2a288df9a4a9e00c8e358ed68139fa8d51d6ca45ea797295a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variantdae7fa10fb399c2a288df9a4a9e00c8e358ed68139fa8d51d6ca45ea797295a3.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c3224823ebb2c1295a5106341c93d06132d85a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
