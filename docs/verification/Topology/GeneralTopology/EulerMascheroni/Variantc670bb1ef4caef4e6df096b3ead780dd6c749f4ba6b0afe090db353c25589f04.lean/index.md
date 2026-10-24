# Verification target: GRWTSK.Topology.GeneralTopology.EulerMascheroni.Variantc670bb1ef4caef4e6df096b3ead780dd6c749f4ba6b0afe090db353c25589f04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bfe72fccaa4ec155efd6aa56878868c52dc9064a",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/EulerMascheroni/Variantc670bb1ef4caef4e6df096b3ead780dd6c749f4ba6b0afe090db353c25589f04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantc670bb1ef4caef4e6df096b3ead780dd6c749f4ba6b0afe090db353c25589f04.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantc670bb1ef4caef4e6df096b3ead780dd6c749f4ba6b0afe090db353c25589f04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bfe72fccaa4ec155efd6aa56878868c52dc9064a`.

Source path: `GRWTSK/Topology/GeneralTopology/EulerMascheroni/Variantc670bb1ef4caef4e6df096b3ead780dd6c749f4ba6b0afe090db353c25589f04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/EulerMascheroni/Variantc670bb1ef4caef4e6df096b3ead780dd6c749f4ba6b0afe090db353c25589f04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Complex.ExponentialBounds` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Order.Lattice` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eulerMascheroniSeq](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantc670bb1ef4caef4e6df096b3ead780dd6c749f4ba6b0afe090db353c25589f04.lean/declarations/eulermascheroniseq--de6905391198fb9f6c174f06.md) | 53 | `declaration-track:de6905391198fb9f6c174f06740c6914ec8916ae6e0303a2afe6c6894c7ca5ea` |
| 2 | `lemma` | [eulerMascheroniSeq_zero](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantc670bb1ef4caef4e6df096b3ead780dd6c749f4ba6b0afe090db353c25589f04.lean/declarations/eulermascheroniseq-zero--038d2c9a811503c1a37ec0b7.md) | 55 | `result-track:038d2c9a811503c1a37ec0b7878798c5e2fc2ae93cae20aecdc7a6e1861b2950` |
| 3 | `lemma` | [strictMono_eulerMascheroniSeq](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantc670bb1ef4caef4e6df096b3ead780dd6c749f4ba6b0afe090db353c25589f04.lean/declarations/strictmono-eulermascheroniseq--653e3a578c45f279f5439990.md) | 58 | `result-track:653e3a578c45f279f5439990625313338057e593e8a437d8d75d965e58ba836b` |
| 4 | `lemma` | [one_half_lt_eulerMascheroniSeq_six](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantc670bb1ef4caef4e6df096b3ead780dd6c749f4ba6b0afe090db353c25589f04.lean/declarations/one-half-lt-eulermascheroniseq-six--7b2825cd0ce2a48a3a3e652e.md) | 70 | `result-track:7b2825cd0ce2a48a3a3e652e56a4468edbd91455b6898fca3f20f7839ab8572a` |
| 5 | `def` | [eulerMascheroniSeq'](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantc670bb1ef4caef4e6df096b3ead780dd6c749f4ba6b0afe090db353c25589f04.lean/declarations/eulermascheroniseq--6e1453e45b2d21f4b86c9b8a.md) | 85 | `declaration-track:6e1453e45b2d21f4b86c9b8a3bb1c72e60f60ec13f564153d34ba541d36636f5` |
| 6 | `lemma` | [eulerMascheroniSeq'_one](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantc670bb1ef4caef4e6df096b3ead780dd6c749f4ba6b0afe090db353c25589f04.lean/declarations/eulermascheroniseq-one--a063f377a6c99fb407110766.md) | 88 | `result-track:a063f377a6c99fb4071107667fedb400a07a094d4f6ffb73172b7c2d4781a393` |
| 7 | `lemma` | [strictAnti_eulerMascheroniSeq'](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantc670bb1ef4caef4e6df096b3ead780dd6c749f4ba6b0afe090db353c25589f04.lean/declarations/strictanti-eulermascheroniseq--f6a675267698763a365e5c16.md) | 91 | `result-track:f6a675267698763a365e5c16cdaf29f8f292104c25f229f227e643870a6d86de` |
| 8 | `lemma` | [eulerMascheroniSeq'_six_lt_two_thirds](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantc670bb1ef4caef4e6df096b3ead780dd6c749f4ba6b0afe090db353c25589f04.lean/declarations/eulermascheroniseq-six-lt-two-thirds--13865b66fb220bb398d26281.md) | 105 | `result-track:13865b66fb220bb398d262811fe79451396fe6c1828d935b3c6c4a53e7f3a969` |
| 9 | `lemma` | [eulerMascheroniSeq_lt_eulerMascheroniSeq'](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantc670bb1ef4caef4e6df096b3ead780dd6c749f4ba6b0afe090db353c25589f04.lean/declarations/eulermascheroniseq-lt-eulermascheroniseq--b2e915a4f097ccc9a4855c75.md) | 119 | `result-track:b2e915a4f097ccc9a4855c75e1921186bbc02f2f9d9bec7cfc9394780696698a` |
| 10 | `def` | [eulerMascheroniConstant](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantc670bb1ef4caef4e6df096b3ead780dd6c749f4ba6b0afe090db353c25589f04.lean/declarations/eulermascheroniconstant--facc23f9a0edbda4bb61955e.md) | 133 | `declaration-track:facc23f9a0edbda4bb61955eb06a46caa8762130ebcab8f5e4872cf3316a5118` |
| 11 | `lemma` | [tendsto_eulerMascheroniSeq](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantc670bb1ef4caef4e6df096b3ead780dd6c749f4ba6b0afe090db353c25589f04.lean/declarations/tendsto-eulermascheroniseq--b888e4011bffb7f139528064.md) | 135 | `result-track:b888e4011bffb7f139528064190123f9c3ffe7f758b2af2fc9a8e9b475935930` |
| 12 | `lemma` | [tendsto_harmonic_sub_log_add_one](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantc670bb1ef4caef4e6df096b3ead780dd6c749f4ba6b0afe090db353c25589f04.lean/declarations/tendsto-harmonic-sub-log-add-one--a520aa9839db1881e9c4fdbf.md) | 141 | `result-track:a520aa9839db1881e9c4fdbfdd1e8bcdefbb3c070c5ca8588f6e11b4dfdb0cf0` |
| 13 | `lemma` | [tendsto_eulerMascheroniSeq'](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantc670bb1ef4caef4e6df096b3ead780dd6c749f4ba6b0afe090db353c25589f04.lean/declarations/tendsto-eulermascheroniseq--b5d4a5aaa7994807b2612215.md) | 145 | `result-track:b5d4a5aaa7994807b2612215f571ad064f78ce1dc75766926e36657db356d9b9` |
| 14 | `lemma` | [tendsto_harmonic_sub_log](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantc670bb1ef4caef4e6df096b3ead780dd6c749f4ba6b0afe090db353c25589f04.lean/declarations/tendsto-harmonic-sub-log--4c6c6b39ec42a5223ab73396.md) | 155 | `result-track:4c6c6b39ec42a5223ab733960cd7c7726c90396b5d4fb7284e82ec0967b378e6` |
| 15 | `lemma` | [eulerMascheroniSeq_lt_eulerMascheroniConstant](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantc670bb1ef4caef4e6df096b3ead780dd6c749f4ba6b0afe090db353c25589f04.lean/declarations/eulermascheroniseq-lt-eulermascheroniconstant--37d95be012cfe9bfd01bc016.md) | 161 | `result-track:37d95be012cfe9bfd01bc016b9e42ebcd54875d7e2de5af8d60827e8d03b728d` |
| 16 | `lemma` | [eulerMascheroniConstant_lt_eulerMascheroniSeq'](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantc670bb1ef4caef4e6df096b3ead780dd6c749f4ba6b0afe090db353c25589f04.lean/declarations/eulermascheroniconstant-lt-eulermascheroniseq--bf0438e1c4816d6f36a0fae9.md) | 166 | `result-track:bf0438e1c4816d6f36a0fae9b58fe3ca43fe5ae6f9b6fcafb53deb1f25a56726` |
| 17 | `lemma` | [one_half_lt_eulerMascheroniConstant](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantc670bb1ef4caef4e6df096b3ead780dd6c749f4ba6b0afe090db353c25589f04.lean/declarations/one-half-lt-eulermascheroniconstant--6d701955b482d7af2f1402eb.md) | 172 | `result-track:6d701955b482d7af2f1402ebefd7a1622584b6aaaa092bd31022137edf518e42` |
| 18 | `lemma` | [eulerMascheroniConstant_lt_two_thirds](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantc670bb1ef4caef4e6df096b3ead780dd6c749f4ba6b0afe090db353c25589f04.lean/declarations/eulermascheroniconstant-lt-two-thirds--10ea665e776ffcad682fb491.md) | 176 | `result-track:10ea665e776ffcad682fb491dcfde83138233b856eefa0e56dc7d605455f30e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
