# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Prime.Variant50a29e5cb2fd475ad362cedabfee76472ad4ef03ab465e443fd5068512582ce5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06a4ff04ed285c952f52fe131fdb00f68dee870e",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variant50a29e5cb2fd475ad362cedabfee76472ad4ef03ab465e443fd5068512582ce5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variant50a29e5cb2fd475ad362cedabfee76472ad4ef03ab465e443fd5068512582ce5.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variant50a29e5cb2fd475ad362cedabfee76472ad4ef03ab465e443fd5068512582ce5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06a4ff04ed285c952f52fe131fdb00f68dee870e`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variant50a29e5cb2fd475ad362cedabfee76472ad4ef03ab465e443fd5068512582ce5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Prime/Variant50a29e5cb2fd475ad362cedabfee76472ad4ef03ab465e443fd5068512582ce5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_prime_mul_of_ble](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variant50a29e5cb2fd475ad362cedabfee76472ad4ef03ab465e443fd5068512582ce5.lean/declarations/not-prime-mul-of-ble--e751e56c43a6474c9a73fb37.md) | 44 | `result-track:e751e56c43a6474c9a73fb379ca99d9104741cd8d5225ac66b937ae8e40e7705` |
| 2 | `def` | [deriveNotPrime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variant50a29e5cb2fd475ad362cedabfee76472ad4ef03ab465e443fd5068512582ce5.lean/declarations/derivenotprime--84a4977a0e6deff7409a527d.md) | 50 | `declaration-track:84a4977a0e6deff7409a527dfe2da66e06f5006a2eb860c37f8df67702e85b3e` |
| 3 | `def` | [MinFacHelper](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variant50a29e5cb2fd475ad362cedabfee76472ad4ef03ab465e443fd5068512582ce5.lean/declarations/minfachelper--6f453e03efb676b0a0109185.md) | 58 | `declaration-track:6f453e03efb676b0a0109185b8cd4cc540dddd6b322b2025286ee367477144cd` |
| 4 | `theorem` | [MinFacHelper.one_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variant50a29e5cb2fd475ad362cedabfee76472ad4ef03ab465e443fd5068512582ce5.lean/declarations/minfachelper-one-lt--55d0c15a58f8757ed0512b21.md) | 61 | `result-track:55d0c15a58f8757ed0512b21949bf95f5b62f4761aaf00a1b3c124fd9ee1d3b3` |
| 5 | `theorem` | [minFacHelper_0](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variant50a29e5cb2fd475ad362cedabfee76472ad4ef03ab465e443fd5068512582ce5.lean/declarations/minfachelper-0--c8c678578a3e314f249f4aa3.md) | 69 | `result-track:c8c678578a3e314f249f4aa3465f4cfc73bd5c6aae03b603fd245d41f7751f9d` |
| 6 | `theorem` | [minFacHelper_1](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variant50a29e5cb2fd475ad362cedabfee76472ad4ef03ab465e443fd5068512582ce5.lean/declarations/minfachelper-1--db3c30bd26fe801c8b51c607.md) | 78 | `result-track:db3c30bd26fe801c8b51c607d111da244edb7b1961a2d1606669465bc003ed0a` |
| 7 | `theorem` | [minFacHelper_2](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variant50a29e5cb2fd475ad362cedabfee76472ad4ef03ab465e443fd5068512582ce5.lean/declarations/minfachelper-2--1dec9829a269ee61ff96427a.md) | 93 | `result-track:1dec9829a269ee61ff96427a6bb8d92070c96a42ade704eeaf2588d0bdd6659c` |
| 8 | `theorem` | [minFacHelper_3](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variant50a29e5cb2fd475ad362cedabfee76472ad4ef03ab465e443fd5068512582ce5.lean/declarations/minfachelper-3--100c98c722b86e076000cfc7.md) | 99 | `result-track:100c98c722b86e076000cfc77ed5f025a33b73d599ce86da4edb50d33c66c24e` |
| 9 | `theorem` | [isNat_minFac_1](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variant50a29e5cb2fd475ad362cedabfee76472ad4ef03ab465e443fd5068512582ce5.lean/declarations/isnat-minfac-1--4cbbc8d541f51c8ac58c4c90.md) | 106 | `result-track:4cbbc8d541f51c8ac58c4c900b5eebbbe2108560f29269a8250cd8db4a4caa2a` |
| 10 | `theorem` | [isNat_minFac_2](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variant50a29e5cb2fd475ad362cedabfee76472ad4ef03ab465e443fd5068512582ce5.lean/declarations/isnat-minfac-2--89a849ce150379158551e093.md) | 109 | `result-track:89a849ce150379158551e0931e453b87a79e8b27dac881c8155cbc0c5be05f13` |
| 11 | `theorem` | [isNat_minFac_3](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variant50a29e5cb2fd475ad362cedabfee76472ad4ef03ab465e443fd5068512582ce5.lean/declarations/isnat-minfac-3--a516e2375f41dbe642517bcb.md) | 112 | `result-track:a516e2375f41dbe642517bcbaee3d180423651666eaeb11c6ffa736d2b8f6bb6` |
| 12 | `theorem` | [isNat_minFac_4](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variant50a29e5cb2fd475ad362cedabfee76472ad4ef03ab465e443fd5068512582ce5.lean/declarations/isnat-minfac-4--e56c43d9985498093341a9de.md) | 118 | `result-track:e56c43d9985498093341a9de6925c524ec31b6127b782cbd175da3e050824079` |
| 13 | `def` | [evalMinFac.core](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variant50a29e5cb2fd475ad362cedabfee76472ad4ef03ab465e443fd5068512582ce5.lean/declarations/evalminfac-core--8ebe1f08febc2fa77c4599f6.md) | 132 | `declaration-track:8ebe1f08febc2fa77c4599f6b239f426e079214655e5fcf002c5072179aadfbf` |
| 14 | `def` | [evalMinFac](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variant50a29e5cb2fd475ad362cedabfee76472ad4ef03ab465e443fd5068512582ce5.lean/declarations/evalminfac--bc21da2c9520dae8a7591473.md) | 173 | `declaration-track:bc21da2c9520dae8a759147359c25a03e0737765f3f1d5d61fff6fbe4a5c2869` |
| 15 | `theorem` | [isNat_prime_0](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variant50a29e5cb2fd475ad362cedabfee76472ad4ef03ab465e443fd5068512582ce5.lean/declarations/isnat-prime-0--5b1d11a6bc752d230922202d.md) | 178 | `result-track:5b1d11a6bc752d230922202d434e997e09a9f3a7e9fcbb8c461b53247d23da9a` |
| 16 | `theorem` | [isNat_prime_1](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variant50a29e5cb2fd475ad362cedabfee76472ad4ef03ab465e443fd5068512582ce5.lean/declarations/isnat-prime-1--5f2487a6ff9aa8e19ca579de.md) | 181 | `result-track:5f2487a6ff9aa8e19ca579de765bd6f19c342849ec9f0d0ee46b1d811bc3689a` |
| 17 | `theorem` | [isNat_prime_2](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variant50a29e5cb2fd475ad362cedabfee76472ad4ef03ab465e443fd5068512582ce5.lean/declarations/isnat-prime-2--bfe5323414108f562f99ec2d.md) | 184 | `result-track:bfe5323414108f562f99ec2d6e35dc4e8158acc2619219bb71268627472a3bae` |
| 18 | `theorem` | [isNat_not_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variant50a29e5cb2fd475ad362cedabfee76472ad4ef03ab465e443fd5068512582ce5.lean/declarations/isnat-not-prime--d886e6e231b33b1a24a48fa6.md) | 188 | `result-track:d886e6e231b33b1a24a48fa671859d852917d05a3d2c32a00d6760e2347ffdd8` |
| 19 | `def` | [evalNatPrime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variant50a29e5cb2fd475ad362cedabfee76472ad4ef03ab465e443fd5068512582ce5.lean/declarations/evalnatprime--5a5c68a2093b81b6649538de.md) | 191 | `declaration-track:5a5c68a2093b81b6649538de67d2a6a914bb3e9af1c3bc0d1fada3e461d7279c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
