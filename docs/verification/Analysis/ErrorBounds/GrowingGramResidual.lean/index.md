# Verification target: GRWTSK.Analysis.ErrorBounds.GrowingGramResidual

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "affebe081e0ae6b3697a7a38ff4a97babb758edb",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/GrowingGramResidual.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/GrowingGramResidual.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/GrowingGramResidual.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `affebe081e0ae6b3697a7a38ff4a97babb758edb`.

Source path: `GRWTSK/Analysis/ErrorBounds/GrowingGramResidual.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/GrowingGramResidual.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.QuadraticGramResidual`](../../../../mathematics/Analysis/ErrorBounds/QuadraticGramResidual.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rectangularStep](../../../../mathematics/Analysis/ErrorBounds/GrowingGramResidual.lean/declarations/rectangularstep--c3c84f40e61ee0cc36b19696.md) | 44 | `declaration-track:c3c84f40e61ee0cc36b19696a38c7724300fe598ecaa5fc112da0d6ceabb3246` |
| 2 | `def` | [rectangularLift](../../../../mathematics/Analysis/ErrorBounds/GrowingGramResidual.lean/declarations/rectangularlift--54c8673135dc3294fc11f7c8.md) | 48 | `declaration-track:54c8673135dc3294fc11f7c8a4c31b0df9ffdb15f0481e1e9b4947beef4d6d55` |
| 3 | `def` | [transportMatrix](../../../../mathematics/Analysis/ErrorBounds/GrowingGramResidual.lean/declarations/transportmatrix--413d97dac859ba528ac6cbc7.md) | 52 | `declaration-track:413d97dac859ba528ac6cbc7f45959bf0bd6eeb242776491a424177117103bf1` |
| 4 | `def` | [affineInjection](../../../../mathematics/Analysis/ErrorBounds/GrowingGramResidual.lean/declarations/affineinjection--a9d3e2f78a6debfbde402e18.md) | 56 | `declaration-track:a9d3e2f78a6debfbde402e18f45ffc2150926d368249609dde9a7e9cc24a924b` |
| 5 | `def` | [extendFeatures](../../../../mathematics/Analysis/ErrorBounds/GrowingGramResidual.lean/declarations/extendfeatures--0605d7881d08c27eead8c46a.md) | 62 | `declaration-track:0605d7881d08c27eead8c46a099197a63d1bbab1957dca6e8bf6fd85073fc33b` |
| 6 | `def` | [refinementInjection](../../../../mathematics/Analysis/ErrorBounds/GrowingGramResidual.lean/declarations/refinementinjection--32d422e8c22c0a0e294863f8.md) | 67 | `declaration-track:32d422e8c22c0a0e294863f829d88ea799ac1e424b980b6a7976743d2d1aed79` |
| 7 | `theorem` | [rectangular_outer](../../../../mathematics/Analysis/ErrorBounds/GrowingGramResidual.lean/declarations/rectangular-outer--7b57817ebe980a5a893fb847.md) | 73 | `result-track:7b57817ebe980a5a893fb847b8722defa10414d534ad6942b313484721a137ff` |
| 8 | `theorem` | [rectangular_gram_transport](../../../../mathematics/Analysis/ErrorBounds/GrowingGramResidual.lean/declarations/rectangular-gram-transport--d01683cfff6107d77bc0a955.md) | 86 | `result-track:d01683cfff6107d77bc0a95557ccc3ac5b7986f68432fd3eb1395df739316c16` |
| 9 | `theorem` | [rectangular_gram_update](../../../../mathematics/Analysis/ErrorBounds/GrowingGramResidual.lean/declarations/rectangular-gram-update--82bdfe5339f821b75f770466.md) | 94 | `result-track:82bdfe5339f821b75f770466f81becdf1d4edbed0f78690ea17f2bec73fb45bc` |
| 10 | `theorem` | [gram_sum_features](../../../../mathematics/Analysis/ErrorBounds/GrowingGramResidual.lean/declarations/gram-sum-features--89e08ec79fbd06decd8ccb6d.md) | 107 | `result-track:89e08ec79fbd06decd8ccb6daad847ddec02b2476dcc468259b5649e482c046c` |
| 11 | `theorem` | [gram_extendFeatures](../../../../mathematics/Analysis/ErrorBounds/GrowingGramResidual.lean/declarations/gram-extendfeatures--7bb06de553dc9d7ff4ce8de6.md) | 114 | `result-track:7bb06de553dc9d7ff4ce8de6b6b947fdd0a793cc1a339f5c21fe8335aaaec871` |
| 12 | `theorem` | [rectangular_residual_evolution](../../../../mathematics/Analysis/ErrorBounds/GrowingGramResidual.lean/declarations/rectangular-residual-evolution--9895c0d52d31e1a76e0df164.md) | 124 | `result-track:9895c0d52d31e1a76e0df1646d21b0fe9bbbfc7475ecc30410c985ac1fea9e65` |
| 13 | `theorem` | [rectangular_column_factorization](../../../../mathematics/Analysis/ErrorBounds/GrowingGramResidual.lean/declarations/rectangular-column-factorization--25a80c4136dd76911f32156a.md) | 137 | `result-track:25a80c4136dd76911f32156ab500a7a7600d047d7b194c0824c05ccda6acc724` |
| 14 | `theorem` | [rectangular_column_bound](../../../../mathematics/Analysis/ErrorBounds/GrowingGramResidual.lean/declarations/rectangular-column-bound--bd2c327277de53963b461d32.md) | 152 | `result-track:bd2c327277de53963b461d327af3eb176f58d7651b587d0550d85d1b26fe2d76` |
| 15 | `theorem` | [rectangular_mass_step](../../../../mathematics/Analysis/ErrorBounds/GrowingGramResidual.lean/declarations/rectangular-mass-step--e08efd40493311b49bac3fac.md) | 171 | `result-track:e08efd40493311b49bac3facdaa1faf966694e0b0b05a48565a95c7aa3cbab3c` |
| 16 | `theorem` | [gram_readout_with_tail_bound](../../../../mathematics/Analysis/ErrorBounds/GrowingGramResidual.lean/declarations/gram-readout-with-tail-bound--463d07fb1b9d16dfcaef80d4.md) | 208 | `result-track:463d07fb1b9d16dfcaef80d4239e5a3488684c1377c978c818364303a5b8833d` |
| 17 | `def` | [gramResidualMass](../../../../mathematics/Analysis/ErrorBounds/GrowingGramResidual.lean/declarations/gramresidualmass--b2e46f25d610546c4fb2bab7.md) | 234 | `declaration-track:b2e46f25d610546c4fb2bab71985306aba391df96a8bd2e67c96c2014cd6e4a0` |
| 18 | `def` | [gramMismatch](../../../../mathematics/Analysis/ErrorBounds/GrowingGramResidual.lean/declarations/grammismatch--d6d1b58ba58a02dfb0eb3385.md) | 239 | `declaration-track:d6d1b58ba58a02dfb0eb338586c5d78f242cbfa0cc0baaca31d95d4086fb9a24` |
| 19 | `theorem` | [growing_gram_mass_step](../../../../mathematics/Analysis/ErrorBounds/GrowingGramResidual.lean/declarations/growing-gram-mass-step--d27643d11546f507ee44d947.md) | 246 | `result-track:d27643d11546f507ee44d9471532da19349119e90d5f6bff2586061bdf05f9ee` |
| 20 | `theorem` | [no_fixed_negative_of_growing_gram](../../../../mathematics/Analysis/ErrorBounds/GrowingGramResidual.lean/declarations/no-fixed-negative-of-growing-gram--aec90dc62ba64f20c124f8f3.md) | 269 | `result-track:aec90dc62ba64f20c124f8f361e86237d3d705e862b9a71ae5881418931ba083` |
| 21 | `theorem` | [rectangular_growth_gain_fixture](../../../../mathematics/Analysis/ErrorBounds/GrowingGramResidual.lean/declarations/rectangular-growth-gain-fixture--6727dbb5cbba0e8520a27866.md) | 315 | `result-track:6727dbb5cbba0e8520a2786674f6c3c21d019f4ba906f1ec8bc0fa52bf70529e` |
| 22 | `theorem` | [omitted_tail_fixture](../../../../mathematics/Analysis/ErrorBounds/GrowingGramResidual.lean/declarations/omitted-tail-fixture--bfccf4882c1318d4d5605228.md) | 322 | `result-track:bfccf4882c1318d4d56052281a9ed5405789ac4398a81b4d90bac80a178e5c29` |
| 23 | `theorem` | [shrinking_weight_consumer_fixture](../../../../mathematics/Analysis/ErrorBounds/GrowingGramResidual.lean/declarations/shrinking-weight-consumer-fixture--83b5223ab1e055265ab488a3.md) | 327 | `result-track:83b5223ab1e055265ab488a315a304fb4a936649ba69820eef273b0a22d953e2` |
| 24 | `def` | [coordinateBirth](../../../../mathematics/Analysis/ErrorBounds/GrowingGramResidual.lean/declarations/coordinatebirth--114fe912ed95864df83da8bd.md) | 332 | `declaration-track:114fe912ed95864df83da8bd8cd183580a070c4674546458618da2d2a4168c55` |
| 25 | `theorem` | [newborn_coordinate_fixture](../../../../mathematics/Analysis/ErrorBounds/GrowingGramResidual.lean/declarations/newborn-coordinate-fixture--c15e3c106c383ad9e0618fc6.md) | 336 | `result-track:c15e3c106c383ad9e0618fc633abf1e0373e18c5adbd0b20906ba8a3071146e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
