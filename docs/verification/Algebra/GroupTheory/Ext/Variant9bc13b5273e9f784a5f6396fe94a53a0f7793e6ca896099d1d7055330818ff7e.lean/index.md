# Verification target: GRWTSK.Algebra.GroupTheory.Ext.Variant9bc13b5273e9f784a5f6396fe94a53a0f7793e6ca896099d1d7055330818ff7e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "886ab4bf4ca5eb21fe4948cd02ff701652bccf5f",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Ext/Variant9bc13b5273e9f784a5f6396fe94a53a0f7793e6ca896099d1d7055330818ff7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant9bc13b5273e9f784a5f6396fe94a53a0f7793e6ca896099d1d7055330818ff7e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant9bc13b5273e9f784a5f6396fe94a53a0f7793e6ca896099d1d7055330818ff7e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `886ab4bf4ca5eb21fe4948cd02ff701652bccf5f`.

Source path: `GRWTSK/Algebra/GroupTheory/Ext/Variant9bc13b5273e9f784a5f6396fe94a53a0f7793e6ca896099d1d7055330818ff7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Ext/Variant9bc13b5273e9f784a5f6396fe94a53a0f7793e6ca896099d1d7055330818ff7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_closure_iUnion_range_single](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant9bc13b5273e9f784a5f6396fe94a53a0f7793e6ca896099d1d7055330818ff7e.lean/declarations/add-closure-iunion-range-single--f8b9624bc2920a31efed0d7b.md) | 33 | `result-track:f8b9624bc2920a31efed0d7bdeadbd26d2224e895ee21786792f18292202260d` |
| 2 | `theorem` | [addHom_ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant9bc13b5273e9f784a5f6396fe94a53a0f7793e6ca896099d1d7055330818ff7e.lean/declarations/addhom-ext--1aa7171ecbf64e6b6b4ecfd2.md) | 44 | `result-track:1aa7171ecbf64e6b6b4ecfd2b9d714a31abe3730e0613bd686593947815209bb` |
| 3 | `theorem` | [addHom_ext'](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant9bc13b5273e9f784a5f6396fe94a53a0f7793e6ca896099d1d7055330818ff7e.lean/declarations/addhom-ext--c268d70cd9c58655d82aace3.md) | 56 | `result-track:c268d70cd9c58655d82aace331a4735ffefffe1835179effb39f1287907ec439` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
