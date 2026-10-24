# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Raw.Variantd4cf9e3c212f710fbd8ecc329a80b72161457ac664142f7fa00edf860e73fe81

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cbcb52da5a9e62f95c200779afd2b5afd9259fe4",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Raw/Variantd4cf9e3c212f710fbd8ecc329a80b72161457ac664142f7fa00edf860e73fe81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variantd4cf9e3c212f710fbd8ecc329a80b72161457ac664142f7fa00edf860e73fe81.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variantd4cf9e3c212f710fbd8ecc329a80b72161457ac664142f7fa00edf860e73fe81.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cbcb52da5a9e62f95c200779afd2b5afd9259fe4`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Raw/Variantd4cf9e3c212f710fbd8ecc329a80b72161457ac664142f7fa00edf860e73fe81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Raw/Variantd4cf9e3c212f710fbd8ecc329a80b72161457ac664142f7fa00edf860e73fe81.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Kernel.Core` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Completion` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Raw](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variantd4cf9e3c212f710fbd8ecc329a80b72161457ac664142f7fa00edf860e73fe81.lean/declarations/raw--31de2b17257073929488e224.md) | 35 | `declaration-track:31de2b17257073929488e2246926b9c943eb04102445b00ab6fb9785667010fb` |
| 2 | `def` | [toFinsupp](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variantd4cf9e3c212f710fbd8ecc329a80b72161457ac664142f7fa00edf860e73fe81.lean/declarations/tofinsupp--ed11ed2dbdc56c032ebac268.md) | 42 | `declaration-track:ed11ed2dbdc56c032ebac268a5667aa0cda1999d9b15dd596014ddb5a950af38` |
| 3 | `def` | [inner](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variantd4cf9e3c212f710fbd8ecc329a80b72161457ac664142f7fa00edf860e73fe81.lean/declarations/inner--4982ea8c25920498365af03c.md) | 46 | `declaration-track:4982ea8c25920498365af03c9610a77d5f35e4550b683c62db1905c7a550eeb7` |
| 4 | `def` | [core](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variantd4cf9e3c212f710fbd8ecc329a80b72161457ac664142f7fa00edf860e73fe81.lean/declarations/core--2a7b9899d9fb056522e355cc.md) | 52 | `declaration-track:2a7b9899d9fb056522e355ccf1b1f1aca7cae3e98230e13fa44356682ab66d06` |
| 5 | `def` | [seminorm](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variantd4cf9e3c212f710fbd8ecc329a80b72161457ac664142f7fa00edf860e73fe81.lean/declarations/seminorm--c02bb963c0827fa150f8af9d.md) | 77 | `declaration-track:c02bb963c0827fa150f8af9dedbf4bffa9ffa32b20008fedeee99dd75013c0be` |
| 6 | `theorem` | [conjugate_linear_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variantd4cf9e3c212f710fbd8ecc329a80b72161457ac664142f7fa00edf860e73fe81.lean/declarations/conjugate-linear-left--5dedafa20365e7e57868b8fe.md) | 81 | `result-track:5dedafa20365e7e57868b8fe45fd8d532834609f08243cc96fcfb5d4c4dc756b` |
| 7 | `theorem` | [inner_conj_symm](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variantd4cf9e3c212f710fbd8ecc329a80b72161457ac664142f7fa00edf860e73fe81.lean/declarations/inner-conj-symm--0c6c82db35711c899e761326.md) | 88 | `result-track:0c6c82db35711c899e7613269d1f922b9998601a80a8c49dcae07e3e57d01e38` |
| 8 | `theorem` | [linear_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variantd4cf9e3c212f710fbd8ecc329a80b72161457ac664142f7fa00edf860e73fe81.lean/declarations/linear-right--68ce17b0a6455757cdf5f290.md) | 93 | `result-track:68ce17b0a6455757cdf5f29037a865b28acdf0fa37a25354d269500c2bc16327` |
| 9 | `theorem` | [add_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variantd4cf9e3c212f710fbd8ecc329a80b72161457ac664142f7fa00edf860e73fe81.lean/declarations/add-left--2902d59aa3573cd263803659.md) | 101 | `result-track:2902d59aa3573cd2638036590ff6843fa61812aa69bea7e29e5c90b34dd77df8` |
| 10 | `theorem` | [add_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variantd4cf9e3c212f710fbd8ecc329a80b72161457ac664142f7fa00edf860e73fe81.lean/declarations/add-right--c70ad96066e1597dcf2b0989.md) | 107 | `result-track:c70ad96066e1597dcf2b09890dc219a91cfc4921fba3aca7aef5bcef20f15d1b` |
| 11 | `theorem` | [inner_self_nonneg](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variantd4cf9e3c212f710fbd8ecc329a80b72161457ac664142f7fa00edf860e73fe81.lean/declarations/inner-self-nonneg--c774e1672ebdd279c570c35a.md) | 114 | `result-track:c774e1672ebdd279c570c35a135286b2d18a33f10792ca24e22d80282aad0d38` |
| 12 | `theorem` | [kernel_cauchy_schwarz](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variantd4cf9e3c212f710fbd8ecc329a80b72161457ac664142f7fa00edf860e73fe81.lean/declarations/kernel-cauchy-schwarz--3b2ff36d9e6b0df930775bba.md) | 119 | `result-track:3b2ff36d9e6b0df930775bba210cac012a8f14ae9de2c71e52888c12900a7ba7` |
| 13 | `def` | [basisVector](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variantd4cf9e3c212f710fbd8ecc329a80b72161457ac664142f7fa00edf860e73fe81.lean/declarations/basisvector--0688f73427a4f2ba90833f4d.md) | 131 | `declaration-track:0688f73427a4f2ba90833f4d52130804ef605bd483610b9e6146656144fa80c3` |
| 14 | `theorem` | [inner_basisVector_basisVector](../../../../../mathematics/Analysis/FunctionalAnalysis/Raw/Variantd4cf9e3c212f710fbd8ecc329a80b72161457ac664142f7fa00edf860e73fe81.lean/declarations/inner-basisvector-basisvector--e4d225dcecf408ab1905a5f6.md) | 135 | `result-track:e4d225dcecf408ab1905a5f6328c76cf0274947987b5519b8c503c397a436505` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
