# Verification target: GRWTSK.Algebra.LinearAlgebra.Geometry.Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5202087c8310e6c7372aa242a33aa7725a5319da",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5202087c8310e6c7372aa242a33aa7725a5319da`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MatrixCalculus` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [d4A](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/d4a--88f1732efe28833fefc736f0.md) | 17 | `declaration-track:88f1732efe28833fefc736f02441087d2ce75ee98895dc814c6f5d48d62c5eda` |
| 2 | `def` | [d4C](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/d4c--3197683d397571111ad9bffc.md) | 22 | `declaration-track:3197683d397571111ad9bffc550ed54bae9402db42e8e89352e7f25568162938` |
| 3 | `def` | [d4Coxeter](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/d4coxeter--ff2c1392052674bfb4da1b40.md) | 27 | `declaration-track:ff2c1392052674bfb4da1b40010edc0754553d6b99164d8243c614fe919b3f09` |
| 4 | `def` | [d4Powers](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/d4powers--bde01ae50ef16186f93b0c21.md) | 32 | `declaration-track:bde01ae50ef16186f93b0c211036fd0a7384fd87a423c060196323bd02572257` |
| 5 | `theorem` | [d4_matrix_metric](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/d4-matrix-metric--f3f6c320c7cb80ca661510e2.md) | 56 | `result-track:f3f6c320c7cb80ca661510e2d3b931f4c3e9b5d65e2fdfcc4002ffb6ed241ba6` |
| 6 | `theorem` | [d4_coxeter_word](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/d4-coxeter-word--7a0f3dd259a0c3262911337a.md) | 60 | `result-track:7a0f3dd259a0c3262911337a626d72a326ccd854d6fad67e863b34b75935b3d7` |
| 7 | `theorem` | [d4_power_recurrence](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/d4-power-recurrence--1e64924b7b24e2acc0e137d2.md) | 63 | `result-track:1e64924b7b24e2acc0e137d25c90d4188e63a0267269738ef5e54c455efddaae` |
| 8 | `theorem` | [d4_pow_certificate](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/d4-pow-certificate--ccba8f87bdf19f96d449ff9a.md) | 67 | `result-track:ccba8f87bdf19f96d449ff9aecca69406e9d52982f8f0db635fa601bdbd86b99` |
| 9 | `theorem` | [d4_coxeter_exact_order](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/d4-coxeter-exact-order--642491bd897a7dc7ebc54653.md) | 74 | `result-track:642491bd897a7dc7ebc54653652ac743801d9d059472a315cb28dd24d9e5c235` |
| 10 | `def` | [d4CQ](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/d4cq--10c2544489fc4ab0457bedaf.md) | 85 | `declaration-track:10c2544489fc4ab0457bedaff92bb528575cd81a73179f17edefabebda97f15d` |
| 11 | `def` | [d4L](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/d4l--59854c927ea1199db48aae58.md) | 90 | `declaration-track:59854c927ea1199db48aae58212cb877db2c655c78a9cdccc151bb2609ba434c` |
| 12 | `def` | [d4D](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/d4d--e3f6ec60fa0229a7559fd4b6.md) | 95 | `declaration-track:e3f6ec60fa0229a7559fd4b6c0f2b5602f8a495f2f5fb7c675bf848b4b3356a6` |
| 13 | `theorem` | [d4_ldl](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/d4-ldl--f584259aefb5131c1563f7b3.md) | 97 | `result-track:f584259aefb5131c1563f7b3c1c069d54b96430d10bb319d9bd451d47d1add0b` |
| 14 | `theorem` | [d4_lower_det](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/d4-lower-det--85de5814ca63d22f78bbd9b5.md) | 100 | `result-track:85de5814ca63d22f78bbd9b5d70c887b9d1be3f1e04265fc29176697174660bb` |
| 15 | `theorem` | [d4_positive_definite](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/d4-positive-definite--8cdc501592b48753a158f68b.md) | 105 | `result-track:8cdc501592b48753a158f68b72042629e3b36391db3a236ae594738b472207a3` |
| 16 | `theorem` | [d4_determinant](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/d4-determinant--7ff63fbc6157ddbf9af1dc18.md) | 115 | `result-track:7ff63fbc6157ddbf9af1dc182cad3df25fcddc0558b02784750d2f787d36b985` |
| 17 | `theorem` | [d4_integer_determinant](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/d4-integer-determinant--1315826a67db62f0dd1162e9.md) | 120 | `result-track:1315826a67db62f0dd1162e97df8dc61997ee27559f4c60c06bafefc77f736c9` |
| 18 | `def` | [e8A](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/e8a--7835002847e207b5412f3a05.md) | 130 | `declaration-track:7835002847e207b5412f3a051504706f0735bb832f5dc3eb2315b62673bba277` |
| 19 | `def` | [e8C](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/e8c--a068eef2084d051f2b51bac5.md) | 139 | `declaration-track:a068eef2084d051f2b51bac5cea38600b6935edc60c486b1e6b1d2e3de3cdde5` |
| 20 | `def` | [e8Coxeter](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/e8coxeter--6894af6388da18f9908c3549.md) | 148 | `declaration-track:6894af6388da18f9908c354931380576d156d1a5d1337d3f4e3f1584afa5179b` |
| 21 | `def` | [e8Powers](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/e8powers--4ce8ba8dac9f54e2d7c7e6b6.md) | 157 | `declaration-track:4ce8ba8dac9f54e2d7c7e6b67b1617eb6d06245c06d9bed59a4a3128c2728138` |
| 22 | `theorem` | [e8_matrix_metric](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/e8-matrix-metric--ca23eb51820ca8e9962483b9.md) | 377 | `result-track:ca23eb51820ca8e9962483b9e0056a1547300f02ade46a32b160a75ddba0469c` |
| 23 | `theorem` | [e8_coxeter_word](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/e8-coxeter-word--287062180781130990a3c69f.md) | 381 | `result-track:287062180781130990a3c69f9ad4604337e08083d7b2053d7444d2a9b95477bc` |
| 24 | `theorem` | [e8_power_recurrence](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/e8-power-recurrence--6b1ffab4e554437870156d99.md) | 384 | `result-track:6b1ffab4e554437870156d995d4f6895aac3e496146b89c4d9e44d35dfe26dbe` |
| 25 | `theorem` | [e8_pow_certificate](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/e8-pow-certificate--10af23d2d6d0f81ac10d0a42.md) | 388 | `result-track:10af23d2d6d0f81ac10d0a42bd8f14ee8d09484457b4892a9db44725bf2b3f8e` |
| 26 | `theorem` | [e8_coxeter_exact_order](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/e8-coxeter-exact-order--f4cabfb72f99f454ad31c610.md) | 395 | `result-track:f4cabfb72f99f454ad31c61029e36a0585e367cea1dbbaf7378bd438d43625a0` |
| 27 | `def` | [e8CQ](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/e8cq--c9ebb5758e6408fe2b81aeea.md) | 406 | `declaration-track:c9ebb5758e6408fe2b81aeea6e2898ee27ec9a62af738088a5c5386903ced025` |
| 28 | `def` | [e8L](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/e8l--533e13805ae3f46ecc43abfb.md) | 415 | `declaration-track:533e13805ae3f46ecc43abfb2e31b3c60b6b4f85571466ca858bc08680a3b00f` |
| 29 | `def` | [e8D](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/e8d--94a61c6c6ed9f4405954fb39.md) | 424 | `declaration-track:94a61c6c6ed9f4405954fb39005bcc3f8f2edfdf2b633a692c39ffdf8cc4d548` |
| 30 | `theorem` | [e8_ldl](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/e8-ldl--6f98276c375e61ecf0e15db6.md) | 426 | `result-track:6f98276c375e61ecf0e15db654e74da1517fef8c7de28b97fa65e25c64ff2eed` |
| 31 | `theorem` | [e8_lower_det](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/e8-lower-det--fd264032a3fc0eb54bb1f999.md) | 429 | `result-track:fd264032a3fc0eb54bb1f99911c3d19257db42f7bb47878fad3ccd13eb3973b9` |
| 32 | `theorem` | [e8_positive_definite](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/e8-positive-definite--2a96cb3b26efd610baafc071.md) | 434 | `result-track:2a96cb3b26efd610baafc0712dc03e08a7a6f64b5ddd79820a1218c97b485dbb` |
| 33 | `theorem` | [e8_determinant](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/e8-determinant--be854f9de4fb088a504a659a.md) | 444 | `result-track:be854f9de4fb088a504a659add75200e657bf727ff6622d74f759bd82fe34ef8` |
| 34 | `theorem` | [e8_integer_determinant](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/e8-integer-determinant--6e03c95f51cc4c6fb4bb2686.md) | 449 | `result-track:6e03c95f51cc4c6fb4bb2686c33a1b9520731e31c94ed5dcba47ec43dfa46c1a` |
| 35 | `def` | [rootBasis](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/rootbasis--e09704f6dd7c3d975abc1760.md) | 459 | `declaration-track:e09704f6dd7c3d975abc1760a80a3496992ed3fdab7e75944bc5a2a2184ee9e4` |
| 36 | `def` | [R](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/r--64a3bcc8bb42132b6d5572c8.md) | 464 | `declaration-track:64a3bcc8bb42132b6d5572c80f6d4b62b18f4651eb6e044d9db47e2e7102311d` |
| 37 | `def` | [T](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/t--b9be29f0e7e62a100256cd08.md) | 469 | `declaration-track:b9be29f0e7e62a100256cd08fff4778be86b536668683960081271fc5f0fa715` |
| 38 | `def` | [REuclidean](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/reuclidean--172abd7d9c43ea593aa3ec1a.md) | 474 | `declaration-track:172abd7d9c43ea593aa3ec1afcc46580272492219b71d0fc37079112cf56f07a` |
| 39 | `def` | [TEuclidean](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/teuclidean--6cb3a8b2442388633773829f.md) | 479 | `declaration-track:6cb3a8b2442388633773829fe206c14239679b278833d2e911a61d39e7694a94` |
| 40 | `theorem` | [quarter_turn_adapter](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/quarter-turn-adapter--9b2d5dfea105af9f58e81096.md) | 483 | `result-track:9b2d5dfea105af9f58e810963feb6de0ab5b264fdae4e0716f285f79bc5abe2c` |
| 41 | `theorem` | [quarter_turn_words](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/quarter-turn-words--6ad16195b7b52833dc967e86.md) | 486 | `result-track:6ad16195b7b52833dc967e86a6a81afd252c948768cb0ee82a8dfb31698ec785` |
| 42 | `theorem` | [quarter_turn](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/quarter-turn--65d084809f096bf3854c9c26.md) | 488 | `result-track:65d084809f096bf3854c9c26e0485ab5964e0a126d169c335262df5ee6da99aa` |
| 43 | `def` | [embedding](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/embedding--203e585db24552f048c40ebc.md) | 493 | `declaration-track:203e585db24552f048c40ebc10c35eb46b42d556a0d87f7ddef7e39390259371` |
| 44 | `def` | [vertexMap](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/vertexmap--24c0feb031998828dbb469ec.md) | 502 | `declaration-track:24c0feb031998828dbb469eca4eb53c032c34d1e17616a5094590d4590652857` |
| 45 | `theorem` | [embedding_gram](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/embedding-gram--b60138ed3833cf88ab797048.md) | 503 | `result-track:b60138ed3833cf88ab7970484654e0ab253e97727b687eb3a158100f36082afb` |
| 46 | `theorem` | [embedding_intertwining](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/embedding-intertwining--5607a93b254835e5ccbdd392.md) | 504 | `result-track:5607a93b254835e5ccbdd3924606936f6d2d32f18184b23a47e601eb634796d6` |
| 47 | `theorem` | [coordinate_complement_not_invariant](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/coordinate-complement-not-invariant--07634cc8ad0204d9f667fef0.md) | 507 | `result-track:07634cc8ad0204d9f667fef05401219a9974063bc28912d15d326538aed615d3` |
| 48 | `def` | [RExt](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/rext--78c02c79d1a02f840f5a3b5d.md) | 510 | `declaration-track:78c02c79d1a02f840f5a3b5d67c7ffb2af02c088543a7e79e0fd82e3f9cd0350` |
| 49 | `def` | [TExt](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/text--f2a89613e01ae6b6298d7c69.md) | 519 | `declaration-track:f2a89613e01ae6b6298d7c69ea697ce66c80d53e07b8023390ed4dc257ba4bee` |
| 50 | `theorem` | [extended_words](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/extended-words--c56e0f1ba7f8de3806ee3751.md) | 527 | `result-track:c56e0f1ba7f8de3806ee37512917ef8fc85fb40b96f6c339106ea8fe07b464ee` |
| 51 | `theorem` | [sector_anticommutation](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/sector-anticommutation--38e326814d071d1105d1c321.md) | 529 | `result-track:38e326814d071d1105d1c32198fb4068d035f7262b591bc0ba31efbdc69809c3` |
| 52 | `theorem` | [ambient_anticommutation_fails](../../../../../mathematics/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/declarations/ambient-anticommutation-fails--443dd10a0bb0f2ab4ace76dd.md) | 530 | `result-track:443dd10a0bb0f2ab4ace76ddb0f8d679bf9e70937cda5e6ea7027a6c61caa492` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
