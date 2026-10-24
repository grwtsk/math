# Verification target: GRWTSK.Algebra.RingInvo.Variant655302f453b0190ff0a51e38fdc7ce084a2e24139f1e57c8550bb412e0685ce6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e42081d3624f8e5b4209110fbe281c8e230834d6",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingInvo/Variant655302f453b0190ff0a51e38fdc7ce084a2e24139f1e57c8550bb412e0685ce6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingInvo/Variant655302f453b0190ff0a51e38fdc7ce084a2e24139f1e57c8550bb412e0685ce6.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingInvo/Variant655302f453b0190ff0a51e38fdc7ce084a2e24139f1e57c8550bb412e0685ce6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e42081d3624f8e5b4209110fbe281c8e230834d6`.

Source path: `GRWTSK/Algebra/RingInvo/Variant655302f453b0190ff0a51e38fdc7ce084a2e24139f1e57c8550bb412e0685ce6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingInvo/Variant655302f453b0190ff0a51e38fdc7ce084a2e24139f1e57c8550bb412e0685ce6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Opposite` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RingInvo](../../../../mathematics/Algebra/RingInvo/Variant655302f453b0190ff0a51e38fdc7ce084a2e24139f1e57c8550bb412e0685ce6.lean/declarations/ringinvo--b64293ded37b01b397e4a245.md) | 31 | `declaration-track:b64293ded37b01b397e4a245ed127e7052f9029f079e85667ac199f6bbb60792` |
| 2 | `class` | [RingInvoClass](../../../../mathematics/Algebra/RingInvo/Variant655302f453b0190ff0a51e38fdc7ce084a2e24139f1e57c8550bb412e0685ce6.lean/declarations/ringinvoclass--324828536913ed4c6265671e.md) | 40 | `declaration-track:324828536913ed4c6265671e268bebebaf2746d8fdca6289e85cf0c333d2e8b2` |
| 3 | `def` | [RingInvoClass.toRingInvo](../../../../mathematics/Algebra/RingInvo/Variant655302f453b0190ff0a51e38fdc7ce084a2e24139f1e57c8550bb412e0685ce6.lean/declarations/ringinvoclass-toringinvo--7622c6679888f5c56ae4a14e.md) | 49 | `declaration-track:7622c6679888f5c56ae4a14e75a3763bec6be63db104a1acd99f57c2091f13ca` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingInvo/Variant655302f453b0190ff0a51e38fdc7ce084a2e24139f1e57c8550bb412e0685ce6.lean/declarations/instance--d458b6ec592352eeb95828de.md) | 59 | `declaration-track:d458b6ec592352eeb95828de7d1421d78b21c6b28adf3579cdbf27a53c4d61b8` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingInvo/Variant655302f453b0190ff0a51e38fdc7ce084a2e24139f1e57c8550bb412e0685ce6.lean/declarations/instance--146b284ea042a5a2d468f021.md) | 62 | `declaration-track:146b284ea042a5a2d468f021dd9e8fcdd074aa2ff152b6752a61ff28e507073e` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingInvo/Variant655302f453b0190ff0a51e38fdc7ce084a2e24139f1e57c8550bb412e0685ce6.lean/declarations/instance--3369045c5ebd8dcc3af531e4.md) | 73 | `declaration-track:3369045c5ebd8dcc3af531e4a5dfbfda7a2347d9b98cd6bf4f55280515dd596a` |
| 7 | `def` | [mk'](../../../../mathematics/Algebra/RingInvo/Variant655302f453b0190ff0a51e38fdc7ce084a2e24139f1e57c8550bb412e0685ce6.lean/declarations/mk--0f671422abfae14c45cd91b5.md) | 79 | `declaration-track:0f671422abfae14c45cd91b500e7833e75704a0db863f5e95efe79f8506b9746` |
| 8 | `theorem` | [involution](../../../../mathematics/Algebra/RingInvo/Variant655302f453b0190ff0a51e38fdc7ce084a2e24139f1e57c8550bb412e0685ce6.lean/declarations/involution--c40d84fb60b9f87e227275fc.md) | 87 | `result-track:c40d84fb60b9f87e227275fc5767e4b7b4c676f8b49ceded006ce7551e675d7d` |
| 9 | `theorem` | [coe_ringEquiv](../../../../mathematics/Algebra/RingInvo/Variant655302f453b0190ff0a51e38fdc7ce084a2e24139f1e57c8550bb412e0685ce6.lean/declarations/coe-ringequiv--55e0ed0201f99024952b5b6d.md) | 95 | `result-track:55e0ed0201f99024952b5b6db0d14c9a55035c0f7a639be130f9ca0da9da93c6` |
| 10 | `theorem` | [map_eq_zero_iff](../../../../mathematics/Algebra/RingInvo/Variant655302f453b0190ff0a51e38fdc7ce084a2e24139f1e57c8550bb412e0685ce6.lean/declarations/map-eq-zero-iff--0e6bfcec53dabe9aefd2724d.md) | 98 | `result-track:0e6bfcec53dabe9aefd2724da4060cbdc1304093ec3059e54dd5af0b3c3f6308` |
| 11 | `def` | [RingInvo.id](../../../../mathematics/Algebra/RingInvo/Variant655302f453b0190ff0a51e38fdc7ce084a2e24139f1e57c8550bb412e0685ce6.lean/declarations/ringinvo-id--c593cbf11a76791b9929e232.md) | 110 | `declaration-track:c593cbf11a76791b9929e2321c5d623b827d7d85c6732c78358cb6a99b8af3a7` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingInvo/Variant655302f453b0190ff0a51e38fdc7ce084a2e24139f1e57c8550bb412e0685ce6.lean/declarations/instance--9a69ef713c99a74e9966f91b.md) | 113 | `declaration-track:9a69ef713c99a74e9966f91be010d6794262f278802c919fba4ec856d989ee2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
