# Verification target: GRWTSK.Algebra.LinearAlgebra.Localization.Variantd380ef0ea5a10a8494a9694418b0ee8bbd1588b914f06a23193a7ade21f0cfcc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2d705a7bbb357ed0257c0f6ec0d312162333865",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Localization/Variantd380ef0ea5a10a8494a9694418b0ee8bbd1588b914f06a23193a7ade21f0cfcc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variantd380ef0ea5a10a8494a9694418b0ee8bbd1588b914f06a23193a7ade21f0cfcc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variantd380ef0ea5a10a8494a9694418b0ee8bbd1588b914f06a23193a7ade21f0cfcc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2d705a7bbb357ed0257c0f6ec0d312162333865`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Localization/Variantd380ef0ea5a10a8494a9694418b0ee8bbd1588b914f06a23193a7ade21f0cfcc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Localization/Variantd380ef0ea5a10a8494a9694418b0ee8bbd1588b914f06a23193a7ade21f0cfcc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsLocalization.flat](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variantd380ef0ea5a10a8494a9694418b0ee8bbd1588b914f06a23193a7ade21f0cfcc.lean/declarations/islocalization-flat--8f9f94de211b2cd496de1946.md) | 45 | `result-track:8f9f94de211b2cd496de1946ab670742782e79328e3bc25ae7a2b4b89e989dee` |
| 2 | `instance` | [Localization.flat](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variantd380ef0ea5a10a8494a9694418b0ee8bbd1588b914f06a23193a7ade21f0cfcc.lean/declarations/localization-flat--64d892339fd1e6e956d3303e.md) | 53 | `declaration-track:64d892339fd1e6e956d3303e80257f0755b68aeac3d8c24f2157ec2735e85701` |
| 3 | `theorem` | [flat_iff_of_isLocalization](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variantd380ef0ea5a10a8494a9694418b0ee8bbd1588b914f06a23193a7ade21f0cfcc.lean/declarations/flat-iff-of-islocalization--73253c66f42be1c8315ac1bc.md) | 60 | `result-track:73253c66f42be1c8315ac1bc751836f752d9108ca62ec8990682da795159bb11` |
| 4 | `theorem` | [flat_of_isLocalized_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variantd380ef0ea5a10a8494a9694418b0ee8bbd1588b914f06a23193a7ade21f0cfcc.lean/declarations/flat-of-islocalized-maximal--1dc14919d6a508ae22392676.md) | 74 | `result-track:1dc14919d6a508ae223926763d20f1654c9685f1a56f039f7e18d8ea1029f50e` |
| 5 | `theorem` | [flat_of_localized_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variantd380ef0ea5a10a8494a9694418b0ee8bbd1588b914f06a23193a7ade21f0cfcc.lean/declarations/flat-of-localized-maximal--789418e99046857a1a7dcbd3.md) | 83 | `result-track:789418e99046857a1a7dcbd3059e6e0f9b59be33072b8f38d0a6277286c2980f` |
| 6 | `theorem` | [flat_of_isLocalized_span](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variantd380ef0ea5a10a8494a9694418b0ee8bbd1588b914f06a23193a7ade21f0cfcc.lean/declarations/flat-of-islocalized-span--49aab4850d86d3504c1fa61f.md) | 99 | `result-track:49aab4850d86d3504c1fa61f8c641540618ab3a94fa9b617a381045100effb90` |
| 7 | `theorem` | [flat_of_localized_span](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variantd380ef0ea5a10a8494a9694418b0ee8bbd1588b914f06a23193a7ade21f0cfcc.lean/declarations/flat-of-localized-span--6dab3d580f6c26eda7cc89f0.md) | 108 | `result-track:6dab3d580f6c26eda7cc89f03da91c36f0af6761fcc5d92801058b5452732432` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variantd380ef0ea5a10a8494a9694418b0ee8bbd1588b914f06a23193a7ade21f0cfcc.lean/declarations/instance--2e4fd894268d976f2a625a39.md) | 117 | `declaration-track:2e4fd894268d976f2a625a392a54e36c5dadbbf947743677512597ef5da8c839` |
| 9 | `theorem` | [IsSMulRegular.of_isLocalizedModule](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variantd380ef0ea5a10a8494a9694418b0ee8bbd1588b914f06a23193a7ade21f0cfcc.lean/declarations/issmulregular-of-islocalizedmodule--9390e1ecb936f2ae48523ff0.md) | 127 | `result-track:9390e1ecb936f2ae48523ff08a9f7034a36ece090b136d11741f023bbe596b7b` |
| 10 | `theorem` | [IsSMulRegular.of_isLocalization](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variantd380ef0ea5a10a8494a9694418b0ee8bbd1588b914f06a23193a7ade21f0cfcc.lean/declarations/issmulregular-of-islocalization--87787ebce06beb2b9eaba06f.md) | 134 | `result-track:87787ebce06beb2b9eaba06ff503fb343017366b458288f98a4d7654d39e807a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
