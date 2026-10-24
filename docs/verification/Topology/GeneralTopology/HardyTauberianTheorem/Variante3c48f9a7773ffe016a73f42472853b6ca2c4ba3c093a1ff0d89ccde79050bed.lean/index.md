# Verification target: GRWTSK.Topology.GeneralTopology.HardyTauberianTheorem.Variante3c48f9a7773ffe016a73f42472853b6ca2c4ba3c093a1ff0d89ccde79050bed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92450e6d270ed57bc84c7a370ba6a7d8660fd15f",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/HardyTauberianTheorem/Variante3c48f9a7773ffe016a73f42472853b6ca2c4ba3c093a1ff0d89ccde79050bed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/HardyTauberianTheorem/Variante3c48f9a7773ffe016a73f42472853b6ca2c4ba3c093a1ff0d89ccde79050bed.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/HardyTauberianTheorem/Variante3c48f9a7773ffe016a73f42472853b6ca2c4ba3c093a1ff0d89ccde79050bed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92450e6d270ed57bc84c7a370ba6a7d8660fd15f`.

Source path: `GRWTSK/Topology/GeneralTopology/HardyTauberianTheorem/Variante3c48f9a7773ffe016a73f42472853b6ca2c4ba3c093a1ff0d89ccde79050bed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/HardyTauberianTheorem/Variante3c48f9a7773ffe016a73f42472853b6ca2c4ba3c093a1ff0d89ccde79050bed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 29; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hardy_s](../../../../../mathematics/Topology/GeneralTopology/HardyTauberianTheorem/Variante3c48f9a7773ffe016a73f42472853b6ca2c4ba3c093a1ff0d89ccde79050bed.lean/declarations/hardy-s--bdc4c2872759712541aecd54.md) | 55 | `declaration-track:bdc4c2872759712541aecd54156a6392846769b54ed5c5e5e03dc33d55dbf28a` |
| 2 | `def` | [hardy_sigma](../../../../../mathematics/Topology/GeneralTopology/HardyTauberianTheorem/Variante3c48f9a7773ffe016a73f42472853b6ca2c4ba3c093a1ff0d89ccde79050bed.lean/declarations/hardy-sigma--4564ff623031751b7213a586.md) | 60 | `declaration-track:4564ff623031751b7213a586b37a229a86d6a90153cf2d9169d4f150b9e59d9f` |
| 3 | `def` | [hardy_sigma_delayed](../../../../../mathematics/Topology/GeneralTopology/HardyTauberianTheorem/Variante3c48f9a7773ffe016a73f42472853b6ca2c4ba3c093a1ff0d89ccde79050bed.lean/declarations/hardy-sigma-delayed--4f406d132a2c9fc07144d54b.md) | 65 | `declaration-track:4f406d132a2c9fc07144d54bf397bf4b314ba0959fdb07ed75640464585e5661` |
| 4 | `theorem` | [hardy_sigma_delayed_eq](../../../../../mathematics/Topology/GeneralTopology/HardyTauberianTheorem/Variante3c48f9a7773ffe016a73f42472853b6ca2c4ba3c093a1ff0d89ccde79050bed.lean/declarations/hardy-sigma-delayed-eq--7975c08d24cc98fabaa5e596.md) | 70 | `result-track:7975c08d24cc98fabaa5e5966f14876242f52453d09c93129066230cca313f1f` |
| 5 | `theorem` | [hardy_sigma_delayed_tendsto](../../../../../mathematics/Topology/GeneralTopology/HardyTauberianTheorem/Variante3c48f9a7773ffe016a73f42472853b6ca2c4ba3c093a1ff0d89ccde79050bed.lean/declarations/hardy-sigma-delayed-tendsto--b77240e29ac97b9c7c673d1d.md) | 85 | `result-track:b77240e29ac97b9c7c673d1d6100130324a4af0e13f1ef5242183fa2f8e26de1` |
| 6 | `theorem` | [hardy_sigma_delayed_sub_s_eq](../../../../../mathematics/Topology/GeneralTopology/HardyTauberianTheorem/Variante3c48f9a7773ffe016a73f42472853b6ca2c4ba3c093a1ff0d89ccde79050bed.lean/declarations/hardy-sigma-delayed-sub-s-eq--fca0b65aa490e5195febce7a.md) | 130 | `result-track:fca0b65aa490e5195febce7af3defe771a3f4ab2c39433f119d39d7b0fde5c43` |
| 7 | `theorem` | [hardy_sigma_delayed_bound](../../../../../mathematics/Topology/GeneralTopology/HardyTauberianTheorem/Variante3c48f9a7773ffe016a73f42472853b6ca2c4ba3c093a1ff0d89ccde79050bed.lean/declarations/hardy-sigma-delayed-bound--64323db53e694e8ed4bb4e08.md) | 154 | `result-track:64323db53e694e8ed4bb4e088bd707eceb9c77585c4b69169ebde125d5094f12` |
| 8 | `lemma` | [k_n_properties](../../../../../mathematics/Topology/GeneralTopology/HardyTauberianTheorem/Variante3c48f9a7773ffe016a73f42472853b6ca2c4ba3c093a1ff0d89ccde79050bed.lean/declarations/k-n-properties--e0a7606a5f5d67b9b3436659.md) | 179 | `result-track:e0a7606a5f5d67b9b34366599d85fe2556cfa2eeaa1a58d567fb67a382667ac7` |
| 9 | `def` | [hardy_k](../../../../../mathematics/Topology/GeneralTopology/HardyTauberianTheorem/Variante3c48f9a7773ffe016a73f42472853b6ca2c4ba3c093a1ff0d89ccde79050bed.lean/declarations/hardy-k--35a24095019b8bf1d3c668c8.md) | 190 | `declaration-track:35a24095019b8bf1d3c668c8f8f42e28d3024aa4979c01a90205acac7f373703` |
| 10 | `lemma` | [hardy_diff_bound](../../../../../mathematics/Topology/GeneralTopology/HardyTauberianTheorem/Variante3c48f9a7773ffe016a73f42472853b6ca2c4ba3c093a1ff0d89ccde79050bed.lean/declarations/hardy-diff-bound--85f26397770a2bcc02185209.md) | 195 | `result-track:85f26397770a2bcc02185209a663d015c5dee626db5bf950aeb92eb837b7f090` |
| 11 | `lemma` | [tendsto_of_approx_aux](../../../../../mathematics/Topology/GeneralTopology/HardyTauberianTheorem/Variante3c48f9a7773ffe016a73f42472853b6ca2c4ba3c093a1ff0d89ccde79050bed.lean/declarations/tendsto-of-approx-aux--aab6913fd7186561efaa2da5.md) | 217 | `result-track:aab6913fd7186561efaa2da5a60073be56e9b65d9df2961aea3aea85e575d575` |
| 12 | `lemma` | [hardy_k_ratio_bounded](../../../../../mathematics/Topology/GeneralTopology/HardyTauberianTheorem/Variante3c48f9a7773ffe016a73f42472853b6ca2c4ba3c093a1ff0d89ccde79050bed.lean/declarations/hardy-k-ratio-bounded--3ae9d515d0317150d6305a73.md) | 228 | `result-track:3ae9d515d0317150d6305a73e9eac6e38fddb07aea93cae65e02e3b8f39a356d` |
| 13 | `theorem` | [hardy_tauberian](../../../../../mathematics/Topology/GeneralTopology/HardyTauberianTheorem/Variante3c48f9a7773ffe016a73f42472853b6ca2c4ba3c093a1ff0d89ccde79050bed.lean/declarations/hardy-tauberian--3c7667aefde4bab1b7130c0a.md) | 244 | `result-track:3c7667aefde4bab1b7130c0ac82152cc922baf3b1c57d8083d5a1b8c5372b2f1` |
| 14 | `theorem` | [hardy_tauberian_theorem](../../../../../mathematics/Topology/GeneralTopology/HardyTauberianTheorem/Variante3c48f9a7773ffe016a73f42472853b6ca2c4ba3c093a1ff0d89ccde79050bed.lean/declarations/hardy-tauberian-theorem--1b0e043567dbac667fad6521.md) | 263 | `result-track:1b0e043567dbac667fad652196b8523fa1902b3922c8ef44c0f576c5c64b8f77` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
