# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.LocalZeroSymmetry

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95bb6d41a9aa97ecd6da8ba1dc6d813241a71833",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/LocalZeroSymmetry.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalZeroSymmetry.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalZeroSymmetry.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95bb6d41a9aa97ecd6da8ba1dc6d813241a71833`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/LocalZeroSymmetry.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/LocalZeroSymmetry.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.ReflectionDisks`](../../../../../mathematics/Analysis/ComplexAnalysis/ReflectionDisks.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalZeroDivisor`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.Calculus.Deriv.Star` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reflectedPoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalZeroSymmetry.lean/declarations/reflectedpoint--7fdb4ab5386110e299fd07cb.md) | 25 | `declaration-track:7fdb4ab5386110e299fd07cbf9c73b13339faa7c601efafe2b189e2a205fbe88` |
| 2 | `def` | [conjugatePoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalZeroSymmetry.lean/declarations/conjugatepoint--7bd9a9bb89c8865815757c83.md) | 28 | `declaration-track:7bd9a9bb89c8865815757c83f6edb3c7e325ee9260044bc007ad9a40a3555a57` |
| 3 | `theorem` | [reflectedPoint_val](../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalZeroSymmetry.lean/declarations/reflectedpoint-val--196c855df423f7a9087cc870.md) | 31 | `result-track:196c855df423f7a9087cc870751fb71a6a983f91e7f017942028a1f13633c6db` |
| 4 | `theorem` | [conjugatePoint_val](../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalZeroSymmetry.lean/declarations/conjugatepoint-val--b2080500d0d6bd99beef35cf.md) | 34 | `result-track:b2080500d0d6bd99beef35cf7f3578e819f5c5855094e374a842f435d8b256ca` |
| 5 | `theorem` | [conjugatePoint_involutive](../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalZeroSymmetry.lean/declarations/conjugatepoint-involutive--77b3b7c371e61e58bdb89d01.md) | 37 | `result-track:77b3b7c371e61e58bdb89d014790fff0a155596d0f2a05862970a0c767fcc5de` |
| 6 | `theorem` | [on_line_of_unique_disk](../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalZeroSymmetry.lean/declarations/on-line-of-unique-disk--142537ced0c665dfd6902b33.md) | 44 | `result-track:142537ced0c665dfd6902b33fccbd95ad1859409567dc48782d9fb392f9e3e5b` |
| 7 | `theorem` | [distinct_reflection_in_disk](../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalZeroSymmetry.lean/declarations/distinct-reflection-in-disk--c51825996dd96109fc9fdcab.md) | 56 | `result-track:c51825996dd96109fc9fdcab5bb9d01d06ea7dd54b20a685667ec597e69939ce` |
| 8 | `theorem` | [derivative_ne_zero_of_simple](../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalZeroSymmetry.lean/declarations/derivative-ne-zero-of-simple--885d98bff04e8458208934b1.md) | 69 | `result-track:885d98bff04e8458208934b1537b18b577f0315d5b352d859daafcc0f9326e08` |
| 9 | `theorem` | [derivative_conjugate](../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalZeroSymmetry.lean/declarations/derivative-conjugate--6739893a3e01deacdb3b396e.md) | 85 | `result-track:6739893a3e01deacdb3b396e74cd0ad57a876c5a0ce05e2213d8ed76551f4d7f` |
| 10 | `theorem` | [conjugate_simple](../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalZeroSymmetry.lean/declarations/conjugate-simple--b83030dd814a7bbae03ae52f.md) | 97 | `result-track:b83030dd814a7bbae03ae52f4053461924d0c2aded4b7dbd42b977032e28874c` |
| 11 | `theorem` | [conjugate_height](../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalZeroSymmetry.lean/declarations/conjugate-height--fcfa95935e1bb08b4f11f30c.md) | 110 | `result-track:fcfa95935e1bb08b4f11f30c418b0a60dddc1dda40ec54fee210e34959056b69` |
| 12 | `theorem` | [ne_conjugate_of_im_ne_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalZeroSymmetry.lean/declarations/ne-conjugate-of-im-ne-zero--c452e306f39eb445f689de3a.md) | 116 | `result-track:c452e306f39eb445f689de3a6594d1fd3762e386ba5b5865c43e62bd39853555` |
| 13 | `theorem` | [conjugate_in_disk](../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalZeroSymmetry.lean/declarations/conjugate-in-disk--6abf035957e29e091ae4061c.md) | 124 | `result-track:6abf035957e29e091ae4061ca93a2a17f9bececea8a616183d3adb93c8f316ef` |
| 14 | `theorem` | [unique_conjugate_disk](../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalZeroSymmetry.lean/declarations/unique-conjugate-disk--5067d5cd6eacd98cb3587b57.md) | 130 | `result-track:5067d5cd6eacd98cb3587b57143e49e73c251359acfa9af8947a541c513e3d2e` |
| 15 | `theorem` | [heightCount_ge_two](../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalZeroSymmetry.lean/declarations/heightcount-ge-two--3d60bde5702a48a0ce834689.md) | 142 | `result-track:3d60bde5702a48a0ce834689954c61eb02cc4143a59fc99204521152cdf43263` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
