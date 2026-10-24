# Verification target: GRWTSK.Algebra.LinearAlgebra.MonoidAlgebra.Variant33e82011d1b38b43c5f727ca41cdff9dab13bfbce8e0afbd9b6c014b2b1b75d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be9d73d674458acf04de775a81a042e414f0e17b",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MonoidAlgebra/Variant33e82011d1b38b43c5f727ca41cdff9dab13bfbce8e0afbd9b6c014b2b1b75d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variant33e82011d1b38b43c5f727ca41cdff9dab13bfbce8e0afbd9b6c014b2b1b75d7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variant33e82011d1b38b43c5f727ca41cdff9dab13bfbce8e0afbd9b6c014b2b1b75d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be9d73d674458acf04de775a81a042e414f0e17b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MonoidAlgebra/Variant33e82011d1b38b43c5f727ca41cdff9dab13bfbce8e0afbd9b6c014b2b1b75d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MonoidAlgebra/Variant33e82011d1b38b43c5f727ca41cdff9dab13bfbce8e0afbd9b6c014b2b1b75d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Bialgebra.Hom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coalgebra.MonoidAlgebra` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instBialgebra](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variant33e82011d1b38b43c5f727ca41cdff9dab13bfbce8e0afbd9b6c014b2b1b75d7.lean/declarations/instbialgebra--26235a6a6b06b371ca4aeb22.md) | 43 | `declaration-track:26235a6a6b06b371ca4aeb22aa6ce84872c35203c45226765514f7b43ed91e33` |
| 2 | `def` | [mapDomainBialgHom](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variant33e82011d1b38b43c5f727ca41cdff9dab13bfbce8e0afbd9b6c014b2b1b75d7.lean/declarations/mapdomainbialghom--e48a2c5adeded973668c1d34.md) | 63 | `declaration-track:e48a2c5adeded973668c1d3476347a671d0b403a62c74eac0777401dabb72927` |
| 3 | `lemma` | [mapDomainBialgHom_id](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variant33e82011d1b38b43c5f727ca41cdff9dab13bfbce8e0afbd9b6c014b2b1b75d7.lean/declarations/mapdomainbialghom-id--632ff129fc34f2d636f49b7d.md) | 66 | `result-track:632ff129fc34f2d636f49b7d51fdd4fea27750f7bd2a6575090805bfa010b7af` |
| 4 | `lemma` | [mapDomainBialgHom_comp](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variant33e82011d1b38b43c5f727ca41cdff9dab13bfbce8e0afbd9b6c014b2b1b75d7.lean/declarations/mapdomainbialghom-comp--f9169a84f2ba5744d7858f43.md) | 69 | `result-track:f9169a84f2ba5744d7858f43a3d81c43702465e7593f334b6a81d7c706ac01d7` |
| 5 | `lemma` | [mapDomainBialgHom_mapDomainBialgHom](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variant33e82011d1b38b43c5f727ca41cdff9dab13bfbce8e0afbd9b6c014b2b1b75d7.lean/declarations/mapdomainbialghom-mapdomainbialghom--ddb9b2c3c7c2899a27195087.md) | 73 | `result-track:ddb9b2c3c7c2899a27195087c09a374a943fe243d9a2836b75ae82a6890a6807` |
| 6 | `instance` | [instBialgebra](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variant33e82011d1b38b43c5f727ca41cdff9dab13bfbce8e0afbd9b6c014b2b1b75d7.lean/declarations/instbialgebra--9a0ae9fb46fe3062ec788247.md) | 83 | `declaration-track:9a0ae9fb46fe3062ec7882479481e1d7b86df2aa110a659bdc903b4e836260b8` |
| 7 | `def` | [mapDomainBialgHom](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variant33e82011d1b38b43c5f727ca41cdff9dab13bfbce8e0afbd9b6c014b2b1b75d7.lean/declarations/mapdomainbialghom--0cd6fb7b32b07bd6a038f48d.md) | 103 | `declaration-track:0cd6fb7b32b07bd6a038f48dd5c8dd6f3001ba660ebbf9dc965b0019d6fed503` |
| 8 | `lemma` | [mapDomainBialgHom_id](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variant33e82011d1b38b43c5f727ca41cdff9dab13bfbce8e0afbd9b6c014b2b1b75d7.lean/declarations/mapdomainbialghom-id--18227a9049a2c4be0ed8f83c.md) | 109 | `result-track:18227a9049a2c4be0ed8f83c75f246f3633644b40dc25e7a29cf7a12a7eaf354` |
| 9 | `lemma` | [mapDomainBialgHom_comp](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variant33e82011d1b38b43c5f727ca41cdff9dab13bfbce8e0afbd9b6c014b2b1b75d7.lean/declarations/mapdomainbialghom-comp--342ddd0b7d2f495cdedc675a.md) | 112 | `result-track:342ddd0b7d2f495cdedc675ab4101b3481acb184887b2623b94c4218d772ab36` |
| 10 | `lemma` | [mapDomainBialgHom_mapDomainBialgHom](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variant33e82011d1b38b43c5f727ca41cdff9dab13bfbce8e0afbd9b6c014b2b1b75d7.lean/declarations/mapdomainbialghom-mapdomainbialghom--9dee4917351505266c9bde04.md) | 116 | `result-track:9dee4917351505266c9bde0411e0526e71256c5cf164bf69946f0eaa47379093` |
| 11 | `instance` | [instBialgebra](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variant33e82011d1b38b43c5f727ca41cdff9dab13bfbce8e0afbd9b6c014b2b1b75d7.lean/declarations/instbialgebra--4c8daf711728e77761a66a61.md) | 128 | `declaration-track:4c8daf711728e77761a66a61ef158f2a81a43735432a394ed10fabed5fa74b9b` |
| 12 | `theorem` | [comul_T](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variant33e82011d1b38b43c5f727ca41cdff9dab13bfbce8e0afbd9b6c014b2b1b75d7.lean/declarations/comul-t--068e3360215ae9588a8b91be.md) | 132 | `result-track:068e3360215ae9588a8b91be5ce2634bbad63ee1f118013c4c0eec5514a45953` |
| 13 | `theorem` | [counit_T](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variant33e82011d1b38b43c5f727ca41cdff9dab13bfbce8e0afbd9b6c014b2b1b75d7.lean/declarations/counit-t--b3dcda675d2b99cdc21e57a7.md) | 137 | `result-track:b3dcda675d2b99cdc21e57a7e4cc950fb837b0f711a96123c8614e06c7e9cd66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
