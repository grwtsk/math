# Verification target: GRWTSK.Algebra.LinearAlgebra.IsometryEquiv.Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e42b0391d785897726d0e5802cdbed3a81b8d0f",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e42b0391d785897726d0e5802cdbed3a81b8d0f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsometryEquiv](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean/declarations/isometryequiv--261ffb1c4eb1040b74f96414.md) | 40 | `declaration-track:261ffb1c4eb1040b74f96414ee11c0bd828d859c9ab9486ba98eb62d472fe564` |
| 2 | `def` | [Equivalent](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean/declarations/equivalent--226ec35f119791f3d1580819.md) | 47 | `declaration-track:226ec35f119791f3d1580819a7ad56b0fa005925206e2557151d89e1ba6f8c6d` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean/declarations/instance--266d8f864186b9b59fa15cb7.md) | 55 | `declaration-track:266d8f864186b9b59fa15cb7915dcd3d857fb58cfe66ed60c2857cf6eb508e86` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean/declarations/instance--469ef3b5b5f39360e72271a2.md) | 62 | `declaration-track:469ef3b5b5f39360e72271a2e078d951b1e58f9e7e355b780f52908eb6960637` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean/declarations/instance--b1bd92f3e98a2d4500f82b03.md) | 66 | `declaration-track:b1bd92f3e98a2d4500f82b0361447fa6b4e3a9286dd5d47a03e7e0e3754b1ba1` |
| 6 | `theorem` | [coe_toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean/declarations/coe-tolinearequiv--440591351597b9760cbff030.md) | 70 | `result-track:440591351597b9760cbff030c4dd7036ca560e2ef178ce0da3fc90665016aabf` |
| 7 | `theorem` | [map_app](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean/declarations/map-app--c96751463f4efd2c0752aeb8.md) | 74 | `result-track:c96751463f4efd2c0752aeb83fa7375a8ec05cb04cd507bb6726edbc256dfa87` |
| 8 | `def` | [refl](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean/declarations/refl--44774a8a1b419ab6b0a32f9a.md) | 79 | `declaration-track:44774a8a1b419ab6b0a32f9abf0826f561a175c081e1d21c65f47820abb100b3` |
| 9 | `def` | [symm](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean/declarations/symm--b4aad4e498b2ffc94ee3ce10.md) | 84 | `declaration-track:b4aad4e498b2ffc94ee3ce103ab4566b8b07760b9e9116f9b1eef28ea8ceff10` |
| 10 | `def` | [trans](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean/declarations/trans--13632f861c1e9c054ef761d7.md) | 90 | `declaration-track:13632f861c1e9c054ef761d7d832c4c7fd2c25b5b4c0ecc43eafc685d27968c4` |
| 11 | `def` | [toIsometry](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean/declarations/toisometry--66769b53f48c6f03f43eb000.md) | 96 | `declaration-track:66769b53f48c6f03f43eb0004a71120624258d1f3e7f65830cabfbbb73d543d8` |
| 12 | `lemma` | [apply_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean/declarations/apply-symm-apply--54feb391ff3e99df6d26df07.md) | 100 | `result-track:54feb391ff3e99df6d26df07d62272d1c024154a6d202d900c9ddfcd2eb0910a` |
| 13 | `lemma` | [symm_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean/declarations/symm-apply-apply--480290d4c1484df9ff1d41c7.md) | 103 | `result-track:480290d4c1484df9ff1d41c7ef4bda7bc29ec6ebbc290f73de5855adad26e9bc` |
| 14 | `theorem` | [symm_apply_eq](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean/declarations/symm-apply-eq--759600c31af1b3ccd4192929.md) | 106 | `result-track:759600c31af1b3ccd419292917a4f3aedebba19ee4e11b074297268934f5a9a7` |
| 15 | `theorem` | [eq_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean/declarations/eq-symm-apply--4302ecae415bb906ee9490b8.md) | 110 | `result-track:4302ecae415bb906ee9490b87693bc4c33203c83ec8345975ada58f389cbc934` |
| 16 | `lemma` | [coe_symm_toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean/declarations/coe-symm-tolinearequiv--a1a30004a744f39da2832957.md) | 114 | `result-track:a1a30004a744f39da28329575fff32226dda51b663a21500de174fbda74cdba1` |
| 17 | `theorem` | [refl](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean/declarations/refl--ba0706782ccd7052cbb0c4e1.md) | 124 | `result-track:ba0706782ccd7052cbb0c4e1743807946f2fccb41e066d1e82a6e7cf1b3707e7` |
| 18 | `theorem` | [symm](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean/declarations/symm--2bce64235664c5383424a7cf.md) | 128 | `result-track:2bce64235664c5383424a7cfe86bbc438d76bffe4625d6812ca5a78acb8716cd` |
| 19 | `theorem` | [trans](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean/declarations/trans--8294ef12e3179bb7f22d30cf.md) | 132 | `result-track:8294ef12e3179bb7f22d30cf967cd7fa4e237f023c55f35b7a6a6faacb1863ec` |
| 20 | `def` | [isometryEquivOfCompLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean/declarations/isometryequivofcomplinearequiv--51555afd5a02b9f0d2f35fb3.md) | 138 | `declaration-track:51555afd5a02b9f0d2f35fb32f1b111514e7e4379111572bc0d79a3bd45d2103` |
| 21 | `def` | [isometryEquivBasisRepr](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean/declarations/isometryequivbasisrepr--77cddf6e2bac2fc07d26fd6c.md) | 149 | `declaration-track:77cddf6e2bac2fc07d26fd6ce9ece190834d11755db3127b54f4c81885fdbebc` |
| 22 | `def` | [isometryEquivWeightedSumSquares](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean/declarations/isometryequivweightedsumsquares--be9c52d6dc35fc5c2fff5f18.md) | 160 | `declaration-track:be9c52d6dc35fc5c2fff5f18202b9ae7d2a32a955051afdc64c1a9d58c30f46e` |
| 23 | `theorem` | [equivalent_weightedSumSquares](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean/declarations/equivalent-weightedsumsquares--caff84f400262b10df89ce04.md) | 173 | `result-track:caff84f400262b10df89ce049dfee71c3c8911130dcddd0dac8bd6d5709291eb` |
| 24 | `theorem` | [equivalent_weightedSumSquares_units_of_nondegenerate'](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean/declarations/equivalent-weightedsumsquares-units-of-nondegenerate--02f20ec5e649d51e10e989a8.md) | 178 | `result-track:02f20ec5e649d51e10e989a84546497cb92d76ef005acebfa7dae88cf62b8ded` |
| 25 | `def` | [weightedSumSquaresCongr](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean/declarations/weightedsumsquarescongr--306aa7cead2e69b20c39c8fd.md) | 192 | `declaration-track:306aa7cead2e69b20c39c8fd0a4f1e0cc9d87d801aa09f1bc205e0a6a345fb50` |
| 26 | `def` | [isometryEquivWeightedSumSquaresWeightedSumSquares](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean/declarations/isometryequivweightedsumsquaresweightedsumsquares--aae57171648be2d99eadd308.md) | 199 | `declaration-track:aae57171648be2d99eadd308e78e7f6b8cbd5ffb9a75fc82c15013bd0fb96743` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
