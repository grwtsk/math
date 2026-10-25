# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.WithLp.Variante985c5f3da61365537575094e6f1f75a151701b7babec7d5a433c19355672128

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43cc42a72b65757d531b8d0a413f239961978d1b",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variante985c5f3da61365537575094e6f1f75a151701b7babec7d5a433c19355672128.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variante985c5f3da61365537575094e6f1f75a151701b7babec7d5a433c19355672128.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variante985c5f3da61365537575094e6f1f75a151701b7babec7d5a433c19355672128.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43cc42a72b65757d531b8d0a413f239961978d1b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variante985c5f3da61365537575094e6f1f75a151701b7babec7d5a433c19355672128.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variante985c5f3da61365537575094e6f1f75a151701b7babec7d5a433c19355672128.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENNReal.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [WithLp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variante985c5f3da61365537575094e6f1f75a151701b7babec7d5a433c19355672128.lean/declarations/withlp--521bb214d8ca699755700290.md) | 55 | `declaration-track:521bb214d8ca6997557002905d3773d83576c42d6499148e35791df774b1c40e` |
| 2 | `def` | [equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variante985c5f3da61365537575094e6f1f75a151701b7babec7d5a433c19355672128.lean/declarations/equiv--de98cee140773741c5a4f271.md) | 63 | `declaration-track:de98cee140773741c5a4f271b207b832d1eef75ab62f8a03ce3bee69e7c9d34e` |
| 3 | `instance` | [instNontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variante985c5f3da61365537575094e6f1f75a151701b7babec7d5a433c19355672128.lean/declarations/instnontrivial--1ec9d442a688a480bc086ad8.md) | 67 | `declaration-track:1ec9d442a688a480bc086ad8d7b96097fb85abfe0ead3976da6985839c753f38` |
| 4 | `instance` | [instUnique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variante985c5f3da61365537575094e6f1f75a151701b7babec7d5a433c19355672128.lean/declarations/instunique--73ec035d6900c2d722e42abe.md) | 68 | `declaration-track:73ec035d6900c2d722e42abe18005b63e2975f55041b5595b01dd9cd9c07a050` |
| 5 | `instance` | [instDecidableEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variante985c5f3da61365537575094e6f1f75a151701b7babec7d5a433c19355672128.lean/declarations/instdecidableeq--a6237c0d37949d8ec8419f4c.md) | 69 | `declaration-track:a6237c0d37949d8ec8419f4c1d4f2460fb58fa1ef1678120996b0b08e63a2d6c` |
| 6 | `instance` | [instAddCommGroup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variante985c5f3da61365537575094e6f1f75a151701b7babec7d5a433c19355672128.lean/declarations/instaddcommgroup--b854b93ea457e337baa46ec6.md) | 71 | `declaration-track:b854b93ea457e337baa46ec6a19f1a9f2d86e4c4b751e6ba4312a219d1dae663` |
| 7 | `instance` | [instSMul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variante985c5f3da61365537575094e6f1f75a151701b7babec7d5a433c19355672128.lean/declarations/instsmul--73dbbfe1cb94f36f82bb4d19.md) | 72 | `declaration-track:73dbbfe1cb94f36f82bb4d19e95ac35c017d06e7419fc172e9d9b7a2ae3b50f9` |
| 8 | `instance` | [instMulAction](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variante985c5f3da61365537575094e6f1f75a151701b7babec7d5a433c19355672128.lean/declarations/instmulaction--62368d22ef18e29ceb74f0a9.md) | 73 | `declaration-track:62368d22ef18e29ceb74f0a9a6f86bd88c21069ea421f2963f1de49a0b6bbb78` |
| 9 | `instance` | [instDistribMulAction](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variante985c5f3da61365537575094e6f1f75a151701b7babec7d5a433c19355672128.lean/declarations/instdistribmulaction--08f42d45eddf0133e2ddb4b1.md) | 74 | `declaration-track:08f42d45eddf0133e2ddb4b10042c74360e1b9916349ece686f02999c6a61d04` |
| 10 | `instance` | [instModule](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variante985c5f3da61365537575094e6f1f75a151701b7babec7d5a433c19355672128.lean/declarations/instmodule--7c81154aef510e5472f07cd8.md) | 76 | `declaration-track:7c81154aef510e5472f07cd8d4bdc2a633d4bb1a8b5d5c74c70e38a66ea49d4e` |
| 11 | `instance` | [instIsScalarTower](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variante985c5f3da61365537575094e6f1f75a151701b7babec7d5a433c19355672128.lean/declarations/instisscalartower--903682faca0adfef724fe630.md) | 80 | `declaration-track:903682faca0adfef724fe630bcef5a62b210117116c1900bb4ca0b0d3bf34176` |
| 12 | `instance` | [instSMulCommClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variante985c5f3da61365537575094e6f1f75a151701b7babec7d5a433c19355672128.lean/declarations/instsmulcommclass--c7ea72ba0ddb90e201b555ab.md) | 85 | `declaration-track:c7ea72ba0ddb90e201b555abd98bc56514e396c61750924af0b345365c5db5a2` |
| 13 | `instance` | [instModuleFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variante985c5f3da61365537575094e6f1f75a151701b7babec7d5a433c19355672128.lean/declarations/instmodulefinite--45fc61e788defcab7ae32e7b.md) | 89 | `declaration-track:45fc61e788defcab7ae32e7ba097a223355f2cb63f0b1d95d5735caa60470a69` |
| 14 | `theorem` | [equiv_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variante985c5f3da61365537575094e6f1f75a151701b7babec7d5a433c19355672128.lean/declarations/equiv-zero--94357b93f08ce4f7c90276bc.md) | 99 | `result-track:94357b93f08ce4f7c90276bca1045c7ed27078a873326bc98b1b78d5bc6f85a2` |
| 15 | `theorem` | [equiv_symm_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variante985c5f3da61365537575094e6f1f75a151701b7babec7d5a433c19355672128.lean/declarations/equiv-symm-zero--ff4f939a4778a22e8cbf28e1.md) | 103 | `result-track:ff4f939a4778a22e8cbf28e1f4c17661d61efbbd11febfa6ab3f804e5a22c3d5` |
| 16 | `theorem` | [equiv_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variante985c5f3da61365537575094e6f1f75a151701b7babec7d5a433c19355672128.lean/declarations/equiv-add--e1bc6cc7da2881799de3e87d.md) | 107 | `result-track:e1bc6cc7da2881799de3e87db2f9b290ddba3b6ca1546c74dd061185f8535316` |
| 17 | `theorem` | [equiv_symm_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variante985c5f3da61365537575094e6f1f75a151701b7babec7d5a433c19355672128.lean/declarations/equiv-symm-add--cd877d2cd8ea7b78734f427b.md) | 112 | `result-track:cd877d2cd8ea7b78734f427bbc07c8e7f28b88ca24eadc1896890f6ea5e78663` |
| 18 | `theorem` | [equiv_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variante985c5f3da61365537575094e6f1f75a151701b7babec7d5a433c19355672128.lean/declarations/equiv-sub--c168f62b04fbd5d7a78c662d.md) | 117 | `result-track:c168f62b04fbd5d7a78c662df9cd73a598d23d88de1c19725ad8a1a4bbd39733` |
| 19 | `theorem` | [equiv_symm_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variante985c5f3da61365537575094e6f1f75a151701b7babec7d5a433c19355672128.lean/declarations/equiv-symm-sub--e85772dc15b023107c75ed6f.md) | 122 | `result-track:e85772dc15b023107c75ed6fb68fe097fb48cc2b3d7b216c159bf71088cc93d3` |
| 20 | `theorem` | [equiv_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variante985c5f3da61365537575094e6f1f75a151701b7babec7d5a433c19355672128.lean/declarations/equiv-neg--b07a4d0b50d30845bd8665d7.md) | 127 | `result-track:b07a4d0b50d30845bd8665d7fc1351506637ebb7dd7a885f919723f1c1ab8fbb` |
| 21 | `theorem` | [equiv_symm_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variante985c5f3da61365537575094e6f1f75a151701b7babec7d5a433c19355672128.lean/declarations/equiv-symm-neg--28d15ece39d3be41dbe158f0.md) | 131 | `result-track:28d15ece39d3be41dbe158f09374336f4b28e1334efa843625746dd708d670f8` |
| 22 | `theorem` | [equiv_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variante985c5f3da61365537575094e6f1f75a151701b7babec7d5a433c19355672128.lean/declarations/equiv-smul--061133e26020182a6f20baf5.md) | 136 | `result-track:061133e26020182a6f20baf5a119979178bc609ccc820df2dcf8df91a5366761` |
| 23 | `theorem` | [equiv_symm_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variante985c5f3da61365537575094e6f1f75a151701b7babec7d5a433c19355672128.lean/declarations/equiv-symm-smul--d2b6a97e31bad60908238486.md) | 141 | `result-track:d2b6a97e31bad60908238486eb4d323dada2a25d670112568098868f538f3fd3` |
| 24 | `def` | [linearEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WithLp/Variante985c5f3da61365537575094e6f1f75a151701b7babec7d5a433c19355672128.lean/declarations/linearequiv--12c6bdabbbf13c33b579476e.md) | 149 | `declaration-track:12c6bdabbbf13c33b579476e2939c1e3ed48d34ca759a6f8eecad456ecabf78e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
