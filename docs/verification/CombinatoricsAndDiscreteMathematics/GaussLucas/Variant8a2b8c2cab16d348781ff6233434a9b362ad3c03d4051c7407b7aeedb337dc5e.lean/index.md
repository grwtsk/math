# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GaussLucas.Variant8a2b8c2cab16d348781ff6233434a9b362ad3c03d4051c7407b7aeedb337dc5e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bdf7d351b4e162241c38e073c62cdbc6a7d12db",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GaussLucas/Variant8a2b8c2cab16d348781ff6233434a9b362ad3c03d4051c7407b7aeedb337dc5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussLucas/Variant8a2b8c2cab16d348781ff6233434a9b362ad3c03d4051c7407b7aeedb337dc5e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussLucas/Variant8a2b8c2cab16d348781ff6233434a9b362ad3c03d4051c7407b7aeedb337dc5e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bdf7d351b4e162241c38e073c62cdbc6a7d12db`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GaussLucas/Variant8a2b8c2cab16d348781ff6233434a9b362ad3c03d4051c7407b7aeedb337dc5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GaussLucas/Variant8a2b8c2cab16d348781ff6233434a9b362ad3c03d4051c7407b7aeedb337dc5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [derivRootWeight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussLucas/Variant8a2b8c2cab16d348781ff6233434a9b362ad3c03d4051c7407b7aeedb337dc5e.lean/declarations/derivrootweight--303bacc3f81a9253a91b2b94.md) | 26 | `declaration-track:303bacc3f81a9253a91b2b948be2e444ccc3f924a0db704a5f8ea1cb95b419d1` |
| 2 | `theorem` | [derivRootWeight_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussLucas/Variant8a2b8c2cab16d348781ff6233434a9b362ad3c03d4051c7407b7aeedb337dc5e.lean/declarations/derivrootweight-nonneg--1243b8be563673e1cd896cc6.md) | 30 | `result-track:1243b8be563673e1cd896cc687178415b10462c057c69dd8ccea3bf15c6146fa` |
| 3 | `theorem` | [sum_derivRootWeight_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussLucas/Variant8a2b8c2cab16d348781ff6233434a9b362ad3c03d4051c7407b7aeedb337dc5e.lean/declarations/sum-derivrootweight-pos--c812d2cac722cb444ae3693d.md) | 38 | `result-track:c812d2cac722cb444ae3693da70f2938a060aa370549120305cfa24d573e40c6` |
| 4 | `theorem` | [eq_centerMass_of_eval_derivative_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussLucas/Variant8a2b8c2cab16d348781ff6233434a9b362ad3c03d4051c7407b7aeedb337dc5e.lean/declarations/eq-centermass-of-eval-derivative-eq-zero--75cf4a0f6e82f05f38396a15.md) | 60 | `result-track:75cf4a0f6e82f05f38396a153c8ede7e6c9ed1109bd0ddd9c41d1ebaaea43ae4` |
| 5 | `theorem` | [rootSet_derivative_subset_convexHull_rootSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussLucas/Variant8a2b8c2cab16d348781ff6233434a9b362ad3c03d4051c7407b7aeedb337dc5e.lean/declarations/rootset-derivative-subset-convexhull-rootset--4f039e2fa2875147f46d729f.md) | 97 | `result-track:4f039e2fa2875147f46d729fc8e9f7c585cc150b33c8fbe916bb74185de1e9d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
