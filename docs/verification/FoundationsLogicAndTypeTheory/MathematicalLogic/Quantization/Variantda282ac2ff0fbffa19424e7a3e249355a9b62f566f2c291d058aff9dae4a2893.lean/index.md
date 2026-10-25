# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Quantization.Variantda282ac2ff0fbffa19424e7a3e249355a9b62f566f2c291d058aff9dae4a2893

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9891786ef48ff7f29e5f0c40a24d315f30642845",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quantization/Variantda282ac2ff0fbffa19424e7a3e249355a9b62f566f2c291d058aff9dae4a2893.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Quantization/Variantda282ac2ff0fbffa19424e7a3e249355a9b62f566f2c291d058aff9dae4a2893.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Quantization/Variantda282ac2ff0fbffa19424e7a3e249355a9b62f566f2c291d058aff9dae4a2893.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9891786ef48ff7f29e5f0c40a24d315f30642845`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quantization/Variantda282ac2ff0fbffa19424e7a3e249355a9b62f566f2c291d058aff9dae4a2893.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Quantization/Variantda282ac2ff0fbffa19424e7a3e249355a9b62f566f2c291d058aff9dae4a2893.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Carrier.BinaryMatrix` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Tensor` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TensorQuantizer](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Quantization/Variantda282ac2ff0fbffa19424e7a3e249355a9b62f566f2c291d058aff9dae4a2893.lean/declarations/tensorquantizer--571856bcd90b76c806e8c664.md) | 22 | `declaration-track:571856bcd90b76c806e8c66401c04845933f1ac7cf635b12d60048bee0273024` |
| 2 | `def` | [quantizeChannel](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Quantization/Variantda282ac2ff0fbffa19424e7a3e249355a9b62f566f2c291d058aff9dae4a2893.lean/declarations/quantizechannel--7d75ba92a0378611678620db.md) | 28 | `declaration-track:7d75ba92a0378611678620dbc04440c288ba479f717207bd6bd8d9231d36ff56` |
| 3 | `def` | [unitThresholdQuantizer](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Quantization/Variantda282ac2ff0fbffa19424e7a3e249355a9b62f566f2c291d058aff9dae4a2893.lean/declarations/unitthresholdquantizer--b816fd8e045c68a654bcb3d5.md) | 36 | `declaration-track:b816fd8e045c68a654bcb3d55e071ddfba356773630fbf822b69d16526a883ef` |
| 4 | `theorem` | [quantization_not_declared_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Quantization/Variantda282ac2ff0fbffa19424e7a3e249355a9b62f566f2c291d058aff9dae4a2893.lean/declarations/quantization-not-declared-injective--5e8a23b54d84de9da531c37c.md) | 46 | `result-track:5e8a23b54d84de9da531c37cf414be62752e3f1522422903de2e1a75020e1453` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
