# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Opposite.Variant47d850f481101a0dd93f6a3fd5974b814014dc4862880574b0fc79d88ab1507b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3df9cdf371842cfe6d87c907d558cf6e71ce2718",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant47d850f481101a0dd93f6a3fd5974b814014dc4862880574b0fc79d88ab1507b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant47d850f481101a0dd93f6a3fd5974b814014dc4862880574b0fc79d88ab1507b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant47d850f481101a0dd93f6a3fd5974b814014dc4862880574b0fc79d88ab1507b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3df9cdf371842cfe6d87c907d558cf6e71ce2718`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant47d850f481101a0dd93f6a3fd5974b814014dc4862880574b0fc79d88ab1507b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant47d850f481101a0dd93f6a3fd5974b814014dc4862880574b0fc79d88ab1507b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Opposite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant47d850f481101a0dd93f6a3fd5974b814014dc4862880574b0fc79d88ab1507b.lean/declarations/opposite--aa2bf26d32ce8ccd53954a47.md) | 35 | `declaration-track:aa2bf26d32ce8ccd53954a47c36adeb8987c0c9db422c0882d4829a8efb87ee3` |
| 2 | `def` | [op](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant47d850f481101a0dd93f6a3fd5974b814014dc4862880574b0fc79d88ab1507b.lean/declarations/op--122bf1d0b0f73e26efefd709.md) | 53 | `declaration-track:122bf1d0b0f73e26efefd709046837693da74bbee3786b71bb87cb0a8d89e13a` |
| 3 | `theorem` | [op_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant47d850f481101a0dd93f6a3fd5974b814014dc4862880574b0fc79d88ab1507b.lean/declarations/op-injective--b9168f9273de69833a91e62e.md) | 56 | `result-track:b9168f9273de69833a91e62eec54c66f5356a6744e4c941c484b7815d6705c13` |
| 4 | `theorem` | [unop_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant47d850f481101a0dd93f6a3fd5974b814014dc4862880574b0fc79d88ab1507b.lean/declarations/unop-injective--07dbd66bc4c380add3b95657.md) | 59 | `result-track:07dbd66bc4c380add3b9565789e151e6d5ed6be1b3ea5fbbde07b3c7ef73b0a5` |
| 5 | `theorem` | [op_unop](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant47d850f481101a0dd93f6a3fd5974b814014dc4862880574b0fc79d88ab1507b.lean/declarations/op-unop--f83155ad37f4f78db45b46e1.md) | 63 | `result-track:f83155ad37f4f78db45b46e1436196442a0083e41fb0b00a27fe239bf71b027c` |
| 6 | `theorem` | [unop_op](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant47d850f481101a0dd93f6a3fd5974b814014dc4862880574b0fc79d88ab1507b.lean/declarations/unop-op--0f3844316d11c5cdbd1949c7.md) | 68 | `result-track:0f3844316d11c5cdbd1949c7d0cc72e6fc6bb72e776e82d0632cfac5397adee4` |
| 7 | `theorem` | [op_inj_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant47d850f481101a0dd93f6a3fd5974b814014dc4862880574b0fc79d88ab1507b.lean/declarations/op-inj-iff--3e456c41cd3328351695f020.md) | 75 | `result-track:3e456c41cd3328351695f0205579a488fa8bbf6bd9ed546d6b386ee0a30f2993` |
| 8 | `theorem` | [unop_inj_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant47d850f481101a0dd93f6a3fd5974b814014dc4862880574b0fc79d88ab1507b.lean/declarations/unop-inj-iff--270181e9528986c7215997be.md) | 80 | `result-track:270181e9528986c7215997becc57c72332e57f5cfc3035b5f2d488900c186fda` |
| 9 | `def` | [equivToOpposite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant47d850f481101a0dd93f6a3fd5974b814014dc4862880574b0fc79d88ab1507b.lean/declarations/equivtoopposite--c3f3f36ed56cd600aad39021.md) | 85 | `declaration-track:c3f3f36ed56cd600aad390214824808135d7cd87ed35baec180857fb7e2c686b` |
| 10 | `theorem` | [equivToOpposite_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant47d850f481101a0dd93f6a3fd5974b814014dc4862880574b0fc79d88ab1507b.lean/declarations/equivtoopposite-coe--3b51fef1f0df634513783fc4.md) | 93 | `result-track:3b51fef1f0df634513783fc4022d550cd3b9bde3712bb853e6ebc68d44dc4343` |
| 11 | `theorem` | [equivToOpposite_symm_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant47d850f481101a0dd93f6a3fd5974b814014dc4862880574b0fc79d88ab1507b.lean/declarations/equivtoopposite-symm-coe--7748752fe7fb943051e14abb.md) | 98 | `result-track:7748752fe7fb943051e14abb19be9f66acd04d86fc990c4b43950abfef7d8cf8` |
| 12 | `theorem` | [op_eq_iff_eq_unop](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant47d850f481101a0dd93f6a3fd5974b814014dc4862880574b0fc79d88ab1507b.lean/declarations/op-eq-iff-eq-unop--743da8132ea71419a9191226.md) | 102 | `result-track:743da8132ea71419a9191226318e447656dffca691f8d1a694015dcd3e5d5fd9` |
| 13 | `theorem` | [unop_eq_iff_eq_op](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant47d850f481101a0dd93f6a3fd5974b814014dc4862880574b0fc79d88ab1507b.lean/declarations/unop-eq-iff-eq-op--0325a11b7f31b3bc18ab432f.md) | 106 | `result-track:0325a11b7f31b3bc18ab432fa791083b47cc48ad4bef8e378c9ffb1c26d5606b` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant47d850f481101a0dd93f6a3fd5974b814014dc4862880574b0fc79d88ab1507b.lean/declarations/instance--78d228c654bf5e95b1f1d074.md) | 110 | `declaration-track:78d228c654bf5e95b1f1d0746c1249657198bf71a6889e92bd504e943b9acb9c` |
| 15 | `def` | [rec'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant47d850f481101a0dd93f6a3fd5974b814014dc4862880574b0fc79d88ab1507b.lean/declarations/rec--0ed62b635793f8be57a99a36.md) | 117 | `declaration-track:0ed62b635793f8be57a99a366555124271b2186b09245f675fd8ee5088d6998d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
