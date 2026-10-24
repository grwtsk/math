# Verification target: GRWTSK.Algebra.LinearAlgebra.Prod.Variantf474a283d7a0d3f140a7b79d0496d589d6d562c2c1f0e675771c6e3de04e73a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edc0b7eb836c37fb043149234e8c84c89d5deeab",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variantf474a283d7a0d3f140a7b79d0496d589d6d562c2c1f0e675771c6e3de04e73a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variantf474a283d7a0d3f140a7b79d0496d589d6d562c2c1f0e675771c6e3de04e73a0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variantf474a283d7a0d3f140a7b79d0496d589d6d562c2c1f0e675771c6e3de04e73a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edc0b7eb836c37fb043149234e8c84c89d5deeab`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Prod/Variantf474a283d7a0d3f140a7b79d0496d589d6d562c2c1f0e675771c6e3de04e73a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Prod/Variantf474a283d7a0d3f140a7b79d0496d589d6d562c2c1f0e675771c6e3de04e73a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LinearMap.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isLinearMap_add](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variantf474a283d7a0d3f140a7b79d0496d589d6d562c2c1f0e675771c6e3de04e73a0.lean/declarations/islinearmap-add--5240743e2eca56fedc01b8de.md) | 33 | `result-track:5240743e2eca56fedc01b8defb9bb8d979fb72a24b77b72645a570a5a0f25322` |
| 2 | `theorem` | [isLinearMap_sub](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variantf474a283d7a0d3f140a7b79d0496d589d6d562c2c1f0e675771c6e3de04e73a0.lean/declarations/islinearmap-sub--2011bcf87df16c5323945188.md) | 42 | `result-track:2011bcf87df16c5323945188a60392ad209baa13763affd3ff8ecb1cc2f40960` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
