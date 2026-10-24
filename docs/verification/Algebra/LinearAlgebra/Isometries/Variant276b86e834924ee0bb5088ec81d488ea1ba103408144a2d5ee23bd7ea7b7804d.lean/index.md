# Verification target: GRWTSK.Algebra.LinearAlgebra.Isometries.Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56e303222edcd1f7dabf0e779c8fb878b6c1a5f8",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56e303222edcd1f7dabf0e779c8fb878b6c1a5f8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.QuadraticForm.TensorProduct` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.IsometryEquiv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tmul_comp_tensorMap](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean/declarations/tmul-comp-tensormap--3770fd0cef897b5378813708.md) | 47 | `result-track:3770fd0cef897b537881370866b38d56fa7681f738ce181583c1998f32b13130` |
| 2 | `theorem` | [tmul_tensorMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean/declarations/tmul-tensormap-apply--546ddd9e3e4c36e0060901e6.md) | 59 | `result-track:546ddd9e3e4c36e0060901e653b415241f580d5424daad5170ca2bc08ad88f4b` |
| 3 | `def` | [_root_.GRWTSK.Algebra.LinearAlgebra.TmulCompTensorMap.Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.QuadraticMap.Isometry.tmul](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean/declarations/root-grwtsk-algebra-linearalgebra-tmulcomptensormap-variante2a6ffb962aab--2f9099b4f5e0039c0493fb98.md) | 69 | `declaration-track:2f9099b4f5e0039c0493fb98c5bff598a465368008401d72588d39fc8c7dc0e8` |
| 4 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.TmulCompTensorMap.Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.QuadraticMap.Isometry.tmul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean/declarations/root-grwtsk-algebra-linearalgebra-tmulcomptensormap-variante2a6ffb962aab--36861be145ee49c822afc8c3.md) | 77 | `result-track:36861be145ee49c822afc8c3056b393e4ca0dc7a476c4d2bff22347348455df8` |
| 5 | `theorem` | [tmul_comp_tensorComm](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean/declarations/tmul-comp-tensorcomm--179e61c913cc0a0205adb6c2.md) | 89 | `result-track:179e61c913cc0a0205adb6c24404843b8dd3bf63bfcfa316409a0fc5e6b97e77` |
| 6 | `theorem` | [tmul_tensorComm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean/declarations/tmul-tensorcomm-apply--c9a338508e34d57731b79eeb.md) | 98 | `result-track:c9a338508e34d57731b79eebc7d97ad5cb484b0d42c80535599cd6e5902fc871` |
| 7 | `def` | [tensorComm](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean/declarations/tensorcomm--19b5e6d4a6a228d5e19f3e8e.md) | 105 | `declaration-track:19b5e6d4a6a228d5e19f3e8e17a89596b4dd1243713eab47101176ebf260600a` |
| 8 | `lemma` | [tensorComm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean/declarations/tensorcomm-apply--00c3886b7419e9dad6d1ed64.md) | 110 | `result-track:00c3886b7419e9dad6d1ed64e0d77f1b5dcb0c28d06650e566fe98a6073f29f9` |
| 9 | `lemma` | [tensorComm_symm](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean/declarations/tensorcomm-symm--f8642b0793a29b7d1796e366.md) | 115 | `result-track:f8642b0793a29b7d1796e36621f13bcd7fa0671bf827cc6160ff10e869b1a892` |
| 10 | `theorem` | [tmul_comp_tensorAssoc](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean/declarations/tmul-comp-tensorassoc--f58922062faea8258457e1f4.md) | 124 | `result-track:f58922062faea8258457e1f432bdfa209ff1706c87daf611801918badd30da48` |
| 11 | `theorem` | [tmul_tensorAssoc_apply](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean/declarations/tmul-tensorassoc-apply--8aa64f7cc11abc8bba2ba353.md) | 134 | `result-track:8aa64f7cc11abc8bba2ba35369d0c9599103a59537f829a08c9a9e43d628764e` |
| 12 | `def` | [tensorAssoc](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean/declarations/tensorassoc--03be902f217e61f0393e50b9.md) | 142 | `declaration-track:03be902f217e61f0393e50b9c670862f6d8291247a570e35a896e93d2ab47dd0` |
| 13 | `lemma` | [tensorAssoc_apply](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean/declarations/tensorassoc-apply--d43796e1c939d6416e101cc5.md) | 147 | `result-track:d43796e1c939d6416e101cc588fb68f6956f2bf910115abd12fa2bd8e2e676b6` |
| 14 | `lemma` | [tensorAssoc_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean/declarations/tensorassoc-symm-apply--f524475fc809d10b54486c56.md) | 153 | `result-track:f524475fc809d10b54486c56f953c531db0a373ac9ff5b744a0112377ab08a07` |
| 15 | `theorem` | [comp_tensorRId_eq](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean/declarations/comp-tensorrid-eq--7c0d4e9eadac90e822ae055b.md) | 163 | `result-track:7c0d4e9eadac90e822ae055b90f95497a2695bfeca6124fe58e6522ca0eb7451` |
| 16 | `theorem` | [tmul_tensorRId_apply](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean/declarations/tmul-tensorrid-apply--63652133d392ca8df64ba051.md) | 172 | `result-track:63652133d392ca8df64ba0515a65d2f3285eb3dd8da125c4fb7d212f4bc59552` |
| 17 | `def` | [tensorRId](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean/declarations/tensorrid--377508a968021636316d8c68.md) | 179 | `declaration-track:377508a968021636316d8c68ac193cd4ace3fe9178212fd75a74b832097d8267` |
| 18 | `lemma` | [tensorRId_apply](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean/declarations/tensorrid-apply--7c428ae836d84298e5e14eb6.md) | 184 | `result-track:7c428ae836d84298e5e14eb604eced7e0d55a2cdcf0104187f34ec3b3222c001` |
| 19 | `lemma` | [tensorRId_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean/declarations/tensorrid-symm-apply--08019d4c9f596eb4a6a5c55a.md) | 188 | `result-track:08019d4c9f596eb4a6a5c55a1b23af32eb4ac624ed9a9d2ac1a82bb39660c9ec` |
| 20 | `theorem` | [comp_tensorLId_eq](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean/declarations/comp-tensorlid-eq--58a5c9a0ff38e40f5bc4e070.md) | 196 | `result-track:58a5c9a0ff38e40f5bc4e0703ddf71672a0d21dd0a8c8ef5a7a61a8152bb78c6` |
| 21 | `theorem` | [tmul_tensorLId_apply](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean/declarations/tmul-tensorlid-apply--af7a8c6420345af5869e2ed7.md) | 205 | `result-track:af7a8c6420345af5869e2ed7c9fa30159674bc78f4f1ffab596ca80e1e231b6c` |
| 22 | `def` | [tensorLId](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean/declarations/tensorlid--d3e6528ab18eb1b8d541eb87.md) | 212 | `declaration-track:d3e6528ab18eb1b8d541eb878d3a2c2e410f224002644ffb385db0ee9f0cef60` |
| 23 | `lemma` | [tensorLId_apply](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean/declarations/tensorlid-apply--8957ecb878539891b2f9a850.md) | 217 | `result-track:8957ecb878539891b2f9a85020a261eb74c87dc9503b3d552614b2862869c6c0` |
| 24 | `lemma` | [tensorLId_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean/declarations/tensorlid-symm-apply--83af63f0b8e583e0f8333f7f.md) | 221 | `result-track:83af63f0b8e583e0f8333f7fc9eb6a7c3eee917a9270e52a284e94189f6e67d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
