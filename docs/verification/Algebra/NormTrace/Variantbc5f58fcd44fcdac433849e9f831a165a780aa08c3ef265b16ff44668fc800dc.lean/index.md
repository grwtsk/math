# Verification target: GRWTSK.Algebra.NormTrace.Variantbc5f58fcd44fcdac433849e9f831a165a780aa08c3ef265b16ff44668fc800dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b3751bda99272157cf88c7979aa496cca68e2a1",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/NormTrace/Variantbc5f58fcd44fcdac433849e9f831a165a780aa08c3ef265b16ff44668fc800dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/NormTrace/Variantbc5f58fcd44fcdac433849e9f831a165a780aa08c3ef265b16ff44668fc800dc.lean/index.md) · [Full source](../../../../mathematics/Algebra/NormTrace/Variantbc5f58fcd44fcdac433849e9f831a165a780aa08c3ef265b16ff44668fc800dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b3751bda99272157cf88c7979aa496cca68e2a1`.

Source path: `GRWTSK/Algebra/NormTrace/Variantbc5f58fcd44fcdac433849e9f831a165a780aa08c3ef265b16ff44668fc800dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/NormTrace/Variantbc5f58fcd44fcdac433849e9f831a165a780aa08c3ef265b16ff44668fc800dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.Module` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Discriminant` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Algebra.map_leftMulMatrix_localization](../../../../mathematics/Algebra/NormTrace/Variantbc5f58fcd44fcdac433849e9f831a165a780aa08c3ef265b16ff44668fc800dc.lean/declarations/algebra-map-leftmulmatrix-localization--a87d85fe3b509c4f423cf789.md) | 54 | `result-track:a87d85fe3b509c4f423cf7895fc2f6f6a10689740bfa054cb455581b1033ecd6` |
| 2 | `theorem` | [Algebra.norm_localization](../../../../mathematics/Algebra/NormTrace/Variantbc5f58fcd44fcdac433849e9f831a165a780aa08c3ef265b16ff44668fc800dc.lean/declarations/algebra-norm-localization--9e76904d1e23ee4ad3f5f998.md) | 65 | `result-track:9e76904d1e23ee4ad3f5f99801a247cb1336c47bb85e6a390ad2d28ffdd5a8e2` |
| 3 | `theorem` | [Algebra.trace_localization](../../../../mathematics/Algebra/NormTrace/Variantbc5f58fcd44fcdac433849e9f831a165a780aa08c3ef265b16ff44668fc800dc.lean/declarations/algebra-trace-localization--5657bb897426f17c7bd31150.md) | 79 | `result-track:5657bb897426f17c7bd31150e61e2034d03412ac7ecb40f01966fa013ece3a06` |
| 4 | `theorem` | [Algebra.traceMatrix_localizationLocalization](../../../../mathematics/Algebra/NormTrace/Variantbc5f58fcd44fcdac433849e9f831a165a780aa08c3ef265b16ff44668fc800dc.lean/declarations/algebra-tracematrix-localizationlocalization--979bf846611d84a94cfcf472.md) | 100 | `result-track:979bf846611d84a94cfcf472c09bd21be2abe00b479f9819e5ae6db877122f0c` |
| 5 | `theorem` | [Algebra.discr_localizationLocalization](../../../../mathematics/Algebra/NormTrace/Variantbc5f58fcd44fcdac433849e9f831a165a780aa08c3ef265b16ff44668fc800dc.lean/declarations/algebra-discr-localizationlocalization--27812251a1136d512eaaea07.md) | 114 | `result-track:27812251a1136d512eaaea0799de6d64be1fb6257e1a8b3bd3ff29ae38bbbc22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
