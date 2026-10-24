# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.RationalNewtonWitness

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72d89bdb76077d55f3c532fbd673330078c251e2",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72d89bdb76077d55f3c532fbd673330078c251e2`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.ContractiveZeroDisk`](../../../../../mathematics/Analysis/ComplexAnalysis/ContractiveZeroDisk.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.RationalComplexQuotient`](../../../../../mathematics/Analysis/ComplexAnalysis/RationalComplexQuotient.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZetaDiskCurvature`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaDiskCurvature.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Data](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean/declarations/data--e567e8be3ad3cac16528ee9c.md) | 30 | `declaration-track:e567e8be3ad3cac16528ee9c9a389385b2b27f68345fd911bfafd152c337fac1` |
| 2 | `def` | [chartCenter](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean/declarations/chartcenter--de568737a8df311e6e1a9e21.md) | 40 | `declaration-track:de568737a8df311e6e1a9e21bcf34e2997356081449c84ea84252eb522c76862` |
| 3 | `def` | [curvature](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean/declarations/curvature--bc5067abaa1d3c8f034107f6.md) | 44 | `declaration-track:bc5067abaa1d3c8f034107f6699aa60405794e58026eedc4ee4df05194c961fd` |
| 4 | `def` | [residualBudget](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean/declarations/residualbudget--a1fe4d422ff22002d15e847d.md) | 46 | `declaration-track:a1fe4d422ff22002d15e847d3f03abccf428aeb74698d669b94db480acdd7edf` |
| 5 | `def` | [defectBudget](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean/declarations/defectbudget--94ae75fa71175f079bc42b78.md) | 49 | `declaration-track:94ae75fa71175f079bc42b78daad1ccf290923abf20873a8036d63ca10d6c6f3` |
| 6 | `def` | [Geometry](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean/declarations/geometry--0aadac6d8a0a5c256e288c9f.md) | 53 | `declaration-track:0aadac6d8a0a5c256e288c9f71f939a9f9432d423012932804cba4ed94d8bc79` |
| 7 | `def` | [Admissible](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean/declarations/admissible--575e78cccf67d0d0d72b717c.md) | 57 | `declaration-track:575e78cccf67d0d0d72b717cb4f1979db88043af23505752030b0faa2c0f79b6` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean/declarations/instance--b462191e388e1746a5fb17f2.md) | 62 | `declaration-track:b462191e388e1746a5fb17f2e0a691ed6cdcfcecd1a68b6eceb5abaf42986810` |
| 9 | `def` | [verify](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean/declarations/verify--3f07a7deaed40dce327cc1f6.md) | 66 | `declaration-track:3f07a7deaed40dce327cc1f6baa69bf5f9f318cf6f3eb0e1940e7afe6a9518e8` |
| 10 | `def` | [CenterEnclosures](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean/declarations/centerenclosures--71b29f8d679fe13573dd8978.md) | 69 | `declaration-track:71b29f8d679fe13573dd8978a9ef1b82b4c41b11d4de186d1b38a4eb2f43f29c` |
| 11 | `theorem` | [verify_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean/declarations/verify-iff--6552f9b559672b991ad0ccc4.md) | 73 | `result-track:6552f9b559672b991ad0ccc41e66b24bddb4d8d5f373237d78da7e34c670e79b` |
| 12 | `theorem` | [chartCenter_spec](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean/declarations/chartcenter-spec--2abcbb9d06d1349e400d2f03.md) | 78 | `result-track:2abcbb9d06d1349e400d2f03f6a9422d0b7a179386fd6362c5b202feb1cabdce` |
| 13 | `theorem` | [curvature_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean/declarations/curvature-nonneg--1b9f6b9ad6287d8f86a32366.md) | 85 | `result-track:1b9f6b9ad6287d8f86a323665879c80051e5e08fa891ad7ed217e8215468ff21` |
| 14 | `theorem` | [geometry_subset](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean/declarations/geometry-subset--3c21c6b821669eab0af0ab6d.md) | 88 | `result-track:3c21c6b821669eab0af0ab6dee047c13e4bda4d5e141b51a9d427d5a4efef44a` |
| 15 | `theorem` | [source_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean/declarations/source-bounds--f703deb50c08eb237e8623a9.md) | 114 | `result-track:f703deb50c08eb237e8623a9bed00c627aaf8284170d1f05c1bf9fc9d8bfa75b` |
| 16 | `theorem` | [exists_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean/declarations/exists-zero--262bc94d0d4c3b9b413a97ab.md) | 153 | `result-track:262bc94d0d4c3b9b413a97abbcd2d373c3c5e6fb1776a209ccff52ee2755209e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
