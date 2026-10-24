# birthday_measure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:522475ce-cce3-2aab-8acc-7f06617f4046",
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
  "slug": "birthday-measure--9ccf4506076e5d18324532f0",
  "source": {
    "blob": "44d37cacd8c74452f0737cd578e844c9f01031ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 77,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variant40f913e6dc263d9bbd9d9a6c3caaf507e81611ed06f5ef49f40653d1b11ef33f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ccf4506076e5d18324532f03639cf73375b4ffaa7358e9b9867a2cf8a38e3f4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variant40f913e6dc263d9bbd9d9a6c3caaf507e81611ed06f5ef49f40653d1b11ef33f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:522475ce-cce3-2aab-8acc-7f06617f4046`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–95.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variant40f913e6dc263d9bbd9d9a6c3caaf507e81611ed06f5ef49f40653d1b11ef33f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variant40f913e6dc263d9bbd9d9a6c3caaf507e81611ed06f5ef49f40653d1b11ef33f.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44d37cacd8c74452f0737cd578e844c9f01031ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
