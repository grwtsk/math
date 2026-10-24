# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sigma.Variant2ec2cae79ad6e96cf529e603dc28d1b58f0d52ccdd8f3fd99e96c9b56a180ebe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8efbaf57627bf15fa0ecf9ba830d569cfe990eeb",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant2ec2cae79ad6e96cf529e603dc28d1b58f0d52ccdd8f3fd99e96c9b56a180ebe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant2ec2cae79ad6e96cf529e603dc28d1b58f0d52ccdd8f3fd99e96c9b56a180ebe.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant2ec2cae79ad6e96cf529e603dc28d1b58f0d52ccdd8f3fd99e96c9b56a180ebe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8efbaf57627bf15fa0ecf9ba830d569cfe990eeb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant2ec2cae79ad6e96cf529e603dc28d1b58f0d52ccdd8f3fd99e96c9b56a180ebe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant2ec2cae79ad6e96cf529e603dc28d1b58f0d52ccdd8f3fd99e96c9b56a180ebe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PFunctor.Multivariate.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.QPF.Multivariate.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Sigma](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant2ec2cae79ad6e96cf529e603dc28d1b58f0d52ccdd8f3fd99e96c9b56a180ebe.lean/declarations/sigma--f123f848ef516d003ef52d32.md) | 28 | `declaration-track:f123f848ef516d003ef52d32ee994836b17a4ea4e257183ebdfc6c01d4d67e02` |
| 2 | `def` | [Pi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant2ec2cae79ad6e96cf529e603dc28d1b58f0d52ccdd8f3fd99e96c9b56a180ebe.lean/declarations/pi--6db5784c138909e2b3cd1709.md) | 34 | `declaration-track:6db5784c138909e2b3cd1709a8ae4c87217f7dd8cec5691cad15f1110255eab7` |
| 3 | `instance` | [Sigma.inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant2ec2cae79ad6e96cf529e603dc28d1b58f0d52ccdd8f3fd99e96c9b56a180ebe.lean/declarations/sigma-inhabited--027ee6db7b71e5d032ad2f71.md) | 38 | `declaration-track:027ee6db7b71e5d032ad2f71edbd23d641225da70001383ca5bb8b019a236f17` |
| 4 | `instance` | [Pi.inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant2ec2cae79ad6e96cf529e603dc28d1b58f0d52ccdd8f3fd99e96c9b56a180ebe.lean/declarations/pi-inhabited--704cd212c6b105d50526ed97.md) | 42 | `declaration-track:704cd212c6b105d50526ed9722e3eec558abaf93e87dd99105ee90fe32325c57` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant2ec2cae79ad6e96cf529e603dc28d1b58f0d52ccdd8f3fd99e96c9b56a180ebe.lean/declarations/instance--aca908e0a39cac36a2bab584.md) | 50 | `declaration-track:aca908e0a39cac36a2bab584bc10c2fe7b2d4104b1ac1cd551f85ad800a5cbac` |
| 6 | `def` | [P](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant2ec2cae79ad6e96cf529e603dc28d1b58f0d52ccdd8f3fd99e96c9b56a180ebe.lean/declarations/p--ca141cf381c54a90666409b1.md) | 55 | `declaration-track:ca141cf381c54a90666409b1a5b5a91315ab9c4a13447b5bb4ddb612c5961b8f` |
| 7 | `def` | [abs](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant2ec2cae79ad6e96cf529e603dc28d1b58f0d52ccdd8f3fd99e96c9b56a180ebe.lean/declarations/abs--73877dd0bc61f7bbcef5f26b.md) | 61 | `declaration-track:73877dd0bc61f7bbcef5f26b247e25b46465bbe4460337a8c947bf36783b6eb4` |
| 8 | `def` | [repr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant2ec2cae79ad6e96cf529e603dc28d1b58f0d52ccdd8f3fd99e96c9b56a180ebe.lean/declarations/repr--29157d5814abfd08cdc49e08.md) | 66 | `declaration-track:29157d5814abfd08cdc49e08a4ff316a3fbe8dc856dd5c2969931fcb77286b55` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant2ec2cae79ad6e96cf529e603dc28d1b58f0d52ccdd8f3fd99e96c9b56a180ebe.lean/declarations/instance--ea48f38232eae982e945d23c.md) | 72 | `declaration-track:ea48f38232eae982e945d23c2758829db7859d1535b755bb4fdf0aa1ed2303b7` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant2ec2cae79ad6e96cf529e603dc28d1b58f0d52ccdd8f3fd99e96c9b56a180ebe.lean/declarations/instance--b60f4e2c0d958e720ad67c8e.md) | 84 | `declaration-track:b60f4e2c0d958e720ad67c8ea77bb5f0c121938d0f8b447085cad5e547d21a3f` |
| 11 | `def` | [P](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant2ec2cae79ad6e96cf529e603dc28d1b58f0d52ccdd8f3fd99e96c9b56a180ebe.lean/declarations/p--d1723d11d59240e119620e8b.md) | 89 | `declaration-track:d1723d11d59240e119620e8b656a52e9c7881f9389bff53d2c129499532efcd4` |
| 12 | `def` | [abs](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant2ec2cae79ad6e96cf529e603dc28d1b58f0d52ccdd8f3fd99e96c9b56a180ebe.lean/declarations/abs--0947048fe40d80fd1cf94bae.md) | 95 | `declaration-track:0947048fe40d80fd1cf94bae8222d19a997155a0c03a858a2f65d16cd543f085` |
| 13 | `def` | [repr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant2ec2cae79ad6e96cf529e603dc28d1b58f0d52ccdd8f3fd99e96c9b56a180ebe.lean/declarations/repr--9b4cc0f501641fcc62bf54fc.md) | 100 | `declaration-track:9b4cc0f501641fcc62bf54fc333396220c8ce86e0c8237f9f099a2a05a43fb9c` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant2ec2cae79ad6e96cf529e603dc28d1b58f0d52ccdd8f3fd99e96c9b56a180ebe.lean/declarations/instance--cc09af51303a22e43a594950.md) | 104 | `declaration-track:cc09af51303a22e43a5949509df2102e94839cca035980c84c057e365953ad4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
