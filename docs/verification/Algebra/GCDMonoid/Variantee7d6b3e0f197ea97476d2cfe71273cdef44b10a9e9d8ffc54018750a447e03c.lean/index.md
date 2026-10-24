# Verification target: GRWTSK.Algebra.GCDMonoid.Variantee7d6b3e0f197ea97476d2cfe71273cdef44b10a9e9d8ffc54018750a447e03c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38149dfe02a5b933b0da8ab41e122b4868abfd2a",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GCDMonoid/Variantee7d6b3e0f197ea97476d2cfe71273cdef44b10a9e9d8ffc54018750a447e03c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GCDMonoid/Variantee7d6b3e0f197ea97476d2cfe71273cdef44b10a9e9d8ffc54018750a447e03c.lean/index.md) · [Full source](../../../../mathematics/Algebra/GCDMonoid/Variantee7d6b3e0f197ea97476d2cfe71273cdef44b10a9e9d8ffc54018750a447e03c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38149dfe02a5b933b0da8ab41e122b4868abfd2a`.

Source path: `GRWTSK/Algebra/GCDMonoid/Variantee7d6b3e0f197ea97476d2cfe71273cdef44b10a9e9d8ffc54018750a447e03c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GCDMonoid/Variantee7d6b3e0f197ea97476d2cfe71273cdef44b10a9e9d8ffc54018750a447e03c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.UniqueFactorizationDomain.FactorSet` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.NormalizedFactors` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [UniqueFactorizationMonoid.toGCDMonoid](../../../../mathematics/Algebra/GCDMonoid/Variantee7d6b3e0f197ea97476d2cfe71273cdef44b10a9e9d8ffc54018750a447e03c.lean/declarations/uniquefactorizationmonoid-togcdmonoid--6465c3259d27dedd430153ee.md) | 33 | `declaration-track:6465c3259d27dedd430153ee1ac88f3730be0c7d04b03deb2bfc7c54fc2ca665` |
| 2 | `def` | [UniqueFactorizationMonoid.toNormalizedGCDMonoid](../../../../mathematics/Algebra/GCDMonoid/Variantee7d6b3e0f197ea97476d2cfe71273cdef44b10a9e9d8ffc54018750a447e03c.lean/declarations/uniquefactorizationmonoid-tonormalizedgcdmonoid--ce0d890fe168810addaf4d6a.md) | 55 | `declaration-track:ce0d890fe168810addaf4d6a02aebef17d09d374268d9d7352aa02cfaf39a443` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GCDMonoid/Variantee7d6b3e0f197ea97476d2cfe71273cdef44b10a9e9d8ffc54018750a447e03c.lean/declarations/instance--f11d3608fb0ce2768baac5dd.md) | 76 | `declaration-track:f11d3608fb0ce2768baac5ddf0c18f31211a7be40e62ab5d99b9d91a7bd461f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
