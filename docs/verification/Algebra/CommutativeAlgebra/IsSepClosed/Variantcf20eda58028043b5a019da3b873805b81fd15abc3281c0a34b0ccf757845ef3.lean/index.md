# Verification target: GRWTSK.Algebra.CommutativeAlgebra.IsSepClosed.Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bcf3681f6bda45a3b6925916728ab1c7234fc630",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bcf3681f6bda45a3b6925916728ab1c7234fc630`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Galois.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsSepClosed](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean/declarations/issepclosed--d459da5b70f4bc285188d736.md) | 61 | `declaration-track:d459da5b70f4bc285188d736f9ab30e79a1678278e4d05da44c3529dd00bd5f5` |
| 2 | `instance` | [IsSepClosed.of_isAlgClosed](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean/declarations/issepclosed-of-isalgclosed--b3141efcb0a8625f9dcedb31.md) | 65 | `declaration-track:b3141efcb0a8625f9dcedb317958bf2e62a262130877901a21988b2a5af7eee0` |
| 3 | `theorem` | [IsSepClosed.splits_codomain](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean/declarations/issepclosed-splits-codomain--4c5c022223ccf307c31a5261.md) | 75 | `result-track:4c5c022223ccf307c31a52613d69aadae059c5d5c0627194b6ac7991b4dc4c08` |
| 4 | `theorem` | [IsSepClosed.splits_domain](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean/declarations/issepclosed-splits-domain--477bfffae6ef1ef4e532d011.md) | 84 | `result-track:477bfffae6ef1ef4e532d0110c9fceebf57a8f6d6ffd1cdcd60ccdba9350a430` |
| 5 | `theorem` | [exists_root](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean/declarations/exists-root--9c9d1acab38db030bd472f09.md) | 90 | `result-track:9c9d1acab38db030bd472f099d92ce5bc8d0371f39d71ab7501a377e139ebba4` |
| 6 | `theorem` | [exists_root_C_mul_X_pow_add_C_mul_X_add_C](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean/declarations/exists-root-c-mul-x-pow-add-c-mul-x-add-c--a390b68e93831ce2dcf71025.md) | 96 | `result-track:a390b68e93831ce2dcf710254ac7ad6d4596dbc9fe3ad32eeeb7d677bd34b92d` |
| 7 | `theorem` | [exists_root_C_mul_X_pow_add_C_mul_X_add_C'](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean/declarations/exists-root-c-mul-x-pow-add-c-mul-x-add-c--4c2242471e105d745405ce87.md) | 118 | `result-track:4c2242471e105d745405ce875573a6883a8d383455905f973890da2a450bf03e` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean/declarations/instance--0d223e54369d4edffd228a4c.md) | 125 | `declaration-track:0d223e54369d4edffd228a4cf2bd36e13121b6c753a0a60d23f7c4a1c325ff19` |
| 9 | `theorem` | [exists_pow_nat_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean/declarations/exists-pow-nat-eq--2529497954c55bcd923cc29b.md) | 130 | `result-track:2529497954c55bcd923cc29bb32d4249aefc1def3dad748d1379b707bbdb1e0a` |
| 10 | `theorem` | [exists_eq_mul_self](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean/declarations/exists-eq-mul-self--45e0d18e8dbf6fda473a8a81.md) | 144 | `result-track:45e0d18e8dbf6fda473a8a810f44621d0e4df92e854449880d00f5b3156562fa` |
| 11 | `theorem` | [roots_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean/declarations/roots-eq-zero-iff--8996e87a49d466a8a47cac22.md) | 148 | `result-track:8996e87a49d466a8a47cac227fdd0939f2e0e573ca26066c01ea531c15de0d0e` |
| 12 | `theorem` | [exists_eval₂_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean/declarations/exists-eval-eq-zero--44d37e378f00ec11713f8f9a.md) | 157 | `result-track:44d37e378f00ec11713f8f9af9c8d760daffef2b6fc1c7cc8ac80444b4bcaa8c` |
| 13 | `theorem` | [exists_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean/declarations/exists-aeval-eq-zero--448be59e4782afb86a75a512.md) | 166 | `result-track:448be59e4782afb86a75a51277805410a637ac48d3071b3b9c19de23d8fcf18a` |
| 14 | `theorem` | [of_exists_root](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean/declarations/of-exists-root--7f2034f15ccfa4f911086382.md) | 172 | `result-track:7f2034f15ccfa4f911086382d7b2a91fd336a7fe794517b668205bf207c56535` |
| 15 | `theorem` | [degree_eq_one_of_irreducible](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean/declarations/degree-eq-one-of-irreducible--70aede40ddde066f7937da58.md) | 188 | `result-track:70aede40ddde066f7937da5876fead6f1925eb72bacface8d48e697c1ecb0742` |
| 16 | `theorem` | [algebraMap_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean/declarations/algebramap-surjective--df41ef189208c4a3cffa73cd.md) | 194 | `result-track:df41ef189208c4a3cffa73cd4b832263a4935fe12f25e7167c021bbfa91a5e56` |
| 17 | `theorem` | [IntermediateField.eq_bot_of_isSepClosed_of_isSeparable](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean/declarations/intermediatefield-eq-bot-of-issepclosed-of-isseparable--0a3ff34972e671d60da456c6.md) | 211 | `result-track:0a3ff34972e671d60da456c67a0cb76fca8d3e99040d0dd205f2a52005053722` |
| 18 | `class` | [IsSepClosure](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean/declarations/issepclosure--f0e04249642185c5cf5dbaa9.md) | 219 | `declaration-track:f0e04249642185c5cf5dbaa960a7af589bdd9cd5df072f19fc3a5500e193da96` |
| 19 | `instance` | [IsSepClosure.self_of_isSepClosed](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean/declarations/issepclosure-self-of-issepclosed--f5f8bbbb93266fa58bce8afc.md) | 224 | `declaration-track:f5f8bbbb93266fa58bce8afc7e0ec136a799001992c7f7b914a752667bbb2e9f` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean/declarations/instance--5797f967801e6cd989e30b65.md) | 229 | `declaration-track:5797f967801e6cd989e30b6501436791905641c4f229010701d5701235247cd2` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean/declarations/instance--11f0769249f9ad72fe196d2d.md) | 236 | `declaration-track:11f0769249f9ad72fe196d2d308f522f8f1cfe3bef90be14e32a962dc6345cf6` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean/declarations/instance--de13da60bb856d0a694ab4bb.md) | 243 | `declaration-track:de13da60bb856d0a694ab4bb347c26a3fa28693675f621b338a5523d8758d4e7` |
| 23 | `theorem` | [isSepClosure_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean/declarations/issepclosure-iff--f9dc3440edb8582a2b4afcfc.md) | 250 | `result-track:f9dc3440edb8582a2b4afcfc19729a9e3389596d127f0560e9b6034c8d8c32b5` |
| 24 | `instance` | [isSeparable](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean/declarations/isseparable--328503c353b8cf7792241ac3.md) | 256 | `declaration-track:328503c353b8cf7792241ac3f4979f744bbca268c3ff9d6c9829ce9b95b9bf91` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean/declarations/instance--a0bea72b8c51ed1bb7a9e4f7.md) | 259 | `declaration-track:a0bea72b8c51ed1bb7a9e4f72877408361d8640cc28e86ce297b5644ae5e1cf0` |
| 26 | `theorem` | [surjective_restrictDomain_of_isSeparable](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean/declarations/surjective-restrictdomain-of-isseparable--e6258ccdae5792fe10a3f2b6.md) | 272 | `result-track:e6258ccdae5792fe10a3f2b6c0876e7e7ad0edfec038f03359bf15dca8fd980c` |
| 27 | `def` | [equiv](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variantcf20eda58028043b5a019da3b873805b81fd15abc3281c0a34b0ccf757845ef3.lean/declarations/equiv--ec7e0405c613d128ac41bd09.md) | 302 | `declaration-track:ec7e0405c613d128ac41bd09c3085d8bc3f2e3d1bc476d9a3c66a4fb6369bd0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
