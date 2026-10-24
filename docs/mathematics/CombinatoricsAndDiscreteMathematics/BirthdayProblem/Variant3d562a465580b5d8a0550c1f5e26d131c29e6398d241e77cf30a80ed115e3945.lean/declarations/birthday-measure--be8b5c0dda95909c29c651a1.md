# birthday_measure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2302e57f-aa74-a5c9-9711-68012fb00140",
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
  "slug": "birthday-measure--be8b5c0dda95909c29c651a1",
  "source": {
    "blob": "019450b25e60c06b51ea49b5ff10270d92f239c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 57,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variant3d562a465580b5d8a0550c1f5e26d131c29e6398d241e77cf30a80ed115e3945.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be8b5c0dda95909c29c651a1a1a7bd386d1f9f256ef16fa536ac0ec52df475d6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variant3d562a465580b5d8a0550c1f5e26d131c29e6398d241e77cf30a80ed115e3945.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2302e57f-aa74-a5c9-9711-68012fb00140`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem birthday_measure :
    ℙ ({f | f.Injective} : Set (Fin 23 → Fin 365)) < 1 / 2 := by
  rw [Fin.measure_apply]
  generalize_proofs hfin
  have : |hfin.toFinset| = 42200819302092359872395663074908957253749760700776448000000 := by
    trans ‖Fin 23 ↪ Fin 365‖
    · rw [← Fintype.card_coe]
      apply Fintype.card_congr
      rw [Set.Finite.coeSort_toFinset, Set.coe_ofPred]
      exact Equiv.subtypeInjectiveEquivEmbedding _ _
    · rw [Fintype.card_embedding_eq, Fintype.card_fin, Fintype.card_fin]
      rfl
  rw [this, ENNReal.lt_div_iff_mul_lt, mul_comm, mul_div, ENNReal.div_lt_iff]
  all_goals
    simp only [Fintype.card_pi, Fintype.card_fin, Finset.prod_const, Finset.card_univ]
    norm_num

end Theorems100
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variant3d562a465580b5d8a0550c1f5e26d131c29e6398d241e77cf30a80ed115e3945.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variant3d562a465580b5d8a0550c1f5e26d131c29e6398d241e77cf30a80ed115e3945.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `019450b25e60c06b51ea49b5ff10270d92f239c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
