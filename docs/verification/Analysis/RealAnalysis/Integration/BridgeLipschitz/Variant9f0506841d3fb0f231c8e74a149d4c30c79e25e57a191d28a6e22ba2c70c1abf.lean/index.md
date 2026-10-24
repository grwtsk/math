# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.BridgeLipschitz.Variant9f0506841d3fb0f231c8e74a149d4c30c79e25e57a191d28a6e22ba2c70c1abf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e395408639a2c994510006eed3efb4e8843867fc",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variant9f0506841d3fb0f231c8e74a149d4c30c79e25e57a191d28a6e22ba2c70c1abf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variant9f0506841d3fb0f231c8e74a149d4c30c79e25e57a191d28a6e22ba2c70c1abf.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variant9f0506841d3fb0f231c8e74a149d4c30c79e25e57a191d28a6e22ba2c70c1abf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e395408639a2c994510006eed3efb4e8843867fc`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variant9f0506841d3fb0f231c8e74a149d4c30c79e25e57a191d28a6e22ba2c70c1abf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variant9f0506841d3fb0f231c8e74a149d4c30c79e25e57a191d28a6e22ba2c70c1abf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BridgeEnvelope` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [average_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variant9f0506841d3fb0f231c8e74a149d4c30c79e25e57a191d28a6e22ba2c70c1abf.lean/declarations/average-bounds--ad76aa1a8c57dff3a406bb84.md) | 11 | `result-track:ad76aa1a8c57dff3a406bb84ec64ba724ed7a3feeb18cf2e33efde43a68cf246` |
| 2 | `theorem` | [integralBridge_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variant9f0506841d3fb0f231c8e74a149d4c30c79e25e57a191d28a6e22ba2c70c1abf.lean/declarations/integralbridge-sub--f74a1c0d79008a533a338124.md) | 23 | `result-track:f74a1c0d79008a533a338124ea558e463d402222da0b9054d3cbc81a60291b27` |
| 3 | `theorem` | [integralBridge_increment_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variant9f0506841d3fb0f231c8e74a149d4c30c79e25e57a191d28a6e22ba2c70c1abf.lean/declarations/integralbridge-increment-le--4e2960022db2f47d7df158cd.md) | 35 | `result-track:4e2960022db2f47d7df158cdcdd6e288e4c9e210ef6c9f0b7deaabfedcd43c39` |
| 4 | `theorem` | [integralBridge_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variant9f0506841d3fb0f231c8e74a149d4c30c79e25e57a191d28a6e22ba2c70c1abf.lean/declarations/integralbridge-lipschitz--b7827ce09baf1a9c822b8f59.md) | 48 | `result-track:b7827ce09baf1a9c822b8f595f3efbcfe18611020cb40dc9f2b7b852dbff33dd` |
| 5 | `theorem` | [actual_bridge_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variant9f0506841d3fb0f231c8e74a149d4c30c79e25e57a191d28a6e22ba2c70c1abf.lean/declarations/actual-bridge-lipschitz--266b6e4b746d8a71e0c12bab.md) | 60 | `result-track:266b6e4b746d8a71e0c12bab60acaffc53e2e7e9fadc70054c568bdfc2bd3c4d` |
| 6 | `def` | [normalizedBridge](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variant9f0506841d3fb0f231c8e74a149d4c30c79e25e57a191d28a6e22ba2c70c1abf.lean/declarations/normalizedbridge--4d96b829b63f7bc111e807a8.md) | 72 | `declaration-track:4d96b829b63f7bc111e807a8ee6f9ee5b700f5e04315d44fab9d0f1f29356e95` |
| 7 | `theorem` | [normalizedBridge_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variant9f0506841d3fb0f231c8e74a149d4c30c79e25e57a191d28a6e22ba2c70c1abf.lean/declarations/normalizedbridge-lipschitz--eb4e46c87514939890257b37.md) | 74 | `result-track:eb4e46c87514939890257b37392c8d247adcd02998d31b675b86e0ba9b21981a` |
| 8 | `theorem` | [normalizedBridge_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variant9f0506841d3fb0f231c8e74a149d4c30c79e25e57a191d28a6e22ba2c70c1abf.lean/declarations/normalizedbridge-abs-le--cab9b1bff88ddf194deb96b3.md) | 93 | `result-track:cab9b1bff88ddf194deb96b3356a5310689ffd5da50f6c5e3b0670f778b672ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
