# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Equiv.Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e0c609a872b2a2bb5626ba04386d7e3f98ef8b9",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e0c609a872b2a2bb5626ba04386d7e3f98ef8b9`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.MvPolynomial.Rename` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.AlgebraMap` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.Variables` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Fin` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Fin` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pUnitAlgEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/punitalgequiv--2dbc1d2f0ebaec9d3277dc3e.md) | 73 | `declaration-track:2dbc1d2f0ebaec9d3277dc3e1d68bc7588af46d1c9dbc45b658c3bde7ecef9f3` |
| 2 | `def` | [mapEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/mapequiv--752d53ab5503af0e2302f0e0.md) | 103 | `declaration-track:752d53ab5503af0e2302f0e0876b6a53b2dab1df9739e6686608124c425ebcab` |
| 3 | `theorem` | [mapEquiv_refl](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/mapequiv-refl--5f558557cde50c84d6a2478a.md) | 113 | `result-track:5f558557cde50c84d6a2478adc8b54517d22a9f5e644cb94ae82cbac647c2b64` |
| 4 | `theorem` | [mapEquiv_symm](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/mapequiv-symm--0451630eaa742b544a6bd575.md) | 118 | `result-track:0451630eaa742b544a6bd5752de84a7f39c165a69cbc7d7557aa79386586a092` |
| 5 | `theorem` | [mapEquiv_trans](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/mapequiv-trans--899235a1beb17be46fc312cf.md) | 124 | `result-track:899235a1beb17be46fc312cf302e0daf882622bcc4a3d625e96198f7608608de` |
| 6 | `def` | [mapAlgEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/mapalgequiv--9726f1c4b887a56ea77c8c28.md) | 137 | `declaration-track:9726f1c4b887a56ea77c8c285682a1e75c4aa5f8bbbe29c1ca1100246b1f6ad2` |
| 7 | `theorem` | [mapAlgEquiv_refl](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/mapalgequiv-refl--4b0651f29a6789f513bad7c9.md) | 142 | `result-track:4b0651f29a6789f513bad7c9ba40968982933129244aeb8d4b12664fdbe7a238` |
| 8 | `theorem` | [mapAlgEquiv_symm](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/mapalgequiv-symm--65dbefe498d6628eb8cf8044.md) | 147 | `result-track:65dbefe498d6628eb8cf804424a8afdc285bc4ea2cb7fc698bef7dc57d2cbf57` |
| 9 | `theorem` | [mapAlgEquiv_trans](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/mapalgequiv-trans--6cbecee7cd7e57959ecff7e3.md) | 152 | `result-track:6cbecee7cd7e57959ecff7e334f21c9b0b88ac041d427c677845831b684997c1` |
| 10 | `def` | [sumToIter](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/sumtoiter--d9b0c5c0433d52e48f47c19f.md) | 171 | `declaration-track:d9b0c5c0433d52e48f47c19fbcb6fa7c6a554c5ce50b4da4b7cd65a9bc2bdb20` |
| 11 | `theorem` | [sumToIter_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/sumtoiter-c--f973f8d73a59e3cf5853e5ec.md) | 176 | `result-track:f973f8d73a59e3cf5853e5ecd5305be4b2e103c63c38710024db5def51eb652f` |
| 12 | `theorem` | [sumToIter_Xl](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/sumtoiter-xl--01c0da57b0653b19818e9ecd.md) | 182 | `result-track:01c0da57b0653b19818e9ecd04569050a6dc8448bb58c907edff538e64e9f194` |
| 13 | `theorem` | [sumToIter_Xr](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/sumtoiter-xr--510c01ad2919aa2ae53406e5.md) | 188 | `result-track:510c01ad2919aa2ae53406e5a9d628faa643892675db6ac2236fcacfb88f6dc9` |
| 14 | `def` | [iterToSum](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/itertosum--847cc11ce2f9912aa82c825e.md) | 199 | `declaration-track:847cc11ce2f9912aa82c825e8703444295b98ac1e66ddba34e9c4b363b55f77b` |
| 15 | `theorem` | [iterToSum_C_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/itertosum-c-c--4bbe1cbe2e0aef698e2c9804.md) | 203 | `result-track:4bbe1cbe2e0aef698e2c9804ec1879ccd780de61eea3312a35bdfcea16cb1274` |
| 16 | `theorem` | [iterToSum_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/itertosum-x--5fdb2cc1f29f418f7ededc3a.md) | 208 | `result-track:5fdb2cc1f29f418f7ededc3a945b3390750ef55f4bd4555db7c7ca8065a54847` |
| 17 | `theorem` | [iterToSum_C_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/itertosum-c-x--087165510e96932c9113f81d.md) | 213 | `result-track:087165510e96932c9113f81dfe0d3984cbc984dbc7210861d7ae1f0234473cca` |
| 18 | `def` | [isEmptyAlgEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/isemptyalgequiv--072c334d198aebea98061137.md) | 223 | `declaration-track:072c334d198aebea980611379939417271fe5a413e7febfbc04ccc42d6712ddb` |
| 19 | `def` | [isEmptyRingEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/isemptyringequiv--99a137d66dcebc0450c6bc67.md) | 236 | `declaration-track:99a137d66dcebc0450c6bc67feaba162b20bab32648c83f5632778f702cc7359` |
| 20 | `def` | [mvPolynomialEquivMvPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/mvpolynomialequivmvpolynomial--3d0d756f00a9df9135ea8dc6.md) | 244 | `declaration-track:3d0d756f00a9df9135ea8dc69042bab4ac41928f7fc3727560b11cdae0e71026` |
| 21 | `def` | [sumRingEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/sumringequiv--544383b175a7a8c86babd5ac.md) | 261 | `declaration-track:544383b175a7a8c86babd5ac5f8c30c48fafb9ca9c2ca908e62d1c80cda7113e` |
| 22 | `def` | [sumAlgEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/sumalgequiv--60b03570ec7c42cef47f8731.md) | 275 | `declaration-track:60b03570ec7c42cef47f87318c7e3fd890ade346d398f0ee3d2ac8e177f27b0e` |
| 23 | `def` | [optionEquivLeft](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/optionequivleft--a2061bc8e8be6d18fb3e24b5.md) | 294 | `declaration-track:a2061bc8e8be6d18fb3e24b5e9b32a37626954d63ea3d9a7bd7bc2cf7757f816` |
| 24 | `def` | [optionEquivRight](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/optionequivright--213dd2be1b1994b6e5f2b774.md) | 305 | `declaration-track:213dd2be1b1994b6e5f2b774dfd8aefa6051de5fdbc55d3beed3c6f28735c91e` |
| 25 | `def` | [finSuccEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/finsuccequiv--b89dba342ede7298a5c7c7a0.md) | 324 | `declaration-track:b89dba342ede7298a5c7c7a0442bf509c9f572b56671216dbe3285bd38dd9c9a` |
| 26 | `theorem` | [finSuccEquiv_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/finsuccequiv-eq--1d8f389edf2b084954b2570d.md) | 328 | `result-track:1d8f389edf2b084954b2570d473d2ad882e9656c8acee870e775dea070b09695` |
| 27 | `theorem` | [finSuccEquiv_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/finsuccequiv-apply--18008ba7d5c2f0868b846c2b.md) | 340 | `result-track:18008ba7d5c2f0868b846c2b8bbd81fa344046d8238c659480916e790dffa772` |
| 28 | `theorem` | [finSuccEquiv_comp_C_eq_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/finsuccequiv-comp-c-eq-c--9fbb480be0d2e453c141a68e.md) | 347 | `result-track:9fbb480be0d2e453c141a68e0086787ac94116793f997a7586b851d7d9b204c7` |
| 29 | `theorem` | [finSuccEquiv_X_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/finsuccequiv-x-zero--6d772d06d10e51e1d8542de8.md) | 362 | `result-track:6d772d06d10e51e1d8542de8e38cf95ac3cf156d509d640e29dffc1773bec0a7` |
| 30 | `theorem` | [finSuccEquiv_X_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/finsuccequiv-x-succ--896cb70117ca5f3f874b1489.md) | 366 | `result-track:896cb70117ca5f3f874b148995902e3a25861b4222a8388a21ef747935c23f1b` |
| 31 | `theorem` | [finSuccEquiv_coeff_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/finsuccequiv-coeff-coeff--8cdfa7d47bf5cdf334a7f19f.md) | 373 | `result-track:8cdfa7d47bf5cdf334a7f19f43975bfd7ba1b56a81782b267e893ac4ade2ee96` |
| 32 | `theorem` | [eval_eq_eval_mv_eval'](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/eval-eq-eval-mv-eval--eaa05bbc7b8a7fe9be388126.md) | 397 | `result-track:eaa05bbc7b8a7fe9be3881264e9ad6c49d203947a59487dcc92c7e30598efc58` |
| 33 | `theorem` | [coeff_eval_eq_eval_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/coeff-eval-eq-eval-coeff--5d8f4ae6ae4afd25388d12a5.md) | 421 | `result-track:5d8f4ae6ae4afd25388d12a582a9847d6be28f4e2233b3af8252e81bb16a26be` |
| 34 | `theorem` | [support_coeff_finSuccEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/support-coeff-finsuccequiv--dff5faed1de9d994391234cc.md) | 426 | `result-track:dff5faed1de9d994391234cce24a636d32da5101435c451a14c05e55b5e4c71e` |
| 35 | `theorem` | [finSuccEquiv_support](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/finsuccequiv-support--a492a85044de7fb53d718591.md) | 435 | `result-track:a492a85044de7fb53d7185910c72f0e5366a853c5a9d8983278058ca40fa05fa` |
| 36 | `theorem` | [finSuccEquiv_support'](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/finsuccequiv-support--71c51dd0817323329f1403ae.md) | 449 | `result-track:71c51dd0817323329f1403aead6f3e312e94c15d62232d5e8c3bfbaded4ba8cb` |
| 37 | `theorem` | [support_finSuccEquiv_nonempty](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/support-finsuccequiv-nonempty--429dff6cf224afd3215599f9.md) | 468 | `result-track:429dff6cf224afd3215599f90943da5b25f4feb7349ddc61e66e49e6c15d8731` |
| 38 | `theorem` | [degree_finSuccEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/degree-finsuccequiv--5ea4488034d4870bd71f4372.md) | 480 | `result-track:5ea4488034d4870bd71f43727296a0f247ecb19b434f1f2535ca52808b4ea555` |
| 39 | `theorem` | [natDegree_finSuccEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/natdegree-finsuccequiv--a5a32d6c173f71e4f8196439.md) | 493 | `result-track:a5a32d6c173f71e4f8196439204125f0d55be83d4c295ca98e48c29ffe6fdfaa` |
| 40 | `theorem` | [degreeOf_coeff_finSuccEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Equiv/Variant8edfb0a95d8a96fba01c0636abb2a93bf627797e54346deefad82a062ebcb8b8.lean/declarations/degreeof-coeff-finsuccequiv--ebf60d998cd0cbc96eb501e8.md) | 502 | `result-track:ebf60d998cd0cbc96eb501e88303eb6414ce465fe5f5b22154f9117e7c0d0a55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
