# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMirrorPairChannels

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20cf837eba5b85f03830dc5ff354e1bdefdc5b36",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20cf837eba5b85f03830dc5ff354e1bdefdc5b36`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.SymmetricPair`](../../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPair.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripHeightFiberSuccessor`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberSuccessor.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticPrimitive`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [center](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean/declarations/center--509b1367e72f7f6698de3c1e.md) | 30 | `declaration-track:509b1367e72f7f6698de3c1e3e31c6457dded125626cfd976921d129ac60feeb` |
| 2 | `def` | [offset](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean/declarations/offset--c6e51025662b74ae11375f0d.md) | 31 | `declaration-track:c6e51025662b74ae11375f0d9388d9177ef661698da0ff817e73b6f3fac3ef69` |
| 3 | `lemma` | [center_plus_offset](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean/declarations/center-plus-offset--c9118fc3403161e75f31d7a7.md) | 33 | `result-track:c9118fc3403161e75f31d7a72a7512199e7bc07c6aa458f2abbc697b2f5d66a2` |
| 4 | `lemma` | [center_minus_offset](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean/declarations/center-minus-offset--f5cc1864f4e36fc2116912bf.md) | 36 | `result-track:f5cc1864f4e36fc2116912bf8794f93e76c69ce06b0f570d6f91a714b5ae0557` |
| 5 | `lemma` | [center_height](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean/declarations/center-height--0a3e37dfaa6c39c4128b4d36.md) | 39 | `result-track:0a3e37dfaa6c39c4128b4d36bb5795508e2bcc9d17b1041ce6673aa2183be780` |
| 6 | `lemma` | [offset_ne_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean/declarations/offset-ne-zero--63f56082baff7d397b6b26e5.md) | 43 | `result-track:63f56082baff7d397b6b26e5189cc17e3f24d29ec8edaa9f972dae8c22f78eef` |
| 7 | `lemma` | [offset_norm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean/declarations/offset-norm--8ef34b26a73aefd7be84c7dd.md) | 46 | `result-track:8ef34b26a73aefd7be84c7dd8be0f2a135335a7128f082191dbf00e953892da3` |
| 8 | `theorem` | [target_channels_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean/declarations/target-channels-zero--0de2682fb2d0d053254d52a9.md) | 51 | `result-track:0de2682fb2d0d053254d52a9e4985712e6a071bb514f0c3d5977416d703fd1b4` |
| 9 | `theorem` | [arithmetic_residual_channels](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean/declarations/arithmetic-residual-channels--4edb9e1e157b6ca44deb976a.md) | 61 | `result-track:4edb9e1e157b6ca44deb976ae72d38f44a348ca76f65a2d719da95344dc03fb7` |
| 10 | `theorem` | [rhOn_of_pair_enclosures](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean/declarations/rhon-of-pair-enclosures--fd51f747d87532e374e8a20d.md) | 97 | `result-track:fd51f747d87532e374e8a20d708fcbdbf7db58f485c56fa05ea2b4ef9d048794` |
| 11 | `theorem` | [targetCapacity_of_pair_enclosures](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean/declarations/targetcapacity-of-pair-enclosures--06ef3d90a1d51366428cf767.md) | 111 | `result-track:06ef3d90a1d51366428cf767845e0635382b41ae30ca0d4a175ce12fb0f1bf73` |
| 12 | `theorem` | [window_successor_of_pair_enclosures](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean/declarations/window-successor-of-pair-enclosures--9e67999ffaa0c34cd1a2ea74.md) | 120 | `result-track:9e67999ffaa0c34cd1a2ea7422c65bf3538872bf4bda0580f57df91b79e888ae` |
| 13 | `theorem` | [fifteen_odd_channel_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean/declarations/fifteen-odd-channel-bound--5d6c651fcdca6e17ad27d810.md) | 131 | `result-track:5d6c651fcdca6e17ad27d81079af9dabde2d8b30d386b06bf217ac71befa980f` |
| 14 | `theorem` | [fifteen_odd_channel_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean/declarations/fifteen-odd-channel-lower--989c74793732812aafd7ed44.md) | 159 | `result-track:989c74793732812aafd7ed4496032173b9ec7ae2c6bcf732201713cccdbca9c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
