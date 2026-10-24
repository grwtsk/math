# Verification target: GRWTSK.Algebra.LinearAlgebra.Bilinear.Variant44b461fbb1dc14e029d096a5bdf44fdb04b50b8ecf47a732b4d7c1ab1d91b681

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6daa19de7e7ea6c0f25e0cfe37cceffa5e3739c",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Bilinear/Variant44b461fbb1dc14e029d096a5bdf44fdb04b50b8ecf47a732b4d7c1ab1d91b681.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44b461fbb1dc14e029d096a5bdf44fdb04b50b8ecf47a732b4d7c1ab1d91b681.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44b461fbb1dc14e029d096a5bdf44fdb04b50b8ecf47a732b4d7c1ab1d91b681.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6daa19de7e7ea6c0f25e0cfe37cceffa5e3739c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Bilinear/Variant44b461fbb1dc14e029d096a5bdf44fdb04b50b8ecf47a732b4d7c1ab1d91b681.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Bilinear/Variant44b461fbb1dc14e029d096a5bdf44fdb04b50b8ecf47a732b4d7c1ab1d91b681.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Span.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.BilinearMap` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [map₂](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44b461fbb1dc14e029d096a5bdf44fdb04b50b8ecf47a732b4d7c1ab1d91b681.lean/declarations/map--d6d672e6e34f7863a7297730.md) | 41 | `declaration-track:d6d672e6e34f7863a72977306e5a64c74b3ebda7e9b4960e2043cba627bc0c06` |
| 2 | `theorem` | [apply_mem_map₂](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44b461fbb1dc14e029d096a5bdf44fdb04b50b8ecf47a732b4d7c1ab1d91b681.lean/declarations/apply-mem-map--43bfd4dd45e1e87a2fe258c2.md) | 44 | `result-track:43bfd4dd45e1e87a2fe258c2934b0fd7deb208e6596f3ac60972521c2a3c6f3a` |
| 3 | `theorem` | [map₂_le](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44b461fbb1dc14e029d096a5bdf44fdb04b50b8ecf47a732b4d7c1ab1d91b681.lean/declarations/map-le--075658292ccb5911c0b1adf2.md) | 48 | `result-track:075658292ccb5911c0b1adf2153f82b7c8f9475a8db81d7b81d749cc7192f23a` |
| 4 | `theorem` | [map₂_span_span](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44b461fbb1dc14e029d096a5bdf44fdb04b50b8ecf47a732b4d7c1ab1d91b681.lean/declarations/map-span-span--97572f12a2cfd3b385a8d1ea.md) | 54 | `result-track:97572f12a2cfd3b385a8d1ea98339cef42890a6eeb42e1b2cb83411862943d42` |
| 5 | `theorem` | [map₂_bot_right](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44b461fbb1dc14e029d096a5bdf44fdb04b50b8ecf47a732b4d7c1ab1d91b681.lean/declarations/map-bot-right--36b9ba061bf72bd45bd70824.md) | 72 | `result-track:36b9ba061bf72bd45bd70824ac99034a84aa12643171ff88fa8efb0b9563cdaa` |
| 6 | `theorem` | [map₂_bot_left](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44b461fbb1dc14e029d096a5bdf44fdb04b50b8ecf47a732b4d7c1ab1d91b681.lean/declarations/map-bot-left--67a62741af88d5c173ba1196.md) | 79 | `result-track:67a62741af88d5c173ba1196c4fc01ff03a0861003599593187824d339f4bb56` |
| 7 | `theorem` | [map₂_le_map₂](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44b461fbb1dc14e029d096a5bdf44fdb04b50b8ecf47a732b4d7c1ab1d91b681.lean/declarations/map-le-map--71b5f0ae7c157d8927afe0c6.md) | 86 | `result-track:71b5f0ae7c157d8927afe0c69a76dec2324236b426105770a8d40d03ecc8a5bc` |
| 8 | `theorem` | [map₂_le_map₂_left](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44b461fbb1dc14e029d096a5bdf44fdb04b50b8ecf47a732b4d7c1ab1d91b681.lean/declarations/map-le-map-left--2afdeb321297a93d0a9867b7.md) | 90 | `result-track:2afdeb321297a93d0a9867b7224b2a3a2f3d173ecd6a3755e94dd7518044e728` |
| 9 | `theorem` | [map₂_le_map₂_right](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44b461fbb1dc14e029d096a5bdf44fdb04b50b8ecf47a732b4d7c1ab1d91b681.lean/declarations/map-le-map-right--38f6c02e54e5501373a9d48f.md) | 94 | `result-track:38f6c02e54e5501373a9d48f1d345b0b685612136fc110ee7d204f3af3e8204d` |
| 10 | `theorem` | [map₂_sup_right](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44b461fbb1dc14e029d096a5bdf44fdb04b50b8ecf47a732b4d7c1ab1d91b681.lean/declarations/map-sup-right--1a0736e77dd31ec67fb3a347.md) | 98 | `result-track:1a0736e77dd31ec67fb3a3470983ef5cefa11f34d767f834c594f6611f5acb56` |
| 11 | `theorem` | [map₂_sup_left](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44b461fbb1dc14e029d096a5bdf44fdb04b50b8ecf47a732b4d7c1ab1d91b681.lean/declarations/map-sup-left--3c973ec891ef9e5af9cdcf71.md) | 106 | `result-track:3c973ec891ef9e5af9cdcf71d311ae53e8fb0496c2a96782f80890ee876f631f` |
| 12 | `theorem` | [image2_subset_map₂](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44b461fbb1dc14e029d096a5bdf44fdb04b50b8ecf47a732b4d7c1ab1d91b681.lean/declarations/image2-subset-map--21fe2b053e76f9159ab9bce2.md) | 116 | `result-track:21fe2b053e76f9159ab9bce29f7c6a87dde4db31ae4daa86e9d88591e0a2dc46` |
| 13 | `theorem` | [map₂_eq_span_image2](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44b461fbb1dc14e029d096a5bdf44fdb04b50b8ecf47a732b4d7c1ab1d91b681.lean/declarations/map-eq-span-image2--7a037527e27a0e84447ebd74.md) | 121 | `result-track:7a037527e27a0e84447ebd740750f9b11e0458b104c15fb7b1f4b0b6d88a2b1d` |
| 14 | `theorem` | [map₂_flip](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44b461fbb1dc14e029d096a5bdf44fdb04b50b8ecf47a732b4d7c1ab1d91b681.lean/declarations/map-flip--e658e1ec332c316a723e5eff.md) | 125 | `result-track:e658e1ec332c316a723e5effc7ee5fa6c72fd5eb36352f3371fe1791047d4883` |
| 15 | `theorem` | [map₂_iSup_left](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44b461fbb1dc14e029d096a5bdf44fdb04b50b8ecf47a732b4d7c1ab1d91b681.lean/declarations/map-isup-left--f202e87f49cb2660fd8aab5d.md) | 130 | `result-track:f202e87f49cb2660fd8aab5d44842afaf2303cb514b6e58527ef26c145027448` |
| 16 | `theorem` | [map₂_iSup_right](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44b461fbb1dc14e029d096a5bdf44fdb04b50b8ecf47a732b4d7c1ab1d91b681.lean/declarations/map-isup-right--dfe1ecdfea281773e9760302.md) | 136 | `result-track:dfe1ecdfea281773e97603027cfee7c80eeb2047d2d9a6e6dbb33c66b3891dfe` |
| 17 | `theorem` | [map₂_span_singleton_eq_map](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44b461fbb1dc14e029d096a5bdf44fdb04b50b8ecf47a732b4d7c1ab1d91b681.lean/declarations/map-span-singleton-eq-map--cf646db75b28cd87199244cc.md) | 142 | `result-track:cf646db75b28cd87199244cc49c6bb251f94f6c989cb52cc75255c2b53fba85a` |
| 18 | `theorem` | [map₂_span_singleton_eq_map_flip](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant44b461fbb1dc14e029d096a5bdf44fdb04b50b8ecf47a732b4d7c1ab1d91b681.lean/declarations/map-span-singleton-eq-map-flip--d4420db1300b471ee03e951f.md) | 147 | `result-track:d4420db1300b471ee03e951f29f811c96e5ce8dcf4a3b8012a4a77704f47cf14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
