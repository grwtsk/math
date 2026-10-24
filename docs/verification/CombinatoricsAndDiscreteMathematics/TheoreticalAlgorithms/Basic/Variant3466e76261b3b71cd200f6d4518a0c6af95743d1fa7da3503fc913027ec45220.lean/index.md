# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant3466e76261b3b71cd200f6d4518a0c6af95743d1fa7da3503fc913027ec45220

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d51c673d831eb10290fc7f422db3ef4a32c2a630",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3466e76261b3b71cd200f6d4518a0c6af95743d1fa7da3503fc913027ec45220.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3466e76261b3b71cd200f6d4518a0c6af95743d1fa7da3503fc913027ec45220.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3466e76261b3b71cd200f6d4518a0c6af95743d1fa7da3503fc913027ec45220.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d51c673d831eb10290fc7f422db3ef4a32c2a630`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3466e76261b3b71cd200f6d4518a0c6af95743d1fa7da3503fc913027ec45220.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3466e76261b3b71cd200f6d4518a0c6af95743d1fa7da3503fc913027ec45220.lean.json)

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
| 1 | `structure` | [Std.Slice.Internal.ListSliceData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3466e76261b3b71cd200f6d4518a0c6af95743d1fa7da3503fc913027ec45220.lean/declarations/std-slice-internal-listslicedata--8cdc88bd2ac5fb9092098bc1.md) | 24 | `declaration-track:8cdc88bd2ac5fb9092098bc151046e467cf6f23910d476d78a7c85fdfcf7b2d6` |
| 2 | `abbrev` | [ListSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3466e76261b3b71cd200f6d4518a0c6af95743d1fa7da3503fc913027ec45220.lean/declarations/listslice--98f5c01e62f3637f28b17bea.md) | 38 | `declaration-track:98f5c01e62f3637f28b17bea537f727bbd283572a744376a8540ab902d3b2794` |
| 3 | `def` | [List.toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3466e76261b3b71cd200f6d4518a0c6af95743d1fa7da3503fc913027ec45220.lean/declarations/list-toslice--15c8b2d90243d0dc4307e8cd.md) | 50 | `declaration-track:15c8b2d90243d0dc4307e8cd5190855ed88474cd1f65f7f9f2bb257474f5a0bc` |
| 4 | `def` | [List.toUnboundedSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3466e76261b3b71cd200f6d4518a0c6af95743d1fa7da3503fc913027ec45220.lean/declarations/list-tounboundedslice--0603d3f664abd88824a2e895.md) | 63 | `declaration-track:0603d3f664abd88824a2e89587830092f2ca15b8a660711036e4e111b5544d9e` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3466e76261b3b71cd200f6d4518a0c6af95743d1fa7da3503fc913027ec45220.lean/declarations/instance--f8a08ebf98330f5cd8eaad72.md) | 66 | `declaration-track:f8a08ebf98330f5cd8eaad727e34f46327e8850d256cef61ae90c9ec3b93e73e` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3466e76261b3b71cd200f6d4518a0c6af95743d1fa7da3503fc913027ec45220.lean/declarations/instance--5abdb6cf405cab23abc791c2.md) | 70 | `declaration-track:5abdb6cf405cab23abc791c228d910dd980882e3509b30066784e64b0495f7ae` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3466e76261b3b71cd200f6d4518a0c6af95743d1fa7da3503fc913027ec45220.lean/declarations/instance--3c9b33b62b9db5dd123a54b1.md) | 74 | `declaration-track:3c9b33b62b9db5dd123a54b15082f3da188cf7477977a0f745362bb96864f8b4` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3466e76261b3b71cd200f6d4518a0c6af95743d1fa7da3503fc913027ec45220.lean/declarations/instance--5f2880d37267fc31e5829750.md) | 78 | `declaration-track:5f2880d37267fc31e58297509a715e312363c6d133cd15d8bcf985f8d87ea7fe` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3466e76261b3b71cd200f6d4518a0c6af95743d1fa7da3503fc913027ec45220.lean/declarations/instance--47f23214a626033bd56467b8.md) | 82 | `declaration-track:47f23214a626033bd56467b80d84e9e495e99bf5c3577c67d624e6a4b3cc65bf` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3466e76261b3b71cd200f6d4518a0c6af95743d1fa7da3503fc913027ec45220.lean/declarations/instance--dd6afc95237e4265f04e9be9.md) | 86 | `declaration-track:dd6afc95237e4265f04e9be93a66ab320a4d59cefe862bc89e9bfe24b8f740b6` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3466e76261b3b71cd200f6d4518a0c6af95743d1fa7da3503fc913027ec45220.lean/declarations/instance--94c71abff6276c48571535d3.md) | 90 | `declaration-track:94c71abff6276c48571535d388a333ec141a5f011ebdbc56d875a07a6c3e6649` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3466e76261b3b71cd200f6d4518a0c6af95743d1fa7da3503fc913027ec45220.lean/declarations/instance--39cefaccac288b4328f18f91.md) | 94 | `declaration-track:39cefaccac288b4328f18f910932221747a899370c99fa74d8190597df9c56dc` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3466e76261b3b71cd200f6d4518a0c6af95743d1fa7da3503fc913027ec45220.lean/declarations/instance--39fc357bd22dfea8e97477e3.md) | 98 | `declaration-track:39fc357bd22dfea8e97477e32105dee602fbdbcf509354435386932d8891209b` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3466e76261b3b71cd200f6d4518a0c6af95743d1fa7da3503fc913027ec45220.lean/declarations/instance--37119b8e894a3eed93b8face.md) | 102 | `declaration-track:37119b8e894a3eed93b8facee32b827f712e72c23511ded5aee483eaa5f0e249` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3466e76261b3b71cd200f6d4518a0c6af95743d1fa7da3503fc913027ec45220.lean/declarations/instance--10ed6077683041905ae3eecd.md) | 109 | `declaration-track:10ed6077683041905ae3eecd308738cfc418a7138ea0a37c4d69dcb38b84d494` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3466e76261b3b71cd200f6d4518a0c6af95743d1fa7da3503fc913027ec45220.lean/declarations/instance--68b5a828771fc05c4ebab878.md) | 116 | `declaration-track:68b5a828771fc05c4ebab8789bdaaa5d9beaafa311f78db2e0168d27765202b1` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3466e76261b3b71cd200f6d4518a0c6af95743d1fa7da3503fc913027ec45220.lean/declarations/instance--703b4930ebb46f96b09a13c1.md) | 122 | `declaration-track:703b4930ebb46f96b09a13c12c10a468307ee8b3494a5475f0d34d5b90e91124` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3466e76261b3b71cd200f6d4518a0c6af95743d1fa7da3503fc913027ec45220.lean/declarations/instance--944cb2c9f35561d3ff01d2ea.md) | 129 | `declaration-track:944cb2c9f35561d3ff01d2eaac4d43b67c912250b6597fdcc64a0cf8bc49c009` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3466e76261b3b71cd200f6d4518a0c6af95743d1fa7da3503fc913027ec45220.lean/declarations/instance--38148e04e80d4938adf98632.md) | 136 | `declaration-track:38148e04e80d4938adf9863213ee5c23c4ce68e8ab5fdb7ecd1cdb5af1cb2dd4` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3466e76261b3b71cd200f6d4518a0c6af95743d1fa7da3503fc913027ec45220.lean/declarations/instance--c94a6f069e62e7a61f38b585.md) | 142 | `declaration-track:c94a6f069e62e7a61f38b5851e06e4952e75ad2d51be5a2a25346876fdb0c30f` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3466e76261b3b71cd200f6d4518a0c6af95743d1fa7da3503fc913027ec45220.lean/declarations/instance--177b6eb57d5c6e2104a56639.md) | 149 | `declaration-track:177b6eb57d5c6e2104a566394eca4d0faaef9f49dd2f03c614d096f09394ee9c` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3466e76261b3b71cd200f6d4518a0c6af95743d1fa7da3503fc913027ec45220.lean/declarations/instance--28dd659d72299ee8af94d93f.md) | 156 | `declaration-track:28dd659d72299ee8af94d93ff6942d2928ca3f057e231304ddcdeba062433569` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
