# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DirectionalChain.Variant5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "982bb0aa77a72a5721dcc3f271d8cf8f1d24efea",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `982bb0aa77a72a5721dcc3f271d8cf8f1d24efea`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.ListTools` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DirectionSystem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276.lean/declarations/directionsystem--bb419c6005a3e0f158586a48.md) | 35 | `declaration-track:bb419c6005a3e0f158586a48d9315879f1719a1baea96458262934ba98a7d385` |
| 2 | `structure` | [Chain0](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276.lean/declarations/chain0--3086a9c8fced153e6468643f.md) | 53 | `declaration-track:3086a9c8fced153e6468643f4de72921cbfac636c846ba545b387d5e86449c96` |
| 3 | `structure` | [Chain1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276.lean/declarations/chain1--141d081e15c57ee2f38e96bc.md) | 57 | `declaration-track:141d081e15c57ee2f38e96bca49d9d581aa87dc9dfaafdd967a2a9a8f812a938` |
| 4 | `def` | [Chain0.coeffAt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276.lean/declarations/chain0-coeffat--d8e2d805d92dcd4f6e11d946.md) | 61 | `declaration-track:d8e2d805d92dcd4f6e11d946ebda702a37d5f1376f1eb7706eb0a0c59e7c5318` |
| 5 | `def` | [edgeBoundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276.lean/declarations/edgeboundary--691c533561e3425328ece40b.md) | 70 | `declaration-track:691c533561e3425328ece40b8a25d1f335b8ea3e40e67f38ce825fb1906f11f1` |
| 6 | `def` | [Chain1.boundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276.lean/declarations/chain1-boundary--2edad1061a50958056f24fbb.md) | 75 | `declaration-track:2edad1061a50958056f24fbb69e0e268d0782f77e4b81e4b1a991b0a13132070` |
| 7 | `def` | [Chain1.Closed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276.lean/declarations/chain1-closed--1988c000e6c9383c403bed00.md) | 85 | `declaration-track:1988c000e6c9383c403bed001575b14dd67592a83daaa55a0e9741b05f098d06` |
| 8 | `structure` | [BoundaryCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276.lean/declarations/boundarycertificate--bce318117a0f1c81c9e07bd8.md) | 92 | `declaration-track:bce318117a0f1c81c9e07bd8e03344dc31efb9b2deebdf7708b1495687362530` |
| 9 | `structure` | [NonBoundaryCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276.lean/declarations/nonboundarycertificate--7ee0b563b9ce93bf8bf33799.md) | 101 | `declaration-track:7ee0b563b9ce93bf8bf33799e137b37ff32c56a90c9b947f70d1f547aa99c400` |
| 10 | `structure` | [OppositeDirectionPair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276.lean/declarations/oppositedirectionpair--4e9a221b1b2763efc7486ae9.md) | 108 | `declaration-track:4e9a221b1b2763efc7486ae95a1226d16638780195341463380536df183b46cd` |
| 11 | `def` | [OppositeDirectionPair.edgeCircle](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276.lean/declarations/oppositedirectionpair-edgecircle--da6104bc6eaf9a55e706e575.md) | 117 | `declaration-track:da6104bc6eaf9a55e706e575622dd3fcb99b1b1f2d3ea6b21722d0d6bc018ca2` |
| 12 | `structure` | [EdgeCircleClosureCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276.lean/declarations/edgecircleclosurecertificate--7f9a81ba1141709e123a9fd6.md) | 122 | `declaration-track:7f9a81ba1141709e123a9fd6a1806d9f29d59a098a8a0516c194bdc4029c22aa` |
| 13 | `inductive` | [BinaryVertex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276.lean/declarations/binaryvertex--592490ed9932ac7bf5794d1f.md) | 131 | `declaration-track:592490ed9932ac7bf5794d1f6a4e3f87016f4447a1cd7b0bc7315a0be5530c64` |
| 14 | `inductive` | [BinaryEdge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276.lean/declarations/binaryedge--4b8602a037e3655a81b74080.md) | 137 | `declaration-track:4b8602a037e3655a81b7408059a2520b87e7ee4185b0151c21ba36b9f8e8a715` |
| 15 | `def` | [binaryDirectionSystem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276.lean/declarations/binarydirectionsystem--d0b782f6d1f5ebca966624bb.md) | 145 | `declaration-track:d0b782f6d1f5ebca966624bb8ebd2d878df900434d5a48a76e185080cd0b7b7a` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276.lean/declarations/instance--e36a95e6f5371cbd68248fa2.md) | 183 | `declaration-track:e36a95e6f5371cbd68248fa2fdccae19a37d7bf5fc76602bff889f31984636e5` |
| 17 | `def` | [binaryOppositePair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276.lean/declarations/binaryoppositepair--0ecaf543f831353e7ddf2bd7.md) | 187 | `declaration-track:0ecaf543f831353e7ddf2bd75b968daec67fd8cbb484b4c07ed47a476464ea7a` |
| 18 | `theorem` | [binary_edgeCircle_closed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276.lean/declarations/binary-edgecircle-closed--1d0696fbf215b8c07d30795c.md) | 199 | `result-track:1d0696fbf215b8c07d30795c95aadeb1e2e8f7715a4809b77a02230498eb6d7a` |
| 19 | `def` | [binaryEdgeCircleClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276.lean/declarations/binaryedgecircleclosure--556203082351cd3ec82ed350.md) | 205 | `declaration-track:556203082351cd3ec82ed350db582bf631db6daf85f9da0533d67c7577b0d81e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
