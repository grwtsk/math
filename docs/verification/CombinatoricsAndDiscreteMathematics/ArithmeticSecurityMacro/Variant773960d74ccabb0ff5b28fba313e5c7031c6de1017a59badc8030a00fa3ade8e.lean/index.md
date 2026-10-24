# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ArithmeticSecurityMacro.Variant773960d74ccabb0ff5b28fba313e5c7031c6de1017a59badc8030a00fa3ade8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f6d33f4b3974a2e8f3035b6f3d9b35d6ebf8efe",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant773960d74ccabb0ff5b28fba313e5c7031c6de1017a59badc8030a00fa3ade8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant773960d74ccabb0ff5b28fba313e5c7031c6de1017a59badc8030a00fa3ade8e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant773960d74ccabb0ff5b28fba313e5c7031c6de1017a59badc8030a00fa3ade8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f6d33f4b3974a2e8f3035b6f3d9b35d6ebf8efe`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant773960d74ccabb0ff5b28fba313e5c7031c6de1017a59badc8030a00fa3ade8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant773960d74ccabb0ff5b28fba313e5c7031c6de1017a59badc8030a00fa3ade8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Resolution.ArithmeticSecurityDependency` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ArithmeticSecurityMacroObligation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant773960d74ccabb0ff5b28fba313e5c7031c6de1017a59badc8030a00fa3ade8e.lean/declarations/arithmeticsecuritymacroobligation--672f0bba5094b228798cbdff.md) | 13 | `declaration-track:672f0bba5094b228798cbdff250d99b44afa9563d2cd75836e4bad1c6fbcf65e` |
| 2 | `def` | [terminalArithmeticSecurityMacroOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant773960d74ccabb0ff5b28fba313e5c7031c6de1017a59badc8030a00fa3ade8e.lean/declarations/terminalarithmeticsecuritymacroorder--7329f2ca294d6a67f4645c11.md) | 20 | `declaration-track:7329f2ca294d6a67f4645c11bda72e7dd98ba0fff9eed0e1a5d640ce9ff6da4b` |
| 3 | `theorem` | [terminalArithmeticSecurityMacroOrder_nodup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant773960d74ccabb0ff5b28fba313e5c7031c6de1017a59badc8030a00fa3ade8e.lean/declarations/terminalarithmeticsecuritymacroorder-nodup--07e8ec8c609ad5d6a43c07fe.md) | 28 | `result-track:07e8ec8c609ad5d6a43c07fed5efa0a035a0edcf12fd56d8ce53cbe8415bf676` |
| 4 | `def` | [ArithmeticSecurityMacroObligation.refinement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant773960d74ccabb0ff5b28fba313e5c7031c6de1017a59badc8030a00fa3ade8e.lean/declarations/arithmeticsecuritymacroobligation-refinement--29672b9621ae8e5059ba1efb.md) | 32 | `declaration-track:29672b9621ae8e5059ba1efb865bf35de88e42bb76c0d668fa44b62ac67acac5` |
| 5 | `theorem` | [arithmeticSecurityFunctor_refinement_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant773960d74ccabb0ff5b28fba313e5c7031c6de1017a59badc8030a00fa3ade8e.lean/declarations/arithmeticsecurityfunctor-refinement-card--3ed1fe069ccb02ad13e1b144.md) | 61 | `result-track:3ed1fe069ccb02ad13e1b1445972e9534e5cf4a19e70fc7a6c3263a62f8a9b0e` |
| 6 | `theorem` | [traceToAdversaryBridge_refinement_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant773960d74ccabb0ff5b28fba313e5c7031c6de1017a59badc8030a00fa3ade8e.lean/declarations/tracetoadversarybridge-refinement-card--91c9ad8f084905be56b024a3.md) | 66 | `result-track:91c9ad8f084905be56b024a37ea4884796e40c89b11ac95f1d644008e8bb7b84` |
| 7 | `theorem` | [purityToHardnessBridge_refinement_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant773960d74ccabb0ff5b28fba313e5c7031c6de1017a59badc8030a00fa3ade8e.lean/declarations/puritytohardnessbridge-refinement-card--d79e1d1433924b62cb952a94.md) | 71 | `result-track:d79e1d1433924b62cb952a94ddc6dfe845c991f89577ccfdeba3ff86404faca9` |
| 8 | `def` | [terminalArithmeticSecurityMacros](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant773960d74ccabb0ff5b28fba313e5c7031c6de1017a59badc8030a00fa3ade8e.lean/declarations/terminalarithmeticsecuritymacros--88402e3146972cb33fb8f1d6.md) | 76 | `declaration-track:88402e3146972cb33fb8f1d6bc97a09ebe550ad0a50b722ca312c92f0aba75d8` |
| 9 | `theorem` | [terminalArithmeticSecurityMacroOrder_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant773960d74ccabb0ff5b28fba313e5c7031c6de1017a59badc8030a00fa3ade8e.lean/declarations/terminalarithmeticsecuritymacroorder-tofinset--4f7df7c6e870d9683ff805ab.md) | 80 | `result-track:4f7df7c6e870d9683ff805ab6fdb71e60518247cd966bc1fa61d24e896b76bb2` |
| 10 | `theorem` | [terminalArithmeticSecurityMacros_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant773960d74ccabb0ff5b28fba313e5c7031c6de1017a59badc8030a00fa3ade8e.lean/declarations/terminalarithmeticsecuritymacros-card--31c874818f05b53337ad9e4c.md) | 85 | `result-track:31c874818f05b53337ad9e4c909c41979117b5a67e7ebd1485a540a4a4a9f036` |
| 11 | `inductive` | [ArithmeticSecurityMacroVerdict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant773960d74ccabb0ff5b28fba313e5c7031c6de1017a59badc8030a00fa3ade8e.lean/declarations/arithmeticsecuritymacroverdict--ba43980a61294372a5051e10.md) | 89 | `declaration-track:ba43980a61294372a5051e109756a4c0a6eb80032c74b51e65ba609e2cfce55e` |
| 12 | `def` | [IsCertified](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant773960d74ccabb0ff5b28fba313e5c7031c6de1017a59badc8030a00fa3ade8e.lean/declarations/iscertified--54d6fe8febc96e28112316eb.md) | 100 | `declaration-track:54d6fe8febc96e28112316eb79d5c8eb363ebfa7325bb5cc216697542d5edde2` |
| 13 | `def` | [IsRefuted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant773960d74ccabb0ff5b28fba313e5c7031c6de1017a59badc8030a00fa3ade8e.lean/declarations/isrefuted--49c2689abc760fadf842cbb9.md) | 105 | `declaration-track:49c2689abc760fadf842cbb95de5957c2423a438f8e52e3abb751e2be053a71b` |
| 14 | `def` | [unknowns](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant773960d74ccabb0ff5b28fba313e5c7031c6de1017a59badc8030a00fa3ade8e.lean/declarations/unknowns--1c9a8295e766ab2f3977c021.md) | 110 | `declaration-track:1c9a8295e766ab2f3977c021c8bdd34f701bc8f40143f86b38c2fd45dcc41601` |
| 15 | `def` | [terminalArithmeticSecurityVerdict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant773960d74ccabb0ff5b28fba313e5c7031c6de1017a59badc8030a00fa3ade8e.lean/declarations/terminalarithmeticsecurityverdict--f3ea17487e444711e4948523.md) | 119 | `declaration-track:f3ea17487e444711e49485236a8d6c7d376c9371e4a1099eacdb475de6bb79c7` |
| 16 | `theorem` | [terminalArithmeticSecurityVerdict_unknowns](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant773960d74ccabb0ff5b28fba313e5c7031c6de1017a59badc8030a00fa3ade8e.lean/declarations/terminalarithmeticsecurityverdict-unknowns--a99e1b413ce8af10d86d2209.md) | 127 | `result-track:a99e1b413ce8af10d86d2209b25ac60f78d3967fb2b9b2aa7be0777245887483` |
| 17 | `theorem` | [terminalArithmeticSecurityVerdict_not_certified](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant773960d74ccabb0ff5b28fba313e5c7031c6de1017a59badc8030a00fa3ade8e.lean/declarations/terminalarithmeticsecurityverdict-not-certified--5e402106d64fcde0bd0b7153.md) | 134 | `result-track:5e402106d64fcde0bd0b7153959212dc8184bd39dc02de4b61bd888b4ca39c6b` |
| 18 | `theorem` | [terminalArithmeticSecurityVerdict_not_refuted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityMacro/Variant773960d74ccabb0ff5b28fba313e5c7031c6de1017a59badc8030a00fa3ade8e.lean/declarations/terminalarithmeticsecurityverdict-not-refuted--d0248b78eada3b694bf086d6.md) | 140 | `result-track:d0248b78eada3b694bf086d69943cad1a3296446aa66df8e0b9bfbcb876323a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
