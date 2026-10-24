# Verification target: GRWTSK.Algebra.LinearAlgebra.MonoidAlgebra.Variantde8ce599f7bfe8bdfb0e2054ebf7ff9459924b759841a8eee55a76266af11aa7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b86ceec29761fe05ad3d75a9c52624730b44d309",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MonoidAlgebra/Variantde8ce599f7bfe8bdfb0e2054ebf7ff9459924b759841a8eee55a76266af11aa7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variantde8ce599f7bfe8bdfb0e2054ebf7ff9459924b759841a8eee55a76266af11aa7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variantde8ce599f7bfe8bdfb0e2054ebf7ff9459924b759841a8eee55a76266af11aa7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b86ceec29761fe05ad3d75a9c52624730b44d309`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MonoidAlgebra/Variantde8ce599f7bfe8bdfb0e2054ebf7ff9459924b759841a8eee55a76266af11aa7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MonoidAlgebra/Variantde8ce599f7bfe8bdfb0e2054ebf7ff9459924b759841a8eee55a76266af11aa7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Bialgebra.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coalgebra.MonoidAlgebra` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instBialgebra](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variantde8ce599f7bfe8bdfb0e2054ebf7ff9459924b759841a8eee55a76266af11aa7.lean/declarations/instbialgebra--410f6ad09945879617482b14.md) | 35 | `declaration-track:410f6ad09945879617482b1475eab677b57b3bbd62c81c49c12188146192e649` |
| 2 | `def` | [mapDomainBialgHom](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variantde8ce599f7bfe8bdfb0e2054ebf7ff9459924b759841a8eee55a76266af11aa7.lean/declarations/mapdomainbialghom--44c51f948036bcb7c2712ee2.md) | 55 | `declaration-track:44c51f948036bcb7c2712ee20810db3ead1d06b8d5e21e84524f43723f82f3ed` |
| 3 | `lemma` | [mapDomainBialgHom_id](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variantde8ce599f7bfe8bdfb0e2054ebf7ff9459924b759841a8eee55a76266af11aa7.lean/declarations/mapdomainbialghom-id--174e4cfe0fc5ce8f11a60cdd.md) | 58 | `result-track:174e4cfe0fc5ce8f11a60cdd74794f24306b5e337c92e81bdda70b5d0910293d` |
| 4 | `lemma` | [mapDomainBialgHom_comp](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variantde8ce599f7bfe8bdfb0e2054ebf7ff9459924b759841a8eee55a76266af11aa7.lean/declarations/mapdomainbialghom-comp--0a7283b24c287cb04c252553.md) | 61 | `result-track:0a7283b24c287cb04c25255336465e824de6e5fbd44ac27da8d5933b0b89b8a9` |
| 5 | `lemma` | [mapDomainBialgHom_mapDomainBialgHom](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variantde8ce599f7bfe8bdfb0e2054ebf7ff9459924b759841a8eee55a76266af11aa7.lean/declarations/mapdomainbialghom-mapdomainbialghom--d947d6a01a5b0c8fd6ea9f84.md) | 65 | `result-track:d947d6a01a5b0c8fd6ea9f84656ec43735ac67cbb9f24849101ea8895665bf9d` |
| 6 | `instance` | [instBialgebra](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variantde8ce599f7bfe8bdfb0e2054ebf7ff9459924b759841a8eee55a76266af11aa7.lean/declarations/instbialgebra--f86bc02342ca864f0d465394.md) | 75 | `declaration-track:f86bc02342ca864f0d465394f4b5b8fbfcf1057456b819f7ec3d76f4b596fcaf` |
| 7 | `def` | [mapDomainBialgHom](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variantde8ce599f7bfe8bdfb0e2054ebf7ff9459924b759841a8eee55a76266af11aa7.lean/declarations/mapdomainbialghom--a65cab45fe1bbe62cfcdc47e.md) | 95 | `declaration-track:a65cab45fe1bbe62cfcdc47e1796bd1acda2c626ced7072c9337e973fbf01353` |
| 8 | `lemma` | [mapDomainBialgHom_id](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variantde8ce599f7bfe8bdfb0e2054ebf7ff9459924b759841a8eee55a76266af11aa7.lean/declarations/mapdomainbialghom-id--dca530caec964d178ac2588d.md) | 101 | `result-track:dca530caec964d178ac2588dc995d3820615a70f5879ee87a900a438903da8e3` |
| 9 | `lemma` | [mapDomainBialgHom_comp](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variantde8ce599f7bfe8bdfb0e2054ebf7ff9459924b759841a8eee55a76266af11aa7.lean/declarations/mapdomainbialghom-comp--d582d9575c47b43425ebbbf0.md) | 104 | `result-track:d582d9575c47b43425ebbbf08e437bbd8dbd929f32e1d359943fdd6037aaf08b` |
| 10 | `lemma` | [mapDomainBialgHom_mapDomainBialgHom](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variantde8ce599f7bfe8bdfb0e2054ebf7ff9459924b759841a8eee55a76266af11aa7.lean/declarations/mapdomainbialghom-mapdomainbialghom--f1e486f619d5a3ce8682afd7.md) | 108 | `result-track:f1e486f619d5a3ce8682afd74e4e270680a5f0313735d806146feb53ca5c4fb0` |
| 11 | `instance` | [instBialgebra](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variantde8ce599f7bfe8bdfb0e2054ebf7ff9459924b759841a8eee55a76266af11aa7.lean/declarations/instbialgebra--1e3f4f77faa590465976bb8f.md) | 120 | `declaration-track:1e3f4f77faa590465976bb8f2c6b82f84c5afd24085697a809f87679d0bd7d7a` |
| 12 | `theorem` | [comul_T](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variantde8ce599f7bfe8bdfb0e2054ebf7ff9459924b759841a8eee55a76266af11aa7.lean/declarations/comul-t--636f29a76afc602dbe97eb73.md) | 124 | `result-track:636f29a76afc602dbe97eb73dc1528cf7488c5267031ae30e836225f99987461` |
| 13 | `theorem` | [counit_T](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variantde8ce599f7bfe8bdfb0e2054ebf7ff9459924b759841a8eee55a76266af11aa7.lean/declarations/counit-t--5def4cfe9a999a5243bf822b.md) | 129 | `result-track:5def4cfe9a999a5243bf822b01429165ac4f4c55d02a42548ee0c59cbb1272b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
