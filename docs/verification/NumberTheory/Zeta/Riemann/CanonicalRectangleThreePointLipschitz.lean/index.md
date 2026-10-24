# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleThreePointLipschitz

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41daf554711152e78a3bbc996699d18e0513aa99",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleThreePointLipschitz.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleThreePointLipschitz.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleThreePointLipschitz.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41daf554711152e78a3bbc996699d18e0513aa99`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleThreePointLipschitz.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalRectangleThreePointLipschitz.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleEdgeObstructionWitness`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleEdgeObstructionWitness.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [three_point_cover](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleThreePointLipschitz.lean/declarations/three-point-cover--56f8fb054537b0ba6e4a091e.md) | 44 | `result-track:56f8fb054537b0ba6e4a091e341d3f084e33537ab0298b6a862a0277c9219e3c` |
| 2 | `structure` | [ThreePointData](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleThreePointLipschitz.lean/declarations/threepointdata--b44c98a307abb40a98fbac97.md) | 68 | `declaration-track:b44c98a307abb40a98fbac97f5ac34b1a13f8b29da77a229c236b380752c9846` |
| 3 | `def` | [widened](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleThreePointLipschitz.lean/declarations/widened--0653986f9fb3cc44eb180f66.md) | 85 | `declaration-track:0653986f9fb3cc44eb180f6614315d4f1690f88a62167c790f94b206ce2c6dfa` |
| 4 | `theorem` | [widened_width](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleThreePointLipschitz.lean/declarations/widened-width--dc81e667c45df91891d83395.md) | 94 | `result-track:dc81e667c45df91891d83395e58d98afb501a2bf753afeeceef4e31b375aeff6` |
| 5 | `theorem` | [transfer_from_sample](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleThreePointLipschitz.lean/declarations/transfer-from-sample--e32400d250b24d3e900037ed.md) | 99 | `result-track:e32400d250b24d3e900037ed1ba07013c1b874ab558a5c6f0441c76f818902c8` |
| 6 | `theorem` | [widened_contains](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleThreePointLipschitz.lean/declarations/widened-contains--b060f705e1700329bdf311e4.md) | 128 | `result-track:b060f705e1700329bdf311e434f313673aa366e4eb77c71b2565e3349e90405b` |
| 7 | `structure` | [SampledRectangleEdges](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleThreePointLipschitz.lean/declarations/sampledrectangleedges--363fc6fb0859ac3ddf51f871.md) | 146 | `declaration-track:363fc6fb0859ac3ddf51f871bb94f9035148a1d3c0db84b96c2ab308a337f564` |
| 8 | `def` | [toHalfUnitRectangleEdgeBounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleThreePointLipschitz.lean/declarations/tohalfunitrectangleedgebounds--8d15b916c9884686c39ed60a.md) | 167 | `declaration-track:8d15b916c9884686c39ed60a9bb0fe3e52198e273dcf93814057e5bb35f497e6` |
| 9 | `theorem` | [corrected_positive_count_width](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleThreePointLipschitz.lean/declarations/corrected-positive-count-width--6fb245afe268835902d344b3.md) | 191 | `result-track:6fb245afe268835902d344b38afcca1a4e0b58feb8f096ff8db1c8e185c3898d` |
| 10 | `def` | [toEdgeWitness](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleThreePointLipschitz.lean/declarations/toedgewitness--94c1a6068c7ccc5d239cf83e.md) | 209 | `declaration-track:94c1a6068c7ccc5d239cf83e52602b6ab801aa5d85a4424838738a0edbf602d2` |
| 11 | `theorem` | [rhThrough_of_three_point_count_margin](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleThreePointLipschitz.lean/declarations/rhthrough-of-three-point-count-margin--3a5c079a9bb07206fcc1199a.md) | 224 | `result-track:3a5c079a9bb07206fcc1199a6d645d0ec85a847222a01b5600fd2e0e0f1eff5f` |
| 12 | `theorem` | [three_samples_alone_are_insufficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleThreePointLipschitz.lean/declarations/three-samples-alone-are-insufficient--61061ab54878e6e0655f3f9a.md) | 238 | `result-track:61061ab54878e6e0655f3f9a2b4e8e9f19dcc624c4e856af7a6839b491edaa04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
