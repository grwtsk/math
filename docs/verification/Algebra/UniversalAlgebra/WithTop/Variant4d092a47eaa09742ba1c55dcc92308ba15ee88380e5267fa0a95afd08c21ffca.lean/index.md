# Verification target: GRWTSK.Algebra.UniversalAlgebra.WithTop.Variant4d092a47eaa09742ba1c55dcc92308ba15ee88380e5267fa0a95afd08c21ffca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7035f846f461d1dce398394ff18ece27c9c8c287",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/WithTop/Variant4d092a47eaa09742ba1c55dcc92308ba15ee88380e5267fa0a95afd08c21ffca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant4d092a47eaa09742ba1c55dcc92308ba15ee88380e5267fa0a95afd08c21ffca.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant4d092a47eaa09742ba1c55dcc92308ba15ee88380e5267fa0a95afd08c21ffca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7035f846f461d1dce398394ff18ece27c9c8c287`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/WithTop/Variant4d092a47eaa09742ba1c55dcc92308ba15ee88380e5267fa0a95afd08c21ffca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/WithTop/Variant4d092a47eaa09742ba1c55dcc92308ba15ee88380e5267fa0a95afd08c21ffca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Unbundled.WithTop` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [isOrderedAddMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant4d092a47eaa09742ba1c55dcc92308ba15ee88380e5267fa0a95afd08c21ffca.lean/declarations/isorderedaddmonoid--33fd7bb8881b95e7ef7ebaa2.md) | 28 | `declaration-track:33fd7bb8881b95e7ef7ebaa2222a1b1057cab37d1b052648b972e58882df567d` |
| 2 | `instance` | [canonicallyOrderedAdd](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant4d092a47eaa09742ba1c55dcc92308ba15ee88380e5267fa0a95afd08c21ffca.lean/declarations/canonicallyorderedadd--513c4f784034809085efb142.md) | 32 | `declaration-track:513c4f784034809085efb142f1141a4b82177eb36d0b7031de9a868b0613845b` |
| 3 | `instance` | [isOrderedAddMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant4d092a47eaa09742ba1c55dcc92308ba15ee88380e5267fa0a95afd08c21ffca.lean/declarations/isorderedaddmonoid--5f2b3af6be50ac066e4a8100.md) | 46 | `declaration-track:5f2b3af6be50ac066e4a81007c586e30a752f05d79a4df1f43e3c35d26548f05` |
| 4 | `theorem` | [le_self_add](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant4d092a47eaa09742ba1c55dcc92308ba15ee88380e5267fa0a95afd08c21ffca.lean/declarations/le-self-add--3f1b4fed79845ce4cfc6ca79.md) | 50 | `result-track:3f1b4fed79845ce4cfc6ca79fff142ef054c963e15501ed4defd780ae2b39f27` |
| 5 | `theorem` | [le_add_self](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant4d092a47eaa09742ba1c55dcc92308ba15ee88380e5267fa0a95afd08c21ffca.lean/declarations/le-add-self--ebf40538a6c6aa133fa1ca15.md) | 60 | `result-track:ebf40538a6c6aa133fa1ca15e8bb02b07b18fb8224a2dd760f7c109ab366ec58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
