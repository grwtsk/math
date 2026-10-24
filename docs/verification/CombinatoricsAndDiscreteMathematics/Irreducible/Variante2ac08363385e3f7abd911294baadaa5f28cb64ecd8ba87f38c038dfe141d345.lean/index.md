# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Irreducible.Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55d9c94b47b64be2ae9e0f31238eb8889bb84cc3",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Irreducible/Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55d9c94b47b64be2ae9e0f31238eb8889bb84cc3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Irreducible/Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Irreducible/Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SupIrred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345.lean/declarations/supirred--827eeb626fcf226abfdde90f.md) | 59 | `declaration-track:827eeb626fcf226abfdde90f7b916e1d013efd3db921bbba8acc46806662e3db` |
| 2 | `def` | [SupPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345.lean/declarations/supprime--bf93ac624f6e67062a4111dd.md) | 66 | `declaration-track:bf93ac624f6e67062a4111dd1426df23aeb836b4520e9792a8cfbfdb9a0e36f5` |
| 3 | `theorem` | [SupIrred.not_isMin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345.lean/declarations/supirred-not-ismin--d571605e7e0a2256d6d769a7.md) | 70 | `result-track:d571605e7e0a2256d6d769a75443c5d77202844b94920338eb6594db680130b9` |
| 4 | `theorem` | [SupPrime.not_isMin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345.lean/declarations/supprime-not-ismin--e0c213e35497150fce535c51.md) | 74 | `result-track:e0c213e35497150fce535c518b2cd591f4a8fe1eba26056426599ce2a056a728` |
| 5 | `theorem` | [IsMin.not_supIrred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345.lean/declarations/ismin-not-supirred--3803464ce6f47d9b66b1afa8.md) | 78 | `result-track:3803464ce6f47d9b66b1afa8e60f2877caf016eb4b9d4164dbaa165f128df3f2` |
| 6 | `theorem` | [IsMin.not_supPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345.lean/declarations/ismin-not-supprime--d16779be49eaf016cf19ba7a.md) | 81 | `result-track:d16779be49eaf016cf19ba7ab275d7e2cb87724334317dc68ed4dd57128aa702` |
| 7 | `theorem` | [not_supIrred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345.lean/declarations/not-supirred--a125eb7c0a6908468ab84170.md) | 84 | `result-track:a125eb7c0a6908468ab841705dce466a57d1fae16f515a9a753749b4ccf1b088` |
| 8 | `theorem` | [not_supPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345.lean/declarations/not-supprime--f4a5928c9ed74a7c7688dcd3.md) | 91 | `result-track:f4a5928c9ed74a7c7688dcd3a69be7268a3dcda10363b67a2d6e1ffa7288f241` |
| 9 | `theorem` | [SupPrime.supIrred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345.lean/declarations/supprime-supirred--886feddb311f903717a8dbd5.md) | 95 | `result-track:886feddb311f903717a8dbd5bfed04d3a2a8d78a020487aa3c7a2bdf3c328b96` |
| 10 | `theorem` | [SupPrime.le_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345.lean/declarations/supprime-le-sup--f8561ef3550462d0b69fbe65.md) | 99 | `result-track:f8561ef3550462d0b69fbe65f9a25d66e9d031b0ebf22593e62be5c0855015a0` |
| 11 | `theorem` | [not_supIrred_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345.lean/declarations/not-supirred-bot--0725421167c6665e86b669c5.md) | 105 | `result-track:0725421167c6665e86b669c5e66978baaf5fcd808051a9ca615f3baca3c9d05a` |
| 12 | `theorem` | [not_supPrime_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345.lean/declarations/not-supprime-bot--4ea50e5341bfbd9612ae46c6.md) | 109 | `result-track:4ea50e5341bfbd9612ae46c632118715e188d29f52ec4628fca33a9c3ef2553c` |
| 13 | `theorem` | [SupIrred.ne_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345.lean/declarations/supirred-ne-bot--4dc23cee737b9a5342a0d8f4.md) | 113 | `result-track:4dc23cee737b9a5342a0d8f4763e54faa1704168908676179aa41d9263cb0bab` |
| 14 | `theorem` | [SupPrime.ne_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345.lean/declarations/supprime-ne-bot--15adb1467450d6f48a6ae3d6.md) | 116 | `result-track:15adb1467450d6f48a6ae3d64bb4b009924867359012de8310739882f0e6f188` |
| 15 | `theorem` | [SupIrred.finset_sup_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345.lean/declarations/supirred-finset-sup-eq--144ab42b4849395882e31e5c.md) | 119 | `result-track:144ab42b4849395882e31e5c92d7be9ac3dbd0a4a390544cd5d3ee05327f0558` |
| 16 | `theorem` | [SupPrime.le_finset_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345.lean/declarations/supprime-le-finset-sup--cf819a22d43bd408d8f13f58.md) | 129 | `result-track:cf819a22d43bd408d8f13f5886ab02ad2dfa41c6c71ae3a7a2d468353f594aa6` |
| 17 | `theorem` | [exists_supIrred_decomposition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345.lean/declarations/exists-supirred-decomposition--78e77b878b9e59e980962d0c.md) | 142 | `result-track:78e77b878b9e59e980962d0c896104cf430e31c5c2d116f1ed2870566b366b4c` |
| 18 | `theorem` | [infIrred_toDual](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345.lean/declarations/infirred-todual--a451f7d860e2505134aa4843.md) | 164 | `result-track:a451f7d860e2505134aa4843f7cbe2b2363360bb774a8976c74aac472e1400e9` |
| 19 | `theorem` | [infPrime_toDual](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345.lean/declarations/infprime-todual--be3fbd9d91227ccd6271696c.md) | 168 | `result-track:be3fbd9d91227ccd6271696c7c0a5c38e255bfe7fe657f631eb072f184b65571` |
| 20 | `theorem` | [supIrred_ofDual](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345.lean/declarations/supirred-ofdual--7f19e210781cdc498e0059ba.md) | 172 | `result-track:7f19e210781cdc498e0059ba78d3188d5497e1fae37597020ce8f9b1930764f0` |
| 21 | `theorem` | [supPrime_ofDual](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345.lean/declarations/supprime-ofdual--431533cb94dea380951acc86.md) | 176 | `result-track:431533cb94dea380951acc86bd90029679d35ef713fa78f398ac8e581ec1f211` |
| 22 | `theorem` | [supPrime_iff_supIrred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345.lean/declarations/supprime-iff-supirred--34ed5b8cdb3e301dd3bbe8ff.md) | 194 | `result-track:34ed5b8cdb3e301dd3bbe8ff75904272bdc0f361dc7e1f87ca885041dafe373e` |
| 23 | `theorem` | [supPrime_iff_not_isMin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345.lean/declarations/supprime-iff-not-ismin--89de57a5ef0802210bea3d2b.md) | 207 | `result-track:89de57a5ef0802210bea3d2b764241d69a9a884220387359d132fe026701e0f2` |
| 24 | `theorem` | [supIrred_iff_not_isMin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345.lean/declarations/supirred-iff-not-ismin--ebf2a1ca8cd0472b6ababede.md) | 211 | `result-track:ebf2a1ca8cd0472b6ababede355320d3231a7337f78c6f1bef1565be86e1efee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
