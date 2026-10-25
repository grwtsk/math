# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Opposite.Variante624f7a66c94fe375dc5a8e5b55679b677db2390cf0d769a15c172b713048bdf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74e3ca3b4e5e9c9ad2b06d93a0bd8a527c6c19f3",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variante624f7a66c94fe375dc5a8e5b55679b677db2390cf0d769a15c172b713048bdf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variante624f7a66c94fe375dc5a8e5b55679b677db2390cf0d769a15c172b713048bdf.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variante624f7a66c94fe375dc5a8e5b55679b677db2390cf0d769a15c172b713048bdf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74e3ca3b4e5e9c9ad2b06d93a0bd8a527c6c19f3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variante624f7a66c94fe375dc5a8e5b55679b677db2390cf0d769a15c172b713048bdf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variante624f7a66c94fe375dc5a8e5b55679b677db2390cf0d769a15c172b713048bdf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Small.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Opposite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variante624f7a66c94fe375dc5a8e5b55679b677db2390cf0d769a15c172b713048bdf.lean/declarations/opposite--205ba96afb8b32389d55c637.md) | 37 | `declaration-track:205ba96afb8b32389d55c637c1d7b2fd41659c4ea37c21b536919be6b9506c57` |
| 2 | `def` | [Opposite.unexpander_op](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variante624f7a66c94fe375dc5a8e5b55679b677db2390cf0d769a15c172b713048bdf.lean/declarations/opposite-unexpander-op--3210dd3178c6300ccdcebe9a.md) | 48 | `declaration-track:3210dd3178c6300ccdcebe9a6ac9d9e5f776ee129a76dad911b295f887011bc5` |
| 3 | `theorem` | [op_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variante624f7a66c94fe375dc5a8e5b55679b677db2390cf0d769a15c172b713048bdf.lean/declarations/op-injective--0d772af4b088dda293e462ca.md) | 60 | `result-track:0d772af4b088dda293e462ca7a04acd315b424ade6bcc1307e1fd5b6d3025375` |
| 4 | `theorem` | [unop_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variante624f7a66c94fe375dc5a8e5b55679b677db2390cf0d769a15c172b713048bdf.lean/declarations/unop-injective--7c90cff861a1a255d1273adf.md) | 62 | `result-track:7c90cff861a1a255d1273adf95892412bf9b587457cba6de520c0febed41f15f` |
| 5 | `theorem` | [op_unop](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variante624f7a66c94fe375dc5a8e5b55679b677db2390cf0d769a15c172b713048bdf.lean/declarations/op-unop--43e6fff797b7d6b800a858aa.md) | 65 | `result-track:43e6fff797b7d6b800a858aa0df9b5a69b5877a00945bb2ec5ecafcdf41415c1` |
| 6 | `theorem` | [unop_op](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variante624f7a66c94fe375dc5a8e5b55679b677db2390cf0d769a15c172b713048bdf.lean/declarations/unop-op--e2ec7f786069f929fa2647e0.md) | 68 | `result-track:e2ec7f786069f929fa2647e0a51faf2f4a3b38d61bdc5c55abe57c0747253886` |
| 7 | `theorem` | [op_inj_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variante624f7a66c94fe375dc5a8e5b55679b677db2390cf0d769a15c172b713048bdf.lean/declarations/op-inj-iff--716870a7b19a30a243ddcf6e.md) | 73 | `result-track:716870a7b19a30a243ddcf6eed00302291088c028a51dbe053d0e040ccf966bc` |
| 8 | `theorem` | [unop_inj_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variante624f7a66c94fe375dc5a8e5b55679b677db2390cf0d769a15c172b713048bdf.lean/declarations/unop-inj-iff--f2307673fafb070d6230a78d.md) | 77 | `result-track:f2307673fafb070d6230a78d11b3e552a7b25cc42e8c5cd165014e274dcdd810` |
| 9 | `def` | [equivToOpposite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variante624f7a66c94fe375dc5a8e5b55679b677db2390cf0d769a15c172b713048bdf.lean/declarations/equivtoopposite--b80c1389167352b0a70cff01.md) | 81 | `declaration-track:b80c1389167352b0a70cff01d1506244523302d8df575e1b04e4443ad645f285` |
| 10 | `theorem` | [op_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variante624f7a66c94fe375dc5a8e5b55679b677db2390cf0d769a15c172b713048bdf.lean/declarations/op-surjective--9bab52ac55f9f97ef24bf3c6.md) | 87 | `result-track:9bab52ac55f9f97ef24bf3c6d1f2ff837b1581616518a5bc3211b6e21b83ae38` |
| 11 | `theorem` | [unop_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variante624f7a66c94fe375dc5a8e5b55679b677db2390cf0d769a15c172b713048bdf.lean/declarations/unop-surjective--ab78ebb260d1b4af8445bf45.md) | 89 | `result-track:ab78ebb260d1b4af8445bf45f1cc2786f5deeedb60ae8447d21c93290455befc` |
| 12 | `theorem` | [equivToOpposite_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variante624f7a66c94fe375dc5a8e5b55679b677db2390cf0d769a15c172b713048bdf.lean/declarations/equivtoopposite-coe--244e35270d561b84df1d23c7.md) | 92 | `result-track:244e35270d561b84df1d23c7eb96836de482f6a1ddbb8cab5a9ccc9f8574202d` |
| 13 | `theorem` | [equivToOpposite_symm_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variante624f7a66c94fe375dc5a8e5b55679b677db2390cf0d769a15c172b713048bdf.lean/declarations/equivtoopposite-symm-coe--cee576f50b055846a9c1fcf6.md) | 96 | `result-track:cee576f50b055846a9c1fcf6366f61b2082561745e4283b74928c8a9b1ea29df` |
| 14 | `theorem` | [op_eq_iff_eq_unop](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variante624f7a66c94fe375dc5a8e5b55679b677db2390cf0d769a15c172b713048bdf.lean/declarations/op-eq-iff-eq-unop--4056760152360f9f6727fd42.md) | 99 | `result-track:4056760152360f9f6727fd42786ddd9439f7310008657c38ba4b3d4fa3ada298` |
| 15 | `theorem` | [unop_eq_iff_eq_op](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variante624f7a66c94fe375dc5a8e5b55679b677db2390cf0d769a15c172b713048bdf.lean/declarations/unop-eq-iff-eq-op--b4ec7941b1da8a8861941535.md) | 102 | `result-track:b4ec7941b1da8a8861941535b128de9f8c3b3b8af125a6fdc3aea7e612f4b220` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variante624f7a66c94fe375dc5a8e5b55679b677db2390cf0d769a15c172b713048bdf.lean/declarations/instance--fc99f3c079dc3c122e609d3b.md) | 105 | `declaration-track:fc99f3c079dc3c122e609d3b894133ff03be7be79619d6914e070d88f7c129d6` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variante624f7a66c94fe375dc5a8e5b55679b677db2390cf0d769a15c172b713048bdf.lean/declarations/instance--28e9b14f0542a8cc188d71b6.md) | 108 | `declaration-track:28e9b14f0542a8cc188d71b6241828ead3f673d4329c483e27e4012d097172c4` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variante624f7a66c94fe375dc5a8e5b55679b677db2390cf0d769a15c172b713048bdf.lean/declarations/instance--1466f032a4ebbf632e0b8812.md) | 110 | `declaration-track:1466f032a4ebbf632e0b88124fed6bd84a2f26508afba4b830d5e6f093b0136e` |
| 19 | `def` | [rec'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variante624f7a66c94fe375dc5a8e5b55679b677db2390cf0d769a15c172b713048bdf.lean/declarations/rec--ad465017cc584f8461157c6a.md) | 114 | `declaration-track:ad465017cc584f8461157c6ae0e3e691fbe1f92f94abaefd86d3108077c5b08e` |
| 20 | `lemma` | [small](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variante624f7a66c94fe375dc5a8e5b55679b677db2390cf0d769a15c172b713048bdf.lean/declarations/small--dab41fc45dfa6028a7e49fb7.md) | 118 | `result-track:dab41fc45dfa6028a7e49fb73ffc75d7cb04e803c19175075c6fb56031823b6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
