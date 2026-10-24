# Verification target: GRWTSK.Algebra.LinearAlgebra.Basis.Variant7bef0f1e7d9657a2f088cfa335e9fc83edb1b49c8813e3d3e57dd99d2a87822b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "981f712de92769421cae73a884e4a5bced71a923",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant7bef0f1e7d9657a2f088cfa335e9fc83edb1b49c8813e3d3e57dd99d2a87822b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant7bef0f1e7d9657a2f088cfa335e9fc83edb1b49c8813e3d3e57dd99d2a87822b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant7bef0f1e7d9657a2f088cfa335e9fc83edb1b49c8813e3d3e57dd99d2a87822b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `981f712de92769421cae73a884e4a5bced71a923`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basis/Variant7bef0f1e7d9657a2f088cfa335e9fc83edb1b49c8813e3d3e57dd99d2a87822b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basis/Variant7bef0f1e7d9657a2f088cfa335e9fc83edb1b49c8813e3d3e57dd99d2a87822b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorAlgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeAlgebra` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [equivFreeAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant7bef0f1e7d9657a2f088cfa335e9fc83edb1b49c8813e3d3e57dd99d2a87822b.lean/declarations/equivfreealgebra--2f264c21127bf44a682a7019.md) | 43 | `declaration-track:2f264c21127bf44a682a7019c350c6153dea0835a96f4b63d53d365be762fed7` |
| 2 | `lemma` | [equivFreeAlgebra_ι_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant7bef0f1e7d9657a2f088cfa335e9fc83edb1b49c8813e3d3e57dd99d2a87822b.lean/declarations/equivfreealgebra-apply--01bd3cfe251d087ca4adb032.md) | 52 | `result-track:01bd3cfe251d087ca4adb0320d66a6a1c4c5286444f4e42d7c8175096a67f428` |
| 3 | `lemma` | [equivFreeAlgebra_symm_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant7bef0f1e7d9657a2f088cfa335e9fc83edb1b49c8813e3d3e57dd99d2a87822b.lean/declarations/equivfreealgebra-symm--be2fc39afd082d2954bbed75.md) | 57 | `result-track:be2fc39afd082d2954bbed750aee926de807b16429c1f9d9cde16def764a3403` |
| 4 | `def` | [_root_.GRWTSK.Algebra.LinearAlgebra.EquivFreeAlgebra.Variant6aec7152aff1ecd0d06c437eea31290ff2d8a7a8a29f91106a4e5647910ff0b4.Basis.tensorAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant7bef0f1e7d9657a2f088cfa335e9fc83edb1b49c8813e3d3e57dd99d2a87822b.lean/declarations/root-grwtsk-algebra-linearalgebra-equivfreealgebra-variant6aec7152aff1ec--dc7e62d5f3050b087dee5efe.md) | 63 | `declaration-track:dc7e62d5f3050b087dee5efe4d5cf8fe7b300874bd770e276b3fd52747370eea` |
| 5 | `instance` | [instModuleFree](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant7bef0f1e7d9657a2f088cfa335e9fc83edb1b49c8813e3d3e57dd99d2a87822b.lean/declarations/instmodulefree--b89ab9c3d1d6233b7aa62321.md) | 68 | `declaration-track:b89ab9c3d1d6233b7aa62321336058dfc83ff4f5397496db3d454fea3228d42c` |
| 6 | `instance` | [instNoZeroDivisors](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant7bef0f1e7d9657a2f088cfa335e9fc83edb1b49c8813e3d3e57dd99d2a87822b.lean/declarations/instnozerodivisors--4fca1e8083ac67f2128efa57.md) | 74 | `declaration-track:4fca1e8083ac67f2128efa572cb91b97de2aba9e3c8fdd8398a0b3605447a618` |
| 7 | `instance` | [instIsDomain](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant7bef0f1e7d9657a2f088cfa335e9fc83edb1b49c8813e3d3e57dd99d2a87822b.lean/declarations/instisdomain--7048d54f8d1eb61c663951ac.md) | 85 | `declaration-track:7048d54f8d1eb61c663951acf4ab474aba734c08b16e8f1578b2f41ff179d62b` |
| 8 | `lemma` | [rank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant7bef0f1e7d9657a2f088cfa335e9fc83edb1b49c8813e3d3e57dd99d2a87822b.lean/declarations/rank-eq--530d57e53416be211ede599b.md) | 91 | `result-track:530d57e53416be211ede599b0d8b748f855c2a0955207506bcbfc15f67e6eb48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
