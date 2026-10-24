# Verification target: GRWTSK.AlgebraicGeometry.Hodge.CMFourBalance

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "779c37d0e1a195a85f3b5a1ae01d062f20db5fe1",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/Hodge/CMFourBalance.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMFourBalance.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMFourBalance.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `779c37d0e1a195a85f3b5a1ae01d062f20db5fe1`.

Source path: `GRWTSK/AlgebraicGeometry/Hodge/CMFourBalance.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/Hodge/CMFourBalance.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSign](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMFourBalance.lean/declarations/issign--e1ab751e864974b016c0ceee.md) | 33 | `declaration-track:e1ab751e864974b016c0ceee83fb8440b7e8957fd8f2ab7b4614d4d133d67cbf` |
| 2 | `def` | [holomorphicIndex](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMFourBalance.lean/declarations/holomorphicindex--b7123ce3bdb1b4e85244f6c6.md) | 36 | `declaration-track:b7123ce3bdb1b4e85244f6c6a54a29e47dd98be55f7b37a6a3a5abff24c5553e` |
| 3 | `theorem` | [fourSign_balance_holomorphicCount](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMFourBalance.lean/declarations/foursign-balance-holomorphiccount--6ff989e44afda18800f93012.md) | 41 | `result-track:6ff989e44afda18800f93012c411e07c04619d1885fd140501879c008b310102` |
| 4 | `structure` | [OddSignRow](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMFourBalance.lean/declarations/oddsignrow--a5239cc8f4647d92c9de04dc.md) | 56 | `declaration-track:a5239cc8f4647d92c9de04dcb474d3ba63d5153d980365edd75d12454bf49488` |
| 5 | `def` | [FourBalance](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMFourBalance.lean/declarations/fourbalance--f04808d3fabf0f826f875080.md) | 62 | `declaration-track:f04808d3fabf0f826f875080b5cda63484d8fe8439e62ee2b39af1458b967022` |
| 6 | `theorem` | [fourBalance_holomorphicCount](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMFourBalance.lean/declarations/fourbalance-holomorphiccount--bfc930e3ad3be48bb24ef1a6.md) | 73 | `result-track:bfc930e3ad3be48bb24ef1a691e65390c44e15d7ce6760d8c2b82ac1b867bc38` |
| 7 | `def` | [HasTwoTwoSignProfile](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMFourBalance.lean/declarations/hastwotwosignprofile--c7ae76416dbafa32e238aa7f.md) | 89 | `declaration-track:c7ae76416dbafa32e238aa7f03853dbb6cb9a95e2f8de3fb8adc8ea42e5a412e` |
| 8 | `theorem` | [fourBalance_twoTwoSignProfile](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMFourBalance.lean/declarations/fourbalance-twotwosignprofile--db54ec53bb571594313651f2.md) | 101 | `result-track:db54ec53bb571594313651f28a5aadd5af19acb1e1d3c7931ddb1e2c09a8870a` |
| 9 | `theorem` | [fourBalance_at](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMFourBalance.lean/declarations/fourbalance-at--ac34a5155d56e916d7615242.md) | 111 | `result-track:ac34a5155d56e916d761524282f250b7bf16e7aee8f5a7e7b05e43cd69fdd88f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
