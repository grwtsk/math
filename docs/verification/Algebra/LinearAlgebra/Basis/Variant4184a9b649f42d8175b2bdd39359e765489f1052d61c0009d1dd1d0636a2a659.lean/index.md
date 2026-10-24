# Verification target: GRWTSK.Algebra.LinearAlgebra.Basis.Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97e66729147e79bd440f7a386139b3a0ec5137b7",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97e66729147e79bd440f7a386139b3a0ec5137b7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis.Submodule` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Reindex` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Basis.toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/declarations/basis-tomatrix--423e4e5772ae12f3125b835c.md) | 58 | `declaration-track:423e4e5772ae12f3125b835c1b2d18a808f9f50a8545799b1c0fe427b6e80f86` |
| 2 | `theorem` | [toMatrix_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/declarations/tomatrix-apply--5097417e98b66f842ce8902d.md) | 64 | `result-track:5097417e98b66f842ce8902d42ed47b111f3083ee6b4619251b5588071514d59` |
| 3 | `theorem` | [toMatrix_transpose_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/declarations/tomatrix-transpose-apply--85a48288af1758861ab2d23b.md) | 67 | `result-track:85a48288af1758861ab2d23badc7573b1dbebc14366992e461d767db06d3fa91` |
| 4 | `theorem` | [toMatrix_eq_toMatrix_constr](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/declarations/tomatrix-eq-tomatrix-constr--7be7131f0de545e3feed4155.md) | 70 | `result-track:7be7131f0de545e3feed41551aebf292c7f73ab6d17d9385929114672bd10152` |
| 5 | `theorem` | [coePiBasisFun.toMatrix_eq_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/declarations/coepibasisfun-tomatrix-eq-transpose--c252273b553ae78630610498.md) | 76 | `result-track:c252273b553ae7863061049863f207caf8cfab0bb7965ad4b671caea089c933a` |
| 6 | `theorem` | [toMatrix_self](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/declarations/tomatrix-self--433ea310af84f593bbf3f9e0.md) | 82 | `result-track:433ea310af84f593bbf3f9e0bb7ac4be5df88e81ddbc82021c54315d17661722` |
| 7 | `theorem` | [toMatrix_update](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/declarations/tomatrix-update--369c432bacadfb14508e09c5.md) | 87 | `result-track:369c432bacadfb14508e09c5b2928778eb66988901628c82d40e8fab805651be` |
| 8 | `theorem` | [toMatrix_unitsSMul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/declarations/tomatrix-unitssmul--2fab76c817291e013d0dcce8.md) | 97 | `result-track:2fab76c817291e013d0dcce8f8f4e926c57568b4d745eab1c239dccbb46888ad` |
| 9 | `theorem` | [toMatrix_isUnitSMul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/declarations/tomatrix-isunitsmul--5be7a2fadc99a79ef0f1a032.md) | 106 | `result-track:5be7a2fadc99a79ef0f1a0323cbf26026090894abb130e6f874c74692105fe19` |
| 10 | `theorem` | [toMatrix_smul_left](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/declarations/tomatrix-smul-left--7c09d781659d47fe99800cb7.md) | 110 | `result-track:7c09d781659d47fe99800cb772f929d4de0b1858fbe194d79188aed22ae595d9` |
| 11 | `theorem` | [sum_toMatrix_smul_self](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/declarations/sum-tomatrix-smul-self--2c97dc386d841b887bfeea65.md) | 114 | `result-track:2c97dc386d841b887bfeea6509df72df947f1d85ad7e474bed1dce2b767fb705` |
| 12 | `theorem` | [toMatrix_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/declarations/tomatrix-smul--7d0591c17c9519219733ea55.md) | 117 | `result-track:7d0591c17c9519219733ea550b42016cea0f726cff0a69017b86d9e31e378801` |
| 13 | `theorem` | [toMatrix_map_vecMul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/declarations/tomatrix-map-vecmul--e769aecb0ef921a0a3b8232d.md) | 124 | `result-track:e769aecb0ef921a0a3b8232da23ee86da70974d317fdadc374f40e688f74811f` |
| 14 | `theorem` | [toLin_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/declarations/tolin-tomatrix--71c1cfb9e213e8fb94f6fcbd.md) | 131 | `result-track:71c1cfb9e213e8fb94f6fcbdbfe63d238bfa637b7ca75006893c54683bd8c1b8` |
| 15 | `def` | [toMatrixEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/declarations/tomatrixequiv--71ba18795bf0efe33b4bb29c.md) | 137 | `declaration-track:71ba18795bf0efe33b4bb29c64e1f8ce144395840dddb294ad3d4d2ce0f97f63` |
| 16 | `theorem` | [restrictScalars_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/declarations/restrictscalars-tomatrix--c5a8eea9defe4e0fa6f7b9b4.md) | 161 | `result-track:c5a8eea9defe4e0fa6f7b9b419ed1077f6892023b41e95502c45efa5f8419e89` |
| 17 | `theorem` | [LinearMap.toMatrix_id_eq_basis_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/declarations/linearmap-tomatrix-id-eq-basis-tomatrix--ec3d507727576de073f33894.md) | 184 | `result-track:ec3d507727576de073f338945813496ad758af8a8372d32f7fe60671b4bdbc32` |
| 18 | `theorem` | [basis_toMatrix_mul_linearMap_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/declarations/basis-tomatrix-mul-linearmap-tomatrix--ef41955000f9b1fe02b9f801.md) | 192 | `result-track:ef41955000f9b1fe02b9f801639f4ab317f324487b3cdd98e6eec117ea2ef20f` |
| 19 | `theorem` | [basis_toMatrix_mul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/declarations/basis-tomatrix-mul--4e84ce7ef7ac1a2e6cbad3be.md) | 198 | `result-track:4e84ce7ef7ac1a2e6cbad3be7a190d32032b2d75dab58cef3aa4436e1be98501` |
| 20 | `theorem` | [linearMap_toMatrix_mul_basis_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/declarations/linearmap-tomatrix-mul-basis-tomatrix--3340a62101f3d0e44b330e97.md) | 207 | `result-track:3340a62101f3d0e44b330e979327c0a9556712a4b1728d1a73b6aca689104b92` |
| 21 | `theorem` | [basis_toMatrix_mul_linearMap_toMatrix_mul_basis_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/declarations/basis-tomatrix-mul-linearmap-tomatrix-mul-basis-tomatrix--61e2e6cdc1a52ec497422aeb.md) | 212 | `result-track:61e2e6cdc1a52ec497422aeb47cfce6a35b91a917064437b636805a66ff39ada` |
| 22 | `theorem` | [mul_basis_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/declarations/mul-basis-tomatrix--69a7e86afc788549ea7a03cf.md) | 218 | `result-track:69a7e86afc788549ea7a03cf5f85901eb6cc67bd0d97b6ba3a133c354a390e11` |
| 23 | `theorem` | [basis_toMatrix_basisFun_mul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/declarations/basis-tomatrix-basisfun-mul--9efbc4c29251b0a1138d0f6c.md) | 225 | `result-track:9efbc4c29251b0a1138d0f6ca3bf97648d8709cfa62b2dd574927d8a012ef59e` |
| 24 | `theorem` | [Basis.toMatrix_reindex'](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/declarations/basis-tomatrix-reindex--8cd66f01ca9e9ae6257b795e.md) | 234 | `result-track:8cd66f01ca9e9ae6257b795eea614c04f500b84b6900bcdc8c30f1dd2fb1f718` |
| 25 | `lemma` | [Basis.toMatrix_mulVec_repr](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/declarations/basis-tomatrix-mulvec-repr--b4c8bc584d5e2d8d27a1a4db.md) | 244 | `result-track:b4c8bc584d5e2d8d27a1a4dbb10521b26c71b992ff15e57b1ed2b480d6dc366b` |
| 26 | `theorem` | [Basis.toMatrix_mul_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/declarations/basis-tomatrix-mul-tomatrix--b5d11aa6c022584eab333eab.md) | 254 | `result-track:b5d11aa6c022584eab333eabc0714d60c5c7d7ad8e74b4910b7be232e6808f72` |
| 27 | `theorem` | [Basis.toMatrix_mul_toMatrix_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/declarations/basis-tomatrix-mul-tomatrix-flip--661cbd843493fc7f9b9e8d5a.md) | 263 | `result-track:661cbd843493fc7f9b9e8d5a71c2201b372f08857e682ea552d2c235db586ff7` |
| 28 | `def` | [Basis.invertibleToMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/declarations/basis-invertibletomatrix--61110c6ccc870ac9313b6dd0.md) | 267 | `declaration-track:61110c6ccc870ac9313b6dd0b6a7ed35ad5ff4fd72c9e2b13954692de64082d5` |
| 29 | `theorem` | [Basis.toMatrix_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/declarations/basis-tomatrix-reindex--1ad7986eb4b22a97b6729ac9.md) | 272 | `result-track:1ad7986eb4b22a97b6729ac97c2aa0564ef60505959b857e42342c58921bdb4e` |
| 30 | `theorem` | [Basis.toMatrix_map](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/declarations/basis-tomatrix-map--2d4bc782222f81f0ea475433.md) | 279 | `result-track:2d4bc782222f81f0ea475433abb083112c31ee1e226a8739ac939720b0bf40fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
