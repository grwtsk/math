# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.LintSimpNF.Variant963fddbd6c8e91f1188a72ba79c38672b72155f589814f4b0056aabee09b197a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8d4253fd0e81a47b22b01827d26fec20b2999b7",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant963fddbd6c8e91f1188a72ba79c38672b72155f589814f4b0056aabee09b197a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant963fddbd6c8e91f1188a72ba79c38672b72155f589814f4b0056aabee09b197a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant963fddbd6c8e91f1188a72ba79c38672b72155f589814f4b0056aabee09b197a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8d4253fd0e81a47b22b01827d26fec20b2999b7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant963fddbd6c8e91f1188a72ba79c38672b72155f589814f4b0056aabee09b197a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant963fddbd6c8e91f1188a72ba79c38672b72155f589814f4b0056aabee09b197a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Lint` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant963fddbd6c8e91f1188a72ba79c38672b72155f589814f4b0056aabee09b197a.lean/declarations/equiv--7207dae3cf2ea3797c5cf52a.md) | 13 | `declaration-track:7207dae3cf2ea3797c5cf52a5de0f75da10e720a55104cc12b9cb2b030c60269` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant963fddbd6c8e91f1188a72ba79c38672b72155f589814f4b0056aabee09b197a.lean/declarations/instance--aea81a3c3bdecc98d6a9fbbc.md) | 21 | `declaration-track:aea81a3c3bdecc98d6a9fbbcfee1296de6cca1854ac3b4926bb5a203670a2566` |
| 3 | `def` | [symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant963fddbd6c8e91f1188a72ba79c38672b72155f589814f4b0056aabee09b197a.lean/declarations/symm--d7a9612d687702e4be61d42c.md) | 23 | `declaration-track:d7a9612d687702e4be61d42cf55546c008be3efd95e0e56f182a0c64cffaf4c4` |
| 4 | `def` | [sumCompl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant963fddbd6c8e91f1188a72ba79c38672b72155f589814f4b0056aabee09b197a.lean/declarations/sumcompl--a7e3764219186416997ff07b.md) | 25 | `declaration-track:a7e3764219186416997ff07ba940214ee573772f3eb6642d76423327277b3834` |
| 5 | `theorem` | [sumCompl_apply_symm_of_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant963fddbd6c8e91f1188a72ba79c38672b72155f589814f4b0056aabee09b197a.lean/declarations/sumcompl-apply-symm-of-pos--2cd65b6f7def6c93143acc5c.md) | 31 | `result-track:2cd65b6f7def6c93143acc5cdc0f30874fa4e1d5cbe81102c196e5038f54373f` |
| 6 | `def` | [foo](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant963fddbd6c8e91f1188a72ba79c38672b72155f589814f4b0056aabee09b197a.lean/declarations/foo--b1c42fe4c7be2099c09be52f.md) | 35 | `declaration-track:b1c42fe4c7be2099c09be52f46ea9cb6f6e00b2c704d26ca1ab751fec8de4656` |
| 7 | `theorem` | [foo_eq_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant963fddbd6c8e91f1188a72ba79c38672b72155f589814f4b0056aabee09b197a.lean/declarations/foo-eq-id--4acc9ea260bb03dc7d63be65.md) | 38 | `result-track:4acc9ea260bb03dc7d63be6519895619d9ca72d0ea64bed5692c1aab0dc869df` |
| 8 | `theorem` | [foo_eq_ite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant963fddbd6c8e91f1188a72ba79c38672b72155f589814f4b0056aabee09b197a.lean/declarations/foo-eq-ite--6ae27211c8439d993f874584.md) | 44 | `result-track:6ae27211c8439d993f87458431db2f6fb87003cc6c652d7014da1b7b2b835f71` |
| 9 | `axiom` | [test_sorry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant963fddbd6c8e91f1188a72ba79c38672b72155f589814f4b0056aabee09b197a.lean/declarations/test-sorry--093dc8e0bf4c95edb0107456.md) | 51 | `declaration-track:093dc8e0bf4c95edb0107456ab43cbfbe849d74b7fb35f0262304650214d4ebb` |
| 10 | `theorem` | [ofFn_getElem_eq_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant963fddbd6c8e91f1188a72ba79c38672b72155f589814f4b0056aabee09b197a.lean/declarations/offn-getelem-eq-map--7c1aa7fe4f7f97ceaecaac6e.md) | 54 | `result-track:7c1aa7fe4f7f97ceaecaac6ef1260a2437166987b8badf303915dacff8f7519a` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant963fddbd6c8e91f1188a72ba79c38672b72155f589814f4b0056aabee09b197a.lean/declarations/example--7ae21884ada3219236d5357c.md) | 57 | `declaration-track:7ae21884ada3219236d5357c9f79e914d963a8658de95559efe3a6628d82ffc8` |
| 12 | `def` | [eqToFun](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant963fddbd6c8e91f1188a72ba79c38672b72155f589814f4b0056aabee09b197a.lean/declarations/eqtofun--62bb2f374a47513699a48136.md) | 64 | `declaration-track:62bb2f374a47513699a48136c8d92c376d5f532ab7bbe043650b66dcdbbff96d` |
| 13 | `theorem` | [eqToFun_comp_eq_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant963fddbd6c8e91f1188a72ba79c38672b72155f589814f4b0056aabee09b197a.lean/declarations/eqtofun-comp-eq-self--04733e8f9706baf18e2207fb.md) | 67 | `result-track:04733e8f9706baf18e2207fbb326e97f22632fb20e949d08dfc2a7bc1bc56461` |
| 14 | `theorem` | [eqToFun_comp_iso_hom_eq_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant963fddbd6c8e91f1188a72ba79c38672b72155f589814f4b0056aabee09b197a.lean/declarations/eqtofun-comp-iso-hom-eq-self--b59709a86debebf27c68c8db.md) | 73 | `result-track:b59709a86debebf27c68c8db2b2e6c0a7017b6383ecffb60eebac827edd1ca6d` |
| 15 | `class` | [MyClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant963fddbd6c8e91f1188a72ba79c38672b72155f589814f4b0056aabee09b197a.lean/declarations/myclass--3a71df610fdab931fb35ea92.md) | 83 | `declaration-track:3a71df610fdab931fb35ea9230126b4c31471531d3eaf641a06449681050f8f4` |
| 16 | `structure` | [Bundle](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant963fddbd6c8e91f1188a72ba79c38672b72155f589814f4b0056aabee09b197a.lean/declarations/bundle--9be6ef0975c2ec5a543de7a6.md) | 86 | `declaration-track:9be6ef0975c2ec5a543de7a646a69e26cf23d7b8d34f3a74d3c71c037b0f2f6c` |
| 17 | `def` | [Bundle.of](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant963fddbd6c8e91f1188a72ba79c38672b72155f589814f4b0056aabee09b197a.lean/declarations/bundle-of--431a206ad7c9f39934f9e917.md) | 92 | `declaration-track:431a206ad7c9f39934f9e91706aea88405d9e7708187271b41d6adf3760b589f` |
| 18 | `theorem` | [Bundle.of_carrier](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant963fddbd6c8e91f1188a72ba79c38672b72155f589814f4b0056aabee09b197a.lean/declarations/bundle-of-carrier--24f202f7ce828d14411558fd.md) | 96 | `result-track:24f202f7ce828d14411558fd3f536b9478a3ecb5467b8aff4ff5d00486599108` |
| 19 | `theorem` | [Bundle.of_op](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant963fddbd6c8e91f1188a72ba79c38672b72155f589814f4b0056aabee09b197a.lean/declarations/bundle-of-op--edf9e76aa108053ce5e36aaa.md) | 103 | `result-track:edf9e76aa108053ce5e36aaaa5b59c147656d2cfa322f5094ba548f311ca7c28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
