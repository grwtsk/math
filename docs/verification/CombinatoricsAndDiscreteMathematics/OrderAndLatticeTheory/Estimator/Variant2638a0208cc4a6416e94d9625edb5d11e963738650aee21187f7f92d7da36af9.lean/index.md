# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Estimator.Variant2638a0208cc4a6416e94d9625edb5d11e963738650aee21187f7f92d7da36af9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39537f4cd1a8d7d7126101c72d060adcf347506e",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant2638a0208cc4a6416e94d9625edb5d11e963738650aee21187f7f92d7da36af9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant2638a0208cc4a6416e94d9625edb5d11e963738650aee21187f7f92d7da36af9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant2638a0208cc4a6416e94d9625edb5d11e963738650aee21187f7f92d7da36af9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39537f4cd1a8d7d7126101c72d060adcf347506e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant2638a0208cc4a6416e94d9625edb5d11e963738650aee21187f7f92d7da36af9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant2638a0208cc4a6416e94d9625edb5d11e963738650aee21187f7f92d7da36af9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Heyting.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelClasses` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Thunk` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [EstimatorData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant2638a0208cc4a6416e94d9625edb5d11e963738650aee21187f7f92d7da36af9.lean/declarations/estimatordata--5476e38d686021d647659ac1.md) | 44 | `declaration-track:5476e38d686021d647659ac1d73ec62085b17a9397fb622e5aaee2ce20eeec39` |
| 2 | `class` | [Estimator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant2638a0208cc4a6416e94d9625edb5d11e963738650aee21187f7f92d7da36af9.lean/declarations/estimator--6683bf27fdb8c53de1fc926c.md) | 56 | `declaration-track:6683bf27fdb8c53de1fc926cd203bc6da36257c90e7621e8419226390b5d00a1` |
| 3 | `abbrev` | [Estimator.trivial.](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant2638a0208cc4a6416e94d9625edb5d11e963738650aee21187f7f92d7da36af9.lean/declarations/estimator-trivial--12cc12f734760ae9090781ac.md) | 72 | `declaration-track:12cc12f734760ae9090781acdda5323b9ccbfa82ec5dad84f6894df7043a985e` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant2638a0208cc4a6416e94d9625edb5d11e963738650aee21187f7f92d7da36af9.lean/declarations/instance--6c9f26281470b1bad4022cfa.md) | 74 | `declaration-track:6c9f26281470b1bad4022cfaef640bb1d5513f3b8528d521f2d0961a1e11e93f` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant2638a0208cc4a6416e94d9625edb5d11e963738650aee21187f7f92d7da36af9.lean/declarations/instance--f9fd75c2fdf2460af8779662.md) | 76 | `declaration-track:f9fd75c2fdf2460af877966207f0c87a920c086db7b74942b482db5cf21fd94b` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant2638a0208cc4a6416e94d9625edb5d11e963738650aee21187f7f92d7da36af9.lean/declarations/instance--15319d74dd50a5bfaa32fe0d.md) | 79 | `declaration-track:15319d74dd50a5bfaa32fe0dca5c2f517495a9ddd0e0695f6cb1c598664e081f` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant2638a0208cc4a6416e94d9625edb5d11e963738650aee21187f7f92d7da36af9.lean/declarations/instance--47297504c2f4297fd74ab24d.md) | 84 | `declaration-track:47297504c2f4297fd74ab24d2ae76575d47f53d55e86e1a2ef202d91610fd3c7` |
| 8 | `def` | [Estimator.improveUntilAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant2638a0208cc4a6416e94d9625edb5d11e963738650aee21187f7f92d7da36af9.lean/declarations/estimator-improveuntilaux--fd4626017b7afc79c64719ed.md) | 98 | `declaration-track:fd4626017b7afc79c64719ed7f0896ec409e87e75e55780bb7ceb87007da3a7f` |
| 9 | `def` | [Estimator.improveUntil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant2638a0208cc4a6416e94d9625edb5d11e963738650aee21187f7f92d7da36af9.lean/declarations/estimator-improveuntil--97ac5d12c8a5f6e8c1a9979a.md) | 115 | `declaration-track:97ac5d12c8a5f6e8c1a9979a05590e431d1ecd53053069b079c46482fb6551ec` |
| 10 | `theorem` | [Estimator.improveUntilAux_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant2638a0208cc4a6416e94d9625edb5d11e963738650aee21187f7f92d7da36af9.lean/declarations/estimator-improveuntilaux-spec--bd4dda8880b6f5b54a2f1e79.md) | 125 | `result-track:bd4dda8880b6f5b54a2f1e794c03839e592a7c039d55056d5b72aef80df7d531` |
| 11 | `theorem` | [Estimator.improveUntil_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant2638a0208cc4a6416e94d9625edb5d11e963738650aee21187f7f92d7da36af9.lean/declarations/estimator-improveuntil-spec--66f358a081727a1f72e3bcf4.md) | 147 | `result-track:66f358a081727a1f72e3bcf409a00e28dd02ec0878866f4ea75af37e8a2c265e` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant2638a0208cc4a6416e94d9625edb5d11e963738650aee21187f7f92d7da36af9.lean/declarations/instance--58ea9fbd235ef96aeff67304.md) | 162 | `declaration-track:58ea9fbd235ef96aeff6730417d982a1698aee818efbc584755d05e7afae0e53` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant2638a0208cc4a6416e94d9625edb5d11e963738650aee21187f7f92d7da36af9.lean/declarations/instance--895b4318bdb80bcaee6e5aab.md) | 171 | `declaration-track:895b4318bdb80bcaee6e5aab0b7e786e44b690f85306053d9b8a0e3ea1966ef6` |
| 14 | `structure` | [Estimator.fst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant2638a0208cc4a6416e94d9625edb5d11e963738650aee21187f7f92d7da36af9.lean/declarations/estimator-fst--467c6ef848d36cc9aebbf30f.md) | 197 | `declaration-track:467c6ef848d36cc9aebbf30f40a937c0c2d3646826628842ade21caf155a3eac` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant2638a0208cc4a6416e94d9625edb5d11e963738650aee21187f7f92d7da36af9.lean/declarations/instance--067f84e43919e0c95a974d87.md) | 205 | `declaration-track:067f84e43919e0c95a974d87fb5754969d32dfd36808644dc77a7508c4e70040` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant2638a0208cc4a6416e94d9625edb5d11e963738650aee21187f7f92d7da36af9.lean/declarations/instance--fe4a12b62dc164b4b09b57a5.md) | 210 | `declaration-track:fe4a12b62dc164b4b09b57a58257ff8bf136320f660f10980e23d1aa3b7134a4` |
| 17 | `def` | [Estimator.fstInst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variant2638a0208cc4a6416e94d9625edb5d11e963738650aee21187f7f92d7da36af9.lean/declarations/estimator-fstinst--0046d9bb9ce84446516eff73.md) | 222 | `declaration-track:0046d9bb9ce84446516eff73d6d1e0aa14d42bade4a22a37131b072d91a9ea82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
