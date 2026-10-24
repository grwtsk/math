# Verification target: GRWTSK.Algebra.GroupTheory.Bounds.Variant03c42f077a355f81dc534b5cc00cbf97bd57df8f829ea31548601ed918fe917d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2a3a0a20d655908cdfd15c0ac62b97eda0e8033",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Bounds/Variant03c42f077a355f81dc534b5cc00cbf97bd57df8f829ea31548601ed918fe917d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant03c42f077a355f81dc534b5cc00cbf97bd57df8f829ea31548601ed918fe917d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant03c42f077a355f81dc534b5cc00cbf97bd57df8f829ea31548601ed918fe917d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2a3a0a20d655908cdfd15c0ac62b97eda0e8033`.

Source path: `GRWTSK/Algebra/GroupTheory/Bounds/Variant03c42f077a355f81dc534b5cc00cbf97bd57df8f829ea31548601ed918fe917d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Bounds/Variant03c42f077a355f81dc534b5cc00cbf97bd57df8f829ea31548601ed918fe917d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.OrderIso` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.OrderDual` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Bounds.OrderIso` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.GaloisConnection.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mul_mem_upperBounds_mul](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant03c42f077a355f81dc534b5cc00cbf97bd57df8f829ea31548601ed918fe917d.lean/declarations/mul-mem-upperbounds-mul--247c1e2d212129e1e39cbe73.md) | 37 | `result-track:247c1e2d212129e1e39cbe73f7f5dbdb7ea64d7efc3afdea5f798fd23da43159` |
| 2 | `lemma` | [subset_upperBounds_mul](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant03c42f077a355f81dc534b5cc00cbf97bd57df8f829ea31548601ed918fe917d.lean/declarations/subset-upperbounds-mul--2bd0033ac5f5826071d412fd.md) | 41 | `result-track:2bd0033ac5f5826071d412fd5694ebce2395055cbe05be856277e27e76307f09` |
| 3 | `lemma` | [mul_mem_lowerBounds_mul](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant03c42f077a355f81dc534b5cc00cbf97bd57df8f829ea31548601ed918fe917d.lean/declarations/mul-mem-lowerbounds-mul--cb9837f7b0734b484a6f3584.md) | 45 | `result-track:cb9837f7b0734b484a6f3584382b2d8eb2ec2ad12d153f8f21ae4612a85c1f3d` |
| 4 | `lemma` | [subset_lowerBounds_mul](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant03c42f077a355f81dc534b5cc00cbf97bd57df8f829ea31548601ed918fe917d.lean/declarations/subset-lowerbounds-mul--e2fc2f4d8d7ab109fd868a76.md) | 49 | `result-track:e2fc2f4d8d7ab109fd868a76f8152f5e3705f9c432cd26c898433db9df32123e` |
| 5 | `lemma` | [BddAbove.mul](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant03c42f077a355f81dc534b5cc00cbf97bd57df8f829ea31548601ed918fe917d.lean/declarations/bddabove-mul--9a7433d393536b0aeb346ac6.md) | 53 | `result-track:9a7433d393536b0aeb346ac6a8f616743439cd2f5f755a4af8cc283d842de0da` |
| 6 | `lemma` | [BddBelow.mul](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant03c42f077a355f81dc534b5cc00cbf97bd57df8f829ea31548601ed918fe917d.lean/declarations/bddbelow-mul--26bd6278c8038f8bf3e4112c.md) | 57 | `result-track:26bd6278c8038f8bf3e4112cf43493f2e5c48f227f2d7c38ed6f92e4e5ed1f12` |
| 7 | `lemma` | [BddAbove.range_mul](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant03c42f077a355f81dc534b5cc00cbf97bd57df8f829ea31548601ed918fe917d.lean/declarations/bddabove-range-mul--d42a95653cfff502b52f9037.md) | 68 | `result-track:d42a95653cfff502b52f90374006a048f4f0952341fc8b132de0dadcc24d153b` |
| 8 | `lemma` | [BddBelow.range_mul](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant03c42f077a355f81dc534b5cc00cbf97bd57df8f829ea31548601ed918fe917d.lean/declarations/bddbelow-range-mul--62098ea4f06ceb27e751a5dc.md) | 74 | `result-track:62098ea4f06ceb27e751a5dc3254678d60001cae32a4653bdd6748c87f616667` |
| 9 | `theorem` | [bddAbove_inv](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant03c42f077a355f81dc534b5cc00cbf97bd57df8f829ea31548601ed918fe917d.lean/declarations/bddabove-inv--eb503f6d696890d052f67e8b.md) | 84 | `result-track:eb503f6d696890d052f67e8ba00bbd15e31253e2741c5c45e8e0efbe6e4ca317` |
| 10 | `theorem` | [bddBelow_inv](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant03c42f077a355f81dc534b5cc00cbf97bd57df8f829ea31548601ed918fe917d.lean/declarations/bddbelow-inv--f016a202fc24818f97f88bb6.md) | 88 | `result-track:f016a202fc24818f97f88bb62f12291080655419c984a4e99bd6d02635698274` |
| 11 | `theorem` | [BddAbove.inv](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant03c42f077a355f81dc534b5cc00cbf97bd57df8f829ea31548601ed918fe917d.lean/declarations/bddabove-inv--a4eadc1dff0b54e2884f3122.md) | 92 | `result-track:a4eadc1dff0b54e2884f31227bad302e95fbd42aefc809dce36859cbb9e91171` |
| 12 | `theorem` | [BddBelow.inv](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant03c42f077a355f81dc534b5cc00cbf97bd57df8f829ea31548601ed918fe917d.lean/declarations/bddbelow-inv--67edce33ec57a7a4950c442f.md) | 96 | `result-track:67edce33ec57a7a4950c442fbd449928f6348d01001d219cb81107d173d76e95` |
| 13 | `theorem` | [isLUB_inv](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant03c42f077a355f81dc534b5cc00cbf97bd57df8f829ea31548601ed918fe917d.lean/declarations/islub-inv--ad8684b6e46e4667106c1629.md) | 100 | `result-track:ad8684b6e46e4667106c1629b3264661a35db22e242bd81d29813907ee4d6d02` |
| 14 | `theorem` | [isLUB_inv'](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant03c42f077a355f81dc534b5cc00cbf97bd57df8f829ea31548601ed918fe917d.lean/declarations/islub-inv--8b241e57a3b9e7e8ceba6f21.md) | 104 | `result-track:8b241e57a3b9e7e8ceba6f2186d070b271369c635b08ef770510b13799f15c33` |
| 15 | `theorem` | [IsGLB.inv](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant03c42f077a355f81dc534b5cc00cbf97bd57df8f829ea31548601ed918fe917d.lean/declarations/isglb-inv--d7bb97d6d6d75052cbc55ada.md) | 108 | `result-track:d7bb97d6d6d75052cbc55ada8c9130b91f62cb9c8c9ebf6be5808e3ce97850b7` |
| 16 | `theorem` | [isGLB_inv](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant03c42f077a355f81dc534b5cc00cbf97bd57df8f829ea31548601ed918fe917d.lean/declarations/isglb-inv--a1d5a0bdab9810bd2eebe194.md) | 112 | `result-track:a1d5a0bdab9810bd2eebe194a9082bce5147666b754fd50402ba4157c0a4660d` |
| 17 | `theorem` | [isGLB_inv'](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant03c42f077a355f81dc534b5cc00cbf97bd57df8f829ea31548601ed918fe917d.lean/declarations/isglb-inv--bb185f365ba438ff3cf0ef87.md) | 116 | `result-track:bb185f365ba438ff3cf0ef87871560e61781b49a0da99eab99bf26a71931a321` |
| 18 | `theorem` | [IsLUB.inv](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant03c42f077a355f81dc534b5cc00cbf97bd57df8f829ea31548601ed918fe917d.lean/declarations/islub-inv--5f64f0df042df95ddecb4828.md) | 120 | `result-track:5f64f0df042df95ddecb48280299c6f940914ba0b1fd178b23d0ec8a218661d2` |
| 19 | `lemma` | [BddBelow.range_inv](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant03c42f077a355f81dc534b5cc00cbf97bd57df8f829ea31548601ed918fe917d.lean/declarations/bddbelow-range-inv--877951c8efc1e0c2d4580726.md) | 124 | `result-track:877951c8efc1e0c2d4580726d3f6996dbe5f46011ecc922a1fc2169204911c9d` |
| 20 | `lemma` | [BddAbove.range_inv](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant03c42f077a355f81dc534b5cc00cbf97bd57df8f829ea31548601ed918fe917d.lean/declarations/bddabove-range-inv--d281e24e32bdb6d574dd8a69.md) | 129 | `result-track:d281e24e32bdb6d574dd8a6940c1d31d1926d8aed042e056708b87b989fcf5b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
