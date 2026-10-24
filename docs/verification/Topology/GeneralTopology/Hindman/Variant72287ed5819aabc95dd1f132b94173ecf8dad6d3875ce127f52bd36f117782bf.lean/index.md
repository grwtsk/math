# Verification target: GRWTSK.Topology.GeneralTopology.Hindman.Variant72287ed5819aabc95dd1f132b94173ecf8dad6d3875ce127f52bd36f117782bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5110e84395bf968b4d35e9f67de9f6b0f43532e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Hindman/Variant72287ed5819aabc95dd1f132b94173ecf8dad6d3875ce127f52bd36f117782bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant72287ed5819aabc95dd1f132b94173ecf8dad6d3875ce127f52bd36f117782bf.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant72287ed5819aabc95dd1f132b94173ecf8dad6d3875ce127f52bd36f117782bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5110e84395bf968b4d35e9f67de9f6b0f43532e`.

Source path: `GRWTSK/Topology/GeneralTopology/Hindman/Variant72287ed5819aabc95dd1f132b94173ecf8dad6d3875ce127f52bd36f117782bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Hindman/Variant72287ed5819aabc95dd1f132b94173ecf8dad6d3875ce127f52bd36f117782bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Stream.Init` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Semigroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.StoneCech` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Ultrafilter.mul](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant72287ed5819aabc95dd1f132b94173ecf8dad6d3875ce127f52bd36f117782bf.lean/declarations/ultrafilter-mul--887a78b8eb3ff271076b7a85.md) | 50 | `declaration-track:887a78b8eb3ff271076b7a85c4367610a5b7bb42ce6d276e05ed58b50ede330a` |
| 2 | `theorem` | [Ultrafilter.eventually_mul](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant72287ed5819aabc95dd1f132b94173ecf8dad6d3875ce127f52bd36f117782bf.lean/declarations/ultrafilter-eventually-mul--e0bbfa36c198f2708cf1441a.md) | 57 | `result-track:e0bbfa36c198f2708cf1441ad3b1b2dffd8a737196594b92e9584381405d3a4c` |
| 3 | `structure` | [on](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant72287ed5819aabc95dd1f132b94173ecf8dad6d3875ce127f52bd36f117782bf.lean/declarations/on--f45e67045951131cef732ade.md) | 64 | `declaration-track:f45e67045951131cef732ade319edf71bebd9a3148adb2bb868071e4eae32a29` |
| 4 | `def` | [Ultrafilter.semigroup](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant72287ed5819aabc95dd1f132b94173ecf8dad6d3875ce127f52bd36f117782bf.lean/declarations/ultrafilter-semigroup--dedc676bffeae52477ab8138.md) | 65 | `declaration-track:dedc676bffeae52477ab81381be19ca0cc5b612e75db0620c381b34cf6d6ee0a` |
| 5 | `theorem` | [Ultrafilter.continuous_mul_left](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant72287ed5819aabc95dd1f132b94173ecf8dad6d3875ce127f52bd36f117782bf.lean/declarations/ultrafilter-continuous-mul-left--d5356d87853056f885c6b094.md) | 75 | `result-track:d5356d87853056f885c6b094a46df0dccebfc120cecb886011b0a4463e864297` |
| 6 | `inductive` | [FS](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant72287ed5819aabc95dd1f132b94173ecf8dad6d3875ce127f52bd36f117782bf.lean/declarations/fs--6c7452a7c6b3294bacd5102a.md) | 84 | `declaration-track:6c7452a7c6b3294bacd5102a01bc5570eb4876cf55aae3d4c8b044734befcb9e` |
| 7 | `inductive` | [FP](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant72287ed5819aabc95dd1f132b94173ecf8dad6d3875ce127f52bd36f117782bf.lean/declarations/fp--8e51dd360a8b0dede711d98a.md) | 92 | `declaration-track:8e51dd360a8b0dede711d98ad9cb6e53775d7ed2abb305a5fa448a674138eeba` |
| 8 | `theorem` | [FP.mul](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant72287ed5819aabc95dd1f132b94173ecf8dad6d3875ce127f52bd36f117782bf.lean/declarations/fp-mul--e301b1375f77a0a9d0436d8e.md) | 102 | `result-track:e301b1375f77a0a9d0436d8ed676ab498b9eff660118cbda407d7f03b79ea0dd` |
| 9 | `theorem` | [exists_idempotent_ultrafilter_le_FP](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant72287ed5819aabc95dd1f132b94173ecf8dad6d3875ce127f52bd36f117782bf.lean/declarations/exists-idempotent-ultrafilter-le-fp--cc9951ee128f0381c1f7b3b7.md) | 119 | `result-track:cc9951ee128f0381c1f7b3b7ae7ec399eda33c3cec50dfddb03d8bb5db29f719` |
| 10 | `theorem` | [exists_FP_of_large](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant72287ed5819aabc95dd1f132b94173ecf8dad6d3875ce127f52bd36f117782bf.lean/declarations/exists-fp-of-large--82a9d5aa58eea1a014d5c967.md) | 149 | `result-track:82a9d5aa58eea1a014d5c96770186b684717150317b9a4d7547dd73e95f67a74` |
| 11 | `theorem` | [FP_partition_regular](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant72287ed5819aabc95dd1f132b94173ecf8dad6d3875ce127f52bd36f117782bf.lean/declarations/fp-partition-regular--1a461fbd82e12ad06612ece7.md) | 190 | `result-track:1a461fbd82e12ad06612ece747e97c1605e90fabe1c1bf017b15a4da177eaafe` |
| 12 | `theorem` | [exists_FP_of_finite_cover](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant72287ed5819aabc95dd1f132b94173ecf8dad6d3875ce127f52bd36f117782bf.lean/declarations/exists-fp-of-finite-cover--8d7c0b8ca3932e336ae9332b.md) | 201 | `result-track:8d7c0b8ca3932e336ae9332b5cc24906ba3b9ff548484096ec236db1143f55e2` |
| 13 | `theorem` | [FP_drop_subset_FP](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant72287ed5819aabc95dd1f132b94173ecf8dad6d3875ce127f52bd36f117782bf.lean/declarations/fp-drop-subset-fp--59442fd60b380fc46c74d90b.md) | 209 | `result-track:59442fd60b380fc46c74d90bed6811c4cee6e1e8bba4c8ffa30c9e7d9e50696a` |
| 14 | `theorem` | [FP.singleton](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant72287ed5819aabc95dd1f132b94173ecf8dad6d3875ce127f52bd36f117782bf.lean/declarations/fp-singleton--325994cde5dc86c3529f1715.md) | 217 | `result-track:325994cde5dc86c3529f1715e4b83a16f21947623d33500d157b60a6c7fb0d3e` |
| 15 | `theorem` | [FP.mul_two](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant72287ed5819aabc95dd1f132b94173ecf8dad6d3875ce127f52bd36f117782bf.lean/declarations/fp-mul-two--1bdbc31806ea6bbaf46f2898.md) | 223 | `result-track:1bdbc31806ea6bbaf46f2898d60dd49dcd1228fdccf18b935b80dda6ca20281c` |
| 16 | `theorem` | [FP.finset_prod](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant72287ed5819aabc95dd1f132b94173ecf8dad6d3875ce127f52bd36f117782bf.lean/declarations/fp-finset-prod--5958ea5e9868c7c84dd7aba7.md) | 237 | `result-track:5958ea5e9868c7c84dd7aba72f78215a52ba807bdbf402f5487d930717de6b19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
