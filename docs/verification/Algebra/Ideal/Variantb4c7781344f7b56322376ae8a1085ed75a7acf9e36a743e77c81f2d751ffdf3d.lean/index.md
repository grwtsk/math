# Verification target: GRWTSK.Algebra.Ideal.Variantb4c7781344f7b56322376ae8a1085ed75a7acf9e36a743e77c81f2d751ffdf3d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67af4384819f4a4dc9d9a0863288b15ce4ffb3c4",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ideal/Variantb4c7781344f7b56322376ae8a1085ed75a7acf9e36a743e77c81f2d751ffdf3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Ideal/Variantb4c7781344f7b56322376ae8a1085ed75a7acf9e36a743e77c81f2d751ffdf3d.lean/index.md) · [Full source](../../../../mathematics/Algebra/Ideal/Variantb4c7781344f7b56322376ae8a1085ed75a7acf9e36a743e77c81f2d751ffdf3d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67af4384819f4a4dc9d9a0863288b15ce4ffb3c4`.

Source path: `GRWTSK/Algebra/Ideal/Variantb4c7781344f7b56322376ae8a1085ed75a7acf9e36a743e77c81f2d751ffdf3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ideal/Variantb4c7781344f7b56322376ae8a1085ed75a7acf9e36a743e77c81f2d751ffdf3d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Finiteness.Finsupp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [FG.map](../../../../mathematics/Algebra/Ideal/Variantb4c7781344f7b56322376ae8a1085ed75a7acf9e36a743e77c81f2d751ffdf3d.lean/declarations/fg-map--4f3ce9a1c45dfa1408026206.md) | 33 | `result-track:4f3ce9a1c45dfa140802620677317907d81bbc167d9b32ae67542fcc87a56bb6` |
| 2 | `theorem` | [fg_ker_comp](../../../../mathematics/Algebra/Ideal/Variantb4c7781344f7b56322376ae8a1085ed75a7acf9e36a743e77c81f2d751ffdf3d.lean/declarations/fg-ker-comp--52dc0dd9a3192104cbbd6384.md) | 40 | `result-track:52dc0dd9a3192104cbbd638447c2e65c869ee3f41ca452d2528145cd65f1c421` |
| 3 | `theorem` | [exists_radical_pow_le_of_fg](../../../../mathematics/Algebra/Ideal/Variantb4c7781344f7b56322376ae8a1085ed75a7acf9e36a743e77c81f2d751ffdf3d.lean/declarations/exists-radical-pow-le-of-fg--3738b81e41cc5d0d3e146f8f.md) | 52 | `result-track:3738b81e41cc5d0d3e146f8f12245cacce8df4eebee05752706874e06bf84b49` |
| 4 | `theorem` | [exists_pow_le_of_le_radical_of_fg_radical](../../../../mathematics/Algebra/Ideal/Variantb4c7781344f7b56322376ae8a1085ed75a7acf9e36a743e77c81f2d751ffdf3d.lean/declarations/exists-pow-le-of-le-radical-of-fg-radical--11c0f59a4dab4721272aae43.md) | 72 | `result-track:11c0f59a4dab4721272aae43f5f935e6ef891ed1cadaa265f5586834ddcfa2c8` |
| 5 | `lemma` | [exists_pow_le_of_le_radical_of_fg](../../../../mathematics/Algebra/Ideal/Variantb4c7781344f7b56322376ae8a1085ed75a7acf9e36a743e77c81f2d751ffdf3d.lean/declarations/exists-pow-le-of-le-radical-of-fg--f4c607449c892c1085635a31.md) | 84 | `result-track:f4c607449c892c1085635a318be929c6622e7449cc560f517d5f6f0ef29edfac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
