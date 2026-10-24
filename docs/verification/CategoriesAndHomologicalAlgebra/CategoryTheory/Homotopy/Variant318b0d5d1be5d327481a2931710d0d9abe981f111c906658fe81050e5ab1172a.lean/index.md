# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Homotopy.Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d74451e7c922e39cb27530fcbaf3aa969016793",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d74451e7c922e39cb27530fcbaf3aa969016793`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean.json)

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
| 1 | `def` | [rightHomotopy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean/declarations/righthomotopy--371b03506df1176297e73bf3.md) | 46 | `declaration-track:371b03506df1176297e73bf3a8e4ec60ab32d11996a1aa846bed2b591b8513a4` |
| 2 | `lemma` | [rightHomotopyRel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean/declarations/righthomotopyrel--98f25ff9681eec939b1a4740.md) | 62 | `result-track:98f25ff9681eec939b1a4740b52dfe347be366b0ce4521353f5899093f6c2eb2` |
| 3 | `def` | [leftHomotopy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean/declarations/lefthomotopy--4e9aa7a18fa7afae8eaeaa26.md) | 74 | `declaration-track:4e9aa7a18fa7afae8eaeaa269efaa0bac645170015a999123bc2b1016e88ec9a` |
| 4 | `lemma` | [leftHomotopyRel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean/declarations/lefthomotopyrel--90b4c6b4bcbc722e1513dc60.md) | 90 | `result-track:90b4c6b4bcbc722e1513dc60d456960947407a618f1789b22027f6328687087f` |
| 5 | `lemma` | [leftHomotopyRel_iff_rightHomotopyRel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean/declarations/lefthomotopyrel-iff-righthomotopyrel--47df89c42c678fe2e9846436.md) | 100 | `result-track:47df89c42c678fe2e98464367a1f0a493428df4dff42a1ea0476c7355cc55fa7` |
| 6 | `def` | [LeftHomotopyRel.leftHomotopy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean/declarations/lefthomotopyrel-lefthomotopy--8c5e0baf3799c6dae5563e15.md) | 107 | `declaration-track:8c5e0baf3799c6dae5563e15ca3ecddfaeca4278748d2ab40ead77e0f21440dd` |
| 7 | `def` | [RightHomotopyRel.rightHomotopy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean/declarations/righthomotopyrel-righthomotopy--12c158e841248c5e2291f8bd.md) | 115 | `declaration-track:12c158e841248c5e2291f8bdba5825860a7f8f230e5d5e65b4dca807d25d6a9d` |
| 8 | `lemma` | [postcomp_bijective_of_fibration_of_weakEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean/declarations/postcomp-bijective-of-fibration-of-weakequivalence--c408612e113fb29df7d6a2cf.md) | 126 | `result-track:c408612e113fb29df7d6a2cf015e396af92b1eba1860eed320460fca8512d5a2` |
| 9 | `lemma` | [postcomp_bijective_of_weakEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean/declarations/postcomp-bijective-of-weakequivalence--40c9bea6e9149c95d43c2dad.md) | 150 | `result-track:40c9bea6e9149c95d43c2dade05bcc3540aea124d4946fd6074bb3367c044b7b` |
| 10 | `lemma` | [precomp_bijective_of_cofibration_of_weakEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean/declarations/precomp-bijective-of-cofibration-of-weakequivalence--4401927f04ee7394a5db9474.md) | 172 | `result-track:4401927f04ee7394a5db9474cfdb3c00f305d0f2944fd7c1a5aa8dbb61119368` |
| 11 | `lemma` | [precomp_bijective_of_weakEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean/declarations/precomp-bijective-of-weakequivalence--cf17780a1210823640f62c89.md) | 196 | `result-track:cf17780a1210823640f62c893356ecfc2347b183acf67415ce29939cbb3ec6b0` |
| 12 | `lemma` | [whitehead](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean/declarations/whitehead--731c8e418a6056fc1a149f9e.md) | 212 | `result-track:731c8e418a6056fc1a149f9e1972c399150c8ac1ac6766586d639ce5dce1c807` |
| 13 | `lemma` | [LeftHomotopyClass.whitehead](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean/declarations/lefthomotopyclass-whitehead--d46d0f600a237ed914cd7a70.md) | 227 | `result-track:d46d0f600a237ed914cd7a702e3ad1a8f1cf1f60b08a106e932413907f14a131` |
| 14 | `def` | [leftHomotopyClassEquivRightHomotopyClass](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean/declarations/lefthomotopyclassequivrighthomotopyclass--95e193298012282ff7683493.md) | 239 | `declaration-track:95e193298012282ff76834935024e8d7df3498cc0278949503dcb792bb02ebd8` |
| 15 | `lemma` | [leftHomotopyClassEquivRightHomotopyClass_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean/declarations/lefthomotopyclassequivrighthomotopyclass-mk--772113877c0ba0fc93f99a66.md) | 251 | `result-track:772113877c0ba0fc93f99a66fe92c852133b2a65db3e0de34cb50cf8da97cf5c` |
| 16 | `lemma` | [leftHomotopyClassEquivRightHomotopyClass_symm_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean/declarations/lefthomotopyclassequivrighthomotopyclass-symm-mk--73eeca4e21c7a04669147e0b.md) | 255 | `result-track:73eeca4e21c7a04669147e0be33ebbd41276708839bfaccdf5978f1d1ad718ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
