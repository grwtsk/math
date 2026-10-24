# Verification target: GRWTSK.Topology.GeneralTopology.Interval.Variant8758e5fe612ba2fd65291571c33b7aa680067418fb08752a55feaffc2b58ea9f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af41fd9488b153c9f418fa32566916db140ce0a2",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Interval/Variant8758e5fe612ba2fd65291571c33b7aa680067418fb08752a55feaffc2b58ea9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant8758e5fe612ba2fd65291571c33b7aa680067418fb08752a55feaffc2b58ea9f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant8758e5fe612ba2fd65291571c33b7aa680067418fb08752a55feaffc2b58ea9f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af41fd9488b153c9f418fa32566916db140ce0a2`.

Source path: `GRWTSK/Topology/GeneralTopology/Interval/Variant8758e5fe612ba2fd65291571c33b7aa680067418fb08752a55feaffc2b58ea9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Interval/Variant8758e5fe612ba2fd65291571c33b7aa680067418fb08752a55feaffc2b58ea9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.LocallyFinite` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant8758e5fe612ba2fd65291571c33b7aa680067418fb08752a55feaffc2b58ea9f.lean/declarations/instance--68f1b0b95fccb7637c900193.md) | 38 | `declaration-track:68f1b0b95fccb7637c9001934038f6bb8476aaf23e99a259fbd3f3c67c258ba0` |
| 2 | `theorem` | [Icc_eq_filter_powerset](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant8758e5fe612ba2fd65291571c33b7aa680067418fb08752a55feaffc2b58ea9f.lean/declarations/icc-eq-filter-powerset--28e89d5c225b18cecacb23a7.md) | 57 | `result-track:28e89d5c225b18cecacb23a79f40a3e05af3886e7847d4f4e67a8cdc14098fea` |
| 3 | `theorem` | [Ico_eq_filter_ssubsets](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant8758e5fe612ba2fd65291571c33b7aa680067418fb08752a55feaffc2b58ea9f.lean/declarations/ico-eq-filter-ssubsets--f891d6748177da1f36990bcc.md) | 61 | `result-track:f891d6748177da1f36990bccc3edd043c45c15ae8721c08676e1c6aaba7089c2` |
| 4 | `theorem` | [Ioc_eq_filter_powerset](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant8758e5fe612ba2fd65291571c33b7aa680067418fb08752a55feaffc2b58ea9f.lean/declarations/ioc-eq-filter-powerset--4536e295905a03f5b26bf20f.md) | 65 | `result-track:4536e295905a03f5b26bf20f35f4497c7d5e597579ba61a55d21d7e192a3d667` |
| 5 | `theorem` | [Ioo_eq_filter_ssubsets](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant8758e5fe612ba2fd65291571c33b7aa680067418fb08752a55feaffc2b58ea9f.lean/declarations/ioo-eq-filter-ssubsets--8e1f1f5e3c425fb254f5836f.md) | 69 | `result-track:8e1f1f5e3c425fb254f5836fd365aa14222813d39d692fee82aad5ab62e2b1f6` |
| 6 | `theorem` | [Iic_eq_powerset](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant8758e5fe612ba2fd65291571c33b7aa680067418fb08752a55feaffc2b58ea9f.lean/declarations/iic-eq-powerset--b0d62039725cf2f6d9ca2004.md) | 73 | `result-track:b0d62039725cf2f6d9ca2004d0319f0ecb915e23218e25d54a64be8f0ce3214e` |
| 7 | `theorem` | [Iio_eq_ssubsets](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant8758e5fe612ba2fd65291571c33b7aa680067418fb08752a55feaffc2b58ea9f.lean/declarations/iio-eq-ssubsets--82fc5d9a5efb2aade74873d8.md) | 77 | `result-track:82fc5d9a5efb2aade74873d8387a222c48c5f890a72f682490dfe8d8f464e193` |
| 8 | `theorem` | [Icc_eq_image_powerset](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant8758e5fe612ba2fd65291571c33b7aa680067418fb08752a55feaffc2b58ea9f.lean/declarations/icc-eq-image-powerset--7e9bf64b7b4839b4c077b2ba.md) | 83 | `result-track:7e9bf64b7b4839b4c077b2ba5af8c1a38e87cb99db49131f2c99579611a1865a` |
| 9 | `theorem` | [Ico_eq_image_ssubsets](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant8758e5fe612ba2fd65291571c33b7aa680067418fb08752a55feaffc2b58ea9f.lean/declarations/ico-eq-image-ssubsets--a79c5acdd838a3e59e3bb8c6.md) | 93 | `result-track:a79c5acdd838a3e59e3bb8c652c62e3c32c64c9d0429b434a7afcfb664028936` |
| 10 | `theorem` | [card_Icc_finset](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant8758e5fe612ba2fd65291571c33b7aa680067418fb08752a55feaffc2b58ea9f.lean/declarations/card-icc-finset--d949fbda238512bb6f4c2a99.md) | 104 | `result-track:d949fbda238512bb6f4c2a99dc5e8e03eb0734a1aff79cdb6d6edef69e1620b0` |
| 11 | `theorem` | [card_Ico_finset](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant8758e5fe612ba2fd65291571c33b7aa680067418fb08752a55feaffc2b58ea9f.lean/declarations/card-ico-finset--9241cd8d566c8be350c5e2a7.md) | 113 | `result-track:9241cd8d566c8be350c5e2a72b995f05a0080d525d8ec8c07a920b608ae7a274` |
| 12 | `theorem` | [card_Ioc_finset](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant8758e5fe612ba2fd65291571c33b7aa680067418fb08752a55feaffc2b58ea9f.lean/declarations/card-ioc-finset--33907e3a9a33b15a62de9c55.md) | 118 | `result-track:33907e3a9a33b15a62de9c55fbc493828ff88a912edb1cf5249f2a4f081c9d4a` |
| 13 | `theorem` | [card_Ioo_finset](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant8758e5fe612ba2fd65291571c33b7aa680067418fb08752a55feaffc2b58ea9f.lean/declarations/card-ioo-finset--4b69ff3733b2e3aa8dbf4370.md) | 123 | `result-track:4b69ff3733b2e3aa8dbf437039e59df2d1a65d81aa1332942ae5727c7c9e48f6` |
| 14 | `theorem` | [card_Iic_finset](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant8758e5fe612ba2fd65291571c33b7aa680067418fb08752a55feaffc2b58ea9f.lean/declarations/card-iic-finset--da7db34f2b720d8b3ca2b2d4.md) | 128 | `result-track:da7db34f2b720d8b3ca2b2d4715243ae58868783ca28d197031d6619805b2c12` |
| 15 | `theorem` | [card_Iio_finset](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant8758e5fe612ba2fd65291571c33b7aa680067418fb08752a55feaffc2b58ea9f.lean/declarations/card-iio-finset--2b7d7b65726a1c46aa81671d.md) | 132 | `result-track:2b7d7b65726a1c46aa81671df4d9a97f6e97812434282e88af220f10f4d87246` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
