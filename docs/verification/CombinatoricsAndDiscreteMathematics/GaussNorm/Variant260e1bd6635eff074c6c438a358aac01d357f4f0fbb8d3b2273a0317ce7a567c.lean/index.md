# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GaussNorm.Variant260e1bd6635eff074c6c438a358aac01d357f4f0fbb8d3b2273a0317ce7a567c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7139b58a07fda4074b6ebc0925035655a1160356",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant260e1bd6635eff074c6c438a358aac01d357f4f0fbb8d3b2273a0317ce7a567c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant260e1bd6635eff074c6c438a358aac01d357f4f0fbb8d3b2273a0317ce7a567c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant260e1bd6635eff074c6c438a358aac01d357f4f0fbb8d3b2273a0317ce7a567c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7139b58a07fda4074b6ebc0925035655a1160356`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant260e1bd6635eff074c6c438a358aac01d357f4f0fbb8d3b2273a0317ce7a567c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant260e1bd6635eff074c6c438a358aac01d357f4f0fbb8d3b2273a0317ce7a567c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gaussNorm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant260e1bd6635eff074c6c438a358aac01d357f4f0fbb8d3b2273a0317ce7a567c.lean/declarations/gaussnorm--25915b9c2ff55481981bf06a.md) | 57 | `declaration-track:25915b9c2ff55481981bf06a56c9187e6659fc124358fdfac4a4c3b817068d80` |
| 2 | `abbrev` | [HasGaussNorm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant260e1bd6635eff074c6c438a358aac01d357f4f0fbb8d3b2273a0317ce7a567c.lean/declarations/hasgaussnorm--f6aa658ede10935de66afe9c.md) | 62 | `declaration-track:f6aa658ede10935de66afe9c01d29cee8bde097bc762adbf137876f57e9781d0` |
| 3 | `theorem` | [gaussNorm_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant260e1bd6635eff074c6c438a358aac01d357f4f0fbb8d3b2273a0317ce7a567c.lean/declarations/gaussnorm-zero--f70fc817571f4008896eac79.md) | 65 | `result-track:f70fc817571f4008896eac7990cd29bbf4cf9fdf55561b127d831bc8c8b66578` |
| 4 | `lemma` | [le_gaussNorm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant260e1bd6635eff074c6c438a358aac01d357f4f0fbb8d3b2273a0317ce7a567c.lean/declarations/le-gaussnorm--d8dccc07655c810448a64fa3.md) | 67 | `result-track:d8dccc07655c810448a64fa3e58837955623955a2d280005a8ac356fa473cd44` |
| 5 | `lemma` | [gaussNorm_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant260e1bd6635eff074c6c438a358aac01d357f4f0fbb8d3b2273a0317ce7a567c.lean/declarations/gaussnorm-nonneg--a8d9907df895980b2122a62e.md) | 71 | `result-track:a8d9907df895980b2122a62e4a77d2e60bc15b455ac331890faeee2651a978ae` |
| 6 | `lemma` | [gaussNorm_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant260e1bd6635eff074c6c438a358aac01d357f4f0fbb8d3b2273a0317ce7a567c.lean/declarations/gaussnorm-eq-zero-iff--62e0026c249bd399c96f7456.md) | 80 | `result-track:62e0026c249bd399c96f7456fb48512301e86f2202ade10fb3957f8793911296` |
| 7 | `lemma` | [gaussNorm_add_le_max](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant260e1bd6635eff074c6c438a358aac01d357f4f0fbb8d3b2273a0317ce7a567c.lean/declarations/gaussnorm-add-le-max--d958566a77546801561e1197.md) | 94 | `result-track:d958566a77546801561e1197b0033ff71a8e925de9fb75bb4a8b4576d9d48f53` |
| 8 | `lemma` | [c_prod_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant260e1bd6635eff074c6c438a358aac01d357f4f0fbb8d3b2273a0317ce7a567c.lean/declarations/c-prod-nonneg--4f9ef0a69282bd96f865cadc.md) | 134 | `result-track:4f9ef0a69282bd96f865cadc1ecde2203aab7e26f8f98d6324f88d05060acec7` |
| 9 | `lemma` | [gaussNorm_mul_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant260e1bd6635eff074c6c438a358aac01d357f4f0fbb8d3b2273a0317ce7a567c.lean/declarations/gaussnorm-mul-le--759bc35a157886d0dbf9e2ac.md) | 137 | `result-track:759bc35a157886d0dbf9e2ac74dfb9049587fef5687cbd33142b8f3703dbf288` |
| 10 | `abbrev` | [AchievesGaussNorm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant260e1bd6635eff074c6c438a358aac01d357f4f0fbb8d3b2273a0317ce7a567c.lean/declarations/achievesgaussnorm--3d8ecf28de25e57b7d92b39b.md) | 169 | `declaration-track:3d8ecf28de25e57b7d92b39bc7f200f91b5073000f400662ea9fe380c1534d74` |
| 11 | `lemma` | [gaussNorm_neg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant260e1bd6635eff074c6c438a358aac01d357f4f0fbb8d3b2273a0317ce7a567c.lean/declarations/gaussnorm-neg--1e01ecf4f4f14cb7635998f1.md) | 172 | `result-track:1e01ecf4f4f14cb7635998f18443ccbfec520760963c71e34462eaa05efb2ff9` |
| 12 | `lemma` | [ultrametric_strict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant260e1bd6635eff074c6c438a358aac01d357f4f0fbb8d3b2273a0317ce7a567c.lean/declarations/ultrametric-strict--bc2309843ad93389f916d1ad.md) | 182 | `result-track:bc2309843ad93389f916d1add9413a7d9a168d60d37986948e3243a650d9e609` |
| 13 | `lemma` | [Finset.Nonempty.map_sum_le_sup'_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant260e1bd6635eff074c6c438a358aac01d357f4f0fbb8d3b2273a0317ce7a567c.lean/declarations/finset-nonempty-map-sum-le-sup-map--c333793818fec456b3a4cd96.md) | 193 | `result-track:c333793818fec456b3a4cd963083b03b31148a2e216164184610f7e9320feedf` |
| 14 | `lemma` | [antidiagonal_dominant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant260e1bd6635eff074c6c438a358aac01d357f4f0fbb8d3b2273a0317ce7a567c.lean/declarations/antidiagonal-dominant--9a59b006a0ac5ff104f8fd5e.md) | 210 | `result-track:9a59b006a0ac5ff104f8fd5e76e66b75c061422e963299c65114cac80fb62303` |
| 15 | `lemma` | [gaussNorm_le_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant260e1bd6635eff074c6c438a358aac01d357f4f0fbb8d3b2273a0317ce7a567c.lean/declarations/gaussnorm-le-mul--c9ff79db7bc5980d8af264d1.md) | 219 | `result-track:c9ff79db7bc5980d8af264d1bcacff41306e3b470002f0cee3785ed72678ebb5` |
| 16 | `lemma` | [gaussNorm_mul_eq_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant260e1bd6635eff074c6c438a358aac01d357f4f0fbb8d3b2273a0317ce7a567c.lean/declarations/gaussnorm-mul-eq-mul--236c714ac85191354cf5dbcf.md) | 240 | `result-track:236c714ac85191354cf5dbcfcc87550234828c506a8137f79c05ff7ad7aac0ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
