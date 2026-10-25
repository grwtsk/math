# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GCD.Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6813bc8c457c4ee7450cdc93695a227a1f658164",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6813bc8c457c4ee7450cdc93695a227a1f658164`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.GCD` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [int_gcd_helper'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean/declarations/int-gcd-helper--f7a76932cb6d6b3eb8102509.md) | 22 | `result-track:f7a76932cb6d6b3eb81025093619a7fa46a302d4299836f0b3e8448be8831d70` |
| 2 | `theorem` | [nat_gcd_helper_dvd_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean/declarations/nat-gcd-helper-dvd-left--80b0e5ad6760c9bd54d35da5.md) | 30 | `result-track:80b0e5ad6760c9bd54d35da53439fbf17e0de663c92fee0ebc6c75291f2854d9` |
| 3 | `theorem` | [nat_gcd_helper_dvd_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean/declarations/nat-gcd-helper-dvd-right--cdd4a016b0b7ef26a8b6a43c.md) | 33 | `result-track:cdd4a016b0b7ef26a8b6a43cf38485715b22112c40ba3e6729fdecee2d2b46c6` |
| 4 | `theorem` | [nat_gcd_helper_2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean/declarations/nat-gcd-helper-2--2783fb66cbac0cb88face3b1.md) | 36 | `result-track:2783fb66cbac0cb88face3b16af12247b8154f0b5bbff457d9819a58a3c33079` |
| 5 | `theorem` | [nat_gcd_helper_1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean/declarations/nat-gcd-helper-1--342262304da64e551ea0da65.md) | 45 | `result-track:342262304da64e551ea0da65d4f2289d2f3dc73393ceae4a3a30e1872fb9443e` |
| 6 | `theorem` | [nat_gcd_helper_1'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean/declarations/nat-gcd-helper-1--993bf78c86973a39e83ff1db.md) | 49 | `result-track:993bf78c86973a39e83ff1dbaa857cba865bc949e5f37597d4daf1a009a4e06f` |
| 7 | `theorem` | [nat_gcd_helper_2'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean/declarations/nat-gcd-helper-2--eba846c91483aead8460771b.md) | 53 | `result-track:eba846c91483aead8460771b1c634a4b1ee4722384d106bab54cb012af98cd07` |
| 8 | `theorem` | [nat_lcm_helper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean/declarations/nat-lcm-helper--4979196bfdc83d6bf66245a5.md) | 57 | `result-track:4979196bfdc83d6bf66245a54f14e11ebdbc39dc46a2c601f09fbd7cfc49dfce` |
| 9 | `theorem` | [int_gcd_helper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean/declarations/int-gcd-helper--a7140c3a684099594141c2d7.md) | 64 | `result-track:a7140c3a684099594141c2d71a3fca1d05e74a674b0052a663b70fcec79d5929` |
| 10 | `theorem` | [int_lcm_helper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean/declarations/int-lcm-helper--f9e1aca28fc9e4b7709c6cb2.md) | 68 | `result-track:f9e1aca28fc9e4b7709c6cb2924e7d166f4975895de0fa9677a526ef99ec4018` |
| 11 | `theorem` | [isNat_gcd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean/declarations/isnat-gcd--9280043346def0c2e42b65fe.md) | 74 | `result-track:9280043346def0c2e42b65fe91775aea58258f0d6281d39638bf58eda0e6d0ed` |
| 12 | `theorem` | [isNat_lcm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean/declarations/isnat-lcm--cbfbd97b3f27b86adf372861.md) | 78 | `result-track:cbfbd97b3f27b86adf372861220ec0bd873d47104d1269ac06aad89af128660d` |
| 13 | `theorem` | [isInt_gcd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean/declarations/isint-gcd--454cf78b0b3dd33e06c268a2.md) | 82 | `result-track:454cf78b0b3dd33e06c268a276d7965f00f4ed98d38e77fc36f7e9373b42055f` |
| 14 | `theorem` | [isInt_lcm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean/declarations/isint-lcm--af4c4ba359e9a4482c78bada.md) | 86 | `result-track:af4c4ba359e9a4482c78bada51ec06e6b5544a2607963c27694e424d67c7f773` |
| 15 | `def` | [proveNatGCD](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean/declarations/provenatgcd--cee635055dde2703fa94d2fd.md) | 92 | `declaration-track:cee635055dde2703fa94d2fd77086e861f2fad41f8281f5fc7fe1eb738f7203c` |
| 16 | `def` | [evalNatGCD](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean/declarations/evalnatgcd--c2246b66e8125f641516004c.md) | 128 | `declaration-track:c2246b66e8125f641516004c5e53ceb6d8ac42f7d3d06a329827f25cf6833828` |
| 17 | `def` | [proveNatLCM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean/declarations/provenatlcm--c629eb43870c0ca7f941d127.md) | 140 | `declaration-track:c629eb43870c0ca7f941d1278fb580b3ae4183a211c940146026428fe869fbe6` |
| 18 | `def` | [evalNatLCM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean/declarations/evalnatlcm--1c4f3fae38277a0d1ed15627.md) | 157 | `declaration-track:1c4f3fae38277a0d1ed156270fb63bd975c1a147492f24518dd68b93b4d2d997` |
| 19 | `def` | [proveIntGCD](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean/declarations/proveintgcd--493d4761719456f11e5ae9bb.md) | 169 | `declaration-track:493d4761719456f11e5ae9bb55a8b91d2fbaa0a96a73d6f10ee6670bba248236` |
| 20 | `def` | [evalIntGCD](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean/declarations/evalintgcd--f1c9c0aa78cceb3879c87e48.md) | 177 | `declaration-track:f1c9c0aa78cceb3879c87e48e0d13a34baf953330396b46f536a42140f2400b1` |
| 21 | `def` | [proveIntLCM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean/declarations/proveintlcm--872c07cc3221cf075c0d7db3.md) | 188 | `declaration-track:872c07cc3221cf075c0d7db37c6738591b13f714143cf8731f061e1b1289a078` |
| 22 | `def` | [evalIntLCM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean/declarations/evalintlcm--3d5c03c869e0d2dc55445aaa.md) | 196 | `declaration-track:3d5c03c869e0d2dc55445aaa69b7c9778aa8f5ea345bad57458b5065c638918d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
