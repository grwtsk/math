# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Dedup.Variant0bb6350a529c38438576b1dab25a9b018a2bbd5c7ad5de4293adaeb6c1ea0f1d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1bcea68f63beb91a8f24691ca0450baf36e553b",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant0bb6350a529c38438576b1dab25a9b018a2bbd5c7ad5de4293adaeb6c1ea0f1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant0bb6350a529c38438576b1dab25a9b018a2bbd5c7ad5de4293adaeb6c1ea0f1d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant0bb6350a529c38438576b1dab25a9b018a2bbd5c7ad5de4293adaeb6c1ea0f1d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1bcea68f63beb91a8f24691ca0450baf36e553b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant0bb6350a529c38438576b1dab25a9b018a2bbd5c7ad5de4293adaeb6c1ea0f1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant0bb6350a529c38438576b1dab25a9b018a2bbd5c7ad5de4293adaeb6c1ea0f1d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Nodup` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dedup_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant0bb6350a529c38438576b1dab25a9b018a2bbd5c7ad5de4293adaeb6c1ea0f1d.lean/declarations/dedup-nil--1485168138f1967628a013bb.md) | 30 | `result-track:1485168138f1967628a013bbea1fdc78269b589e40ed0869e7607f1d8fd3c665` |
| 2 | `theorem` | [dedup_cons_of_mem'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant0bb6350a529c38438576b1dab25a9b018a2bbd5c7ad5de4293adaeb6c1ea0f1d.lean/declarations/dedup-cons-of-mem--8f03d8bc0951d3fa7203cac5.md) | 34 | `result-track:8f03d8bc0951d3fa7203cac5a31dd30d1670c6b7a9cd64af342ab5647ae272d1` |
| 3 | `theorem` | [dedup_cons_of_not_mem'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant0bb6350a529c38438576b1dab25a9b018a2bbd5c7ad5de4293adaeb6c1ea0f1d.lean/declarations/dedup-cons-of-not-mem--e380a0adee59ed6b8f28a8f0.md) | 38 | `result-track:e380a0adee59ed6b8f28a8f03c6e0cf18e779ed7afccbd141281f01311d16f67` |
| 4 | `theorem` | [mem_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant0bb6350a529c38438576b1dab25a9b018a2bbd5c7ad5de4293adaeb6c1ea0f1d.lean/declarations/mem-dedup--80fa2485dddc57eb69a44216.md) | 44 | `result-track:80fa2485dddc57eb69a44216dc240c04337d8b568c49a3f77d466223613e3dc9` |
| 5 | `theorem` | [dedup_cons_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant0bb6350a529c38438576b1dab25a9b018a2bbd5c7ad5de4293adaeb6c1ea0f1d.lean/declarations/dedup-cons-of-mem--5843247ca19ff95df2a037d5.md) | 52 | `result-track:5843247ca19ff95df2a037d56f2c361a3dfb2c4212e78f82abd4f3a2db209e9d` |
| 6 | `theorem` | [dedup_cons_of_not_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant0bb6350a529c38438576b1dab25a9b018a2bbd5c7ad5de4293adaeb6c1ea0f1d.lean/declarations/dedup-cons-of-not-mem--20409fe3d09a797321125ab6.md) | 57 | `result-track:20409fe3d09a797321125ab620cded3a3487147f2fb457fb2b945dd0e642f4c4` |
| 7 | `theorem` | [dedup_sublist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant0bb6350a529c38438576b1dab25a9b018a2bbd5c7ad5de4293adaeb6c1ea0f1d.lean/declarations/dedup-sublist--cb463f12d036bf0632779117.md) | 61 | `result-track:cb463f12d036bf063277911762ceb2ded98894cead5697e806eb5f9322e6a016` |
| 8 | `theorem` | [dedup_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant0bb6350a529c38438576b1dab25a9b018a2bbd5c7ad5de4293adaeb6c1ea0f1d.lean/declarations/dedup-subset--3bc10b6e3be64a899e4d0c3b.md) | 65 | `result-track:3bc10b6e3be64a899e4d0c3b920bc573c42c023beee5384186c1d488a4dc1153` |
| 9 | `theorem` | [subset_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant0bb6350a529c38438576b1dab25a9b018a2bbd5c7ad5de4293adaeb6c1ea0f1d.lean/declarations/subset-dedup--3f5c2ed7b69f0418af27a9f9.md) | 69 | `result-track:3f5c2ed7b69f0418af27a9f9e33ff2f31123aa134c5fdb262339dbf2f37d708f` |
| 10 | `theorem` | [nodup_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant0bb6350a529c38438576b1dab25a9b018a2bbd5c7ad5de4293adaeb6c1ea0f1d.lean/declarations/nodup-dedup--9bed49270e93d4d47ffe25f5.md) | 72 | `result-track:9bed49270e93d4d47ffe25f56c6dee87576f244b735f08785befb43d1524a891` |
| 11 | `theorem` | [headI_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant0bb6350a529c38438576b1dab25a9b018a2bbd5c7ad5de4293adaeb6c1ea0f1d.lean/declarations/headi-dedup--361b46cec76e9bde8342f30d.md) | 76 | `result-track:361b46cec76e9bde8342f30db8080351b630c8ec4f04858a3ab15aa4c0f0425c` |
| 12 | `theorem` | [tail_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant0bb6350a529c38438576b1dab25a9b018a2bbd5c7ad5de4293adaeb6c1ea0f1d.lean/declarations/tail-dedup--39326e4f80bfae2dd6fcf944.md) | 83 | `result-track:39326e4f80bfae2dd6fcf9447592e739d8a2ad4394102fe31999f8f0cf25585e` |
| 13 | `theorem` | [dedup_eq_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant0bb6350a529c38438576b1dab25a9b018a2bbd5c7ad5de4293adaeb6c1ea0f1d.lean/declarations/dedup-eq-self--0cf4b34469a8b86f022cd7db.md) | 90 | `result-track:0cf4b34469a8b86f022cd7db21359728713347bad50cad3658d4c4d47fced64a` |
| 14 | `theorem` | [dedup_eq_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant0bb6350a529c38438576b1dab25a9b018a2bbd5c7ad5de4293adaeb6c1ea0f1d.lean/declarations/dedup-eq-cons--df4acdcdfd22fad82cd4bf98.md) | 94 | `result-track:df4acdcdfd22fad82cd4bf98fb17b3fac8c0fd91b714b8bc70cf2001334286e7` |
| 15 | `theorem` | [dedup_eq_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant0bb6350a529c38438576b1dab25a9b018a2bbd5c7ad5de4293adaeb6c1ea0f1d.lean/declarations/dedup-eq-nil--3607f6d5dd8fe389afb78aa0.md) | 108 | `result-track:3607f6d5dd8fe389afb78aa0148f4056f9c81dea5d72833d70aada08924472f2` |
| 16 | `theorem` | [Nodup.dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant0bb6350a529c38438576b1dab25a9b018a2bbd5c7ad5de4293adaeb6c1ea0f1d.lean/declarations/nodup-dedup--1b3b779daec7e4ec3dfc169a.md) | 116 | `result-track:1b3b779daec7e4ec3dfc169aa51ea04ccfa56595a0f20874dd9458fa5948d413` |
| 17 | `theorem` | [dedup_idempotent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant0bb6350a529c38438576b1dab25a9b018a2bbd5c7ad5de4293adaeb6c1ea0f1d.lean/declarations/dedup-idempotent--ae7823b1f0d49721b86f0f4d.md) | 121 | `result-track:ae7823b1f0d49721b86f0f4d35089ee04eff803db8919c9e34a769b869335331` |
| 18 | `theorem` | [dedup_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant0bb6350a529c38438576b1dab25a9b018a2bbd5c7ad5de4293adaeb6c1ea0f1d.lean/declarations/dedup-append--899f0c770df5dfff91348344.md) | 125 | `result-track:899f0c770df5dfff91348344b4a7e05f7afc0789fb15d85a83769b1a87fa97ff` |
| 19 | `theorem` | [replicate_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant0bb6350a529c38438576b1dab25a9b018a2bbd5c7ad5de4293adaeb6c1ea0f1d.lean/declarations/replicate-dedup--a35e288a70a99421788f1935.md) | 134 | `result-track:a35e288a70a99421788f1935028f11eb843995df9253bd0dc852b871192b9064` |
| 20 | `theorem` | [count_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant0bb6350a529c38438576b1dab25a9b018a2bbd5c7ad5de4293adaeb6c1ea0f1d.lean/declarations/count-dedup--312c2b36578d275ed27f4bad.md) | 142 | `result-track:312c2b36578d275ed27f4bada75b24467b7562648e5a6a694ce0e94df46dd8e1` |
| 21 | `theorem` | [sum_map_count_dedup_filter_eq_countP](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant0bb6350a529c38438576b1dab25a9b018a2bbd5c7ad5de4293adaeb6c1ea0f1d.lean/declarations/sum-map-count-dedup-filter-eq-countp--be33d43d0c94a09c1063db6c.md) | 147 | `result-track:be33d43d0c94a09c1063db6c0410eb3cfbba60415a2cf625789f079cc02553c9` |
| 22 | `theorem` | [sum_map_count_dedup_eq_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant0bb6350a529c38438576b1dab25a9b018a2bbd5c7ad5de4293adaeb6c1ea0f1d.lean/declarations/sum-map-count-dedup-eq-length--db1052c5f32189d141deb6d9.md) | 171 | `result-track:db1052c5f32189d141deb6d97ae2e12ae487fcece04b17c19a4058cf50662471` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
