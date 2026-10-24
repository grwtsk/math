# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.ConditionalProbability.Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bdb344a93c1e042c1c8391d95a22db68441bd00f",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bdb344a93c1e042c1c8391d95a22db68441bd00f`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Typeclasses.Probability` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cond](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean/declarations/cond--4d56baa6c334a9a9528553e9.md) | 78 | `declaration-track:4d56baa6c334a9a9528553e9ac920545ca1d2f09343afd697ba5a380fbf1196b` |
| 2 | `def` | [condUnexpander](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean/declarations/condunexpander--40bc7c6638cbae1d26081111.md) | 98 | `declaration-track:40bc7c6638cbae1d26081111728dcfed61c4d18c827b76ce3d59ddc9a5051555` |
| 3 | `def` | [delabCondApplied](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean/declarations/delabcondapplied--51ce4fdd061f205ac4bbec66.md) | 108 | `declaration-track:51ce4fdd061f205ac4bbec66575e40f75929a1a0f3653788d581ef9c0691e7de` |
| 4 | `theorem` | [cond_isProbabilityMeasure_of_finite](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean/declarations/cond-isprobabilitymeasure-of-finite--97a97771810572835a156b8d.md) | 156 | `result-track:97a97771810572835a156b8d863bfcffbf09265399f59f4afd3d3940b8a289e5` |
| 5 | `theorem` | [cond_isProbabilityMeasure](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean/declarations/cond-isprobabilitymeasure--88fb445898c2029516fd87b3.md) | 166 | `result-track:88fb445898c2029516fd87b3edb545851c4018c8ef0f7db8fb0fe85326eb467c` |
| 6 | `instance` | [(anonymous)](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean/declarations/instance--5178e1a0c96f453e267642b1.md) | 169 | `declaration-track:5178e1a0c96f453e267642b179a1d19a0b5d11c0472377ae83fe7cf7f78ff8cb` |
| 7 | `theorem` | [cond_toMeasurable_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean/declarations/cond-tomeasurable-eq--ef9f3f1f678c2caaa0ea90bb.md) | 180 | `result-track:ef9f3f1f678c2caaa0ea90bbc8aca18c192808edff649fb1047988586b3a6083` |
| 8 | `lemma` | [cond_absolutelyContinuous](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean/declarations/cond-absolutelycontinuous--3d79ef6634382855c39c65eb.md) | 187 | `result-track:3d79ef6634382855c39c65ebc05bb43558ae0126d82feaf1ea3e29b7200fef94` |
| 9 | `lemma` | [absolutelyContinuous_cond_univ](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean/declarations/absolutelycontinuous-cond-univ--477e37f96f054b487438d4d2.md) | 190 | `result-track:477e37f96f054b487438d4d22e11dce6cc38146403324964f272d01582e39559` |
| 10 | `lemma` | [ae_cond_mem₀](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean/declarations/ae-cond-mem--ee3ccb1c23bd70c72806a575.md) | 195 | `result-track:ee3ccb1c23bd70c72806a57500d19fba90badc397a4b50049bf3dcf267e9ebdf` |
| 11 | `lemma` | [ae_cond_mem](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean/declarations/ae-cond-mem--4e37aafa10fbcfb122e9d1e4.md) | 198 | `result-track:4e37aafa10fbcfb122e9d1e40643c8a39bee9626db09ed49123bc749e9e58d96` |
| 12 | `lemma` | [cond_empty](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean/declarations/cond-empty--ba1cc8a0be248598198c4e37.md) | 204 | `result-track:ba1cc8a0be248598198c4e3734d7a2ceae30040d1fe9e165f8799b02206042d5` |
| 13 | `lemma` | [cond_univ](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean/declarations/cond-univ--5e89451b9c71b953f87f588e.md) | 207 | `result-track:5e89451b9c71b953f87f588ee6bce129de00f52634d36449565cbb197e32b59d` |
| 14 | `lemma` | [cond_eq_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean/declarations/cond-eq-zero--95a192c8b56e01819bc1170c.md) | 210 | `result-track:95a192c8b56e01819bc1170c229f68b5b5debec54e31dc5e94a9cb941abe2a53` |
| 15 | `lemma` | [cond_eq_zero_of_meas_eq_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean/declarations/cond-eq-zero-of-meas-eq-zero--671da938351276d08d281b6d.md) | 212 | `result-track:671da938351276d08d281b6d88c76c09bd11c664568771cffbc8a4ba6ad0f555` |
| 16 | `theorem` | [cond_apply](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean/declarations/cond-apply--e8f74124090f112d4a0884ee.md) | 215 | `result-track:e8f74124090f112d4a0884ee4163321d499b50900e1f81f8f0dc87c46a7242f2` |
| 17 | `theorem` | [cond_apply'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean/declarations/cond-apply--44d77e201ffa6a4c6ad0e71f.md) | 219 | `result-track:44d77e201ffa6a4c6ad0e71fb4b5cc049ed5e0217f30a2f2ad31cab9c881ffff` |
| 18 | `lemma` | [cond_apply_self](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean/declarations/cond-apply-self--bd2d279d49d84092e4115c7d.md) | 222 | `result-track:bd2d279d49d84092e4115c7d8ff1787ed567c02dfde76706b78e770e2a8e7a39` |
| 19 | `theorem` | [cond_inter_self](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean/declarations/cond-inter-self--f8ee2e749a6c128318044771.md) | 225 | `result-track:f8ee2e749a6c128318044771bb00799e20b0cf07239a7a21f926afde09b8587c` |
| 20 | `theorem` | [inter_pos_of_cond_ne_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean/declarations/inter-pos-of-cond-ne-zero--befad19f84e04f58be5b876a.md) | 229 | `result-track:befad19f84e04f58be5b876af23efbbfbfef6b2f7273f8ea48f8faff96a4a8b5` |
| 21 | `lemma` | [cond_pos_of_inter_ne_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean/declarations/cond-pos-of-inter-ne-zero--d28588cb339889bd3eb65c08.md) | 235 | `result-track:d28588cb339889bd3eb65c0894f39131b2e5b68b34a1ed097b54984f347f3640` |
| 22 | `lemma` | [cond_cond_eq_cond_inter'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean/declarations/cond-cond-eq-cond-inter--3e14673c6bdc4860e8e2fc3a.md) | 241 | `result-track:3e14673c6bdc4860e8e2fc3a02c68d2841e63aaa687d4b984c14c58a023b6e8e` |
| 23 | `theorem` | [cond_cond_eq_cond_inter](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean/declarations/cond-cond-eq-cond-inter--daeb29931885a31c08fca59b.md) | 255 | `result-track:daeb29931885a31c08fca59b892bdf90daad5a771992143605a40b891baccae7` |
| 24 | `theorem` | [cond_mul_eq_inter'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean/declarations/cond-mul-eq-inter--997bd54ad8b91b56baef1941.md) | 259 | `result-track:997bd54ad8b91b56baef19418ab7ffd3058a123fcb4411758ae0db3a6cedd0a5` |
| 25 | `theorem` | [cond_mul_eq_inter](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean/declarations/cond-mul-eq-inter--b7d74a2902e09658eed084c9.md) | 265 | `result-track:b7d74a2902e09658eed084c981d27ac941068ea23fe81edb8869ea36971eeec9` |
| 26 | `theorem` | [cond_add_cond_compl_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean/declarations/cond-add-cond-compl-eq--e0d6a6798c9ec9d44e7dc231.md) | 269 | `result-track:e0d6a6798c9ec9d44e7dc2317ce809ccff7373236cee10cadf60547d41d89194` |
| 27 | `theorem` | [cond_eq_inv_mul_cond_mul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean/declarations/cond-eq-inv-mul-cond-mul--f9a41414f44bda4b232518c1.md) | 276 | `result-track:f9a41414f44bda4b232518c10169704c2120628fff66c980177c9d15cc798b83` |
| 28 | `lemma` | [comap_cond](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean/declarations/comap-cond--b4b4587e1c2458e6ef0fee56.md) | 282 | `result-track:b4b4587e1c2458e6ef0fee566208233225bddcabc5e0683951bcf43471656e52` |
| 29 | `lemma` | [sum_meas_smul_cond_fiber](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean/declarations/sum-meas-smul-cond-fiber--9aeb3934f7e39240d875ee09.md) | 302 | `result-track:9aeb3934f7e39240d875ee09cc244d6542e0dc2c5fabb1b9e631925e93c8f437` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
