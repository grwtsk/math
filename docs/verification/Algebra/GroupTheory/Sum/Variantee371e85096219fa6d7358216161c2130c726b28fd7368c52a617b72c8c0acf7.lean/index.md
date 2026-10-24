# Verification target: GRWTSK.Algebra.GroupTheory.Sum.Variantee371e85096219fa6d7358216161c2130c726b28fd7368c52a617b72c8c0acf7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e796cd0952ca69b5a66215fdc153a87d2e41270",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Sum/Variantee371e85096219fa6d7358216161c2130c726b28fd7368c52a617b72c8c0acf7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Sum/Variantee371e85096219fa6d7358216161c2130c726b28fd7368c52a617b72c8c0acf7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Sum/Variantee371e85096219fa6d7358216161c2130c726b28fd7368c52a617b72c8c0acf7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e796cd0952ca69b5a66215fdc153a87d2e41270`.

Source path: `GRWTSK/Algebra/GroupTheory/Sum/Variantee371e85096219fa6d7358216161c2130c726b28fd7368c52a617b72c8c0acf7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Sum/Variantee371e85096219fa6d7358216161c2130c726b28fd7368c52a617b72c8c0acf7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Faithful` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Sum/Variantee371e85096219fa6d7358216161c2130c726b28fd7368c52a617b72c8c0acf7.lean/declarations/instance--8a9de4912b1fa4e91b9aa295.md) | 33 | `declaration-track:8a9de4912b1fa4e91b9aa295c157cb629f7bdfbb482dbaa42cd93ef079c02b10` |
| 2 | `theorem` | [smul_def](../../../../../mathematics/Algebra/GroupTheory/Sum/Variantee371e85096219fa6d7358216161c2130c726b28fd7368c52a617b72c8c0acf7.lean/declarations/smul-def--8320bcfcf866bd8504996d4f.md) | 37 | `result-track:8320bcfcf866bd8504996d4fdd774a3aa3766bc356aedb9653994486dc07290b` |
| 3 | `theorem` | [smul_inl](../../../../../mathematics/Algebra/GroupTheory/Sum/Variantee371e85096219fa6d7358216161c2130c726b28fd7368c52a617b72c8c0acf7.lean/declarations/smul-inl--464c44b3fea6cfc469ed261f.md) | 41 | `result-track:464c44b3fea6cfc469ed261f372a17c4e5c528524514fa343ed2b1c3b450007d` |
| 4 | `theorem` | [smul_inr](../../../../../mathematics/Algebra/GroupTheory/Sum/Variantee371e85096219fa6d7358216161c2130c726b28fd7368c52a617b72c8c0acf7.lean/declarations/smul-inr--725e1699ea2d525c21d5e26c.md) | 45 | `result-track:725e1699ea2d525c21d5e26c942cdb561d780cb74a78d6645b5e5502d02c0a68` |
| 5 | `theorem` | [smul_swap](../../../../../mathematics/Algebra/GroupTheory/Sum/Variantee371e85096219fa6d7358216161c2130c726b28fd7368c52a617b72c8c0acf7.lean/declarations/smul-swap--a20bc74649fb1fb0cbb17451.md) | 49 | `result-track:a20bc74649fb1fb0cbb1745196d6e0f0920b29ddf66ee635d347c833a74aeb03` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Sum/Variantee371e85096219fa6d7358216161c2130c726b28fd7368c52a617b72c8c0acf7.lean/declarations/instance--19237ed3af22709140fefcce.md) | 51 | `declaration-track:19237ed3af22709140fefccea541d26957c32f23a6160ea570a920b2657fa192` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Sum/Variantee371e85096219fa6d7358216161c2130c726b28fd7368c52a617b72c8c0acf7.lean/declarations/instance--121eeffa3d7718785f5f92c7.md) | 57 | `declaration-track:121eeffa3d7718785f5f92c76783ed87f2170a1e5893afabe8e2a45abc1ac468` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Sum/Variantee371e85096219fa6d7358216161c2130c726b28fd7368c52a617b72c8c0acf7.lean/declarations/instance--4408dda19f058e0339a94250.md) | 63 | `declaration-track:4408dda19f058e0339a9425027f0f0bb68a1ea8ced3cf32de5c2444ce609dad2` |
| 9 | `instance` | [FaithfulSMulLeft](../../../../../mathematics/Algebra/GroupTheory/Sum/Variantee371e85096219fa6d7358216161c2130c726b28fd7368c52a617b72c8c0acf7.lean/declarations/faithfulsmulleft--82ee2167a2cc9f7b067cdc17.md) | 70 | `declaration-track:82ee2167a2cc9f7b067cdc17679fa030f096363601632b46d92332f1fe992f6a` |
| 10 | `instance` | [FaithfulSMulRight](../../../../../mathematics/Algebra/GroupTheory/Sum/Variantee371e85096219fa6d7358216161c2130c726b28fd7368c52a617b72c8c0acf7.lean/declarations/faithfulsmulright--ee36ac563ef5bc7c1a580123.md) | 74 | `declaration-track:ee36ac563ef5bc7c1a58012392ac80798548c16c9b9c58c270deb05a63bb26c4` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Sum/Variantee371e85096219fa6d7358216161c2130c726b28fd7368c52a617b72c8c0acf7.lean/declarations/instance--19390886d0170bf4e0410bda.md) | 80 | `declaration-track:19390886d0170bf4e0410bda5930fd3c31ab9d214f80a9a6d485f489584da85f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
