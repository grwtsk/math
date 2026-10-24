# Verification target: GRWTSK.Algebra.Subsemiring.Variant5f2d965b5df3e99a92aa9e3c5586506bb71acc8c831a945b75fafede614b4a97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ec73b22210ccfa517e7ba79f391ba49a64c5cb5",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Subsemiring/Variant5f2d965b5df3e99a92aa9e3c5586506bb71acc8c831a945b75fafede614b4a97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Subsemiring/Variant5f2d965b5df3e99a92aa9e3c5586506bb71acc8c831a945b75fafede614b4a97.lean/index.md) · [Full source](../../../../mathematics/Algebra/Subsemiring/Variant5f2d965b5df3e99a92aa9e3c5586506bb71acc8c831a945b75fafede614b4a97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ec73b22210ccfa517e7ba79f391ba49a64c5cb5`.

Source path: `GRWTSK/Algebra/Subsemiring/Variant5f2d965b5df3e99a92aa9e3c5586506bb71acc8c831a945b75fafede614b4a97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Subsemiring/Variant5f2d965b5df3e99a92aa9e3c5586506bb71acc8c831a945b75fafede614b4a97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [DirectSum.SetLike.IsHomogeneous.mem_iff](../../../../mathematics/Algebra/Subsemiring/Variant5f2d965b5df3e99a92aa9e3c5586506bb71acc8c831a945b75fafede614b4a97.lean/declarations/directsum-setlike-ishomogeneous-mem-iff--534ade0814bae230f81978cb.md) | 41 | `result-track:534ade0814bae230f81978cb6f7675283563cf16944436d6409ea24fe26b8425` |
| 2 | `structure` | [HomogeneousSubsemiring](../../../../mathematics/Algebra/Subsemiring/Variant5f2d965b5df3e99a92aa9e3c5586506bb71acc8c831a945b75fafede614b4a97.lean/declarations/homogeneoussubsemiring--bfba3eb49be143000ff9a8ef.md) | 46 | `declaration-track:bfba3eb49be143000ff9a8ef65567acbe1083b6f943381bf2d0425607c627195` |
| 3 | `theorem` | [toSubsemiring_injective](../../../../mathematics/Algebra/Subsemiring/Variant5f2d965b5df3e99a92aa9e3c5586506bb71acc8c831a945b75fafede614b4a97.lean/declarations/tosubsemiring-injective--b57923d97af7fc9d08735c6f.md) | 53 | `result-track:b57923d97af7fc9d08735c6fa9ff9df43ed24f0b6a49a470dfbfdb7760ac02f2` |
| 4 | `instance` | [setLike](../../../../mathematics/Algebra/Subsemiring/Variant5f2d965b5df3e99a92aa9e3c5586506bb71acc8c831a945b75fafede614b4a97.lean/declarations/setlike--6d6039b0c80af126b3c90397.md) | 57 | `declaration-track:6d6039b0c80af126b3c903971069481ff2ba12c714bafd81da362e734e8fc93a` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Subsemiring/Variant5f2d965b5df3e99a92aa9e3c5586506bb71acc8c831a945b75fafede614b4a97.lean/declarations/instance--40da6b20bcb15782018643e9.md) | 61 | `declaration-track:40da6b20bcb15782018643e97169435f1eae8d678b365fb622a3653c50224bfa` |
| 6 | `theorem` | [isHomogeneous](../../../../mathematics/Algebra/Subsemiring/Variant5f2d965b5df3e99a92aa9e3c5586506bb71acc8c831a945b75fafede614b4a97.lean/declarations/ishomogeneous--cd9a224f4899e55f61d0c90d.md) | 63 | `result-track:cd9a224f4899e55f61d0c90da4569f6c01ed4288089fb6f0abeff47b244b51e3` |
| 7 | `instance` | [subsemiringClass](../../../../mathematics/Algebra/Subsemiring/Variant5f2d965b5df3e99a92aa9e3c5586506bb71acc8c831a945b75fafede614b4a97.lean/declarations/subsemiringclass--0fa80d11872e6969f6ee83d6.md) | 66 | `declaration-track:0fa80d11872e6969f6ee83d6f5c21db83ffc0094e1a06e9123f373a21d7f8f37` |
| 8 | `theorem` | [ext](../../../../mathematics/Algebra/Subsemiring/Variant5f2d965b5df3e99a92aa9e3c5586506bb71acc8c831a945b75fafede614b4a97.lean/declarations/ext--35f214a5dec31b7f55928b8a.md) | 73 | `result-track:35f214a5dec31b7f55928b8ae1cf71a130398bad6fe38a3851a18e37d472a7a9` |
| 9 | `theorem` | [ext'](../../../../mathematics/Algebra/Subsemiring/Variant5f2d965b5df3e99a92aa9e3c5586506bb71acc8c831a945b75fafede614b4a97.lean/declarations/ext--854c4fd709e65f7d0185880e.md) | 77 | `result-track:854c4fd709e65f7d0185880e9edff07e28a40628c23db7356cd52c76a1257575` |
| 10 | `theorem` | [mem_iff](../../../../mathematics/Algebra/Subsemiring/Variant5f2d965b5df3e99a92aa9e3c5586506bb71acc8c831a945b75fafede614b4a97.lean/declarations/mem-iff--cb332c6b62c9e74247d55754.md) | 82 | `result-track:cb332c6b62c9e74247d5575429f8fe8740e0696aee00e1bd0da1db57aae74738` |
| 11 | `theorem` | [IsHomogeneous.subsemiringClosure](../../../../mathematics/Algebra/Subsemiring/Variant5f2d965b5df3e99a92aa9e3c5586506bb71acc8c831a945b75fafede614b4a97.lean/declarations/ishomogeneous-subsemiringclosure--d58db913ff1471529e3ecdee.md) | 88 | `result-track:d58db913ff1471529e3ecdeea7ab38247867f25763ba9baa69951c6311bcf0a8` |
| 12 | `theorem` | [IsHomogeneous.subsemiringClosure_of_isHomogeneousElem](../../../../mathematics/Algebra/Subsemiring/Variant5f2d965b5df3e99a92aa9e3c5586506bb71acc8c831a945b75fafede614b4a97.lean/declarations/ishomogeneous-subsemiringclosure-of-ishomogeneouselem--bfea53434472338d1968f339.md) | 107 | `result-track:bfea53434472338d1968f3393beac3106fe709ef3ffcfbd38ff5bf24cf38e31e` |
| 13 | `def` | [Subsemiring.homogeneousCore](../../../../mathematics/Algebra/Subsemiring/Variant5f2d965b5df3e99a92aa9e3c5586506bb71acc8c831a945b75fafede614b4a97.lean/declarations/subsemiring-homogeneouscore--15227e05051b474276646db8.md) | 123 | `declaration-track:15227e05051b474276646db81c96db108d96786552aa4a908d4484761e672a20` |
| 14 | `theorem` | [Subsemiring.homogeneousCore_mono](../../../../mathematics/Algebra/Subsemiring/Variant5f2d965b5df3e99a92aa9e3c5586506bb71acc8c831a945b75fafede614b4a97.lean/declarations/subsemiring-homogeneouscore-mono--bbb0fc0dab37188fafe50c90.md) | 128 | `result-track:bbb0fc0dab37188fafe50c9031684c664178f3ea2a727786c0730cc0aede47b0` |
| 15 | `theorem` | [Subsemiring.toSubsemiring_homogeneousCore_le](../../../../mathematics/Algebra/Subsemiring/Variant5f2d965b5df3e99a92aa9e3c5586506bb71acc8c831a945b75fafede614b4a97.lean/declarations/subsemiring-tosubsemiring-homogeneouscore-le--30040df276adcc090e519d73.md) | 131 | `result-track:30040df276adcc090e519d73a8665d0868fc28eb757596e0a5bfb2afb2b30aee` |
| 16 | `theorem` | [Subsemiring.isHomogeneous_iff_forall_subset](../../../../mathematics/Algebra/Subsemiring/Variant5f2d965b5df3e99a92aa9e3c5586506bb71acc8c831a945b75fafede614b4a97.lean/declarations/subsemiring-ishomogeneous-iff-forall-subset--037b4fff695e67ebf6dcd3d2.md) | 138 | `result-track:037b4fff695e67ebf6dcd3d25820a84e15c30f523feb7507ca8129cf94cb1ec5` |
| 17 | `theorem` | [Subsemiring.isHomogeneous_iff_subset_iInter](../../../../mathematics/Algebra/Subsemiring/Variant5f2d965b5df3e99a92aa9e3c5586506bb71acc8c831a945b75fafede614b4a97.lean/declarations/subsemiring-ishomogeneous-iff-subset-iinter--6e1092b7c9ab78f2c9983dda.md) | 142 | `result-track:6e1092b7c9ab78f2c9983ddad4d29c54f84d8157fbeffa455ee8e718d4889001` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
