# Verification target: GRWTSK.Algebra.GroupTheory.ExtensionField.Variante1868b2d954d5d9e766eb0c401ad62f77171b3296d3fa6b27ef7aeae447b91e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "268c0f05d0019bb618b5f65229ea11ff42d61154",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ExtensionField/Variante1868b2d954d5d9e766eb0c401ad62f77171b3296d3fa6b27ef7aeae447b91e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/ExtensionField/Variante1868b2d954d5d9e766eb0c401ad62f77171b3296d3fa6b27ef7aeae447b91e5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/ExtensionField/Variante1868b2d954d5d9e766eb0c401ad62f77171b3296d3fa6b27ef7aeae447b91e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `268c0f05d0019bb618b5f65229ea11ff42d61154`.

Source path: `GRWTSK/Algebra/GroupTheory/ExtensionField/Variante1868b2d954d5d9e766eb0c401ad62f77171b3296d3fa6b27ef7aeae447b91e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ExtensionField/Variante1868b2d954d5d9e766eb0c401ad62f77171b3296d3fa6b27ef7aeae447b91e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.AbelReynolds.Realization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExtensionFieldBasis](../../../../../mathematics/Algebra/GroupTheory/ExtensionField/Variante1868b2d954d5d9e766eb0c401ad62f77171b3296d3fa6b27ef7aeae447b91e5.lean/declarations/extensionfieldbasis--a2d2653e046fe869e1e0b7df.md) | 22 | `declaration-track:a2d2653e046fe869e1e0b7df0b1418f28c46ca9002aafeb40a4aa1324aaad4b5` |
| 2 | `def` | [extensionFieldRealization](../../../../../mathematics/Algebra/GroupTheory/ExtensionField/Variante1868b2d954d5d9e766eb0c401ad62f77171b3296d3fa6b27ef7aeae447b91e5.lean/declarations/extensionfieldrealization--cce4e3693c033674ec8ca09c.md) | 30 | `declaration-track:cce4e3693c033674ec8ca09c38252e0e292ef87cd6fceb8b3889632c2b23cec4` |
| 3 | `theorem` | [extensionFieldRealization_apply](../../../../../mathematics/Algebra/GroupTheory/ExtensionField/Variante1868b2d954d5d9e766eb0c401ad62f77171b3296d3fa6b27ef7aeae447b91e5.lean/declarations/extensionfieldrealization-apply--d1701667cab69e5740a40e52.md) | 39 | `result-track:d1701667cab69e5740a40e52753a8edd7da60c8976ff3d5b7ee457a69262d336` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
