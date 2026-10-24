# Verification target: GRWTSK.Algebra.CommutativeAlgebra.IsPoly.Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d712982f78789f2c432b6696f5e3149df1393546",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d712982f78789f2c432b6696f5e3149df1393546`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean.json)

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
| 1 | `theorem` | [poly_eq_of_wittPolynomial_bind_eq'](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/declarations/poly-eq-of-wittpolynomial-bind-eq--69943fa93ad677b0b24f9afe.md) | 125 | `result-track:69943fa93ad677b0b24f9afe84621265b22ffd68a3e85079693dc6c28921483f` |
| 2 | `theorem` | [poly_eq_of_wittPolynomial_bind_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/declarations/poly-eq-of-wittpolynomial-bind-eq--5950e0eb3b06d551def81fb5.md) | 135 | `result-track:5950e0eb3b06d551def81fb5b7c15819dfa0f6e5672f60b45bf374ef4812d587` |
| 3 | `class` | [IsPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/declarations/ispoly--14474ca05e78db73a3ddf459.md) | 159 | `declaration-track:14474ca05e78db73a3ddf459d4b0fb2853f6f73479369ce041c1c20f6f31271c` |
| 4 | `instance` | [idIsPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/declarations/idispoly--a41c9a9d2f8dba4ad0c41bc0.md) | 165 | `declaration-track:a41c9a9d2f8dba4ad0c41bc074bf0453fec972ddded4ac91c27b10c114c79835` |
| 5 | `instance` | [idIsPolyI'](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/declarations/idispolyi--a096e3e00d7669a099fad9fd.md) | 168 | `declaration-track:a096e3e00d7669a099fad9fd6ec93f76df3f3d1214c91e9a2a134714010beb71` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/declarations/instance--35cbcd61f2299d1d2d92e4ff.md) | 173 | `declaration-track:35cbcd61f2299d1d2d92e4ff279b67aecc630551e9ae7347781c8495accc6642` |
| 7 | `theorem` | [ext](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/declarations/ext--c7952bf15eea61d051c5af33.md) | 178 | `result-track:c7952bf15eea61d051c5af3341e0f12e119e39240c8412cd4b7266d2904b6946` |
| 8 | `instance` | [comp](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/declarations/comp--2aaeff8eeaf07cb619f81261.md) | 204 | `declaration-track:2aaeff8eeaf07cb619f81261ac5c66fba166c272eb87e2766264e60afaf013e4` |
| 9 | `class` | [IsPoly₂](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/declarations/ispoly--55c860983d12d10ebc908da3.md) | 225 | `declaration-track:55c860983d12d10ebc908da34a423afffc7c8bbd0811bbacaf8c82e831a9193f` |
| 10 | `instance` | [IsPoly₂.comp](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/declarations/ispoly-comp--89503613e66b8ccfb205bbb4.md) | 233 | `declaration-track:89503613e66b8ccfb205bbb45cbda756a45833c5696b2b8ad39f0510f9a5f33a` |
| 11 | `instance` | [IsPoly.comp₂](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/declarations/ispoly-comp--f364b9ceb4b8eb5ba328ff47.md) | 250 | `declaration-track:f364b9ceb4b8eb5ba328ff47a918ec98bef049b95d0d2dcdb638a02affa9d014` |
| 12 | `instance` | [IsPoly₂.diag](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/declarations/ispoly-diag--18ef1956851cc95e5690334a.md) | 259 | `declaration-track:18ef1956851cc95e5690334a2aed62b88e0455396a343cbff96f38dda2a84905` |
| 13 | `instance` | [negIsPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/declarations/negispoly--c52e057ef3c0495a212a5d40.md) | 269 | `declaration-track:c52e057ef3c0495a212a5d40ac779f6f97da807dfcfb9a9bcb1949d59ca949fa` |
| 14 | `instance` | [zeroIsPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/declarations/zeroispoly--7ebb91102ac3cba42d273773.md) | 281 | `declaration-track:7ebb91102ac3cba42d27377385ae1858efaee695b07176ae1da2f4d373fd0540` |
| 15 | `theorem` | [bind₁_zero_wittPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/declarations/bind-zero-wittpolynomial--9c513aa4a61ad351edc59b93.md) | 285 | `result-track:9c513aa4a61ad351edc59b93eda2f31a5d90fb1454e1a97a59db2dd6133b5111` |
| 16 | `def` | [onePoly](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/declarations/onepoly--a9dbef189df16026d4487719.md) | 290 | `declaration-track:a9dbef189df16026d44877194ce9f36f91db94826c647e389dea6c49e469b730` |
| 17 | `theorem` | [bind₁_onePoly_wittPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/declarations/bind-onepoly-wittpolynomial--f19dbadc2b478ef7ecad362e.md) | 294 | `result-track:f19dbadc2b478ef7ecad362e520b4fbe6342cac0f355c743110f9733f3f4b4a0` |
| 18 | `instance` | [oneIsPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/declarations/oneispoly--e180ea7528cac77caca3ab61.md) | 304 | `declaration-track:e180ea7528cac77caca3ab61df3c8ff9497d0de54973c57fdbe3c906867a8f3c` |
| 19 | `instance` | [addIsPoly₂](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/declarations/addispoly--b716e00acf1dcd9dfcd2cc48.md) | 315 | `declaration-track:b716e00acf1dcd9dfcd2cc48bd4d0cc59045a195e1746370e2dab8659115698c` |
| 20 | `instance` | [mulIsPoly₂](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/declarations/mulispoly--fbd1b4edd25220f08a1ca921.md) | 319 | `declaration-track:fbd1b4edd25220f08a1ca921f5ba4afa979d2c9e9e2c4f6d4ab30a9812b9d799` |
| 21 | `theorem` | [IsPoly.map](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/declarations/ispoly-map--536a8e2b3341a97258c1121c.md) | 323 | `result-track:536a8e2b3341a97258c1121ca507ac8ce3c8c1567b0182099a999ffa8f9ec9cc` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/declarations/instance--29132c98ede2c72a01ac6f48.md) | 335 | `declaration-track:29132c98ede2c72a01ac6f485f566ec42e37a11e0ae8c5fd496b0784d1f08170` |
| 23 | `theorem` | [ext](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/declarations/ext--fc94e47dfb85752dba815dd0.md) | 338 | `result-track:fc94e47dfb85752dba815dd092ddf0572b411e2cc9a01271f71f7f87ebe6dd21` |
| 24 | `theorem` | [map](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/declarations/map--1065517bbf97782f0c15a703.md) | 365 | `result-track:1065517bbf97782f0c15a7030293be0d6224537c00b59d5884540747579244a1` |
| 25 | `syntax` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/declarations/syntax--7998787eadc99ea782a3538a.md) | 390 | `declaration-track:7998787eadc99ea782a3538ac56e747961c002f4a6dc3ec7eb83d01b52040823` |
| 26 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/declarations/macro-rules--11752acc459f5daf7b0525a7.md) | 392 | `declaration-track:11752acc459f5daf7b0525a7148b3f5117332fd417ea9a4e67946ffe3b4e376e` |
| 27 | `syntax` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/declarations/syntax--8740ebccae115a7f0822f64a.md) | 422 | `declaration-track:8740ebccae115a7f0822f64ac784d588266a484b61cd10ecc61a8cda8c46123d` |
| 28 | `def` | [runIntro](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/declarations/runintro--e873247c646b3230eac8cc79.md) | 424 | `declaration-track:e873247c646b3230eac8cc79bebf885d617afabec9563c5a4da5516a64327b21` |
| 29 | `def` | [getLocalOrIntro](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/declarations/getlocalorintro--cd60b27bd705497ddc55026d.md) | 432 | `declaration-track:cd60b27bd705497ddc55026da4e4055e8a79aecff2cebbc686afb75b46ead9cc` |
| 30 | `elab_rules` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant4112d04c20cf8a2384d8355c373a73d6c3b1c2c533fad4d8f0af393436119f49.lean/declarations/elab-rules--817e40fe83b50312ecf8083a.md) | 438 | `declaration-track:817e40fe83b50312ecf8083a745216ecd15e5ee6ced103d4cdf8acfd1b0f1fd8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
