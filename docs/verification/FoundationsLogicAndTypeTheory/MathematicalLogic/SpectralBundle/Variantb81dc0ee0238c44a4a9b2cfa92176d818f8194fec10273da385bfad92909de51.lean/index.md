# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SpectralBundle.Variantb81dc0ee0238c44a4a9b2cfa92176d818f8194fec10273da385bfad92909de51

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8176f49d4164ef3a44fd86182dbaa9380acb1f0c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SpectralBundle/Variantb81dc0ee0238c44a4a9b2cfa92176d818f8194fec10273da385bfad92909de51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SpectralBundle/Variantb81dc0ee0238c44a4a9b2cfa92176d818f8194fec10273da385bfad92909de51.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SpectralBundle/Variantb81dc0ee0238c44a4a9b2cfa92176d818f8194fec10273da385bfad92909de51.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8176f49d4164ef3a44fd86182dbaa9380acb1f0c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SpectralBundle/Variantb81dc0ee0238c44a4a9b2cfa92176d818f8194fec10273da385bfad92909de51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/SpectralBundle/Variantb81dc0ee0238c44a4a9b2cfa92176d818f8194fec10273da385bfad92909de51.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Catalan.Tree` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Fiber.Transport` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Tensor` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FixedShapeSpectralFiber](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SpectralBundle/Variantb81dc0ee0238c44a4a9b2cfa92176d818f8194fec10273da385bfad92909de51.lean/declarations/fixedshapespectralfiber--b4789df88ca343c099be1e71.md) | 31 | `declaration-track:b4789df88ca343c099be1e71fbc63938de6f916e88989906ee58f0750a02a554` |
| 2 | `def` | [constantSpectralBundle](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SpectralBundle/Variantb81dc0ee0238c44a4a9b2cfa92176d818f8194fec10273da385bfad92909de51.lean/declarations/constantspectralbundle--14bb2b1dc2afb45251746d0f.md) | 37 | `declaration-track:14bb2b1dc2afb45251746d0ff5156fa19f7ea6fff0985c4ab723491ffd6b7ae7` |
| 3 | `def` | [constantSpectralTransport](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SpectralBundle/Variantb81dc0ee0238c44a4a9b2cfa92176d818f8194fec10273da385bfad92909de51.lean/declarations/constantspectraltransport--c109030003eeff6cb150a46b.md) | 43 | `declaration-track:c109030003eeff6cb150a46bbdd7e44eed63eaf1ea213122d088c55aa808b4eb` |
| 4 | `theorem` | [constantSpectralTransport_roundtrip](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SpectralBundle/Variantb81dc0ee0238c44a4a9b2cfa92176d818f8194fec10273da385bfad92909de51.lean/declarations/constantspectraltransport-roundtrip--80ddec4d646d68a3eca9cd01.md) | 50 | `result-track:80ddec4d646d68a3eca9cd016e982e26ea29abc5093ce3b5bb42b72eb6e3844e` |
| 5 | `structure` | [SpectralExpansionBundleContract](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SpectralBundle/Variantb81dc0ee0238c44a4a9b2cfa92176d818f8194fec10273da385bfad92909de51.lean/declarations/spectralexpansionbundlecontract--6022a3b6274689f8b7a8c9ad.md) | 61 | `declaration-track:6022a3b6274689f8b7a8c9ad7f53482c0c2a1ab8d42ea8ebbe1547beba8393cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
