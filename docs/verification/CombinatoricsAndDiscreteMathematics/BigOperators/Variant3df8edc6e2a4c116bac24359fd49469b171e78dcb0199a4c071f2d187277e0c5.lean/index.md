# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variant3df8edc6e2a4c116bac24359fd49469b171e78dcb0199a4c071f2d187277e0c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7e6af20a8b1f839271b00865776b992e5541cbb",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3df8edc6e2a4c116bac24359fd49469b171e78dcb0199a4c071f2d187277e0c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3df8edc6e2a4c116bac24359fd49469b171e78dcb0199a4c071f2d187277e0c5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3df8edc6e2a4c116bac24359fd49469b171e78dcb0199a4c071f2d187277e0c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7e6af20a8b1f839271b00865776b992e5541cbb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3df8edc6e2a4c116bac24359fd49469b171e78dcb0199a4c071f2d187277e0c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3df8edc6e2a4c116bac24359fd49469b171e78dcb0199a4c071f2d187277e0c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Cast.CharZero` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cast_list_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3df8edc6e2a4c116bac24359fd49469b171e78dcb0199a4c071f2d187277e0c5.lean/declarations/cast-list-sum--6c7b982f0cca187bc42939e5.md) | 29 | `result-track:6c7b982f0cca187bc42939e59b69050c4ea285cd4f7540ee1b48b6b9636cba68` |
| 2 | `theorem` | [cast_multiset_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3df8edc6e2a4c116bac24359fd49469b171e78dcb0199a4c071f2d187277e0c5.lean/declarations/cast-multiset-sum--1b2e549492593545924d01dd.md) | 33 | `result-track:1b2e549492593545924d01dd168c2527e107cf492bf38a57d7501ea5cf8c2743` |
| 3 | `theorem` | [cast_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3df8edc6e2a4c116bac24359fd49469b171e78dcb0199a4c071f2d187277e0c5.lean/declarations/cast-sum--fbae99f045890c1dae75bece.md) | 37 | `result-track:fbae99f045890c1dae75becedb93a5dd5a98de68d92ac70cb093c0eac4c8efcf` |
| 4 | `theorem` | [cast_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3df8edc6e2a4c116bac24359fd49469b171e78dcb0199a4c071f2d187277e0c5.lean/declarations/cast-list-prod--8d57083e31ef477a068a2504.md) | 41 | `result-track:8d57083e31ef477a068a25048e71fc98ca5dac16e35412e0408108d703fa9247` |
| 5 | `theorem` | [cast_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3df8edc6e2a4c116bac24359fd49469b171e78dcb0199a4c071f2d187277e0c5.lean/declarations/cast-multiset-prod--dae874bd6f1f922bd9a398ef.md) | 51 | `result-track:dae874bd6f1f922bd9a398ef41c59d49043109cf30c8488e77ebe1d17423e52e` |
| 6 | `theorem` | [cast_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant3df8edc6e2a4c116bac24359fd49469b171e78dcb0199a4c071f2d187277e0c5.lean/declarations/cast-prod--1af2b56a685e10840214d733.md) | 55 | `result-track:1af2b56a685e10840214d7338131ec96d86216dc384e19a553109b77d4270d07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
