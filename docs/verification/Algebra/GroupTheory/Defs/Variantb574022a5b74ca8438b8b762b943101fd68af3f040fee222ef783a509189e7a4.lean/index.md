# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "738c107f82e5c55ce06ce6b76c3b17d26e9f81ea",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `738c107f82e5c55ce06ce6b76c3b17d26e9f81ea`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsHeckeTriple](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean/declarations/ishecketriple--9ac6a0ed0fd1713253351ece.md) | 75 | `declaration-track:9ac6a0ed0fd1713253351ece9555440ff2307ebda85b6695a4ac19ab023cf568` |
| 2 | `theorem` | [of_diagonal](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean/declarations/of-diagonal--482fb3f97db296c57eb99926.md) | 91 | `result-track:482fb3f97db296c57eb99926e9be1700d70d5e7d6cacbec5298474db0d8dbaab` |
| 3 | `theorem` | [mem_of_mem_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean/declarations/mem-of-mem-left--21679f4f1b6a0142afea678c.md) | 96 | `result-track:21679f4f1b6a0142afea678cc3dbe516000a9f754c747684ec0119c14e67abcd` |
| 4 | `theorem` | [mem_of_mem_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean/declarations/mem-of-mem-right--f0697afca04e41367d53f613.md) | 100 | `result-track:f0697afca04e41367d53f613559debad171fb9472b8cfe7d0d8f66e74f6554d5` |
| 5 | `theorem` | [le_commensurator_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean/declarations/le-commensurator-left--2f750cc54f1cfffd75a3aa6a.md) | 104 | `result-track:2f750cc54f1cfffd75a3aa6aa991bb45795f91babf284342471096aa14862a7e` |
| 6 | `theorem` | [mem_commensurator_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean/declarations/mem-commensurator-right--034ded8fe4b4186634c03f3c.md) | 110 | `result-track:034ded8fe4b4186634c03f3c4870c200fe67f74f8df3ffa52ee903f86ae0e619` |
| 7 | `theorem` | [mem_commensurator_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean/declarations/mem-commensurator-left--fa094091dc3f998040ea3305.md) | 115 | `result-track:fa094091dc3f998040ea3305a86c250f03a38392903760d763c484c6a0497707` |
| 8 | `theorem` | [commensurable_conjAct_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean/declarations/commensurable-conjact-right--347e7fd1e4fdd4c3b33e8b4c.md) | 121 | `result-track:347e7fd1e4fdd4c3b33e8b4c3cfc02de0482237a435b437f785297a41153ce23` |
| 9 | `theorem` | [trans](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean/declarations/trans--30409772dd763c9979ab6702.md) | 128 | `result-track:30409772dd763c9979ab6702df0c3bdc2b6cf07d1485ee8d6407c3d96f0cbcab` |
| 10 | `theorem` | [diag_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean/declarations/diag-left--deb8ffae6cc8af9e824d1027.md) | 136 | `result-track:deb8ffae6cc8af9e824d1027238136223d74fe537e2fb44ab2c66a95f9d62d0d` |
| 11 | `theorem` | [diag_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean/declarations/diag-right--dba4aedf76d891630ca6acb3.md) | 140 | `result-track:dba4aedf76d891630ca6acb3374f7f799ac00f2c5593ce7017bcd1e712a8a50b` |
| 12 | `abbrev` | [HeckeCoset.setoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean/declarations/heckecoset-setoid--42a12d04ba97ee883666c8cd.md) | 152 | `declaration-track:42a12d04ba97ee883666c8cd93b4d05d3e8a97dc655ee5033a4d1b9d74de109b` |
| 13 | `def` | [HeckeCoset](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean/declarations/heckecoset--685b19230f63f849e05cda17.md) | 157 | `declaration-track:685b19230f63f849e05cda1745c50d94b3d32fdac08b3396ef459a72360eda8a` |
| 14 | `def` | [mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean/declarations/mk--aa0aa902c702624d66c80013.md) | 164 | `declaration-track:aa0aa902c702624d66c8001336d809a3d729180c7d3581351de37d2e6fb76314` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean/declarations/instance--f4841991fd6cb637e83474c6.md) | 168 | `declaration-track:f4841991fd6cb637e83474c6c2cab962fed9d346be27557e6e28b98c13725632` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean/declarations/instance--f62afac716161af4cb70d18f.md) | 172 | `declaration-track:f62afac716161af4cb70d18feb2cc541aaf37ddd1caca0add42e17b52f3e4930` |
| 17 | `lemma` | [one_def](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean/declarations/one-def--deb2c4f508cce9fd01526c43.md) | 174 | `result-track:deb2c4f508cce9fd01526c435100d56fa38ab80380171aee276385e09361f57d` |
| 18 | `def` | [HeckeCosetModule](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean/declarations/heckecosetmodule--585be054bb222cb694d807a9.md) | 183 | `declaration-track:585be054bb222cb694d807a9dc4106ed8f8519f9805fb76799e6b14457329547` |
| 19 | `abbrev` | [HeckeRing](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean/declarations/heckering--c49dc782dbd34199eeb68a91.md) | 189 | `declaration-track:c49dc782dbd34199eeb68a91af430cb08bed1b56e4c7b31fefacc71a0f0b9071` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean/declarations/instance--32fff0f5a1e31095bcebf18c.md) | 202 | `declaration-track:32fff0f5a1e31095bcebf18ceacba7122cff6373161cb5612f542ca9ca8197c0` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean/declarations/instance--257c0c5e8c1c1649229474f7.md) | 205 | `declaration-track:257c0c5e8c1c1649229474f70b4feaf4dcdb0d56edd0b4432d3b24c0c8389bfb` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean/declarations/instance--ae0062dac812951626e013db.md) | 208 | `declaration-track:ae0062dac812951626e013db633c84a1e2c7b9f06a3266c6973ff38dbbae1c5f` |
| 23 | `def` | [of](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean/declarations/of--967990f4d7f654778f9cdf8f.md) | 214 | `declaration-track:967990f4d7f654778f9cdf8fa07785d571c67609e42e6b4b3550022eeef8a17c` |
| 24 | `lemma` | [of_apply](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean/declarations/of-apply--a618cadc2d31258128a1f217.md) | 219 | `result-track:a618cadc2d31258128a1f217121f1fa19ae0351472b5b873400de10c154903f6` |
| 25 | `lemma` | [ext](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean/declarations/ext--b4f0a658acc6dbe3faa40cdb.md) | 224 | `result-track:b4f0a658acc6dbe3faa40cdb3ce8bbfc0a07dfdcae526fe56ae4c2f50906659a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
