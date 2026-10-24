# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteInfinite.Variantfb6402e030c2eb26dbdcc63d97bfd30a5fd31591c62ada597c3d92bd3784f451

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "010469393f69dfff124228b4d5e3ba74303abe30",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteInfinite/Variantfb6402e030c2eb26dbdcc63d97bfd30a5fd31591c62ada597c3d92bd3784f451.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteInfinite/Variantfb6402e030c2eb26dbdcc63d97bfd30a5fd31591c62ada597c3d92bd3784f451.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteInfinite/Variantfb6402e030c2eb26dbdcc63d97bfd30a5fd31591c62ada597c3d92bd3784f451.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `010469393f69dfff124228b4d5e3ba74303abe30`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteInfinite/Variantfb6402e030c2eb26dbdcc63d97bfd30a5fd31591c62ada597c3d92bd3784f451.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FiniteInfinite/Variantfb6402e030c2eb26dbdcc63d97bfd30a5fd31591c62ada597c3d92bd3784f451.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.DFinsupp.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pi` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [DFinsupp.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteInfinite/Variantfb6402e030c2eb26dbdcc63d97bfd30a5fd31591c62ada597c3d92bd3784f451.lean/declarations/dfinsupp-fintype--7f9e86c091f9d1ab9a9fd2cc.md) | 35 | `declaration-track:7f9e86c091f9d1ab9a9fd2ccb885e58404a3425facba417f2a0c33c3bb56404a` |
| 2 | `instance` | [DFinsupp.infinite_of_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteInfinite/Variantfb6402e030c2eb26dbdcc63d97bfd30a5fd31591c62ada597c3d92bd3784f451.lean/declarations/dfinsupp-infinite-of-left--99fd6afe2013840d54a572cb.md) | 39 | `declaration-track:99fd6afe2013840d54a572cbbf61bb686fc47846a9223d978a5b81dd1bb43492` |
| 3 | `theorem` | [DFinsupp.infinite_of_exists_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteInfinite/Variantfb6402e030c2eb26dbdcc63d97bfd30a5fd31591c62ada597c3d92bd3784f451.lean/declarations/dfinsupp-infinite-of-exists-right--61851ad62d45a974814a123f.md) | 46 | `result-track:61851ad62d45a974814a123f2eb4919e6cf1437030c9b1894cb1227d29c51687` |
| 4 | `instance` | [DFinsupp.infinite_of_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteInfinite/Variantfb6402e030c2eb26dbdcc63d97bfd30a5fd31591c62ada597c3d92bd3784f451.lean/declarations/dfinsupp-infinite-of-right--cdfca22f295e4f80d3965d72.md) | 52 | `declaration-track:cdfca22f295e4f80d3965d72b4bc9f7d786b73dc553035fa5a62a99ee603549d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
