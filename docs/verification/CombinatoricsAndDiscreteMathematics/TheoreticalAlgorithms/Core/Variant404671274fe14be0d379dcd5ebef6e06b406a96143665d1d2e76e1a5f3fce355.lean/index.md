# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Core.Variant404671274fe14be0d379dcd5ebef6e06b406a96143665d1d2e76e1a5f3fce355

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fc2cf6dbdff4e97bbf2bb039631341973bc7338",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant404671274fe14be0d379dcd5ebef6e06b406a96143665d1d2e76e1a5f3fce355.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant404671274fe14be0d379dcd5ebef6e06b406a96143665d1d2e76e1a5f3fce355.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant404671274fe14be0d379dcd5ebef6e06b406a96143665d1d2e76e1a5f3fce355.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fc2cf6dbdff4e97bbf2bb039631341973bc7338`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant404671274fe14be0d379dcd5ebef6e06b406a96143665d1d2e76e1a5f3fce355.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant404671274fe14be0d379dcd5ebef6e06b406a96143665d1d2e76e1a5f3fce355.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.AffineTopos.Site` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AffineCoefficient](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant404671274fe14be0d379dcd5ebef6e06b406a96143665d1d2e76e1a5f3fce355.lean/declarations/affinecoefficient--2384559ab7fc1af66db507ca.md) | 7 | `declaration-track:2384559ab7fc1af66db507cad394591f89eb216e50ef8f73a4c366e9fcea605c` |
| 2 | `structure` | [AffineLocalData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant404671274fe14be0d379dcd5ebef6e06b406a96143665d1d2e76e1a5f3fce355.lean/declarations/affinelocaldata--56079a83919ea708d9427ea2.md) | 11 | `declaration-track:56079a83919ea708d9427ea25a63932a68a60e1fc2d1634f2e613a7afe4fc5bc` |
| 3 | `structure` | [ReductionPayload](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant404671274fe14be0d379dcd5ebef6e06b406a96143665d1d2e76e1a5f3fce355.lean/declarations/reductionpayload--4db7a34171ca04e6d526a55b.md) | 16 | `declaration-track:4db7a34171ca04e6d526a55be6e2cb07f393b57b5327b173fd9d6870c586d037` |
| 4 | `structure` | [PascalReduction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant404671274fe14be0d379dcd5ebef6e06b406a96143665d1d2e76e1a5f3fce355.lean/declarations/pascalreduction--1b4448b58b8bcb28caec1404.md) | 22 | `declaration-track:1b4448b58b8bcb28caec1404a08e1484e9b3eced73d69d1ed9ec2826ae8a43aa` |
| 5 | `inductive` | [GeneralizedPascalTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant404671274fe14be0d379dcd5ebef6e06b406a96143665d1d2e76e1a5f3fce355.lean/declarations/generalizedpascaltree--56eecde69ae0dbdb4cdb3846.md) | 28 | `declaration-track:56eecde69ae0dbdb4cdb38465c9a50da490f7592a71d046f717ba60453c2fc9f` |
| 6 | `def` | [combineReductions](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant404671274fe14be0d379dcd5ebef6e06b406a96143665d1d2e76e1a5f3fce355.lean/declarations/combinereductions--c38cf900be93b019d73ad2f8.md) | 32 | `declaration-track:c38cf900be93b019d73ad2f8f512d3cdba02d291cbd48ef3e20639b57845a0e9` |
| 7 | `def` | [leafLocalData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant404671274fe14be0d379dcd5ebef6e06b406a96143665d1d2e76e1a5f3fce355.lean/declarations/leaflocaldata--0d6712a1ff398bd2e7fe8689.md) | 45 | `declaration-track:0d6712a1ff398bd2e7fe86890616bdf7461e6e1b8dc0d6de69fb008f0410e23a` |
| 8 | `def` | [reduce](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant404671274fe14be0d379dcd5ebef6e06b406a96143665d1d2e76e1a5f3fce355.lean/declarations/reduce--dbe6f6288791e0d66eb00176.md) | 50 | `declaration-track:dbe6f6288791e0d66eb00176875ebec35a8c716d5982c74a6d3c21f5bd448b24` |
| 9 | `theorem` | [pascalTree_reducer_wellFounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant404671274fe14be0d379dcd5ebef6e06b406a96143665d1d2e76e1a5f3fce355.lean/declarations/pascaltree-reducer-wellfounded--4a8ffd22233e87402b37bd59.md) | 60 | `result-track:4a8ffd22233e87402b37bd59741aab70ac33fa0212ad3aeb989b43ee2e839841` |
| 10 | `theorem` | [pascalTree_reducer_affine_local](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant404671274fe14be0d379dcd5ebef6e06b406a96143665d1d2e76e1a5f3fce355.lean/declarations/pascaltree-reducer-affine-local--62116463b78ac6f57c322414.md) | 65 | `result-track:62116463b78ac6f57c322414448a64004062655a8dcb9ef1c21874a19e0db33f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
