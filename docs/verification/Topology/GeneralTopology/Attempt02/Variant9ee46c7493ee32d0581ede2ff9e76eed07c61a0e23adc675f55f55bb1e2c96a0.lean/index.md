# Verification target: GRWTSK.Topology.GeneralTopology.Attempt02.Variant9ee46c7493ee32d0581ede2ff9e76eed07c61a0e23adc675f55f55bb1e2c96a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b2b1c58157e944bc661cb3db060c63c0cac82be",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Attempt02/Variant9ee46c7493ee32d0581ede2ff9e76eed07c61a0e23adc675f55f55bb1e2c96a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant9ee46c7493ee32d0581ede2ff9e76eed07c61a0e23adc675f55f55bb1e2c96a0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant9ee46c7493ee32d0581ede2ff9e76eed07c61a0e23adc675f55f55bb1e2c96a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b2b1c58157e944bc661cb3db060c63c0cac82be`.

Source path: `GRWTSK/Topology/GeneralTopology/Attempt02/Variant9ee46c7493ee32d0581ede2ff9e76eed07c61a0e23adc675f55f55bb1e2c96a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Attempt02/Variant9ee46c7493ee32d0581ede2ff9e76eed07c61a0e23adc675f55f55bb1e2c96a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ProperPowerTransport` — import line 1; external provider; requires a separately pinned dependency.
- `ClosedProperPowerPrefix` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shiftedInventory](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant9ee46c7493ee32d0581ede2ff9e76eed07c61a0e23adc675f55f55bb1e2c96a0.lean/declarations/shiftedinventory--d9888642984e273564576ffe.md) | 17 | `declaration-track:d9888642984e273564576ffef30faf6807d77d9138de5b0f3475f7edbdb125a6` |
| 2 | `theorem` | [mem_shiftedInventory_iff](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant9ee46c7493ee32d0581ede2ff9e76eed07c61a0e23adc675f55f55bb1e2c96a0.lean/declarations/mem-shiftedinventory-iff--2464e735f1acfaa2f58fdcf4.md) | 21 | `result-track:2464e735f1acfaa2f58fdcf4ecb3a8364ec8fc0e6d5a189dbfbb0dbb9cdb3530` |
| 3 | `theorem` | [shiftedInventory_onset_iff](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant9ee46c7493ee32d0581ede2ff9e76eed07c61a0e23adc675f55f55bb1e2c96a0.lean/declarations/shiftedinventory-onset-iff--35fcbd37bb2659e1a739a9c0.md) | 39 | `result-track:35fcbd37bb2659e1a739a9c025079ad8000f4e3750608e9ef4497e235c12d143` |
| 4 | `theorem` | [closedOnsetAtom_zero_outside](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant9ee46c7493ee32d0581ede2ff9e76eed07c61a0e23adc675f55f55bb1e2c96a0.lean/declarations/closedonsetatom-zero-outside--99a9d5331f4a7244e410b505.md) | 44 | `result-track:99a9d5331f4a7244e410b5051031423d468b0cdf501c6364b614b7e4fc00f618` |
| 5 | `theorem` | [closedOnsetPrefix_eq_finite_shifted](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant9ee46c7493ee32d0581ede2ff9e76eed07c61a0e23adc675f55f55bb1e2c96a0.lean/declarations/closedonsetprefix-eq-finite-shifted--37e9c25c261487e50a488e4d.md) | 50 | `result-track:37e9c25c261487e50a488e4d273cb9da925f15788159ca0486619c1ee773a2e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
