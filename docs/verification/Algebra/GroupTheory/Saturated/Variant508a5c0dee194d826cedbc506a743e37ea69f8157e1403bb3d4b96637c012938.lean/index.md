# Verification target: GRWTSK.Algebra.GroupTheory.Saturated.Variant508a5c0dee194d826cedbc506a743e37ea69f8157e1403bb3d4b96637c012938

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b8e0f8bb625d5f792c891f81637379b0d1522e2",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Saturated/Variant508a5c0dee194d826cedbc506a743e37ea69f8157e1403bb3d4b96637c012938.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Saturated/Variant508a5c0dee194d826cedbc506a743e37ea69f8157e1403bb3d4b96637c012938.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Saturated/Variant508a5c0dee194d826cedbc506a743e37ea69f8157e1403bb3d4b96637c012938.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b8e0f8bb625d5f792c891f81637379b0d1522e2`.

Source path: `GRWTSK/Algebra/GroupTheory/Saturated/Variant508a5c0dee194d826cedbc506a743e37ea69f8157e1403bb3d4b96637c012938.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Saturated/Variant508a5c0dee194d826cedbc506a743e37ea69f8157e1403bb3d4b96637c012938.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Ker` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NoZeroSMulDivisors.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Saturated](../../../../../mathematics/Algebra/GroupTheory/Saturated/Variant508a5c0dee194d826cedbc506a743e37ea69f8157e1403bb3d4b96637c012938.lean/declarations/saturated--301efc6e24b84786fa00df1d.md) | 35 | `declaration-track:301efc6e24b84786fa00df1db50c7d0a428bbc12ef8eed1a3faac8870ddcc787` |
| 2 | `theorem` | [saturated_iff_npow](../../../../../mathematics/Algebra/GroupTheory/Saturated/Variant508a5c0dee194d826cedbc506a743e37ea69f8157e1403bb3d4b96637c012938.lean/declarations/saturated-iff-npow--0598e7a3de951a94320dc2b1.md) | 39 | `result-track:0598e7a3de951a94320dc2b1028e7fc252f239aff8af2b7a5efede8f3bb745ae` |
| 3 | `theorem` | [saturated_iff_zpow](../../../../../mathematics/Algebra/GroupTheory/Saturated/Variant508a5c0dee194d826cedbc506a743e37ea69f8157e1403bb3d4b96637c012938.lean/declarations/saturated-iff-zpow--52aaf3ed3674fdc043488ac8.md) | 44 | `result-track:52aaf3ed3674fdc043488ac8ac92b9fdca36f85685540df46d84a087fcf3ef31` |
| 4 | `theorem` | [ker_saturated](../../../../../mathematics/Algebra/GroupTheory/Saturated/Variant508a5c0dee194d826cedbc506a743e37ea69f8157e1403bb3d4b96637c012938.lean/declarations/ker-saturated--0c8e8d240cbd614c66d2acc9.md) | 66 | `result-track:0c8e8d240cbd614c66d2acc962f2b648de86aaa89f869c59e68a2d614d0b2900` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
