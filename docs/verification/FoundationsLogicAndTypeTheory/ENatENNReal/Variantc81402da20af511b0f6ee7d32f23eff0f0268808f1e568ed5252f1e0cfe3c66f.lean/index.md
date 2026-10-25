# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ENatENNReal.Variantc81402da20af511b0f6ee7d32f23eff0f0268808f1e568ed5252f1e0cfe3c66f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d03d5dfa870ff5789d1703f4ee194bcc837d204",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ENatENNReal/Variantc81402da20af511b0f6ee7d32f23eff0f0268808f1e568ed5252f1e0cfe3c66f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variantc81402da20af511b0f6ee7d32f23eff0f0268808f1e568ed5252f1e0cfe3c66f.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variantc81402da20af511b0f6ee7d32f23eff0f0268808f1e568ed5252f1e0cfe3c66f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d03d5dfa870ff5789d1703f4ee194bcc837d204`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ENatENNReal/Variantc81402da20af511b0f6ee7d32f23eff0f0268808f1e568ed5252f1e0cfe3c66f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ENatENNReal/Variantc81402da20af511b0f6ee7d32f23eff0f0268808f1e568ed5252f1e0cfe3c66f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.ENNReal` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toENNReal](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variantc81402da20af511b0f6ee7d32f23eff0f0268808f1e568ed5252f1e0cfe3c66f.lean/declarations/toennreal--60597a05f377ef5e40edd00c.md) | 27 | `declaration-track:60597a05f377ef5e40edd00c5f80f0a9fc1b02fc2697af795df093decad50f17` |
| 2 | `instance` | [hasCoeENNReal](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variantc81402da20af511b0f6ee7d32f23eff0f0268808f1e568ed5252f1e0cfe3c66f.lean/declarations/hascoeennreal--1b9a55e01bc69b922a7183d0.md) | 29 | `declaration-track:1b9a55e01bc69b922a7183d07f19ce859759832b53a809510d0dbaebf42a541d` |
| 3 | `theorem` | [map_coe_nnreal](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variantc81402da20af511b0f6ee7d32f23eff0f0268808f1e568ed5252f1e0cfe3c66f.lean/declarations/map-coe-nnreal--1ffec75eba1dab641ac2ed77.md) | 33 | `result-track:1ffec75eba1dab641ac2ed77fe9124cad606d5deced6461c4ef9e5def4aef48e` |
| 4 | `def` | [toENNRealOrderEmbedding](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variantc81402da20af511b0f6ee7d32f23eff0f0268808f1e568ed5252f1e0cfe3c66f.lean/declarations/toennrealorderembedding--31d3b00075a0e4723289aef0.md) | 39 | `declaration-track:31d3b00075a0e4723289aef0ce597a6d6cc1635662597ff7660ce04ea8522ff8` |
| 5 | `def` | [toENNRealRingHom](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variantc81402da20af511b0f6ee7d32f23eff0f0268808f1e568ed5252f1e0cfe3c66f.lean/declarations/toennrealringhom--e82f7c7f67f3bcb465f756cf.md) | 45 | `declaration-track:e82f7c7f67f3bcb465f756cfcfc18900b8fb4554f229f3a6a48f3769d236d998` |
| 6 | `theorem` | [toENNReal_top](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variantc81402da20af511b0f6ee7d32f23eff0f0268808f1e568ed5252f1e0cfe3c66f.lean/declarations/toennreal-top--bd96a647a5c6479916064a20.md) | 50 | `result-track:bd96a647a5c6479916064a20494e95fad0a267e77a6e5128a6e2553d80584924` |
| 7 | `theorem` | [toENNReal_coe](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variantc81402da20af511b0f6ee7d32f23eff0f0268808f1e568ed5252f1e0cfe3c66f.lean/declarations/toennreal-coe--1e70d5f5da8cb6c7a12a382b.md) | 55 | `result-track:1e70d5f5da8cb6c7a12a382bc45f2983e83c359f25faee7a434c70391db41463` |
| 8 | `theorem` | [toENNReal_ofNat](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variantc81402da20af511b0f6ee7d32f23eff0f0268808f1e568ed5252f1e0cfe3c66f.lean/declarations/toennreal-ofnat--9683f39b301e8ad0754b7a82.md) | 60 | `result-track:9683f39b301e8ad0754b7a8280c595910ddcec0b2cacfd1776ff2e36e44409ea` |
| 9 | `theorem` | [toENNReal_le](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variantc81402da20af511b0f6ee7d32f23eff0f0268808f1e568ed5252f1e0cfe3c66f.lean/declarations/toennreal-le--0b9db683c25099fd1f738ea9.md) | 64 | `result-track:0b9db683c25099fd1f738ea9720d66f3b4ffa4a03f2167eb7a9fd1eb708731b6` |
| 10 | `theorem` | [toENNReal_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variantc81402da20af511b0f6ee7d32f23eff0f0268808f1e568ed5252f1e0cfe3c66f.lean/declarations/toennreal-lt--6ed753146a9892e971e6822d.md) | 69 | `result-track:6ed753146a9892e971e6822dc76f138bddd7c61aacb6e2caa05850eec9b2e05e` |
| 11 | `theorem` | [toENNReal_mono](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variantc81402da20af511b0f6ee7d32f23eff0f0268808f1e568ed5252f1e0cfe3c66f.lean/declarations/toennreal-mono--8bd7dcacc6fa2d3af1f6bb0f.md) | 74 | `result-track:8bd7dcacc6fa2d3af1f6bb0f2bdf515213c98c06e5a480bd65ede8b47d22fc5d` |
| 12 | `theorem` | [toENNReal_strictMono](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variantc81402da20af511b0f6ee7d32f23eff0f0268808f1e568ed5252f1e0cfe3c66f.lean/declarations/toennreal-strictmono--ae98d6d1ae935230ea8d49c1.md) | 79 | `result-track:ae98d6d1ae935230ea8d49c1a8294648e3e2a3d64c1a70c76c09a62b35cc28c3` |
| 13 | `theorem` | [toENNReal_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variantc81402da20af511b0f6ee7d32f23eff0f0268808f1e568ed5252f1e0cfe3c66f.lean/declarations/toennreal-zero--6c5f751af5f6a982d270ef00.md) | 84 | `result-track:6c5f751af5f6a982d270ef00b2eb76e153da46cea7f9db8ad90d016b69fd79e9` |
| 14 | `theorem` | [toENNReal_add](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variantc81402da20af511b0f6ee7d32f23eff0f0268808f1e568ed5252f1e0cfe3c66f.lean/declarations/toennreal-add--3358883585bb05fa4e1b0b5f.md) | 89 | `result-track:3358883585bb05fa4e1b0b5f8a77d0907555b3deea171cf62e01724da68150fd` |
| 15 | `theorem` | [toENNReal_one](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variantc81402da20af511b0f6ee7d32f23eff0f0268808f1e568ed5252f1e0cfe3c66f.lean/declarations/toennreal-one--e3fd7ced0097aaa42bf21c90.md) | 94 | `result-track:e3fd7ced0097aaa42bf21c90115c2d479a3899407b96c976f89e8c6e8875863b` |
| 16 | `theorem` | [toENNReal_mul](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variantc81402da20af511b0f6ee7d32f23eff0f0268808f1e568ed5252f1e0cfe3c66f.lean/declarations/toennreal-mul--b36b035c614923da2e7f6f06.md) | 102 | `result-track:b36b035c614923da2e7f6f065884ed11d9e6433afb6a00da345c6a5ca30fad25` |
| 17 | `theorem` | [toENNReal_min](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variantc81402da20af511b0f6ee7d32f23eff0f0268808f1e568ed5252f1e0cfe3c66f.lean/declarations/toennreal-min--b95934907e98c44df1be96e6.md) | 107 | `result-track:b95934907e98c44df1be96e6ab88e72f5543b8cbd597ddc8a19d4ec00b60e813` |
| 18 | `theorem` | [toENNReal_max](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variantc81402da20af511b0f6ee7d32f23eff0f0268808f1e568ed5252f1e0cfe3c66f.lean/declarations/toennreal-max--6ff45495c4e5f4046b862d20.md) | 112 | `result-track:6ff45495c4e5f4046b862d20832e5950d44302e6af14d1722ecdbc31dde7e7ef` |
| 19 | `theorem` | [toENNReal_sub](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variantc81402da20af511b0f6ee7d32f23eff0f0268808f1e568ed5252f1e0cfe3c66f.lean/declarations/toennreal-sub--6a76aa65cbe05296fd93230a.md) | 117 | `result-track:6a76aa65cbe05296fd93230ab8840d727a2007d715393f2cb9c6b8ccbfd2a51f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
