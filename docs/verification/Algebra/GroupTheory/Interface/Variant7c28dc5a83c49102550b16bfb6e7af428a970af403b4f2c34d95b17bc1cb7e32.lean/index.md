# Verification target: GRWTSK.Algebra.GroupTheory.Interface.Variant7c28dc5a83c49102550b16bfb6e7af428a970af403b4f2c34d95b17bc1cb7e32

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d596b62e238725a3dd9a70af13b64504404afca",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Interface/Variant7c28dc5a83c49102550b16bfb6e7af428a970af403b4f2c34d95b17bc1cb7e32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Interface/Variant7c28dc5a83c49102550b16bfb6e7af428a970af403b4f2c34d95b17bc1cb7e32.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Interface/Variant7c28dc5a83c49102550b16bfb6e7af428a970af403b4f2c34d95b17bc1cb7e32.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d596b62e238725a3dd9a70af13b64504404afca`.

Source path: `GRWTSK/Algebra/GroupTheory/Interface/Variant7c28dc5a83c49102550b16bfb6e7af428a970af403b4f2c34d95b17bc1cb7e32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Interface/Variant7c28dc5a83c49102550b16bfb6e7af428a970af403b4f2c34d95b17bc1cb7e32.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Assembly.Interface` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Comparison.Coefficients` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CoefficientObject](../../../../../mathematics/Algebra/GroupTheory/Interface/Variant7c28dc5a83c49102550b16bfb6e7af428a970af403b4f2c34d95b17bc1cb7e32.lean/declarations/coefficientobject--b79ff843ecb94ba7e8e93977.md) | 43 | `declaration-track:b79ff843ecb94ba7e8e9397768ff63a584440bfce7078a486915148f2ead7d20` |
| 2 | `structure` | [RepresentationDatum](../../../../../mathematics/Algebra/GroupTheory/Interface/Variant7c28dc5a83c49102550b16bfb6e7af428a970af403b4f2c34d95b17bc1cb7e32.lean/declarations/representationdatum--d141922d228493c087e5e8c6.md) | 53 | `declaration-track:d141922d228493c087e5e8c6be3237970ea7cd1cce8fb1c60b9ef317c60f759b` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Interface/Variant7c28dc5a83c49102550b16bfb6e7af428a970af403b4f2c34d95b17bc1cb7e32.lean/declarations/instance--3b4ef620a669649c1638f19d.md) | 67 | `declaration-track:3b4ef620a669649c1638f19d6cf04473dae4047dad1daff486b6c2f5d858091c` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Interface/Variant7c28dc5a83c49102550b16bfb6e7af428a970af403b4f2c34d95b17bc1cb7e32.lean/declarations/instance--ded96e61e53f3ef81dc65335.md) | 70 | `declaration-track:ded96e61e53f3ef81dc65335d738f1bbd2e098c925de07d1acaa1b6f0a94a83f` |
| 5 | `theorem` | [groupRingMap_of](../../../../../mathematics/Algebra/GroupTheory/Interface/Variant7c28dc5a83c49102550b16bfb6e7af428a970af403b4f2c34d95b17bc1cb7e32.lean/declarations/groupringmap-of--05f6114d9eb7c0b7b783f7af.md) | 75 | `result-track:05f6114d9eb7c0b7b783f7afd54ac92b924ccf7fc493aabd2b7169e1af8f6527` |
| 6 | `structure` | [KTheoryFunctoriality](../../../../../mathematics/Algebra/GroupTheory/Interface/Variant7c28dc5a83c49102550b16bfb6e7af428a970af403b4f2c34d95b17bc1cb7e32.lean/declarations/ktheoryfunctoriality--f15ebfab8d1a12da06f1c988.md) | 92 | `declaration-track:f15ebfab8d1a12da06f1c988649ce938c1a3680ba477b54ba86fa518a357c2f5` |
| 7 | `structure` | [EtaleComparisonDatum](../../../../../mathematics/Algebra/GroupTheory/Interface/Variant7c28dc5a83c49102550b16bfb6e7af428a970af403b4f2c34d95b17bc1cb7e32.lean/declarations/etalecomparisondatum--ed240f8d94d37e494f098578.md) | 112 | `declaration-track:ed240f8d94d37e494f098578d8fff65ffe94cbe88146da2e06be1c5d99f5e3f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
