# Verification target: GRWTSK.Analysis.Complex.RationalPowerIntegerSeed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9aa1fa70ab5d7e892f81bd719f3a95f6b800dddc",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/RationalPowerIntegerSeed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerIntegerSeed.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerIntegerSeed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9aa1fa70ab5d7e892f81bd719f3a95f6b800dddc`.

Source path: `GRWTSK/Analysis/Complex/RationalPowerIntegerSeed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/RationalPowerIntegerSeed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.IntegerTaylorPolynomial`](../../../../mathematics/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.RationalPowerTrace`](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerTrace.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Encoding](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerIntegerSeed.lean/declarations/encoding--4384ff1ae144d714b70e0bea.md) | 25 | `declaration-track:4384ff1ae144d714b70e0bea3d119a8651b294b6c8f14ad6a6e31fbe52301919` |
| 2 | `structure` | [Valid](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerIntegerSeed.lean/declarations/valid--de72a0d34f2a803e1551a6a3.md) | 35 | `declaration-track:de72a0d34f2a803e1551a6a3cc18597beb550ebb2a9752e3c55c122fc58dc83d` |
| 3 | `structure` | [Binding](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerIntegerSeed.lean/declarations/binding--7898a44a5749644190f0af05.md) | 44 | `declaration-track:7898a44a5749644190f0af05ed648a01c43c6c5032f94c05c8409b105ed6f9e0` |
| 4 | `def` | [seedNum](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerIntegerSeed.lean/declarations/seednum--d2f4637477d0138b40eb9192.md) | 52 | `declaration-track:d2f4637477d0138b40eb9192dc608f4b7b352e7b2f2d9944b8956adfbc9b0e0b` |
| 5 | `def` | [seedDen](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerIntegerSeed.lean/declarations/seedden--38c7bed96e92fd60b9c33c9e.md) | 53 | `declaration-track:38c7bed96e92fd60b9c33c9e36f54d14348a21813176c439ac379fe4bd949272` |
| 6 | `def` | [taylorNum](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerIntegerSeed.lean/declarations/taylornum--e064f96af86a2bc602224241.md) | 55 | `declaration-track:e064f96af86a2bc602224241ea7da15c83cf0ab28dd95bb7e9efff183de04041` |
| 7 | `def` | [taylorDen](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerIntegerSeed.lean/declarations/taylorden--8c9b872eef4303771d65c7a5.md) | 56 | `declaration-track:8c9b872eef4303771d65c7a5fb36039f87afbc3f8208aa7823383be00e47d48c` |
| 8 | `def` | [errorNum](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerIntegerSeed.lean/declarations/errornum--1af105b4c0014e8bc0b47f0a.md) | 60 | `declaration-track:1af105b4c0014e8bc0b47f0ae60afc8b27bd8d14165e33a1d8b770969a7d2fc7` |
| 9 | `def` | [errorDen](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerIntegerSeed.lean/declarations/errorden--7740c2f278b1fe09058e5fc3.md) | 65 | `declaration-track:7740c2f278b1fe09058e5fc342d0e06ae427c35055784548cc2ea9d29752603b` |
| 10 | `theorem` | [seedDen_pos](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerIntegerSeed.lean/declarations/seedden-pos--ca4f5042def287ff31b1f699.md) | 68 | `result-track:ca4f5042def287ff31b1f6992fbe39ea9e2be86a4372e3a6f801ca71c0efb6a1` |
| 11 | `theorem` | [taylorDen_pos](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerIntegerSeed.lean/declarations/taylorden-pos--e89ce07b1a1a3bcbcb7fae02.md) | 71 | `result-track:e89ce07b1a1a3bcbcb7fae02944038058894aed37ba2fc3e0789ebe80d76c86d` |
| 12 | `theorem` | [errorDen_pos](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerIntegerSeed.lean/declarations/errorden-pos--e44625437733d2245d93c82c.md) | 75 | `result-track:e44625437733d2245d93c82cb0f4ce6e420c6327d8054d3d1669479dde9fa806` |
| 13 | `theorem` | [errorNum_nonneg](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerIntegerSeed.lean/declarations/errornum-nonneg--df3c71de8cdb69e4333d762e.md) | 78 | `result-track:df3c71de8cdb69e4333d762e6c910aa43b99a02afe3eaf0b6c3545130ac16495` |
| 14 | `theorem` | [seed_identity](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerIntegerSeed.lean/declarations/seed-identity--2bea2a53e6f8fe75b9ebb2fd.md) | 88 | `result-track:2bea2a53e6f8fe75b9ebb2fd4fecd933fec4a904afad656250da7c8a76e629f6` |
| 15 | `theorem` | [seed_error_identity](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerIntegerSeed.lean/declarations/seed-error-identity--40d0695092f43401054d3719.md) | 96 | `result-track:40d0695092f43401054d3719dec62c0a76bc1fd76cad1c90c94a84b15a5e8bc6` |
| 16 | `def` | [Windows](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerIntegerSeed.lean/declarations/windows--d878565071fc04ed34ad72a5.md) | 111 | `declaration-track:d878565071fc04ed34ad72a50a9cf77cd4ae2e757cd81bdf7ab0b70d559f626f` |
| 17 | `theorem` | [seed_valid](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerIntegerSeed.lean/declarations/seed-valid--990de20abf37926e0e2f3ae5.md) | 119 | `result-track:990de20abf37926e0e2f3ae5049203163eec04d4e185f58ad648563e47bebfd7` |
| 18 | `theorem` | [endpoint_eq_of_windows](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerIntegerSeed.lean/declarations/endpoint-eq-of-windows--ca056074a50d673cb59fb068.md) | 144 | `result-track:ca056074a50d673cb59fb068d65e5d788d17cee34e85319a1384904059a3e6ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
