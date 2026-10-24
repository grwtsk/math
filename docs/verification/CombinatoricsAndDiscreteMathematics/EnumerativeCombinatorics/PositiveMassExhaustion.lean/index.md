# Verification target: GRWTSK.Combinatorics.Enumerative.PositiveMassExhaustion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d17b523b57ddd2359bf6c4fa98e9eebc3fc0fcc",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/Enumerative/PositiveMassExhaustion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/PositiveMassExhaustion.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/PositiveMassExhaustion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d17b523b57ddd2359bf6c4fa98e9eebc3fc0fcc`.

Source path: `GRWTSK/Combinatorics/Enumerative/PositiveMassExhaustion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/Enumerative/PositiveMassExhaustion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Omega` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [bijective_and_weights_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/PositiveMassExhaustion.lean/declarations/bijective-and-weights-eq--3d51110dbcbff97b656d0099.md) | 24 | `result-track:3d51110dbcbff97b656d0099e1086c4f5f92fd613a5ce96ab803e29222945cd3` |
| 2 | `theorem` | [total_eq_of_saturation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/PositiveMassExhaustion.lean/declarations/total-eq-of-saturation--16a3097674e1f597f13bd8b9.md) | 65 | `result-track:16a3097674e1f597f13bd8b9a00cfa77e1ff63bdd3a1ee7dc1ac35f4957d5df5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
