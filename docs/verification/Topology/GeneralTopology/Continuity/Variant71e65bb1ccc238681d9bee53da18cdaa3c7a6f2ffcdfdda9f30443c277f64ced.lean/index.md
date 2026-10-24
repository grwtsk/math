# Verification target: GRWTSK.Topology.GeneralTopology.Continuity.Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be390e716cdc71c2e888e6c47fa50e7cbc0e0ca1",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be390e716cdc71c2e888e6c47fa50e7cbc0e0ca1`.

Source path: `GRWTSK/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.AtTopBotIxx` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [_root_.Directed.measure_iUnion](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean/declarations/root-directed-measure-iunion--17940ff606b4129017d9207a.md) | 36 | `result-track:17940ff606b4129017d9207a90845adaac276c90e6b1956013098fb998aab731` |
| 2 | `theorem` | [_root_.Monotone.measure_iUnion](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean/declarations/root-monotone-measure-iunion--a5ae4b92171aa9641da34ce9.md) | 71 | `result-track:a5ae4b92171aa9641da34ce9f4a8196c02a79f39ca38bde41e6aa7f0b44310d2` |
| 3 | `theorem` | [_root_.Antitone.measure_iUnion](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean/declarations/root-antitone-measure-iunion--e02ca14845cb125079fb6cb1.md) | 81 | `result-track:e02ca14845cb125079fb6cb13cbc955b6bc6f71359a97b320460692d18f9e753` |
| 4 | `theorem` | [measure_iUnion_eq_iSup_accumulate](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean/declarations/measure-iunion-eq-isup-accumulate--61eb83314b04d156724a0dd2.md) | 88 | `result-track:61eb83314b04d156724a0dd2547c4bcb12810f5b76ea9f8d02a319f12065c503` |
| 5 | `theorem` | [measure_biUnion_eq_iSup](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean/declarations/measure-biunion-eq-isup--871f9eaaddddc2a5c0cbc128.md) | 94 | `result-track:871f9eaaddddc2a5c0cbc1280bcc68141eed7402f36c570852602528d4746bb3` |
| 6 | `theorem` | [_root_.Directed.measure_iInter](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean/declarations/root-directed-measure-iinter--62cd07f921fbc699d3773c8e.md) | 102 | `result-track:62cd07f921fbc699d3773c8e776ab5b5d3c422da8c28d10a13087ec2c36f9aba` |
| 7 | `theorem` | [_root_.Monotone.measure_iInter](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean/declarations/root-monotone-measure-iinter--a797ca7974fb7ce4ee7b16f4.md) | 123 | `result-track:a797ca7974fb7ce4ee7b16f485168825bb95e6d106160e882e7db208aeeddc4a` |
| 8 | `theorem` | [measure_iInter_of_ae_monotone](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean/declarations/measure-iinter-of-ae-monotone--f94b2be39aad8fffb3ceae3b.md) | 145 | `result-track:f94b2be39aad8fffb3ceae3bd7ce127fd5105b60d04d1615b2ee24191faef8c2` |
| 9 | `theorem` | [_root_.Antitone.measure_iInter](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean/declarations/root-antitone-measure-iinter--3c7f209f6a30a5890261e0fb.md) | 167 | `result-track:3c7f209f6a30a5890261e0fb26c70355cba6e77e24d75248ba5db35301f2e25f` |
| 10 | `lemma` | [measure_iInter_of_ae_antitone](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean/declarations/measure-iinter-of-ae-antitone--7ba249649bb187086e34440d.md) | 176 | `result-track:7ba249649bb187086e34440dd333ec714e0f1f3b8113b1a7d6b91be102d36cd2` |
| 11 | `theorem` | [measure_iInter_eq_iInf_measure_iInter_le](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean/declarations/measure-iinter-eq-iinf-measure-iinter-le--fe19a278f19cf9249b6b1dd8.md) | 185 | `result-track:fe19a278f19cf9249b6b1dd89e548b03e58a2dcf624df2609138af0351729356` |
| 12 | `theorem` | [tendsto_measure_iUnion_atTop](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean/declarations/tendsto-measure-iunion-attop--dc90d6e70445e56479b7328c.md) | 198 | `result-track:dc90d6e70445e56479b7328cb16340cbbc6b986ce526ef3554cc31533c033fbf` |
| 13 | `theorem` | [tendsto_measure_iUnion_atBot](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean/declarations/tendsto-measure-iunion-atbot--5f88ed3c6aa59e43806dd67e.md) | 205 | `result-track:5f88ed3c6aa59e43806dd67ef724e2e5aed04ba30df1d977dc9a42c5a663db3c` |
| 14 | `theorem` | [tendsto_measure_iUnion_accumulate](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean/declarations/tendsto-measure-iunion-accumulate--92ae8351805292769ccdd877.md) | 211 | `result-track:92ae8351805292769ccdd8772ef8333cfcc179fcebd87ebe128990a6f7ecf0d2` |
| 15 | `theorem` | [tendsto_measure_iInter_atTop](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean/declarations/tendsto-measure-iinter-attop--af67af6ce550b14e8b872750.md) | 220 | `result-track:af67af6ce550b14e8b8727501dc0d5611cf551ff777bbebe1b2c2d3ca932576a` |
| 16 | `theorem` | [tendsto_measure_iInter_atBot](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean/declarations/tendsto-measure-iinter-atbot--e0b645f377402cc0c8b5d95d.md) | 231 | `result-track:e0b645f377402cc0c8b5d95d81de5c4012dbe10483407b5df820785b1a4ebe92` |
| 17 | `theorem` | [tendsto_measure_iInter_le](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean/declarations/tendsto-measure-iinter-le--469fda52bb2cc2841dba2c87.md) | 238 | `result-track:469fda52bb2cc2841dba2c870b643855fa770a7dd4c6b049050bdd4743756589` |
| 18 | `theorem` | [exists_measure_iInter_lt](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean/declarations/exists-measure-iinter-lt--8f2594a84f137cb6e625a165.md) | 249 | `result-track:8f2594a84f137cb6e625a165ca0aea1f55026e0ab85ecced7eae02ed307ac3f2` |
| 19 | `theorem` | [tendsto_measure_biInter_gt](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean/declarations/tendsto-measure-biinter-gt--1a5a24979eb24e248a72fb0c.md) | 266 | `result-track:1a5a24979eb24e248a72fb0c105d4295ce7811effc028bad9fff0a779d15ad26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
