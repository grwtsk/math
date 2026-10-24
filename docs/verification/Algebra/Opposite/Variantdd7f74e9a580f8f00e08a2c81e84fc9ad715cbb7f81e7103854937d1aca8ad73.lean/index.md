# Verification target: GRWTSK.Algebra.Opposite.Variantdd7f74e9a580f8f00e08a2c81e84fc9ad715cbb7f81e7103854937d1aca8ad73

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c76068af99338a0b55acd9f7a8a176bf97ee59a2",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Opposite/Variantdd7f74e9a580f8f00e08a2c81e84fc9ad715cbb7f81e7103854937d1aca8ad73.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Opposite/Variantdd7f74e9a580f8f00e08a2c81e84fc9ad715cbb7f81e7103854937d1aca8ad73.lean/index.md) · [Full source](../../../../mathematics/Algebra/Opposite/Variantdd7f74e9a580f8f00e08a2c81e84fc9ad715cbb7f81e7103854937d1aca8ad73.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c76068af99338a0b55acd9f7a8a176bf97ee59a2`.

Source path: `GRWTSK/Algebra/Opposite/Variantdd7f74e9a580f8f00e08a2c81e84fc9ad715cbb7f81e7103854937d1aca8ad73.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Opposite/Variantdd7f74e9a580f8f00e08a2c81e84fc9ad715cbb7f81e7103854937d1aca8ad73.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Opposites` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Opposite` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [MulOpposite.instAlgebra](../../../../mathematics/Algebra/Opposite/Variantdd7f74e9a580f8f00e08a2c81e84fc9ad715cbb7f81e7103854937d1aca8ad73.lean/declarations/mulopposite-instalgebra--f4226eb87689c78426c67c6c.md) | 50 | `declaration-track:f4226eb87689c78426c67c6c0a1032ee68b6a4a2a44feef497ac10e63e71dfb7` |
| 2 | `theorem` | [algebraMap_apply](../../../../mathematics/Algebra/Opposite/Variantdd7f74e9a580f8f00e08a2c81e84fc9ad715cbb7f81e7103854937d1aca8ad73.lean/declarations/algebramap-apply--d7fcbb7f434c843d6abd75b9.md) | 59 | `result-track:d7fcbb7f434c843d6abd75b9f8ae6cd350900c838e37b623a74c3f53d4cd5c8f` |
| 3 | `def` | [opOp](../../../../mathematics/Algebra/Opposite/Variantdd7f74e9a580f8f00e08a2c81e84fc9ad715cbb7f81e7103854937d1aca8ad73.lean/declarations/opop--77a688cee458ff13a9d60bb2.md) | 70 | `declaration-track:77a688cee458ff13a9d60bb272d85535b83ee941d4e858118aa060d5db9b6288` |
| 4 | `theorem` | [toRingEquiv_opOp](../../../../mathematics/Algebra/Opposite/Variantdd7f74e9a580f8f00e08a2c81e84fc9ad715cbb7f81e7103854937d1aca8ad73.lean/declarations/toringequiv-opop--4b95bc7b4cd63f486c48eea7.md) | 74 | `result-track:4b95bc7b4cd63f486c48eea712b8a1bce0eb7717b8b4e5ee031dd1f5d1e98fc1` |
| 5 | `def` | [fromOpposite](../../../../mathematics/Algebra/Opposite/Variantdd7f74e9a580f8f00e08a2c81e84fc9ad715cbb7f81e7103854937d1aca8ad73.lean/declarations/fromopposite--c0d0538bf377c54865f57633.md) | 84 | `declaration-track:c0d0538bf377c54865f57633726e735a91ba6a109b81e3dea5503b8d6cc6b07b` |
| 6 | `theorem` | [toLinearMap_fromOpposite](../../../../mathematics/Algebra/Opposite/Variantdd7f74e9a580f8f00e08a2c81e84fc9ad715cbb7f81e7103854937d1aca8ad73.lean/declarations/tolinearmap-fromopposite--32e39289c2c3b1cd3c3ea465.md) | 90 | `result-track:32e39289c2c3b1cd3c3ea46556386264bc41b26cc4f4ff3e950dca2dbe272524` |
| 7 | `theorem` | [toRingHom_fromOpposite](../../../../mathematics/Algebra/Opposite/Variantdd7f74e9a580f8f00e08a2c81e84fc9ad715cbb7f81e7103854937d1aca8ad73.lean/declarations/toringhom-fromopposite--e703f0747defc3d810ea1716.md) | 95 | `result-track:e703f0747defc3d810ea1716d167d97e5cc0f043720765ddbd75e55625ae663e` |
| 8 | `def` | [toOpposite](../../../../mathematics/Algebra/Opposite/Variantdd7f74e9a580f8f00e08a2c81e84fc9ad715cbb7f81e7103854937d1aca8ad73.lean/declarations/toopposite--ac8480634fcfa8b9df1f0e7a.md) | 103 | `declaration-track:ac8480634fcfa8b9df1f0e7a488329024a71e0576cb32eb3074e30a9ed0d4a13` |
| 9 | `theorem` | [toLinearMap_toOpposite](../../../../mathematics/Algebra/Opposite/Variantdd7f74e9a580f8f00e08a2c81e84fc9ad715cbb7f81e7103854937d1aca8ad73.lean/declarations/tolinearmap-toopposite--5b967c7e03831688376b2e5a.md) | 109 | `result-track:5b967c7e03831688376b2e5a3379577b7aa0c0fcb8ceac0b8b94976b6c4bf529` |
| 10 | `theorem` | [toRingHom_toOpposite](../../../../mathematics/Algebra/Opposite/Variantdd7f74e9a580f8f00e08a2c81e84fc9ad715cbb7f81e7103854937d1aca8ad73.lean/declarations/toringhom-toopposite--95b0bbd4353a5b0c470abce1.md) | 114 | `result-track:95b0bbd4353a5b0c470abce19747b1eb03c4af0fdc1486c0c8ba5878c55f6516` |
| 11 | `def` | [op](../../../../mathematics/Algebra/Opposite/Variantdd7f74e9a580f8f00e08a2c81e84fc9ad715cbb7f81e7103854937d1aca8ad73.lean/declarations/op--a13d2562db735f9821d00e1d.md) | 121 | `declaration-track:a13d2562db735f9821d00e1dba8fe1d1a060f43acc40ec10f8a87e06f85d0d64` |
| 12 | `theorem` | [toRingHom_op](../../../../mathematics/Algebra/Opposite/Variantdd7f74e9a580f8f00e08a2c81e84fc9ad715cbb7f81e7103854937d1aca8ad73.lean/declarations/toringhom-op--6f6fb5eaec1002d6c7cc8a8a.md) | 127 | `result-track:6f6fb5eaec1002d6c7cc8a8ab64f28f61e4b3742200f9a5b05c989a4eb0a1650` |
| 13 | `abbrev` | [unop](../../../../mathematics/Algebra/Opposite/Variantdd7f74e9a580f8f00e08a2c81e84fc9ad715cbb7f81e7103854937d1aca8ad73.lean/declarations/unop--4c9000baddfbad93955d4d2a.md) | 131 | `declaration-track:4c9000baddfbad93955d4d2ad2ca259481889eb74b90aba45ca66d389175c1b0` |
| 14 | `theorem` | [toRingHom_unop](../../../../mathematics/Algebra/Opposite/Variantdd7f74e9a580f8f00e08a2c81e84fc9ad715cbb7f81e7103854937d1aca8ad73.lean/declarations/toringhom-unop--c76d56f3b5350abdfa1a3c75.md) | 133 | `result-track:c76d56f3b5350abdfa1a3c7551253e28bb7ef414e66c2669372fcd2372106960` |
| 15 | `def` | [opComm](../../../../mathematics/Algebra/Opposite/Variantdd7f74e9a580f8f00e08a2c81e84fc9ad715cbb7f81e7103854937d1aca8ad73.lean/declarations/opcomm--8708ccc2acb327a494b6a8b3.md) | 138 | `declaration-track:8708ccc2acb327a494b6a8b37aa7859088c7012d3b74e67768406474adb332ab` |
| 16 | `def` | [op](../../../../mathematics/Algebra/Opposite/Variantdd7f74e9a580f8f00e08a2c81e84fc9ad715cbb7f81e7103854937d1aca8ad73.lean/declarations/op--c2ccb9eceb289d1ed1aab666.md) | 148 | `declaration-track:c2ccb9eceb289d1ed1aab66646efc2cfc11eadcc2b1dc01ac778cb43ed8b0a0e` |
| 17 | `theorem` | [toAlgHom_op](../../../../mathematics/Algebra/Opposite/Variantdd7f74e9a580f8f00e08a2c81e84fc9ad715cbb7f81e7103854937d1aca8ad73.lean/declarations/toalghom-op--b09fb5a7f31b5e1c208b7d2c.md) | 158 | `result-track:b09fb5a7f31b5e1c208b7d2cfa0e3d6af8067d94a4952007a34413ee1a8384ce` |
| 18 | `theorem` | [toRingEquiv_op](../../../../mathematics/Algebra/Opposite/Variantdd7f74e9a580f8f00e08a2c81e84fc9ad715cbb7f81e7103854937d1aca8ad73.lean/declarations/toringequiv-op--ef4875ebbe56aa84ec67ac30.md) | 162 | `result-track:ef4875ebbe56aa84ec67ac30f4ce768a83f28b4d5df4361bc63f316b41309c72` |
| 19 | `abbrev` | [unop](../../../../mathematics/Algebra/Opposite/Variantdd7f74e9a580f8f00e08a2c81e84fc9ad715cbb7f81e7103854937d1aca8ad73.lean/declarations/unop--45bb869eef3d1b1f873187d9.md) | 167 | `declaration-track:45bb869eef3d1b1f873187d98bd98a4a041cc60e3e7eb743f1be7a4e7eb0ce3f` |
| 20 | `theorem` | [toAlgHom_unop](../../../../mathematics/Algebra/Opposite/Variantdd7f74e9a580f8f00e08a2c81e84fc9ad715cbb7f81e7103854937d1aca8ad73.lean/declarations/toalghom-unop--b350fcc748145b075b87f507.md) | 169 | `result-track:b350fcc748145b075b87f507e2be83782ae44cefb1173ad6b60825bf7fd87c8c` |
| 21 | `theorem` | [toRingEquiv_unop](../../../../mathematics/Algebra/Opposite/Variantdd7f74e9a580f8f00e08a2c81e84fc9ad715cbb7f81e7103854937d1aca8ad73.lean/declarations/toringequiv-unop--60b647a698f19232fe6b7aa4.md) | 172 | `result-track:60b647a698f19232fe6b7aa4dde8cc07a2c3942df25dfeef05dc783ccd886b78` |
| 22 | `def` | [opComm](../../../../mathematics/Algebra/Opposite/Variantdd7f74e9a580f8f00e08a2c81e84fc9ad715cbb7f81e7103854937d1aca8ad73.lean/declarations/opcomm--95da72a7bb8e7e26dcf82e33.md) | 178 | `declaration-track:95da72a7bb8e7e26dcf82e33938d906fac3077e7b1a812dcbcb637818e007fb2` |
| 23 | `def` | [toOpposite](../../../../mathematics/Algebra/Opposite/Variantdd7f74e9a580f8f00e08a2c81e84fc9ad715cbb7f81e7103854937d1aca8ad73.lean/declarations/toopposite--f4dac6a310a17dac2ce7375b.md) | 192 | `declaration-track:f4dac6a310a17dac2ce7375bbeac9a68c3f17652f5c1a99b4e825ae52a727494` |
| 24 | `lemma` | [toRingEquiv_toOpposite](../../../../mathematics/Algebra/Opposite/Variantdd7f74e9a580f8f00e08a2c81e84fc9ad715cbb7f81e7103854937d1aca8ad73.lean/declarations/toringequiv-toopposite--1519e4007d592337d2356498.md) | 196 | `result-track:1519e4007d592337d235649835b5e83a4efdbeb132ea4449b95734662da89cbd` |
| 25 | `lemma` | [toLinearEquiv_toOpposite](../../../../mathematics/Algebra/Opposite/Variantdd7f74e9a580f8f00e08a2c81e84fc9ad715cbb7f81e7103854937d1aca8ad73.lean/declarations/tolinearequiv-toopposite--8b54ae4ea4d42ad68c7ed692.md) | 197 | `result-track:8b54ae4ea4d42ad68c7ed69270ccccca294d346dfe7933dfb81649c07c0a4b9e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
