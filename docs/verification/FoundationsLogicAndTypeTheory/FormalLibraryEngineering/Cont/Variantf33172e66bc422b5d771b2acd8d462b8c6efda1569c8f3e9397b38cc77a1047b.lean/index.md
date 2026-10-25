# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cont.Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "990d97bc0a19565c6fd4f91de4fa55e6027588a9",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `990d97bc0a19565c6fd4f91de4fa55e6027588a9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Monad.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Monad.Writer` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Lawful` — import line 8; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Congr` — import line 9; external provider; requires a separately pinned dependency.
- `Batteries.Lean.Except` — import line 10; external provider; requires a separately pinned dependency.
- `Batteries.Control.OptionT` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MonadCont.Label](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/monadcont-label--59b8bf4ad618c1c0c2c2b919.md) | 23 | `declaration-track:59b8bf4ad618c1c0c2c2b919e909266499e6174c8d7d8a2f4ad518b195aa5d91` |
| 2 | `def` | [MonadCont.goto](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/monadcont-goto--d359e0c0510dc581994e66cb.md) | 26 | `declaration-track:d359e0c0510dc581994e66cb70178312a91a6994c6ed76d83e14adfe409d0bc9` |
| 3 | `class` | [MonadCont](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/monadcont--59e0a5191d999cbc468b9f2e.md) | 29 | `declaration-track:59e0a5191d999cbc468b9f2e5f29b18db9cad810c4511f3e981aa87c0c038e07` |
| 4 | `class` | [LawfulMonadCont](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/lawfulmonadcont--4330c53c33a008f0e7654545.md) | 34 | `declaration-track:4330c53c33a008f0e7654545d2842eff4711c4cec54db329e91d228441f965aa` |
| 5 | `def` | [ContT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/contt--a019c43c056196ab7694c113.md) | 44 | `declaration-track:a019c43c056196ab7694c113f8464db810326d8f5404c73c94de1eacc13ac628` |
| 6 | `abbrev` | [Cont](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/cont--33db42ec6839d816bb66fe26.md) | 47 | `declaration-track:33db42ec6839d816bb66fe267b2c2a956941e0a4947d4edd8858743f0c128cb7` |
| 7 | `def` | [run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/run--7471d90d59dd3e237e0cf0d1.md) | 56 | `declaration-track:7471d90d59dd3e237e0cf0d1ab00d7483c30c6ad5eef3d5fec8bcfad3cb31050` |
| 8 | `def` | [map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/map--8afdea61dbe51038ff59b375.md) | 59 | `declaration-track:8afdea61dbe51038ff59b37505a8762e7676f2540641d138c8b074e1b06dc3eb` |
| 9 | `theorem` | [run_contT_map_contT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/run-contt-map-contt--5196958fd53a83819f103d78.md) | 62 | `result-track:5196958fd53a83819f103d780d64429b1b39c477b161abca3e8763991c79d4e5` |
| 10 | `def` | [withContT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/withcontt--f67d7fc962b49ed957170a8d.md) | 65 | `declaration-track:f67d7fc962b49ed957170a8d07f1bf90e4d8df30adae0d593614e63654a26de6` |
| 11 | `theorem` | [run_withContT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/run-withcontt--b0fe1c0c037a637b88e1682e.md) | 67 | `result-track:b0fe1c0c037a637b88e1682e0f7ad73d3ea6585e24fb10e8604dfb2af6cee3d2` |
| 12 | `theorem` | [ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/ext--f47428e2ce92ba22ab7db579.md) | 72 | `result-track:f47428e2ce92ba22ab7db57902b7c4efd776fc29324c982872e8f81a9658d270` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/instance--ae04076ce0403377e0a63c38.md) | 75 | `declaration-track:ae04076ce0403377e0a63c381beb62ee72a1dc7f36dce16f2ed089f7177a5d13` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/instance--7c0b5c33b3bf0b6bf8ee8351.md) | 79 | `declaration-track:7c0b5c33b3bf0b6bf8ee8351d14d3cb8cf339828974564b66b7348c09eae21f8` |
| 15 | `def` | [monadLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/monadlift--36b34a9e2c348bd28e11f524.md) | 84 | `declaration-track:36b34a9e2c348bd28e11f524e57cc1065c1cddfb2436f40df13fe37b5573a93f` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/instance--f5a1c87d4e7c9492153a6c79.md) | 86 | `declaration-track:f5a1c87d4e7c9492153a6c79261eacccd563799045628788972cbcdf74756a04` |
| 17 | `theorem` | [monadLift_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/monadlift-bind--e2f1d85bceba819903e599db.md) | 89 | `result-track:e2f1d85bceba819903e599db5e562d1218204c580cea35dde87938a23db37135` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/instance--32556e1b22afe19f689d3cc2.md) | 95 | `declaration-track:32556e1b22afe19f689d3cc2af7448a7d3fde9c60eecaa3552aceeeb2062e70c` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/instance--6368f1add2e11a5fbe25caed.md) | 98 | `declaration-track:6368f1add2e11a5fbe25caed4d95f78425374dc50068ccc1bd5820712fc7e844` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/instance--9e2cb0bc409f0aa5b93531e3.md) | 103 | `declaration-track:9e2cb0bc409f0aa5b93531e37d0bb322399414d98048f350a34c366da0b350a0` |
| 21 | `def` | [ExceptT.mkLabel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/exceptt-mklabel--65bcb3fb2c5ae5032420500a.md) | 114 | `declaration-track:65bcb3fb2c5ae5032420500ade708ede7e27f919920f19bbe268bc1066190206` |
| 22 | `theorem` | [ExceptT.goto_mkLabel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/exceptt-goto-mklabel--80e743cbcc5db9ff9270669b.md) | 117 | `result-track:80e743cbcc5db9ff9270669b7ebaed569c3ecf38bf91625753cac3e31d3fd714` |
| 23 | `def` | [ExceptT.callCC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/exceptt-callcc--cbe3332fbd66da6113f378aa.md) | 121 | `declaration-track:cbe3332fbd66da6113f378aaac8764648933b423f0237e229088108b3f69bf97` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/instance--a3f9f230b656534e19f2cbfa.md) | 125 | `declaration-track:a3f9f230b656534e19f2cbfa91630d02296985934db056a3173f946989b578a6` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/instance--666834222c33de5d13d30e1a.md) | 128 | `declaration-track:666834222c33de5d13d30e1a0c31d490d72eefcac83280e87eb1ac443b211f17` |
| 26 | `def` | [OptionT.mkLabel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/optiont-mklabel--6ee90cee89a3f6abfda6d8af.md) | 140 | `declaration-track:6ee90cee89a3f6abfda6d8afa9b2d9dd8be3c6a8f4e250bbac0671ac036180fa` |
| 27 | `theorem` | [OptionT.goto_mkLabel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/optiont-goto-mklabel--dc68f729f0a013e4c5ae7278.md) | 143 | `result-track:dc68f729f0a013e4c5ae7278f83c5d60e4e1d37f53fa217d1d46026740e7d365` |
| 28 | `def` | [OptionT.callCC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/optiont-callcc--9d4b5b32dbeecd4749198813.md) | 147 | `declaration-track:9d4b5b32dbeecd4749198813c5e7d89074dca26ab020f25bb47293e2304af4bf` |
| 29 | `lemma` | [run_callCC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/run-callcc--598bc180abe85f04ad787014.md) | 152 | `result-track:598bc180abe85f04ad7870142f0e3015ed348c1bd81f66f9a7447f79237a0f20` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/instance--91ce68f6bda869cdefa92b26.md) | 155 | `declaration-track:91ce68f6bda869cdefa92b261a49c9d53aee7d83b2ca481f539a4576604c48d1` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/instance--61acef2a4af34d914d2cd12b.md) | 158 | `declaration-track:61acef2a4af34d914d2cd12b31d9d056548b9bd88fda2ad7f48743e45b791fa2` |
| 32 | `def` | [WriterT.mkLabel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/writert-mklabel--3441eca507e3968502929b9b.md) | 175 | `declaration-track:3441eca507e3968502929b9b83761c47e6aa907a4a5d66fae6feab2c29bcad85` |
| 33 | `def` | [WriterT.mkLabel'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/writert-mklabel--eb8da73ae005557bb0b4e48a.md) | 178 | `declaration-track:eb8da73ae005557bb0b4e48a6d44d9da1647c120089cca14faab10bf6614c783` |
| 34 | `theorem` | [WriterT.goto_mkLabel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/writert-goto-mklabel--908ad0bca7ef70c8c940221d.md) | 181 | `result-track:908ad0bca7ef70c8c940221da57b69d98d56eb6bb7fbffc1fe91c43977b6530b` |
| 35 | `theorem` | [WriterT.goto_mkLabel'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/writert-goto-mklabel--7b37bec90d67d2507d063d78.md) | 184 | `result-track:7b37bec90d67d2507d063d789d0a2d523496400fba6acf464c28cc17fbb737c7` |
| 36 | `def` | [WriterT.callCC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/writert-callcc--d433486384de3ecfcade8125.md) | 187 | `declaration-track:d433486384de3ecfcade8125f1815d4dc82a4775ea6ead21fffe6f72b3efcff7` |
| 37 | `def` | [WriterT.callCC'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/writert-callcc--963c99bee4e9c8541c469342.md) | 191 | `declaration-track:963c99bee4e9c8541c469342aecc4cff0d609c667af226ae6174ae23df93d55e` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/instance--65cbe5f55111dc642ae34a15.md) | 198 | `declaration-track:65cbe5f55111dc642ae34a15a14ee23ec92d9b9da1f2cfee6307b74d1894a367` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/instance--8d860290261baded1e1c8f65.md) | 201 | `declaration-track:8d860290261baded1e1c8f65c3c1fc674088644d0c51745fd8617559fe3a22b9` |
| 40 | `def` | [StateT.mkLabel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/statet-mklabel--d7dadd7a15bfa5225621200f.md) | 204 | `declaration-track:d7dadd7a15bfa5225621200f214732c3a24f7f16f89a696148a069a984367ce5` |
| 41 | `theorem` | [StateT.goto_mkLabel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/statet-goto-mklabel--9ceca2ec5aa9148d14a3e80f.md) | 207 | `result-track:9ceca2ec5aa9148d14a3e80f6af977b717aaa13eed644bb900a0b61def133812` |
| 42 | `def` | [StateT.callCC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/statet-callcc--399d4f86ca8bce430297f46e.md) | 210 | `declaration-track:399d4f86ca8bce430297f46e37f4fa2957ef2606868b2072b7b8a18c0b2ea093` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/instance--05a1128ce8d29048e5b66982.md) | 214 | `declaration-track:05a1128ce8d29048e5b669829f1863226f53bc38815cac996520102df5109a41` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/instance--cfe50416db39bfe9f8798db2.md) | 217 | `declaration-track:cfe50416db39bfe9f8798db2178779415be360ead00f11f30982b74f681f241b` |
| 45 | `def` | [ReaderT.mkLabel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/readert-mklabel--da0fea597b054280f9a9337f.md) | 230 | `declaration-track:da0fea597b054280f9a9337f80dede8054976fc0289bb275d2329505e243e000` |
| 46 | `theorem` | [ReaderT.goto_mkLabel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/readert-goto-mklabel--d9233c543f7551a2c12e78d9.md) | 233 | `result-track:d9233c543f7551a2c12e78d957577b8175fd8a12f7cf7cb20a43efd97f5407ee` |
| 47 | `def` | [ReaderT.callCC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/readert-callcc--b3ea2a91ddec0dc439bf62a1.md) | 236 | `declaration-track:b3ea2a91ddec0dc439bf62a1fba6f435b240040dcd697bfcf703b6b03c39bbc7` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/instance--57dff8420137191554a1aae0.md) | 240 | `declaration-track:57dff8420137191554a1aae0d6bbcfbba7c2de56db5d514f8ca0731326987d88` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/instance--8753ea54c2d387d72f14f273.md) | 243 | `declaration-track:8753ea54c2d387d72f14f273d0833faacf4478d21935507c658096d9346ae41b` |
| 50 | `def` | [ContT.equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variantf33172e66bc422b5d771b2acd8d462b8c6efda1569c8f3e9397b38cc77a1047b.lean/declarations/contt-equiv--fdfdcfc6c020679e8598767f.md) | 254 | `declaration-track:fdfdcfc6c020679e8598767f9c12a3e9dff2a796e270d1413cc7a2cd1a8750ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
