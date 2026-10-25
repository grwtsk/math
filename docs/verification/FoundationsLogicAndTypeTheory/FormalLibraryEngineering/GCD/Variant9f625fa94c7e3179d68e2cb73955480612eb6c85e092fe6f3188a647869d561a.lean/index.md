# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GCD.Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce935675bbea18f305353145099710697adc2795",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce935675bbea18f305353145099710697adc2795`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Divisibility.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.GCD` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [int_gcd_helper'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean/declarations/int-gcd-helper--af4a225f3a738f6c491400ba.md) | 23 | `result-track:af4a225f3a738f6c491400badc6e0a1e717631de932a6414bfba942cb6b1ccf2` |
| 2 | `theorem` | [nat_gcd_helper_dvd_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean/declarations/nat-gcd-helper-dvd-left--ebe89e42f79133e3e2234703.md) | 31 | `result-track:ebe89e42f79133e3e22347038a9e03722f83595cc957f6f7d4f12fa0170d1ea2` |
| 3 | `theorem` | [nat_gcd_helper_dvd_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean/declarations/nat-gcd-helper-dvd-right--b0720283bc22c90b575188da.md) | 34 | `result-track:b0720283bc22c90b575188da3016f028416b855d290e102653ba4ca5eb119c71` |
| 4 | `theorem` | [nat_gcd_helper_2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean/declarations/nat-gcd-helper-2--6f67d161f718b9d8967b03d3.md) | 37 | `result-track:6f67d161f718b9d8967b03d399a1013b4a3c3521fb5f8745c7059ff37d80e248` |
| 5 | `theorem` | [nat_gcd_helper_1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean/declarations/nat-gcd-helper-1--5eac6c29e6c2db9dca6990e5.md) | 46 | `result-track:5eac6c29e6c2db9dca6990e5eb8b222bdc0d4ba545ef9f90de972a4ba14dc2cd` |
| 6 | `theorem` | [nat_gcd_helper_1'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean/declarations/nat-gcd-helper-1--eaadf40cd40e33f7322b1a8b.md) | 50 | `result-track:eaadf40cd40e33f7322b1a8bd45fe08421c60559decd7e388683849680a66c0d` |
| 7 | `theorem` | [nat_gcd_helper_2'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean/declarations/nat-gcd-helper-2--7ef36a239c60068564beb5af.md) | 54 | `result-track:7ef36a239c60068564beb5afb2fa4a486bf119a2d7205bee68e25a4250a74bdf` |
| 8 | `theorem` | [nat_lcm_helper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean/declarations/nat-lcm-helper--2f6ca2b554afff9d881505b2.md) | 58 | `result-track:2f6ca2b554afff9d881505b25fe89398ed8d6f80300f6ea21501324cb4a5213f` |
| 9 | `theorem` | [int_gcd_helper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean/declarations/int-gcd-helper--2fa665aced3e8cbc26200953.md) | 65 | `result-track:2fa665aced3e8cbc262009537f5a6b44accecfc4db21f1ae1c88e11db9832312` |
| 10 | `theorem` | [int_lcm_helper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean/declarations/int-lcm-helper--946878c04c4c6f09dbbd1b23.md) | 69 | `result-track:946878c04c4c6f09dbbd1b23fd211043796f44dbb12aec316145ec718d522c57` |
| 11 | `theorem` | [isNat_gcd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean/declarations/isnat-gcd--190d97f035720ff5d95ca188.md) | 75 | `result-track:190d97f035720ff5d95ca188683cee399b7bb43d7f020c015cbda31132e56c5e` |
| 12 | `theorem` | [isNat_lcm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean/declarations/isnat-lcm--b4438ba11f7350dea501d4ec.md) | 79 | `result-track:b4438ba11f7350dea501d4ec5d59df5b1d493fae55eb1fcf773957160c1f5e30` |
| 13 | `theorem` | [isInt_gcd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean/declarations/isint-gcd--064c156d59702605e1411861.md) | 83 | `result-track:064c156d59702605e1411861632b0d394bca36867d66d5895194e8256b7b94be` |
| 14 | `theorem` | [isInt_lcm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean/declarations/isint-lcm--a76bcce6638918fe6993b343.md) | 87 | `result-track:a76bcce6638918fe6993b34358ce232fdabba4ab1e067068a641a3aa169d6281` |
| 15 | `def` | [proveNatGCD](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean/declarations/provenatgcd--9734ae5018b3b02964e5bcba.md) | 93 | `declaration-track:9734ae5018b3b02964e5bcba650dd64086fe78f4e5be7cca10c1b393a42c9b2c` |
| 16 | `def` | [evalNatGCD](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean/declarations/evalnatgcd--6fba180deabd5beae1a64857.md) | 130 | `declaration-track:6fba180deabd5beae1a64857d98f22e6209c196c6c5c427662332a24b9ea9751` |
| 17 | `def` | [proveNatLCM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean/declarations/provenatlcm--db9497c9747e0f55b67b7945.md) | 142 | `declaration-track:db9497c9747e0f55b67b79452ca1f807e7f88ebc90c50dc2b54829830dbe0862` |
| 18 | `def` | [evalNatLCM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean/declarations/evalnatlcm--4e4dd959279bf1372866e69e.md) | 159 | `declaration-track:4e4dd959279bf1372866e69ebe4f63059746a7100566b5c1eac979abd2705a39` |
| 19 | `def` | [proveIntGCD](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean/declarations/proveintgcd--a324e6d575389e6e0441129b.md) | 171 | `declaration-track:a324e6d575389e6e0441129b07c3851e279063aa1dd78afc74dc23bf08c79454` |
| 20 | `def` | [evalIntGCD](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean/declarations/evalintgcd--4012bb042f56d221934c2b24.md) | 179 | `declaration-track:4012bb042f56d221934c2b24e2fa3de36b8f3f7cfb380e3e8c3d61287bb4a2f3` |
| 21 | `def` | [proveIntLCM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean/declarations/proveintlcm--3f3a93630258508bba3ca82a.md) | 190 | `declaration-track:3f3a93630258508bba3ca82a4f42e78dd1feed1af9f1c8e86bb91781966a1e9a` |
| 22 | `def` | [evalIntLCM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean/declarations/evalintlcm--dfa7b97026cfeb4c56c322b1.md) | 198 | `declaration-track:dfa7b97026cfeb4c56c322b102a421695dd5298249b895945ef04bac1d1d4577` |
| 23 | `theorem` | [isInt_ratNum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean/declarations/isint-ratnum--a5481c3bbf1a094e4e7c552b.md) | 207 | `result-track:a5481c3bbf1a094e4e7c552b4769938fa97a0de7d9d4e0d3f05f7b3cfaef47ba` |
| 24 | `theorem` | [isNat_ratDen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean/declarations/isnat-ratden--7e32faa7c361643583cc08a3.md) | 216 | `result-track:7e32faa7c361643583cc08a33f00e7c5a5759c02620ccda8aa1381f9f57b546a` |
| 25 | `def` | [evalRatNum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean/declarations/evalratnum--3331617b1a0bb781306e147d.md) | 227 | `declaration-track:3331617b1a0bb781306e147de94a8ad0dd1be71343fe51032bab9eaee42f7efe` |
| 26 | `def` | [evalRatDen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant9f625fa94c7e3179d68e2cb73955480612eb6c85e092fe6f3188a647869d561a.lean/declarations/evalratden--bc62a7523355dd25a9dcae41.md) | 239 | `declaration-track:bc62a7523355dd25a9dcae41fda8529a80304db2d8a51b3140a0b16b148ff62e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
