# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.WireNormalization.Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b6c7664d791efd334c0e449b0e34082c43369a7",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b6c7664d791efd334c0e449b0e34082c43369a7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.TagReduction` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [WireTerm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean/declarations/wireterm--41b3f5e33721325684d5aca5.md) | 27 | `declaration-track:41b3f5e33721325684d5aca5111e848ea8d81176d867ef31d0ccea3447de5967` |
| 2 | `def` | [WireTerm.decode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean/declarations/wireterm-decode--1e3e9261af15e6f80c239495.md) | 34 | `declaration-track:1e3e9261af15e6f80c239495b901778dab3f388109d9bf2f85eeb0717c5fbedb` |
| 3 | `def` | [WireTerm.encode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean/declarations/wireterm-encode--59b684990d88a240ae5ea158.md) | 40 | `declaration-track:59b684990d88a240ae5ea158b1a7028b90e6ad4f98d9a52613327618db1cb666` |
| 4 | `theorem` | [decode_encode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean/declarations/decode-encode--39671782fc2c8359480ac88c.md) | 45 | `result-track:39671782fc2c8359480ac88c47d34c31394d060e8c281ac767b18a4ec96c26f0` |
| 5 | `theorem` | [encode_decode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean/declarations/encode-decode--539e5e7cf2f3cb04bd7a675a.md) | 51 | `result-track:539e5e7cf2f3cb04bd7a675a7bb3fa1a93cfa3aa1f39bb47841e5908b5ed5ebd` |
| 6 | `def` | [WireTerm.nodeCost](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean/declarations/wireterm-nodecost--d545e68bf768a46b7c4519ce.md) | 58 | `declaration-track:d545e68bf768a46b7c4519cef01a8a5908ff133473ab5d6c4a494ca0477a6fb8` |
| 7 | `theorem` | [nodeCost_eq_size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean/declarations/nodecost-eq-size--509f60f3fab18bd3da93d38f.md) | 63 | `result-track:509f60f3fab18bd3da93d38fa70cc515376247eee3004ae2b99354a87cc2a6b9` |
| 8 | `structure` | [Packet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean/declarations/packet--35aa21267a40bb2b5bbd1ca9.md) | 70 | `declaration-track:35aa21267a40bb2b5bbd1ca9844b77b88c53b5d0aca8b6aa7add4fbd4d3cf392` |
| 9 | `def` | [PacketValid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean/declarations/packetvalid--fc888c1e9ade489fc12f223b.md) | 80 | `declaration-track:fc888c1e9ade489fc12f223b27f3343983d65192aef20acb9b8f71394aaa7026` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean/declarations/instance--b15571886a0fae65133d8f48.md) | 86 | `declaration-track:b15571886a0fae65133d8f48264bd5ab99d87554e8107898dc80e3f4fd5f287d` |
| 11 | `def` | [checkPacket](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean/declarations/checkpacket--b1ad5e8aa19d2e1ee875489c.md) | 90 | `declaration-track:b1ad5e8aa19d2e1ee875489cf8a6e6e8fd8591de93b7b4d832b0feefdab544aa` |
| 12 | `theorem` | [checkPacket_correct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean/declarations/checkpacket-correct--497b978d9f4f97807960177e.md) | 92 | `result-track:497b978d9f4f97807960177ee4c50c66fa40736467c9c7242e31dc2e827be614` |
| 13 | `structure` | [CheckedPacket](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean/declarations/checkedpacket--2e65c5dcf8d3e9c028e35779.md) | 96 | `declaration-track:2e65c5dcf8d3e9c028e35779299be565e9283154e8da1d3d4bbd0799fb91945e` |
| 14 | `def` | [admitPacket](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean/declarations/admitpacket--9630681f454fa656dcf30a4d.md) | 102 | `declaration-track:9630681f454fa656dcf30a4d3a198af08726cce92e6f6ea4b8e1614ed1a8ec9c` |
| 15 | `theorem` | [admitPacket_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean/declarations/admitpacket-sound--66e6062b67e0c55049631657.md) | 106 | `result-track:66e6062b67e0c55049631657e57a453bafefdf33596cf769df4bcb52affc4f49` |
| 16 | `def` | [normalizePacket](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean/declarations/normalizepacket--5abb84587e211fedc838fa96.md) | 114 | `declaration-track:5abb84587e211fedc838fa962fc4b0f0cb75557b0d636b3f74ed4e07af886a5f` |
| 17 | `theorem` | [normalizePacket_valid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean/declarations/normalizepacket-valid--acad5dda8f87f02cd64703b3.md) | 118 | `result-track:acad5dda8f87f02cd64703b3571d8d0372ab9d9e8c6911671817b6d1c9500be7` |
| 18 | `theorem` | [normalizePacket_semantics](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean/declarations/normalizepacket-semantics--4ce0a0a2972a71a4bf5d3954.md) | 132 | `result-track:4ce0a0a2972a71a4bf5d3954ca83975c50d0bef09bfa5b12bb6a6a3377fbf14a` |
| 19 | `theorem` | [normalizePacket_readout](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean/declarations/normalizepacket-readout--d72b18f0b17838820a44e38a.md) | 143 | `result-track:d72b18f0b17838820a44e38ace004f7dec388391baf0cb4bb0814383e134eb58` |
| 20 | `def` | [fixture](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean/declarations/fixture--355a44b67e7f52f772f521b3.md) | 151 | `declaration-track:355a44b67e7f52f772f521b3e373e10343e8ff40d4ec22079c04aece0b7dc366` |
| 21 | `theorem` | [fixture_admitted](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean/declarations/fixture-admitted--7b2f4a761f48dc8ee05cf98b.md) | 155 | `result-track:7b2f4a761f48dc8ee05cf98be446fa86d90af84678caf2b9ff7469414a61ef7d` |
| 22 | `def` | [checkedFixture](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean/declarations/checkedfixture--cfea0ef09688807b0c5a7f33.md) | 158 | `declaration-track:cfea0ef09688807b0c5a7f33387d10e730499dab030dd2b4e5250dccaf9c84a0` |
| 23 | `theorem` | [fixture_normalized](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean/declarations/fixture-normalized--bb26275c28d2cb9294b0cf3e.md) | 160 | `result-track:bb26275c28d2cb9294b0cf3e973f9be4c77c88cc3d1e048712d23092e436a3cd` |
| 24 | `theorem` | [wrong_context_rejected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean/declarations/wrong-context-rejected--79d61457ffe3404e78b0fcc6.md) | 165 | `result-track:79d61457ffe3404e78b0fcc61b00fc24170c52bd1aa3cf9a1ec88fa5261cdfc1` |
| 25 | `theorem` | [undeclared_constructor_rejected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean/declarations/undeclared-constructor-rejected--f2430518c9d0757a8aea1936.md) | 167 | `result-track:f2430518c9d0757a8aea19369b0e7ae164dfc6bfb878df19fb2d68ecf34460f0` |
| 26 | `theorem` | [changed_source_rejected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variant978873cdb89c82674d99490330d48bf2af4b214335d2cc38bed12aa135c8197c.lean/declarations/changed-source-rejected--0512fe5986ac6cfb47dcdbe7.md) | 170 | `result-track:0512fe5986ac6cfb47dcdbe7c2ddb747541ed6561d9f8ec4939ca260474762c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
