# Verification target: GRWTSK.Topology.GeneralTopology.Baire.Variante55662b227d025b09ea04b442d5fa79dcbf68f77c20d8ea00f3f9e04da04e2b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e7a68560164efce84911dd90a9cf7aecab24db8",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Baire/Variante55662b227d025b09ea04b442d5fa79dcbf68f77c20d8ea00f3f9e04da04e2b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Baire/Variante55662b227d025b09ea04b442d5fa79dcbf68f77c20d8ea00f3f9e04da04e2b7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Baire/Variante55662b227d025b09ea04b442d5fa79dcbf68f77c20d8ea00f3f9e04da04e2b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e7a68560164efce84911dd90a9cf7aecab24db8`.

Source path: `GRWTSK/Topology/GeneralTopology/Baire/Variante55662b227d025b09ea04b442d5fa79dcbf68f77c20d8ea00f3f9e04da04e2b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Baire/Variante55662b227d025b09ea04b442d5fa79dcbf68f77c20d8ea00f3f9e04da04e2b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.CountableInter` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.GDelta` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Compacts` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.CountableInter` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [BaireSpace](../../../../../mathematics/Topology/GeneralTopology/Baire/Variante55662b227d025b09ea04b442d5fa79dcbf68f77c20d8ea00f3f9e04da04e2b7.lean/declarations/bairespace--c8bf33a74d286e1d02b4758a.md) | 45 | `declaration-track:c8bf33a74d286e1d02b4758a2d1a9796efdae840cd2ffb9650b53e2f2f443f14` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Baire/Variante55662b227d025b09ea04b442d5fa79dcbf68f77c20d8ea00f3f9e04da04e2b7.lean/declarations/instance--dab7e8d6405fd550c80f3023.md) | 52 | `declaration-track:dab7e8d6405fd550c80f30230020ebfcfc06dbd3c03dacbef3d4fc3d059e1961` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Baire/Variante55662b227d025b09ea04b442d5fa79dcbf68f77c20d8ea00f3f9e04da04e2b7.lean/declarations/instance--21174a80fc24d592e9006bb6.md) | 149 | `declaration-track:21174a80fc24d592e9006bb64b3ddb8e9c3c8986751fd1f23356711d56439967` |
| 4 | `theorem` | [dense_iInter_of_open_nat](../../../../../mathematics/Topology/GeneralTopology/Baire/Variante55662b227d025b09ea04b442d5fa79dcbf68f77c20d8ea00f3f9e04da04e2b7.lean/declarations/dense-iinter-of-open-nat--9182c8d5d57f703a7ebb04e5.md) | 190 | `result-track:9182c8d5d57f703a7ebb04e59081c5a120ec74ad30407f4a9a30589abd06a899` |
| 5 | `theorem` | [dense_sInter_of_open](../../../../../mathematics/Topology/GeneralTopology/Baire/Variante55662b227d025b09ea04b442d5fa79dcbf68f77c20d8ea00f3f9e04da04e2b7.lean/declarations/dense-sinter-of-open--a15dbf6c79de5d3411c0864a.md) | 196 | `result-track:a15dbf6c79de5d3411c0864ae5d01b4e22c9ed4a40eadd5e665f6faf0ff24afd` |
| 6 | `theorem` | [dense_biInter_of_open](../../../../../mathematics/Topology/GeneralTopology/Baire/Variante55662b227d025b09ea04b442d5fa79dcbf68f77c20d8ea00f3f9e04da04e2b7.lean/declarations/dense-biinter-of-open--b846b69fcef4dbe20fb90f78.md) | 208 | `result-track:b846b69fcef4dbe20fb90f78fb5c084ea963a33533cae92b1ab9d527523451e3` |
| 7 | `theorem` | [dense_iInter_of_open](../../../../../mathematics/Topology/GeneralTopology/Baire/Variante55662b227d025b09ea04b442d5fa79dcbf68f77c20d8ea00f3f9e04da04e2b7.lean/declarations/dense-iinter-of-open--eb42a27640ce6d8fca6144b4.md) | 219 | `result-track:eb42a27640ce6d8fca6144b4192bc09396b1bcf8561e2e2d06d5dfde4ed8bf82` |
| 8 | `theorem` | [mem_residual](../../../../../mathematics/Topology/GeneralTopology/Baire/Variante55662b227d025b09ea04b442d5fa79dcbf68f77c20d8ea00f3f9e04da04e2b7.lean/declarations/mem-residual--a57edd98fc4550565436f52f.md) | 229 | `result-track:a57edd98fc4550565436f52f87ec58ceef169fda56ef17b836ec8fdd923ee550` |
| 9 | `theorem` | [eventually_residual](../../../../../mathematics/Topology/GeneralTopology/Baire/Variante55662b227d025b09ea04b442d5fa79dcbf68f77c20d8ea00f3f9e04da04e2b7.lean/declarations/eventually-residual--888d3f457bb06364793af761.md) | 240 | `result-track:888d3f457bb06364793af761a2e9219364301ceb633ca07ca78a6e15aa5b1ca0` |
| 10 | `theorem` | [dense_of_mem_residual](../../../../../mathematics/Topology/GeneralTopology/Baire/Variante55662b227d025b09ea04b442d5fa79dcbf68f77c20d8ea00f3f9e04da04e2b7.lean/declarations/dense-of-mem-residual--3f4cc7839ae6be1454ca391d.md) | 248 | `result-track:3f4cc7839ae6be1454ca391d9fe1886af280399fb8f0dcd31f4e541c4304119d` |
| 11 | `theorem` | [dense_sInter_of_Gδ](../../../../../mathematics/Topology/GeneralTopology/Baire/Variante55662b227d025b09ea04b442d5fa79dcbf68f77c20d8ea00f3f9e04da04e2b7.lean/declarations/dense-sinter-of-g--01486ec8709060c4086bdef6.md) | 254 | `result-track:01486ec8709060c4086bdef6ee48ad368d674af63dc1cb0c78fa11947b45fa42` |
| 12 | `theorem` | [dense_iInter_of_Gδ](../../../../../mathematics/Topology/GeneralTopology/Baire/Variante55662b227d025b09ea04b442d5fa79dcbf68f77c20d8ea00f3f9e04da04e2b7.lean/declarations/dense-iinter-of-g--8b88c22c9d981ce5e77f7929.md) | 263 | `result-track:8b88c22c9d981ce5e77f79298b336f9c4e6413d6d38b3413cabab97b90525cd8` |
| 13 | `theorem` | [dense_biInter_of_Gδ](../../../../../mathematics/Topology/GeneralTopology/Baire/Variante55662b227d025b09ea04b442d5fa79dcbf68f77c20d8ea00f3f9e04da04e2b7.lean/declarations/dense-biinter-of-g--2b99ed72035544a4f94310f8.md) | 273 | `result-track:2b99ed72035544a4f94310f8a8fcf38f93bfc5b5b2396947acc28f959669985f` |
| 14 | `theorem` | [Dense.inter_of_Gδ](../../../../../mathematics/Topology/GeneralTopology/Baire/Variante55662b227d025b09ea04b442d5fa79dcbf68f77c20d8ea00f3f9e04da04e2b7.lean/declarations/dense-inter-of-g--3ebad63ff8fa5b56726b867a.md) | 282 | `result-track:3ebad63ff8fa5b56726b867ac66f848fb54aa6f8c62d944e4035a99780c5698c` |
| 15 | `theorem` | [IsGδ.dense_iUnion_interior_of_closed](../../../../../mathematics/Topology/GeneralTopology/Baire/Variante55662b227d025b09ea04b442d5fa79dcbf68f77c20d8ea00f3f9e04da04e2b7.lean/declarations/isg-dense-iunion-interior-of-closed--3f2d68ecc6c468b90e2a8b36.md) | 291 | `result-track:3f2d68ecc6c468b90e2a8b3682ad4de6d09150e7f60e541f8af279f0b5919f6e` |
| 16 | `theorem` | [IsGδ.dense_biUnion_interior_of_closed](../../../../../mathematics/Topology/GeneralTopology/Baire/Variante55662b227d025b09ea04b442d5fa79dcbf68f77c20d8ea00f3f9e04da04e2b7.lean/declarations/isg-dense-biunion-interior-of-closed--1cd775b9adf5d2c509e64cf5.md) | 310 | `result-track:1cd775b9adf5d2c509e64cf5f2ad6b85fec5ffa1ba4a6709d545508b57d85132` |
| 17 | `theorem` | [IsGδ.dense_sUnion_interior_of_closed](../../../../../mathematics/Topology/GeneralTopology/Baire/Variante55662b227d025b09ea04b442d5fa79dcbf68f77c20d8ea00f3f9e04da04e2b7.lean/declarations/isg-dense-sunion-interior-of-closed--912a6d7c64404171c7e0dff8.md) | 321 | `result-track:912a6d7c64404171c7e0dff832b637cf2d64f22bf61fa5bc7150a859b155b846` |
| 18 | `theorem` | [dense_biUnion_interior_of_closed](../../../../../mathematics/Topology/GeneralTopology/Baire/Variante55662b227d025b09ea04b442d5fa79dcbf68f77c20d8ea00f3f9e04da04e2b7.lean/declarations/dense-biunion-interior-of-closed--abbed7169f889c92912ced62.md) | 330 | `result-track:abbed7169f889c92912ced629628533d90fc1c0d26dcc6bd425521ae6c03be53` |
| 19 | `theorem` | [dense_sUnion_interior_of_closed](../../../../../mathematics/Topology/GeneralTopology/Baire/Variante55662b227d025b09ea04b442d5fa79dcbf68f77c20d8ea00f3f9e04da04e2b7.lean/declarations/dense-sunion-interior-of-closed--98c2bcd9f5c411918fdcb308.md) | 337 | `result-track:98c2bcd9f5c411918fdcb308425a0170143feffc470d8ea9fc777c152ba566ac` |
| 20 | `theorem` | [dense_iUnion_interior_of_closed](../../../../../mathematics/Topology/GeneralTopology/Baire/Variante55662b227d025b09ea04b442d5fa79dcbf68f77c20d8ea00f3f9e04da04e2b7.lean/declarations/dense-iunion-interior-of-closed--7f05b749cb957ab3e48c6701.md) | 344 | `result-track:7f05b749cb957ab3e48c6701ed630fc89ec22681c330f13b977b9ea7094db81d` |
| 21 | `theorem` | [nonempty_interior_of_iUnion_of_closed](../../../../../mathematics/Topology/GeneralTopology/Baire/Variante55662b227d025b09ea04b442d5fa79dcbf68f77c20d8ea00f3f9e04da04e2b7.lean/declarations/nonempty-interior-of-iunion-of-closed--adae92b483e041e45f46cf38.md) | 351 | `result-track:adae92b483e041e45f46cf38b58d6480fe18da26f07c23cc129c787c0fea0fdf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
