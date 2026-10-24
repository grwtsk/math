# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ArithmeticSecurityDependency.Variantf5b536dd352dc159efbf7a54fa904cffa22eee6f409cbd76cab805b97c19027b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47268be94da8eba2fcf1ea47cb1367a903f8967d",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variantf5b536dd352dc159efbf7a54fa904cffa22eee6f409cbd76cab805b97c19027b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variantf5b536dd352dc159efbf7a54fa904cffa22eee6f409cbd76cab805b97c19027b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variantf5b536dd352dc159efbf7a54fa904cffa22eee6f409cbd76cab805b97c19027b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47268be94da8eba2fcf1ea47cb1367a903f8967d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variantf5b536dd352dc159efbf7a54fa904cffa22eee6f409cbd76cab805b97c19027b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variantf5b536dd352dc159efbf7a54fa904cffa22eee6f409cbd76cab805b97c19027b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Resolution.ArithmeticModularityObligation` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ArithmeticSecurityObligation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variantf5b536dd352dc159efbf7a54fa904cffa22eee6f409cbd76cab805b97c19027b.lean/declarations/arithmeticsecurityobligation--d288c3e646de737c4813bee8.md) | 22 | `declaration-track:d288c3e646de737c4813bee8ab439f3a7e44e8aecebafa86fb31db50fd3ae82c` |
| 2 | `inductive` | [ArithmeticSecurityStage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variantf5b536dd352dc159efbf7a54fa904cffa22eee6f409cbd76cab805b97c19027b.lean/declarations/arithmeticsecuritystage--03713727b53f86697dc2e358.md) | 53 | `declaration-track:03713727b53f86697dc2e358540c9e28eb07f63afc9172554db05c41ebc275b9` |
| 3 | `def` | [ArithmeticSecurityObligation.stage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variantf5b536dd352dc159efbf7a54fa904cffa22eee6f409cbd76cab805b97c19027b.lean/declarations/arithmeticsecurityobligation-stage--0bf0be77a325f4c76d2185d4.md) | 63 | `declaration-track:0bf0be77a325f4c76d2185d448c95aadce2da0d0551b5bcc9c3dfadb77543011` |
| 4 | `def` | [ArithmeticSecurityObligation.dependencies](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variantf5b536dd352dc159efbf7a54fa904cffa22eee6f409cbd76cab805b97c19027b.lean/declarations/arithmeticsecurityobligation-dependencies--c46c632a106b46887a774d62.md) | 95 | `declaration-track:c46c632a106b46887a774d62df43cad2f351a663f0aa52880a06151636ec1233` |
| 5 | `def` | [arithmeticSecurityBridgeLedger](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variantf5b536dd352dc159efbf7a54fa904cffa22eee6f409cbd76cab805b97c19027b.lean/declarations/arithmeticsecuritybridgeledger--90218fadeda7703452f97533.md) | 144 | `declaration-track:90218fadeda7703452f975331c55e43a37465f8b478fdc190c02024e5cf6aa4a` |
| 6 | `def` | [arithmeticSecurityComputationalLedger](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variantf5b536dd352dc159efbf7a54fa904cffa22eee6f409cbd76cab805b97c19027b.lean/declarations/arithmeticsecuritycomputationalledger--dfea0cad4bbe37ab6aca5739.md) | 159 | `declaration-track:dfea0cad4bbe37ab6aca57394c4d637b6477ee299fbf54d143d6b51bbf0f52d4` |
| 7 | `def` | [arithmeticSecurityConservativeFrontier](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variantf5b536dd352dc159efbf7a54fa904cffa22eee6f409cbd76cab805b97c19027b.lean/declarations/arithmeticsecurityconservativefrontier--f09c0cc4168f1f21e5440606.md) | 167 | `declaration-track:f09c0cc4168f1f21e544060671c7a91a5385243e4c23e234d4b6a2d5e513808a` |
| 8 | `theorem` | [arithmeticSecurityBridgeLedger_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variantf5b536dd352dc159efbf7a54fa904cffa22eee6f409cbd76cab805b97c19027b.lean/declarations/arithmeticsecuritybridgeledger-card--4e19e5bc21947150668b485a.md) | 179 | `result-track:4e19e5bc21947150668b485a937fdcb2f6c66cf00e52fd99b8c89185881ea23a` |
| 9 | `theorem` | [arithmeticSecurityComputationalLedger_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variantf5b536dd352dc159efbf7a54fa904cffa22eee6f409cbd76cab805b97c19027b.lean/declarations/arithmeticsecuritycomputationalledger-card--cdd7e976aaaa674aea687fe5.md) | 183 | `result-track:cdd7e976aaaa674aea687fe5626e9e915a21b19693a01e8ac398960b65fa2a3b` |
| 10 | `theorem` | [arithmeticSecurityLedgers_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variantf5b536dd352dc159efbf7a54fa904cffa22eee6f409cbd76cab805b97c19027b.lean/declarations/arithmeticsecurityledgers-disjoint--af0d34879bb03d68295cd4e5.md) | 187 | `result-track:af0d34879bb03d68295cd4e547d9bdd26cc9117070ffb9018973b4660dcd50cb` |
| 11 | `theorem` | [arithmeticSecurityLedgers_complete](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variantf5b536dd352dc159efbf7a54fa904cffa22eee6f409cbd76cab805b97c19027b.lean/declarations/arithmeticsecurityledgers-complete--b67619552a6a7e66fc7deee3.md) | 192 | `result-track:b67619552a6a7e66fc7deee3d5b54370c2c0570cad7ead3e061147df4d22b957` |
| 12 | `theorem` | [arithmeticSecurityConservativeFrontier_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variantf5b536dd352dc159efbf7a54fa904cffa22eee6f409cbd76cab805b97c19027b.lean/declarations/arithmeticsecurityconservativefrontier-card--eacaea15266d4c107ef73921.md) | 198 | `result-track:eacaea15266d4c107ef73921a650d00bf62c49085ed3f38692ac21dfa132c76e` |
| 13 | `structure` | [SeparatedCouplingLedgers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variantf5b536dd352dc159efbf7a54fa904cffa22eee6f409cbd76cab805b97c19027b.lean/declarations/separatedcouplingledgers--7616c685188e48468abe7ccd.md) | 203 | `declaration-track:7616c685188e48468abe7ccd6b9aad402820cb6ef18b4618490286ab490b588b` |
| 14 | `def` | [canonicalSeparatedCouplingLedgers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variantf5b536dd352dc159efbf7a54fa904cffa22eee6f409cbd76cab805b97c19027b.lean/declarations/canonicalseparatedcouplingledgers--090a95712683e09d5afe58d8.md) | 210 | `declaration-track:090a95712683e09d5afe58d8065099b0782f34acd091e70b831df87a6c933c62` |
| 15 | `inductive` | [ArithmeticSecurityVerdict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variantf5b536dd352dc159efbf7a54fa904cffa22eee6f409cbd76cab805b97c19027b.lean/declarations/arithmeticsecurityverdict--b4ff69ca8f402b89c985bd70.md) | 218 | `declaration-track:b4ff69ca8f402b89c985bd70bf4f8275e294b6c8c29223ca68bbde005148b227` |
| 16 | `def` | [IsCertified](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variantf5b536dd352dc159efbf7a54fa904cffa22eee6f409cbd76cab805b97c19027b.lean/declarations/iscertified--6b2f2e5aeae88e5d8871ac65.md) | 229 | `declaration-track:6b2f2e5aeae88e5d8871ac657afb09f3bad4e3c3a601955ae54cd9b4d0840f4d` |
| 17 | `def` | [IsRefuted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variantf5b536dd352dc159efbf7a54fa904cffa22eee6f409cbd76cab805b97c19027b.lean/declarations/isrefuted--61a24a2ff6c9e5af7fbbeb73.md) | 234 | `declaration-track:61a24a2ff6c9e5af7fbbeb73929746af45882799eef1ceedd3eda734f5b06eb2` |
| 18 | `def` | [unknowns](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variantf5b536dd352dc159efbf7a54fa904cffa22eee6f409cbd76cab805b97c19027b.lean/declarations/unknowns--0655680ce0e4264a07385dd0.md) | 239 | `declaration-track:0655680ce0e4264a07385dd0232d366c072eb3fc0581b4bd33404db15307b664` |
| 19 | `def` | [arithmeticSecurityCouplingVerdict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variantf5b536dd352dc159efbf7a54fa904cffa22eee6f409cbd76cab805b97c19027b.lean/declarations/arithmeticsecuritycouplingverdict--cf2d0f7e01cd29c1d56e109c.md) | 252 | `declaration-track:cf2d0f7e01cd29c1d56e109c9af7f2a8303cb002403d76d55523e8500f50187c` |
| 20 | `theorem` | [arithmeticSecurityCouplingVerdict_unknowns](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variantf5b536dd352dc159efbf7a54fa904cffa22eee6f409cbd76cab805b97c19027b.lean/declarations/arithmeticsecuritycouplingverdict-unknowns--c4581c878a3df8dba3a79cb2.md) | 260 | `result-track:c4581c878a3df8dba3a79cb2c2b44d8d5925ffcbb7c6f470e93097c0de17d9fe` |
| 21 | `theorem` | [arithmeticSecurityCouplingVerdict_not_certified](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variantf5b536dd352dc159efbf7a54fa904cffa22eee6f409cbd76cab805b97c19027b.lean/declarations/arithmeticsecuritycouplingverdict-not-certified--bfde255d3b97d5fab7cfd244.md) | 267 | `result-track:bfde255d3b97d5fab7cfd2446b839eda6d481a58af96906d03adbc9556f1da9d` |
| 22 | `theorem` | [arithmeticSecurityCouplingVerdict_not_refuted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variantf5b536dd352dc159efbf7a54fa904cffa22eee6f409cbd76cab805b97c19027b.lean/declarations/arithmeticsecuritycouplingverdict-not-refuted--cb9fbb3c56468d09c7bf0e6a.md) | 273 | `result-track:cb9fbb3c56468d09c7bf0e6a38ca6c2bc82217d6ca19df19fb17946c2cb567b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
