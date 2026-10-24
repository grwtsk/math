# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CauchyNewtonWitness

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d36598b8d9f4b423e63cbcc45258d6cbfc91f03",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CauchyNewtonWitness.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CauchyNewtonWitness.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CauchyNewtonWitness.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d36598b8d9f4b423e63cbcc45258d6cbfc91f03`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CauchyNewtonWitness.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CauchyNewtonWitness.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ZetaDiskCauchyBounds`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaDiskCauchyBounds.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.LocalNewtonWitness`](../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalNewtonWitness.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CenterData](../../../../../mathematics/NumberTheory/Zeta/Riemann/CauchyNewtonWitness.lean/declarations/centerdata--370cbdab4043b750653c0077.md) | 30 | `declaration-track:370cbdab4043b750653c0077c134f68c08c274ee30f795752cb559673bf28814` |
| 2 | `def` | [leftMargin](../../../../../mathematics/NumberTheory/Zeta/Riemann/CauchyNewtonWitness.lean/declarations/leftmargin--f57f2580bc935b4178574c29.md) | 38 | `declaration-track:f57f2580bc935b4178574c29b99c1e845abdd1fe9ab4b0e2dd52aac2a0850df4` |
| 3 | `def` | [poleMargin](../../../../../mathematics/NumberTheory/Zeta/Riemann/CauchyNewtonWitness.lean/declarations/polemargin--4e401dc79bd937905adf0009.md) | 39 | `declaration-track:4e401dc79bd937905adf0009363c2a3f7ca272d65d46430261cd838c833edb54` |
| 4 | `def` | [sizeBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CauchyNewtonWitness.lean/declarations/sizebound--7f71c17acc838b8131d3f65e.md) | 40 | `declaration-track:7f71c17acc838b8131d3f65e9379a01d81501f69e06f51d61b3c15adc2ed42d9` |
| 5 | `def` | [curvature](../../../../../mathematics/NumberTheory/Zeta/Riemann/CauchyNewtonWitness.lean/declarations/curvature--2ffb0da7836263cf51af3a2a.md) | 43 | `declaration-track:2ffb0da7836263cf51af3a2a29aa1a6ff62d22c97dcbba3af39d30c53f49ff6c` |
| 6 | `def` | [checkGeometry](../../../../../mathematics/NumberTheory/Zeta/Riemann/CauchyNewtonWitness.lean/declarations/checkgeometry--d02bdebb5cfdc4ee776febe8.md) | 46 | `declaration-track:d02bdebb5cfdc4ee776febe80dfff689818960853969eac68e5e2a12baecfe2d` |
| 7 | `def` | [newtonData](../../../../../mathematics/NumberTheory/Zeta/Riemann/CauchyNewtonWitness.lean/declarations/newtondata--2ebf0fec453adaaa1c5993c5.md) | 50 | `declaration-track:2ebf0fec453adaaa1c5993c5a706a9d057ef3bf0018a13d2cc86146bdf95eda6` |
| 8 | `def` | [checkAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CauchyNewtonWitness.lean/declarations/checkat--f6a4c23413dc2f055eed7207.md) | 53 | `declaration-track:f6a4c23413dc2f055eed72074ab4c0a1f8ad07a636b5bb6c8d6433d48366dc33` |
| 9 | `def` | [CenterEstimates](../../../../../mathematics/NumberTheory/Zeta/Riemann/CauchyNewtonWitness.lean/declarations/centerestimates--035e92555a86b5fd2240cbe6.md) | 57 | `declaration-track:035e92555a86b5fd2240cbe634d98e6d0ce0e2b6e71a49885f56d9d63917d55c` |
| 10 | `theorem` | [geometry_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CauchyNewtonWitness.lean/declarations/geometry-iff--8b3ecab585a2348d08828bec.md) | 61 | `result-track:8b3ecab585a2348d08828bec1f62066333143268759c341b975ed45f6f18b8db` |
| 11 | `theorem` | [checkAt_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CauchyNewtonWitness.lean/declarations/checkat-iff--b066f1062555881588dcf933.md) | 66 | `result-track:b066f1062555881588dcf933447802e4a3691a6f71f3170f7ba376e4dd2d799b` |
| 12 | `theorem` | [checked_inner_strip](../../../../../mathematics/NumberTheory/Zeta/Riemann/CauchyNewtonWitness.lean/declarations/checked-inner-strip--c74f65cefe58e6a53175fde5.md) | 72 | `result-track:c74f65cefe58e6a53175fde5707fc3d478bf398c429fe25b6784b1cf35072a76` |
| 13 | `theorem` | [curvature_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CauchyNewtonWitness.lean/declarations/curvature-nonneg--e67e3fa8ae8afc59c932c9a4.md) | 78 | `result-track:e67e3fa8ae8afc59c932c9a421ac9c575b21d21ae0e0217b6d8dac1eb1ea0f61` |
| 14 | `theorem` | [curvature_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CauchyNewtonWitness.lean/declarations/curvature-bound--e31ad600238c48098f0b458b.md) | 88 | `result-track:e31ad600238c48098f0b458b3925baef5f112d6ac4f9369592a31bd76741e82d` |
| 15 | `theorem` | [estimates_of_centers](../../../../../mathematics/NumberTheory/Zeta/Riemann/CauchyNewtonWitness.lean/declarations/estimates-of-centers--2616de380b443ec250a10518.md) | 108 | `result-track:2616de380b443ec250a105188480cd9691138eb866cc6369c52467cf9518cf6d` |
| 16 | `theorem` | [exists_unique_point](../../../../../mathematics/NumberTheory/Zeta/Riemann/CauchyNewtonWitness.lean/declarations/exists-unique-point--26b52281aa10802852a244d1.md) | 114 | `result-track:26b52281aa10802852a244d1e3c5a2d5b2a8d9ab463824563d54c0f0c54b5cd0` |
| 17 | `theorem` | [familyEstimates_of_centers](../../../../../mathematics/NumberTheory/Zeta/Riemann/CauchyNewtonWitness.lean/declarations/familyestimates-of-centers--b739e6017d8582f55a1755e2.md) | 122 | `result-track:b739e6017d8582f55a1755e29c58bf297bbdc155f356cbcf401b3b3abb8d5e46` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
