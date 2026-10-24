# Verification target: GRWTSK.Algebra.Field.Variant315b9f9bfb3128484c594d1a0fee128d6e5325ceeacf87c1430d54b9a83416f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83255154118d236f391cccd25047cceabcc10d9e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Field/Variant315b9f9bfb3128484c594d1a0fee128d6e5325ceeacf87c1430d54b9a83416f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FieldTheory/Variant315b9f9bfb3128484c594d1a0fee128d6e5325ceeacf87c1430d54b9a83416f3.lean/index.md) · [Full source](../../../../mathematics/Algebra/FieldTheory/Variant315b9f9bfb3128484c594d1a0fee128d6e5325ceeacf87c1430d54b9a83416f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83255154118d236f391cccd25047cceabcc10d9e`.

Source path: `GRWTSK/Algebra/Field/Variant315b9f9bfb3128484c594d1a0fee128d6e5325ceeacf87c1430d54b9a83416f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Field/Variant315b9f9bfb3128484c594d1a0fee128d6e5325ceeacf87c1430d54b9a83416f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Positive.Ring` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Subtype.inv](../../../../mathematics/Algebra/FieldTheory/Variant315b9f9bfb3128484c594d1a0fee128d6e5325ceeacf87c1430d54b9a83416f3.lean/declarations/subtype-inv--fc631dfcaeb83992191fe1c5.md) | 29 | `declaration-track:fc631dfcaeb83992191fe1c5d916dec137b1a47c7a0a356396ddd75256c0884c` |
| 2 | `theorem` | [coe_inv](../../../../mathematics/Algebra/FieldTheory/Variant315b9f9bfb3128484c594d1a0fee128d6e5325ceeacf87c1430d54b9a83416f3.lean/declarations/coe-inv--05546539b36f8b67064e48a7.md) | 32 | `result-track:05546539b36f8b67064e48a744cd10e898d6e5368d91da563079410ba8e3b5b2` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FieldTheory/Variant315b9f9bfb3128484c594d1a0fee128d6e5325ceeacf87c1430d54b9a83416f3.lean/declarations/instance--f302bf64a1c5cc9f10a7014f.md) | 35 | `declaration-track:f302bf64a1c5cc9f10a7014f82f846f2561c45f61f8077f8428c02cddcd2ac08` |
| 4 | `theorem` | [coe_zpow](../../../../mathematics/Algebra/FieldTheory/Variant315b9f9bfb3128484c594d1a0fee128d6e5325ceeacf87c1430d54b9a83416f3.lean/declarations/coe-zpow--70a1acad3675acda709c99af.md) | 39 | `result-track:70a1acad3675acda709c99afd0126bb23d67bce11914324b960ecf3256c28368` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FieldTheory/Variant315b9f9bfb3128484c594d1a0fee128d6e5325ceeacf87c1430d54b9a83416f3.lean/declarations/instance--8199252ccf6245ce7bb6a403.md) | 42 | `declaration-track:8199252ccf6245ce7bb6a403a229a748579b6eaad808caf8da9c01bb10c3b6d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
