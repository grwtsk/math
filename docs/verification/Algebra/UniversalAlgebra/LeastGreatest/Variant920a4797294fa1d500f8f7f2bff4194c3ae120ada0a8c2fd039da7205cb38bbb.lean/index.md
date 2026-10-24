# Verification target: GRWTSK.Algebra.UniversalAlgebra.LeastGreatest.Variant920a4797294fa1d500f8f7f2bff4194c3ae120ada0a8c2fd039da7205cb38bbb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c3e42e3fb5ae3dfd06e7d8c22ea2485016bd7ce",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/LeastGreatest/Variant920a4797294fa1d500f8f7f2bff4194c3ae120ada0a8c2fd039da7205cb38bbb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/LeastGreatest/Variant920a4797294fa1d500f8f7f2bff4194c3ae120ada0a8c2fd039da7205cb38bbb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/LeastGreatest/Variant920a4797294fa1d500f8f7f2bff4194c3ae120ada0a8c2fd039da7205cb38bbb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c3e42e3fb5ae3dfd06e7d8c22ea2485016bd7ce`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/LeastGreatest/Variant920a4797294fa1d500f8f7f2bff4194c3ae120ada0a8c2fd039da7205cb38bbb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/LeastGreatest/Variant920a4797294fa1d500f8f7f2bff4194c3ae120ada0a8c2fd039da7205cb38bbb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.OrderIso` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Find` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Bounds.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leastOfBdd](../../../../../mathematics/Algebra/UniversalAlgebra/LeastGreatest/Variant920a4797294fa1d500f8f7f2bff4194c3ae120ada0a8c2fd039da7205cb38bbb.lean/declarations/leastofbdd--c8bab0be347f5ab718706736.md) | 46 | `declaration-track:c8bab0be347f5ab718706736b6ee060a18c248f18414ced8305e0e8942e9871c` |
| 2 | `lemma` | [isLeast_coe_leastOfBdd](../../../../../mathematics/Algebra/UniversalAlgebra/LeastGreatest/Variant920a4797294fa1d500f8f7f2bff4194c3ae120ada0a8c2fd039da7205cb38bbb.lean/declarations/isleast-coe-leastofbdd--b0a7d58b2900669735f057d5.md) | 58 | `result-track:b0a7d58b2900669735f057d5fc87396a35e74d5b2f393c2282f22271290a305b` |
| 3 | `theorem` | [exists_least_of_bdd](../../../../../mathematics/Algebra/UniversalAlgebra/LeastGreatest/Variant920a4797294fa1d500f8f7f2bff4194c3ae120ada0a8c2fd039da7205cb38bbb.lean/declarations/exists-least-of-bdd--c97e372d3c25d1fef65fe989.md) | 66 | `result-track:c97e372d3c25d1fef65fe989cf398c20a851f11ef0b92983d402874aec133562` |
| 4 | `theorem` | [coe_leastOfBdd_eq](../../../../../mathematics/Algebra/UniversalAlgebra/LeastGreatest/Variant920a4797294fa1d500f8f7f2bff4194c3ae120ada0a8c2fd039da7205cb38bbb.lean/declarations/coe-leastofbdd-eq--8759533d1a0c94aaf1d306da.md) | 75 | `result-track:8759533d1a0c94aaf1d306daa71802215546dfeba178f3d5a2dc43dfc4e8f227` |
| 5 | `def` | [greatestOfBdd](../../../../../mathematics/Algebra/UniversalAlgebra/LeastGreatest/Variant920a4797294fa1d500f8f7f2bff4194c3ae120ada0a8c2fd039da7205cb38bbb.lean/declarations/greatestofbdd--accc68068a2a5eb4da208093.md) | 85 | `declaration-track:accc68068a2a5eb4da2080933cdf315eab918372d151d0ea7049a4ef8304629b` |
| 6 | `lemma` | [isGreatest_coe_greatestOfBdd](../../../../../mathematics/Algebra/UniversalAlgebra/LeastGreatest/Variant920a4797294fa1d500f8f7f2bff4194c3ae120ada0a8c2fd039da7205cb38bbb.lean/declarations/isgreatest-coe-greatestofbdd--6f44861f7f52aec66d83375d.md) | 96 | `result-track:6f44861f7f52aec66d83375d68327818df5b6d1408c461ad7798a625a0d690c3` |
| 7 | `theorem` | [exists_greatest_of_bdd](../../../../../mathematics/Algebra/UniversalAlgebra/LeastGreatest/Variant920a4797294fa1d500f8f7f2bff4194c3ae120ada0a8c2fd039da7205cb38bbb.lean/declarations/exists-greatest-of-bdd--6ffd5b83ecf1e4d29bee050e.md) | 105 | `result-track:6ffd5b83ecf1e4d29bee050eeb1c7b5352da145cf5eda7a68ddae704b3cecd78` |
| 8 | `theorem` | [coe_greatestOfBdd_eq](../../../../../mathematics/Algebra/UniversalAlgebra/LeastGreatest/Variant920a4797294fa1d500f8f7f2bff4194c3ae120ada0a8c2fd039da7205cb38bbb.lean/declarations/coe-greatestofbdd-eq--f8ea761a5c68fdbd2d539d04.md) | 114 | `result-track:f8ea761a5c68fdbd2d539d04740b16ee59e99089468c7b5d4b7ebb48fa08eb4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
