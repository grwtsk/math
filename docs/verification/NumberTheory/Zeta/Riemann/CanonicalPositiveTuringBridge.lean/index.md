# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPositiveTuringBridge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "011c4e2da11499c71c29f1b16cde02408e605360",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringBridge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringBridge.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringBridge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `011c4e2da11499c71c29f1b16cde02408e605360`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringBridge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringBridge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PositiveHeightSymmetricCount`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CertifiedZeroHeight`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CertifiedZeroHeight.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Combinatorics.WeightedSubsetBudget`](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedSubsetBudget.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PositiveHeightExactTotal](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringBridge.lean/declarations/positiveheightexacttotal--37db54eeddc83fb91eccbd73.md) | 50 | `declaration-track:37db54eeddc83fb91eccbd736acb4de7889a0df42507b35cbf871e6572da58ab` |
| 2 | `structure` | [CanonicalFamilyAlignment](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringBridge.lean/declarations/canonicalfamilyalignment--22426b50830850e9dd69fff3.md) | 58 | `declaration-track:22426b50830850e9dd69fff3e3a67caed8ee8cdab1ffe59e821bbf74d4b796b4` |
| 3 | `def` | [knownPoints](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringBridge.lean/declarations/knownpoints--9a52afefa61f062954ea1d0e.md) | 75 | `declaration-track:9a52afefa61f062954ea1d0eefa1d13d3fddac18222427f84b8fdb324521cafd` |
| 4 | `theorem` | [mem_knownPoints](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringBridge.lean/declarations/mem-knownpoints--642494340bfcf470603cd5e7.md) | 80 | `result-track:642494340bfcf470603cd5e70200d54d524b758c7adf8b630aaca0b513577f45` |
| 5 | `theorem` | [knownPoints_subset](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringBridge.lean/declarations/knownpoints-subset--abefe5cc7556336eba753776.md) | 87 | `result-track:abefe5cc7556336eba753776ac159dabc5175c412649c13d1c5b11e134f7a368` |
| 6 | `theorem` | [knownPoints_on_line](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringBridge.lean/declarations/knownpoints-on-line--b2bb25da527d57e5c5f5d322.md) | 96 | `result-track:b2bb25da527d57e5c5f5d322c3d447d98d4024f9c9d5dea112a9dea68edbedf3` |
| 7 | `theorem` | [record_multiplicity_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringBridge.lean/declarations/record-multiplicity-pos--1097f7be0fd4ab3741d931c2.md) | 105 | `result-track:1097f7be0fd4ab3741d931c21a5dd8688e1992cd169fd5c6539081e8beda05cb` |
| 8 | `theorem` | [knownPoints_mass_eq_certifiedCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringBridge.lean/declarations/knownpoints-mass-eq-certifiedcount--eb33e26eed2f5966c37f691e.md) | 112 | `result-track:eb33e26eed2f5966c37f691e6bfe1d9bf9832f65c135ed78f1083727c705557c` |
| 9 | `structure` | [CanonicalPositiveTuringPacket](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringBridge.lean/declarations/canonicalpositiveturingpacket--23827cae17e498edcb138f67.md) | 124 | `declaration-track:23827cae17e498edcb138f675e664744321fec7cd5c6791fdfb250a6846d4802` |
| 10 | `theorem` | [exact_count](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringBridge.lean/declarations/exact-count--40c6f11eaa91a968ace6c36d.md) | 134 | `result-track:40c6f11eaa91a968ace6c36d455fe9a239d709e51124bace79103af936ba5e65` |
| 11 | `theorem` | [known_mass_eq_certifiedCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringBridge.lean/declarations/known-mass-eq-certifiedcount--5323e699f4f746b0421431bb.md) | 141 | `result-track:5323e699f4f746b0421431bb8b3a69553a9cbcd297637d014b0d165f46f335f3` |
| 12 | `theorem` | [gap_eq_missing_mass](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringBridge.lean/declarations/gap-eq-missing-mass--e3fabdda8510a4cc85816056.md) | 147 | `result-track:e3fabdda8510a4cc85816056363b4174f02d9c7177ba297f71b659277df32017` |
| 13 | `theorem` | [total_lt_certified_add_two](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringBridge.lean/declarations/total-lt-certified-add-two--374ba762fe7860a7ee270034.md) | 161 | `result-track:374ba762fe7860a7ee27003493591e87ba404371a73053c750284afbb23ef26a` |
| 14 | `theorem` | [all_positive_on_line_of_gap_lt_two](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringBridge.lean/declarations/all-positive-on-line-of-gap-lt-two--4a81ec7720cdbb5ab074c64d.md) | 171 | `result-track:4a81ec7720cdbb5ab074c64d86f2e02d43a141ea411a1592ef3a86223af67e2f` |
| 15 | `theorem` | [rhThrough_of_gap_lt_two](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringBridge.lean/declarations/rhthrough-of-gap-lt-two--586d7e97af083032a4aad863.md) | 187 | `result-track:586d7e97af083032a4aad8630e3016764ca5ebd6f66411f7a0d4c053e0efcd23` |
| 16 | `theorem` | [knownPoints_eq_positiveHeightHead_of_complete](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringBridge.lean/declarations/knownpoints-eq-positiveheighthead-of-complete--22df7a4dde6978e11026f61f.md) | 202 | `result-track:22df7a4dde6978e11026f61f504a152d76b1241f27cd4c6bd2c7e06fcad2617f` |
| 17 | `theorem` | [knownPoints_eq_positiveHeightHead_of_gap_eq_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringBridge.lean/declarations/knownpoints-eq-positiveheighthead-of-gap-eq-zero--1ee93b54b4f25d77a7cfea5a.md) | 223 | `result-track:1ee93b54b4f25d77a7cfea5a6891de8f1f44ff3b21af6a7a0ce0f36ea06b67ef` |
| 18 | `theorem` | [one_unit_gap_not_complete_fixture](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringBridge.lean/declarations/one-unit-gap-not-complete-fixture--2c0e1172e08537510a5cd96d.md) | 233 | `result-track:2c0e1172e08537510a5cd96df3ed4e2d90101e7db793e2491454f4a63b47a4fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
