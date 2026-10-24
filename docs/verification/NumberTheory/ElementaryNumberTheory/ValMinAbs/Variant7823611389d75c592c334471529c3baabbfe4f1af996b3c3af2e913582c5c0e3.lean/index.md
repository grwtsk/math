# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ValMinAbs.Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c952edfa6dfceb27dc25beb363cde67b17ec328",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c952edfa6dfceb27dc25beb363cde67b17ec328`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [valMinAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean/declarations/valminabs--15bbfb00340200269c98a798.md) | 31 | `declaration-track:15bbfb00340200269c98a798f8777360a0d63fb449a4cf2796233f1f17c7a1ff` |
| 2 | `lemma` | [valMinAbs_def_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean/declarations/valminabs-def-zero--91ca024772d90669f313e740.md) | 35 | `result-track:91ca024772d90669f313e7408cc89b3462b34482a5ae3f08a74931a53e0d93c2` |
| 3 | `lemma` | [valMinAbs_def_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean/declarations/valminabs-def-pos--b328c1d4708ffc0aca83e539.md) | 37 | `result-track:b328c1d4708ffc0aca83e539c0967404735af9a9cb0e1e434d2760d9f1573604` |
| 4 | `lemma` | [coe_valMinAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean/declarations/coe-valminabs--923c50d4518a6b3c97f30036.md) | 43 | `result-track:923c50d4518a6b3c97f30036803a6117f462ae18ae065893054ee56c49bc6d74` |
| 5 | `lemma` | [injective_valMinAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean/declarations/injective-valminabs--be9071567eb6fa33f23f6582.md) | 52 | `result-track:be9071567eb6fa33f23f6582b301d5de347a5303c838d7889e9a6a731286c876` |
| 6 | `theorem` | [valMinAbs_inj](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean/declarations/valminabs-inj--2ac1e4707b44eedf3c7c1e92.md) | 56 | `result-track:2ac1e4707b44eedf3c7c1e920490df0716583d771b2ab8fe65e47e7e635c6421` |
| 7 | `lemma` | [valMinAbs_nonneg_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean/declarations/valminabs-nonneg-iff--d226f173d25c73ae7a9d93d3.md) | 59 | `result-track:d226f173d25c73ae7a9d93d398d931e6610386eadb17268048651af1146de6ea` |
| 8 | `lemma` | [valMinAbs_mul_two_eq_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean/declarations/valminabs-mul-two-eq-iff--595f6a2762b6bf47d5caa68b.md) | 65 | `result-track:595f6a2762b6bf47d5caa68b11567b719122c7b91bf649b63c05d058c2463ccf` |
| 9 | `lemma` | [valMinAbs_mem_Ioc](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean/declarations/valminabs-mem-ioc--cf8e6cbe3dd0904d65bfe9c0.md) | 79 | `result-track:cf8e6cbe3dd0904d65bfe9c05ec34a720ee9a9958ec55f8b83f3c14743172e65` |
| 10 | `lemma` | [valMinAbs_spec](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean/declarations/valminabs-spec--a52ffb418a6ec7dc243ae3cc.md) | 86 | `result-track:a52ffb418a6ec7dc243ae3cc0324dffe5450c28de753923564448c3b0c9b89c6` |
| 11 | `lemma` | [natAbs_valMinAbs_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean/declarations/natabs-valminabs-le--c8c3fd1c963276e35b20faba.md) | 98 | `result-track:c8c3fd1c963276e35b20faba95ef0747af27609c90e577028b99c2d4f930e197` |
| 12 | `theorem` | [eq_neg_of_valMinAbs_eq_neg_valMinAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean/declarations/eq-neg-of-valminabs-eq-neg-valminabs--bb2dfa7b42bd7011ac0ec26f.md) | 107 | `result-track:bb2dfa7b42bd7011ac0ec26ff5bfd187c4feeb5a7d7573644a882ae3ed241691` |
| 13 | `lemma` | [valMinAbs_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean/declarations/valminabs-zero--7dd00c88bdb4deb544b58c6b.md) | 112 | `result-track:7dd00c88bdb4deb544b58c6b5bd3817cdfdba2f273164e72d1b647eca52f8b4d` |
| 14 | `lemma` | [valMinAbs_eq_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean/declarations/valminabs-eq-zero--098a66f130ff633866b6b92e.md) | 117 | `result-track:098a66f130ff633866b6b92ef6107a9bbe53849e2ad96eb6493d9ca7c3a4ea06` |
| 15 | `lemma` | [natCast_natAbs_valMinAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean/declarations/natcast-natabs-valminabs--aad59847c4a57dac6dc687c8.md) | 120 | `result-track:aad59847c4a57dac6dc687c8a17dcdd46aed70394595aed1d05f7f918f705383` |
| 16 | `lemma` | [valMinAbs_neg_of_ne_half](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean/declarations/valminabs-neg-of-ne-half--21b5ea3feeb6dae5012ea7ee.md) | 131 | `result-track:21b5ea3feeb6dae5012ea7eece55a003a04916b46c2da88bd2e90bbe37c96555` |
| 17 | `lemma` | [natAbs_valMinAbs_neg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean/declarations/natabs-valminabs-neg--9bd0e4d6266b5d6978613c68.md) | 141 | `result-track:9bd0e4d6266b5d6978613c6874fce2db636cfe3fa5a3854b5c0b71c1d3d3cd67` |
| 18 | `theorem` | [natAbs_valMinAbs_eq_natAbs_valMinAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean/declarations/natabs-valminabs-eq-natabs-valminabs--8275fc0e2fd0a33b5790adf8.md) | 146 | `result-track:8275fc0e2fd0a33b5790adf865a0d27c6a7f87555e286fe3dfbee0f5849ea92a` |
| 19 | `theorem` | [abs_valMinAbs_eq_abs_valMinAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean/declarations/abs-valminabs-eq-abs-valminabs--cbb8fc322d8380e4d6b95180.md) | 155 | `result-track:cbb8fc322d8380e4d6b95180fecc97953e2ff0fe4a5b483129578851ffe4a8ce` |
| 20 | `lemma` | [val_eq_ite_valMinAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean/declarations/val-eq-ite-valminabs--a98faf6bd68ceee5e54c1611.md) | 160 | `result-track:a98faf6bd68ceee5e54c16114b4eeb2a2ff778c759d9391a28f0adb8715a5b39` |
| 21 | `lemma` | [prime_ne_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean/declarations/prime-ne-zero--192d9d4c236cb8053afca369.md) | 165 | `result-track:192d9d4c236cb8053afca369474ae4cfed4962d463ab2df114d853e24c6d15a5` |
| 22 | `lemma` | [valMinAbs_natAbs_eq_min](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean/declarations/valminabs-natabs-eq-min--b8db42b17844be544aa7f7bb.md) | 172 | `result-track:b8db42b17844be544aa7f7bbab1372ad5beac82c9612c32056e04a8bc0e2e053` |
| 23 | `lemma` | [valMinAbs_natCast_of_le_half](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean/declarations/valminabs-natcast-of-le-half--da1dd47e2f6f125916bcabe5.md) | 179 | `result-track:da1dd47e2f6f125916bcabe53b78cd5a5d35f8d412ef14764f8a22fe11bdfaba` |
| 24 | `lemma` | [valMinAbs_natCast_of_half_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean/declarations/valminabs-natcast-of-half-lt--2a9ab6fb001bd39407b7eccc.md) | 185 | `result-track:2a9ab6fb001bd39407b7ecccc6b96ed61549aa1015c3bb5e7fbc26d2fb74eb1b` |
| 25 | `lemma` | [valMinAbs_natCast_eq_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean/declarations/valminabs-natcast-eq-self--a3ec3f56dd16787a8fe96930.md) | 192 | `result-track:a3ec3f56dd16787a8fe96930641bf03d37d56c57d4a3ce5ce81afe3d7ffeb005` |
| 26 | `lemma` | [natAbs_valMinAbs_add_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean/declarations/natabs-valminabs-add-le--248339370c311535043d98de.md) | 197 | `result-track:248339370c311535043d98de650580a171aaf151a0c926689090962acbe16c6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
