# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Computability.TMComputable.Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d414d6d2a6bf7533aa322554a7dc94ee249f0c0e",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d414d6d2a6bf7533aa322554a7dc94ee249f0c0e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.Encoding` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Computability.TuringMachine` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Eval` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FinTM2](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/fintm2--360baa835ce19a64eee553a0.md) | 45 | `declaration-track:360baa835ce19a64eee553a03b94cc7ff9e8118499b05c774f2bbae2154885b3` |
| 2 | `instance` | [decidableEqK](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/decidableeqk--ed2ee3d0f08bf0d7c1940be1.md) | 62 | `declaration-track:ed2ee3d0f08bf0d7c1940be18cebe0dcefcde6ea47385ededdca45ebb9d4f461` |
| 3 | `instance` | [inhabitedσ](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/inhabited--70ed9c1df2927724ce1e4ce1.md) | 66 | `declaration-track:70ed9c1df2927724ce1e4ce17d5ae3c3b2390a94afc370c6a7f47e1b4ceba08c` |
| 4 | `def` | [Stmt](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/stmt--a5e4aa2b543208295a838868.md) | 71 | `declaration-track:a5e4aa2b543208295a838868b8347755ebf229d28f1798ad3f2580ba99af39ce` |
| 5 | `instance` | [inhabitedStmt](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/inhabitedstmt--775366d08b8abc2ab49acb4a.md) | 76 | `declaration-track:775366d08b8abc2ab49acb4a41d39b8aba33928a9ce9fa70a0434c64b985f710` |
| 6 | `def` | [Cfg](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/cfg--2cbaa50c772692ee4578d3e8.md) | 81 | `declaration-track:2cbaa50c772692ee4578d3e88c061f3740c2a54f2982d45f1f4bf18455d7ccbe` |
| 7 | `instance` | [inhabitedCfg](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/inhabitedcfg--7bc8cde10d3b1622639dea96.md) | 85 | `declaration-track:7bc8cde10d3b1622639dea9601c94244928cf37d22c3f79f8edddf216914b6b9` |
| 8 | `def` | [step](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/step--1bda93fbafc8bd264d8b23a1.md) | 91 | `declaration-track:1bda93fbafc8bd264d8b23a15a9ed765473272cb8745895c8250d5a32a2055a7` |
| 9 | `def` | [initList](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/initlist--204ce9f95b056256cd067660.md) | 100 | `declaration-track:204ce9f95b056256cd067660422ade13d617eb6f33a098994c15c37df4c9cb34` |
| 10 | `def` | [haltList](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/haltlist--d3a7efa3274e06677227dacd.md) | 109 | `declaration-track:d3a7efa3274e06677227dacd02b448c6455783eed5523b711327564855038d43` |
| 11 | `structure` | [EvalsTo](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/evalsto--11ad80921bd922c635483681.md) | 119 | `declaration-track:11ad80921bd922c635483681ef3cd49a0b5bdba924777ed77dfde4aacc2001d8` |
| 12 | `structure` | [EvalsToInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/evalstointime--d22564bb90ed399e6bf585e7.md) | 129 | `declaration-track:d22564bb90ed399e6bf585e71b86e83793bf8ccbf2a6936368cf106465f2ada8` |
| 13 | `def` | [EvalsTo.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/evalsto-refl--f746001de628445489b6fede.md) | 136 | `declaration-track:f746001de628445489b6feded6c1cfba5895888e32940e5d2026dfcfc979852d` |
| 14 | `def` | [EvalsTo.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/evalsto-trans--f50e63fec105dbf3992afb65.md) | 142 | `declaration-track:f50e63fec105dbf3992afb6540a9097af96a0dfec321102a724fadcf756df7e3` |
| 15 | `def` | [EvalsToInTime.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/evalstointime-refl--a1112164b8d7ddb95d96235b.md) | 149 | `declaration-track:a1112164b8d7ddb95d96235b9e71df6d334988dbc59573348cba25cf70bf143b` |
| 16 | `def` | [EvalsToInTime.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/evalstointime-trans--b6a00341b385e20938c856c0.md) | 155 | `declaration-track:b6a00341b385e20938c856c0ef028d0f57f068b91146f42cba2d04abdb522dc9` |
| 17 | `def` | [TM2Outputs](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/tm2outputs--e8aab7309c1bed5d587640d4.md) | 162 | `declaration-track:e8aab7309c1bed5d587640d41b8d3c084018327a76d432fd8fd287f65ba2a856` |
| 18 | `def` | [TM2OutputsInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/tm2outputsintime--9142fb146e4668fcacf52226.md) | 167 | `declaration-track:9142fb146e4668fcacf522269f496e3ef8935baf833582747058edf7b9668093` |
| 19 | `def` | [TM2OutputsInTime.toTM2Outputs](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/tm2outputsintime-totm2outputs--5880798f9d9227c3c8fb40d5.md) | 173 | `declaration-track:5880798f9d9227c3c8fb40d59150f050ae23cfcd68f53400171a9f8f8d250f4c` |
| 20 | `structure` | [TM2ComputableAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/tm2computableaux--c2dd446c15c5605b77b232a9.md) | 180 | `declaration-track:c2dd446c15c5605b77b232a981da540a503f6691f51dfd1a10cc74ce3fa9e004` |
| 21 | `structure` | [TM2Computable](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/tm2computable--9f823cd825c23efd10f1549a.md) | 187 | `declaration-track:9f823cd825c23efd10f1549afcb53c9647bad9bf32f1de13af2f3cd980af919e` |
| 22 | `structure` | [TM2ComputableInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/tm2computableintime--39cffcd68ac7b30136505d31.md) | 196 | `declaration-track:39cffcd68ac7b30136505d319aab34e8d571e12cfaa9761f67cee32fc1aab87f` |
| 23 | `structure` | [TM2ComputableInPolyTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/tm2computableinpolytime--97f6a5849757a62ae7b6e442.md) | 208 | `declaration-track:97f6a5849757a62ae7b6e442342e0445d4e0d749fb27ae223ba528d0039174e7` |
| 24 | `def` | [TM2ComputableInTime.toTM2Computable](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/tm2computableintime-totm2computable--2cefee292092bf311191c322.md) | 219 | `declaration-track:2cefee292092bf311191c32234d2e04fb182fb42efeb035224a0928264844735` |
| 25 | `def` | [TM2ComputableInPolyTime.toTM2ComputableInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/tm2computableinpolytime-totm2computableintime--cff32f77db2d320ef1f955df.md) | 225 | `declaration-track:cff32f77db2d320ef1f955dff942ebc88cdb8cdd97e452b06c1de8f7a9698716` |
| 26 | `def` | [idComputer](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/idcomputer--b16e8c209c62dd21e4469664.md) | 234 | `declaration-track:b16e8c209c62dd21e4469664b69e0b63373951664201b10e1ac937662d1947c5` |
| 27 | `instance` | [inhabitedFinTM2](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/inhabitedfintm2--3b9e3fcc948c489512499257.md) | 247 | `declaration-track:3b9e3fcc948c489512499257af8f1d796fa5ef31396aea00236945ef3a66faea` |
| 28 | `def` | [idComputableInPolyTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/idcomputableinpolytime--ae83dc19a53ab049c8ba327d.md) | 254 | `declaration-track:ae83dc19a53ab049c8ba327dc6c85216effec7543d23440eee6aa1b922a40b1d` |
| 29 | `instance` | [inhabitedTM2ComputableInPolyTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/inhabitedtm2computableinpolytime--b85569aaf25105c4857b7686.md) | 266 | `declaration-track:b85569aaf25105c4857b768657834a44e52dd91abdb6d94afd9cc3c1093a6d77` |
| 30 | `instance` | [inhabitedTM2OutputsInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/inhabitedtm2outputsintime--77aec5ac3d21f8b9c810894b.md) | 271 | `declaration-track:77aec5ac3d21f8b9c810894bfd6c8ed72870eb5e9c42ee4a270a80d76e76e7b1` |
| 31 | `instance` | [inhabitedTM2Outputs](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/inhabitedtm2outputs--ca1f0829f8e50074048fbfa8.md) | 278 | `declaration-track:ca1f0829f8e50074048fbfa89a717a5b8e78f384b5e56a1a582b772a41a0bcc8` |
| 32 | `instance` | [inhabitedEvalsToInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/inhabitedevalstointime--9c76ddedf07a2412c9f6f627.md) | 285 | `declaration-track:9c76ddedf07a2412c9f6f627c7de34cce88bb88c7725488debef894459f93768` |
| 33 | `instance` | [inhabitedTM2EvalsTo](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/inhabitedtm2evalsto--8718b45dc02a810595ba308e.md) | 290 | `declaration-track:8718b45dc02a810595ba308e51b168100829ff1e014121e10765d921aa186fb4` |
| 34 | `def` | [idComputableInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/idcomputableintime--3caf032bdd27f1c8dc6537e8.md) | 295 | `declaration-track:3caf032bdd27f1c8dc6537e8c2334d3d7f22e31a2427b385d68cc639f1bec2ef` |
| 35 | `instance` | [inhabitedTM2ComputableInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/inhabitedtm2computableintime--f898959d5344bb385b390bf7.md) | 299 | `declaration-track:f898959d5344bb385b390bf756e6876f855a06b270c7c86b7704ad6437472f53` |
| 36 | `def` | [idComputable](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/idcomputable--95e7509517b7ca723d2e896f.md) | 305 | `declaration-track:95e7509517b7ca723d2e896f4c0a95fc68f3bf1dab43e822d458cba8b7d76b4a` |
| 37 | `instance` | [inhabitedTM2Computable](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/inhabitedtm2computable--a89d375a06426a1e3201e3de.md) | 309 | `declaration-track:a89d375a06426a1e3201e3de0b789658001653d7ba2f977fa1539dd397a47e79` |
| 38 | `instance` | [inhabitedTM2ComputableAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantff1114611ea73dc8d6d8576459f2149d6a8087ba29af9b9f41a308b0158c2cbb.lean/declarations/inhabitedtm2computableaux--270f2d440114819fccf2dc5d.md) | 314 | `declaration-track:270f2d440114819fccf2dc5df468aa7cbca25f0c8665929b793794993487369c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
