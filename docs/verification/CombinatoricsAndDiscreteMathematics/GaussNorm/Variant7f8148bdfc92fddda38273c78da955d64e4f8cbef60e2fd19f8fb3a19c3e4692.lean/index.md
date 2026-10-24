# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GaussNorm.Variant7f8148bdfc92fddda38273c78da955d64e4f8cbef60e2fd19f8fb3a19c3e4692

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "accab037afb8e59efa45fcadd8f6bcff88cdf9a9",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant7f8148bdfc92fddda38273c78da955d64e4f8cbef60e2fd19f8fb3a19c3e4692.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant7f8148bdfc92fddda38273c78da955d64e4f8cbef60e2fd19f8fb3a19c3e4692.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant7f8148bdfc92fddda38273c78da955d64e4f8cbef60e2fd19f8fb3a19c3e4692.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `accab037afb8e59efa45fcadd8f6bcff88cdf9a9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant7f8148bdfc92fddda38273c78da955d64e4f8cbef60e2fd19f8fb3a19c3e4692.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant7f8148bdfc92fddda38273c78da955d64e4f8cbef60e2fd19f8fb3a19c3e4692.lean.json)

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
| 1 | `def` | [gaussNorm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant7f8148bdfc92fddda38273c78da955d64e4f8cbef60e2fd19f8fb3a19c3e4692.lean/declarations/gaussnorm--90da6c966a082f9801cdb2e4.md) | 65 | `declaration-track:90da6c966a082f9801cdb2e492810e6c7ff91ca65e7c4ece8cc559302debbcfe` |
| 2 | `abbrev` | [HasGaussNorm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant7f8148bdfc92fddda38273c78da955d64e4f8cbef60e2fd19f8fb3a19c3e4692.lean/declarations/hasgaussnorm--7a264783289ff6708b375db0.md) | 70 | `declaration-track:7a264783289ff6708b375db0fd8a53f713199889942d27cbde0507c60d63efe2` |
| 3 | `theorem` | [gaussNorm_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant7f8148bdfc92fddda38273c78da955d64e4f8cbef60e2fd19f8fb3a19c3e4692.lean/declarations/gaussnorm-zero--1fc5d14d27b669e3881f42b8.md) | 73 | `result-track:1fc5d14d27b669e3881f42b8b7eda753f0b603c7d7b9c377182b5000c431a991` |
| 4 | `lemma` | [le_gaussNorm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant7f8148bdfc92fddda38273c78da955d64e4f8cbef60e2fd19f8fb3a19c3e4692.lean/declarations/le-gaussnorm--98607bc17c98a0ad3ae5f77e.md) | 75 | `result-track:98607bc17c98a0ad3ae5f77e8c47b12edd825fc6cd2601c1a9d8c7315a16e36a` |
| 5 | `lemma` | [gaussNorm_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant7f8148bdfc92fddda38273c78da955d64e4f8cbef60e2fd19f8fb3a19c3e4692.lean/declarations/gaussnorm-nonneg--670fc1a14525047daf0b1dd7.md) | 79 | `result-track:670fc1a14525047daf0b1dd787c2287f5a155726da4647e7955b17215a2b9207` |
| 6 | `lemma` | [gaussNorm_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant7f8148bdfc92fddda38273c78da955d64e4f8cbef60e2fd19f8fb3a19c3e4692.lean/declarations/gaussnorm-eq-zero-iff--c4917832b464f5fe6315fafe.md) | 88 | `result-track:c4917832b464f5fe6315fafe2223c68d62f6e138d251a6b376e88d3ea5cab219` |
| 7 | `lemma` | [gaussNorm_add_le_max](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant7f8148bdfc92fddda38273c78da955d64e4f8cbef60e2fd19f8fb3a19c3e4692.lean/declarations/gaussnorm-add-le-max--48205054c19b0b5599b183f5.md) | 102 | `result-track:48205054c19b0b5599b183f5e9a8cc4181ace907f074f99197d9d46e79d6e7c1` |
| 8 | `lemma` | [c_prod_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant7f8148bdfc92fddda38273c78da955d64e4f8cbef60e2fd19f8fb3a19c3e4692.lean/declarations/c-prod-nonneg--c6030b556c749c31abb0b04f.md) | 142 | `result-track:c6030b556c749c31abb0b04f6eec4bfdba2c90351b05214b3afbe6cb00af29e6` |
| 9 | `lemma` | [gaussNorm_mul_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant7f8148bdfc92fddda38273c78da955d64e4f8cbef60e2fd19f8fb3a19c3e4692.lean/declarations/gaussnorm-mul-le--81ddbab0b9a66102c5e47d2e.md) | 145 | `result-track:81ddbab0b9a66102c5e47d2e33725423d3a7f0a524fc60cf0994dae9457497bc` |
| 10 | `abbrev` | [AchievesGaussNorm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant7f8148bdfc92fddda38273c78da955d64e4f8cbef60e2fd19f8fb3a19c3e4692.lean/declarations/achievesgaussnorm--5bed755fe55e6087d78c6642.md) | 177 | `declaration-track:5bed755fe55e6087d78c6642b0bf782fc032fc6f3410c72d2bcc7949f180dc82` |
| 11 | `lemma` | [gaussNorm_neg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant7f8148bdfc92fddda38273c78da955d64e4f8cbef60e2fd19f8fb3a19c3e4692.lean/declarations/gaussnorm-neg--221888b01e21bf0756de2343.md) | 180 | `result-track:221888b01e21bf0756de2343a9b4aa21c26bbaae339e897e9215a75979514646` |
| 12 | `lemma` | [ultrametric_strict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant7f8148bdfc92fddda38273c78da955d64e4f8cbef60e2fd19f8fb3a19c3e4692.lean/declarations/ultrametric-strict--680e6aa2a30ae9818d519eb4.md) | 190 | `result-track:680e6aa2a30ae9818d519eb472743397e8088c7c126f9deb963355ddf2d7ffd0` |
| 13 | `lemma` | [Finset.Nonempty.map_sum_le_sup'_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant7f8148bdfc92fddda38273c78da955d64e4f8cbef60e2fd19f8fb3a19c3e4692.lean/declarations/finset-nonempty-map-sum-le-sup-map--171dc0cbd48b65672618fc5e.md) | 201 | `result-track:171dc0cbd48b65672618fc5ee35626f00bad98f496074b663834f2d301936059` |
| 14 | `lemma` | [antidiagonal_dominant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant7f8148bdfc92fddda38273c78da955d64e4f8cbef60e2fd19f8fb3a19c3e4692.lean/declarations/antidiagonal-dominant--073095305b67c794b99c3dda.md) | 218 | `result-track:073095305b67c794b99c3dda13cc479f5d91aee0b06f20aff311995907d1dcbd` |
| 15 | `lemma` | [gaussNorm_le_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant7f8148bdfc92fddda38273c78da955d64e4f8cbef60e2fd19f8fb3a19c3e4692.lean/declarations/gaussnorm-le-mul--01780a2a2a0a9685365abf81.md) | 227 | `result-track:01780a2a2a0a9685365abf813615fb3e7aa41e52d0363198d3e1c9454a439d26` |
| 16 | `lemma` | [gaussNorm_mul_eq_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant7f8148bdfc92fddda38273c78da955d64e4f8cbef60e2fd19f8fb3a19c3e4692.lean/declarations/gaussnorm-mul-eq-mul--09a1cced9f7d6a7a54b9d215.md) | 248 | `result-track:09a1cced9f7d6a7a54b9d2156ac9567ffd46b8a91b6a27699a012c7b74cf7a64` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
