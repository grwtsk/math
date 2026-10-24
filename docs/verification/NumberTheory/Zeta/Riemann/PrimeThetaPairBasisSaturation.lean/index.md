# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PrimeThetaPairBasisSaturation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e84bf4ecdb7ae722c6830669a28ddddf0694301f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PrimeThetaPairBasisSaturation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaPairBasisSaturation.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaPairBasisSaturation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e84bf4ecdb7ae722c6830669a28ddddf0694301f`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PrimeThetaPairBasisSaturation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PrimeThetaPairBasisSaturation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PrimeThetaSeparableKernelFactorization`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaSeparableKernelFactorization.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pairBasisLeftDelta](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaPairBasisSaturation.lean/declarations/pairbasisleftdelta--4b32a19ef8ea7c180d4854cc.md) | 35 | `declaration-track:4b32a19ef8ea7c180d4854cc954de94fa3954fdadc75387a5ddf9e1d932ef3e4` |
| 2 | `def` | [pairBasisRightDelta](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaPairBasisSaturation.lean/declarations/pairbasisrightdelta--5664c6b652c6ac97ebf3dbf7.md) | 39 | `declaration-track:5664c6b652c6ac97ebf3dbf7808bacf75bf389dab028446e194a13249070a6d2` |
| 3 | `def` | [pairBasisExpansion](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaPairBasisSaturation.lean/declarations/pairbasisexpansion--c804889f083dffa6bd8b9f05.md) | 43 | `declaration-track:c804889f083dffa6bd8b9f05b4a62ea5c6c6f18d5935f1ec25dc86d79789682b` |
| 4 | `theorem` | [pairBasisExpansion_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaPairBasisSaturation.lean/declarations/pairbasisexpansion-eq--0da409d02f0ceb844bb7f2da.md) | 51 | `result-track:0da409d02f0ceb844bb7f2da2f619194369028b7207036eb07b0d0b34fd25c3d` |
| 5 | `def` | [pairBasisAbsoluteExpansionAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaPairBasisSaturation.lean/declarations/pairbasisabsoluteexpansionat--435ec105d151febfaed751b5.md) | 72 | `declaration-track:435ec105d151febfaed751b5f3f4f312044830f515f6247b5bf79bda712a121f` |
| 6 | `theorem` | [pairBasisAbsoluteExpansionAt_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaPairBasisSaturation.lean/declarations/pairbasisabsoluteexpansionat-eq--4be06c6c859aecf5b4f6485e.md) | 80 | `result-track:4be06c6c859aecf5b4f6485ec3db83fc181ff81e86b060678fed848230f6121e` |
| 7 | `def` | [pairBasisAbsoluteMass](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaPairBasisSaturation.lean/declarations/pairbasisabsolutemass--d878843228e1f76d1420d635.md) | 102 | `declaration-track:d878843228e1f76d1420d63508b5b76159781b1a44ad70d42822b8c5042a79a9` |
| 8 | `def` | [finiteKernelL1Mass](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaPairBasisSaturation.lean/declarations/finitekernell1mass--ccfbedcae107890fed655237.md) | 108 | `declaration-track:ccfbedcae107890fed65523777faeba9267d462ed7ba271856f04bb8bb923555` |
| 9 | `theorem` | [pairBasisAbsoluteMass_eq_finiteKernelL1Mass](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaPairBasisSaturation.lean/declarations/pairbasisabsolutemass-eq-finitekernell1mass--58ebefef221a834a3362ce56.md) | 114 | `result-track:58ebefef221a834a3362ce56bb14b694ac4a133e09718715c0e07a93bcbe40a7` |
| 10 | `def` | [pairBasisFactorIndex](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaPairBasisSaturation.lean/declarations/pairbasisfactorindex--54d6cec607af67ec80e345bb.md) | 125 | `declaration-track:54d6cec607af67ec80e345bb33e7c778372796ae096b094e200a7f591dd6f538` |
| 11 | `theorem` | [pairBasisFactorIndex_card](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaPairBasisSaturation.lean/declarations/pairbasisfactorindex-card--bedd552e7d429aa26e4ceb9a.md) | 131 | `result-track:bedd552e7d429aa26e4ceb9a12c0447a526c8858df36feffc2a6dc5d74f0a4a1` |
| 12 | `def` | [primeKernelPairBasisExpansion](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaPairBasisSaturation.lean/declarations/primekernelpairbasisexpansion--45b3ed6d462e24fb986e34fc.md) | 138 | `declaration-track:45b3ed6d462e24fb986e34fc8a2644715823c523ba90e86510361e5d513c3956` |
| 13 | `theorem` | [primeKernelPairBasisExpansion_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaPairBasisSaturation.lean/declarations/primekernelpairbasisexpansion-eq--0932a355a1eda3ace2d172f5.md) | 144 | `result-track:0932a355a1eda3ace2d172f58203b616ae66b6b813db0d9ce51f9085eb26c129` |
| 14 | `def` | [primeKernelPairBasisAbsoluteMass](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaPairBasisSaturation.lean/declarations/primekernelpairbasisabsolutemass--ee290dbedf4fd3c7b44019c7.md) | 153 | `declaration-track:ee290dbedf4fd3c7b44019c7b9ea9c3179483369d9e0d15bc61e4bcb1af20f98` |
| 15 | `theorem` | [primeKernelPairBasisAbsoluteMass_eq_kernelMass](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaPairBasisSaturation.lean/declarations/primekernelpairbasisabsolutemass-eq-kernelmass--86247789cc426d158e6f03e6.md) | 160 | `result-track:86247789cc426d158e6f03e645afcc75d7b05ad2f61560b167f78f3385c37d72` |
| 16 | `theorem` | [primePairBasisFactorIndex_card](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaPairBasisSaturation.lean/declarations/primepairbasisfactorindex-card--40e58b42397e4aa7e589843f.md) | 170 | `result-track:40e58b42397e4aa7e589843fbcec426de3704965c21da8efa248dce4d44d9e99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
