# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OrderedPrimeNormalForm.Variantab43fd8e56d501a68c72d1d26087d022bb108fd7085cba55c57bae107f95ded3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f218c58880fec5c64e6e3c20a0a4b808e4476e8b",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantab43fd8e56d501a68c72d1d26087d022bb108fd7085cba55c57bae107f95ded3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantab43fd8e56d501a68c72d1d26087d022bb108fd7085cba55c57bae107f95ded3.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantab43fd8e56d501a68c72d1d26087d022bb108fd7085cba55c57bae107f95ded3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f218c58880fec5c64e6e3c20a0a4b808e4476e8b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantab43fd8e56d501a68c72d1d26087d022bb108fd7085cba55c57bae107f95ded3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantab43fd8e56d501a68c72d1d26087d022bb108fd7085cba55c57bae107f95ded3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Tree.Irreducible` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [OrderedPrimeCore](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantab43fd8e56d501a68c72d1d26087d022bb108fd7085cba55c57bae107f95ded3.lean/declarations/orderedprimecore--fe72edde356ca29c75e662a7.md) | 15 | `declaration-track:fe72edde356ca29c75e662a7e0f8d5e313f12ca7c8ae8566600e00321de09638` |
| 2 | `def` | [code](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantab43fd8e56d501a68c72d1d26087d022bb108fd7085cba55c57bae107f95ded3.lean/declarations/code--19c6f7b2af840c27c5cb4831.md) | 21 | `declaration-track:19c6f7b2af840c27c5cb4831d50bf44ce0999d692a119a1659d308b81dc2b1d9` |
| 3 | `theorem` | [code_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantab43fd8e56d501a68c72d1d26087d022bb108fd7085cba55c57bae107f95ded3.lean/declarations/code-injective--efce8d51094a2891ffc9b779.md) | 27 | `result-track:efce8d51094a2891ffc9b779b728ba31492b6d3e34cd6a3cb352df58246695f5` |
| 4 | `structure` | [OrderedPrimeNormalForm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantab43fd8e56d501a68c72d1d26087d022bb108fd7085cba55c57bae107f95ded3.lean/declarations/orderedprimenormalform--66f83a19d52bdc6e3cafb4fd.md) | 62 | `declaration-track:66f83a19d52bdc6e3cafb4fde32a7dc765eb2a6b86c1a609252b0249a5e1fe4b` |
| 5 | `def` | [topologyPrime](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantab43fd8e56d501a68c72d1d26087d022bb108fd7085cba55c57bae107f95ded3.lean/declarations/topologyprime--882438a7def424b4e6c2c62d.md) | 67 | `declaration-track:882438a7def424b4e6c2c62d8b126e1c80d54b287af1999cb7e38403ba2c137c` |
| 6 | `theorem` | [orderedPrimeCore_code_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantab43fd8e56d501a68c72d1d26087d022bb108fd7085cba55c57bae107f95ded3.lean/declarations/orderedprimecore-code-injective--0c65c9a1f596bc556f3cf84d.md) | 73 | `result-track:0c65c9a1f596bc556f3cf84d4c36f92247e7a8eaa27c65cce0466811c4e10c33` |
| 7 | `theorem` | [orderedPrimeCore_preserves_bracketing](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantab43fd8e56d501a68c72d1d26087d022bb108fd7085cba55c57bae107f95ded3.lean/declarations/orderedprimecore-preserves-bracketing--155a79b08094c73200408f5d.md) | 80 | `result-track:155a79b08094c73200408f5dbb4ba1146bebdee2fb802e0629e0dcb4d33a12d4` |
| 8 | `theorem` | [topologyPrime_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantab43fd8e56d501a68c72d1d26087d022bb108fd7085cba55c57bae107f95ded3.lean/declarations/topologyprime-injective--5438a1a5b8e85165b4fc86ac.md) | 87 | `result-track:5438a1a5b8e85165b4fc86ace64087a6637478352856c3891f35a01183b88f51` |
| 9 | `theorem` | [same_topologyPrime_same_factorization](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantab43fd8e56d501a68c72d1d26087d022bb108fd7085cba55c57bae107f95ded3.lean/declarations/same-topologyprime-same-factorization--ff4dde75d4b00dcaaf3ed1b0.md) | 98 | `result-track:ff4dde75d4b00dcaaf3ed1b0e7f53ddf9ab23118c05299bd3a58fd71374b6804` |
| 10 | `structure` | [NormalizationRules](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantab43fd8e56d501a68c72d1d26087d022bb108fd7085cba55c57bae107f95ded3.lean/declarations/normalizationrules--50c15c3dae481264d94ac725.md) | 108 | `declaration-track:50c15c3dae481264d94ac725ea686959f53f101f054e31c8cd213f0417e414c3` |
| 11 | `def` | [normalizeCore](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantab43fd8e56d501a68c72d1d26087d022bb108fd7085cba55c57bae107f95ded3.lean/declarations/normalizecore--c2377fa5698c66aee36cd650.md) | 117 | `declaration-track:c2377fa5698c66aee36cd6508fe2b8ad7298329a19a2406f2662e057578b3296` |
| 12 | `def` | [normalize](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantab43fd8e56d501a68c72d1d26087d022bb108fd7085cba55c57bae107f95ded3.lean/declarations/normalize--bc90202f9d6967cebf285a84.md) | 127 | `declaration-track:bc90202f9d6967cebf285a841e2cb4d16468d136185e4f73f3dd0e039a63b027` |
| 13 | `theorem` | [orderedPrimeNormalForm_unique_factorization](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantab43fd8e56d501a68c72d1d26087d022bb108fd7085cba55c57bae107f95ded3.lean/declarations/orderedprimenormalform-unique-factorization--169ab9e8dc540bb1d0940ba4.md) | 139 | `result-track:169ab9e8dc540bb1d0940ba4f3d88836304ab34268fbe7065d3174792afb811a` |
| 14 | `theorem` | [same_normalized_code_same_factorization](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantab43fd8e56d501a68c72d1d26087d022bb108fd7085cba55c57bae107f95ded3.lean/declarations/same-normalized-code-same-factorization--474c30770d8981065e06ef05.md) | 150 | `result-track:474c30770d8981065e06ef05d575fbd531c88cca26a5673133a950c1e7201f16` |
| 15 | `theorem` | [normalized_factorization_deterministic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantab43fd8e56d501a68c72d1d26087d022bb108fd7085cba55c57bae107f95ded3.lean/declarations/normalized-factorization-deterministic--c59e1fb81ad904623a8a2d62.md) | 157 | `result-track:c59e1fb81ad904623a8a2d62327784c30e7fd8185a39a37e4aa13532305ccf96` |
| 16 | `theorem` | [normalized_topology_distinct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantab43fd8e56d501a68c72d1d26087d022bb108fd7085cba55c57bae107f95ded3.lean/declarations/normalized-topology-distinct--8a9337abe223df10172a8822.md) | 168 | `result-track:8a9337abe223df10172a88224e605bc17e9fdb41b28dd4de4e76d3ff486d00fa` |
| 17 | `theorem` | [topologyPrime_distinguishes_composites](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantab43fd8e56d501a68c72d1d26087d022bb108fd7085cba55c57bae107f95ded3.lean/declarations/topologyprime-distinguishes-composites--9d0ccd57c7e911e35ef10f63.md) | 180 | `result-track:9d0ccd57c7e911e35ef10f634075aa5254af2069b6a9204cc417b256879d211d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
