# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.DensityMomentTails

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2abaeb80171d469b4066519c9144defb7337edf",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/DensityMomentTails.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMomentTails.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMomentTails.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2abaeb80171d469b4066519c9144defb7337edf`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/DensityMomentTails.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/DensityMomentTails.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityHalfMoment`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfMoment.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityCorrectionReciprocalMass`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionReciprocalMass.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [densityClosedReciprocalHead](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMomentTails.lean/declarations/densityclosedreciprocalhead--a14ca0910228c5d1a5a4cd64.md) | 19 | `declaration-track:a14ca0910228c5d1a5a4cd64843857ca2595e5f94f588b3f8af47212bd267e55` |
| 2 | `def` | [densityReciprocalTail](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMomentTails.lean/declarations/densityreciprocaltail--1b526911d23c9857ac803156.md) | 22 | `declaration-track:1b526911d23c9857ac803156f4128bd60a892f7989236db501e98fce12815086` |
| 3 | `theorem` | [density_reciprocal_tail_summable](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMomentTails.lean/declarations/density-reciprocal-tail-summable--3fbc0f8d62728e9617e53e44.md) | 25 | `result-track:3fbc0f8d62728e9617e53e44dc290a2aa2b8268d5e5989f4580506e8d0c2d83a` |
| 4 | `theorem` | [density_reciprocal_head_summable](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMomentTails.lean/declarations/density-reciprocal-head-summable--7b3aba4e9b400549388e2945.md) | 30 | `result-track:7b3aba4e9b400549388e29450d60671c311dee656a9655acde3e853c65e7f9ae` |
| 5 | `theorem` | [density_reciprocal_closed_head_tail](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMomentTails.lean/declarations/density-reciprocal-closed-head-tail--ee53858a66d5e2af69c3442a.md) | 35 | `result-track:ee53858a66d5e2af69c3442afb97b27aa044a1e35095cb3537bc64c554c5baa4` |
| 6 | `theorem` | [density_reciprocal_tail_atom](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMomentTails.lean/declarations/density-reciprocal-tail-atom--9eac051fa338ddc040d56f29.md) | 46 | `result-track:9eac051fa338ddc040d56f29fd1c5ce955727d7ee114e26df63f488f8c89e082` |
| 7 | `theorem` | [density_reciprocal_tail_term](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMomentTails.lean/declarations/density-reciprocal-tail-term--51c9e33cf4fdf7312beccdb5.md) | 49 | `result-track:51c9e33cf4fdf7312beccdb5bf5b0283ceb6e3b0d0bb5b7c1fabe88cb67f1602` |
| 8 | `theorem` | [density_reciprocal_tail_le_half](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMomentTails.lean/declarations/density-reciprocal-tail-le-half--0ee2c6644151a5c69a4c8334.md) | 67 | `result-track:0ee2c6644151a5c69a4c833452fc26a7476d73a9b6d0701c8cc96ea051c54f23` |
| 9 | `theorem` | [density_reciprocal_tail_bound](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMomentTails.lean/declarations/density-reciprocal-tail-bound--dd1db5af65178a1309ffae56.md) | 76 | `result-track:dd1db5af65178a1309ffae56f71b80f2be7443ff197daa151fea00ba0de046c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
