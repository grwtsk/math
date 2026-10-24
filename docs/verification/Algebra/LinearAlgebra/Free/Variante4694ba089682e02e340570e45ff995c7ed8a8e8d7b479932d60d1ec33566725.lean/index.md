# Verification target: GRWTSK.Algebra.LinearAlgebra.Free.Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15d082b9e385d917b477f436945ecaa370cb8c74",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15d082b9e385d917b477f436945ecaa370cb8c74`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean.json)

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
| 1 | `class` | [Module.IsTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/module-istorsionfree--5328408ced135a5d43bfaa5f.md) | 45 | `declaration-track:5328408ced135a5d43bfaa5f982383194f711848185911651eef97d14de9382b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/instance--7a0550f64fe12ac9d96d5a3a.md) | 50 | `declaration-track:7a0550f64fe12ac9d96d5a3a5db5b31f4ad4e5f4ea87ccb8e7c27d50d22f5804` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/instance--00d982988de3c4dc274ffdf9.md) | 51 | `declaration-track:00d982988de3c4dc274ffdf9fd653af0c4a955e5f1d0cc508bf9568dc934f752` |
| 4 | `lemma` | [Function.Injective.moduleIsTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/function-injective-moduleistorsionfree--0c2f0b8129ce9766d7155697.md) | 54 | `result-track:0c2f0b8129ce9766d715569729d9a64b8f1c39c9195483e360bf6b149d222ac3` |
| 5 | `lemma` | [Module.IsTorsionFree.comap](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/module-istorsionfree-comap--931de5919f1302006c891e6f.md) | 60 | `result-track:931de5919f1302006c891e6f85dfac244b97ee3cafffcc430e2fb75912a2c84f` |
| 6 | `instance` | [IsAddTorsionFree.to_isTorsionFree_nat](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/isaddtorsionfree-to-istorsionfree-nat--400521ba866661496deb7e7f.md) | 65 | `declaration-track:400521ba866661496deb7e7f3ce4ed67bedc18565238e936a23037772ef1afd0` |
| 7 | `instance` | [Subsingleton.to_moduleIsTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/subsingleton-to-moduleistorsionfree--44de4a011feea0977c29841c.md) | 68 | `declaration-track:44de4a011feea0977c29841ceb43f219c0a1b667f699e1062ae53ec3a9658d1f` |
| 8 | `lemma` | [IsRegular.smul_right_injective](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/isregular-smul-right-injective--26826df4bc3f22c80e312fa3.md) | 74 | `result-track:26826df4bc3f22c80e312fa3f89411144ae972f45d5e0f38217d7ba22c448fb9` |
| 9 | `lemma` | [IsRegular.smul_right_inj](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/isregular-smul-right-inj--2d465787235c37799f752aec.md) | 77 | `result-track:2d465787235c37799f752aecc3fecea9a246834b2baa6e9b627ef7c294de2b94` |
| 10 | `lemma` | [IsRegular.smul_eq_zero_iff_right](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/isregular-smul-eq-zero-iff-right--1bebb9782dafaa1543cf8db8.md) | 80 | `result-track:1bebb9782dafaa1543cf8db8c5fd6849a63aa9c8f0713169e585972c907c3bcd` |
| 11 | `lemma` | [IsRegular.smul_ne_zero_iff_right](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/isregular-smul-ne-zero-iff-right--d17e971c52eb2467d94d773e.md) | 83 | `result-track:d17e971c52eb2467d94d773ecd6cce7a9996989556f2835e3c139b13d1857239` |
| 12 | `lemma` | [Module.IsTorsionFree.trans](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/module-istorsionfree-trans--c9c629c746ee45dbe7b2163b.md) | 87 | `result-track:c9c629c746ee45dbe7b2163ba8a5505f94340cbb81bd23b778365efdc03f6eae` |
| 13 | `lemma` | [IsSMulRegular.of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/issmulregular-of-ne-zero--2425a24d3156ec5bc86a2b54.md) | 96 | `result-track:2425a24d3156ec5bc86a2b54b66c875dc7c8def731602799cc099fad14a5e4da` |
| 14 | `lemma` | [smul_right_injective](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/smul-right-injective--96d1bdf42695ed6f774eb23d.md) | 100 | `result-track:96d1bdf42695ed6f774eb23d2b15e87a274540ee811cbce32dbc878702043b17` |
| 15 | `lemma` | [smul_right_inj](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/smul-right-inj--82188151d185df8011b76ffe.md) | 103 | `result-track:82188151d185df8011b76ffe3dff08705eabf557162c591cede16b2c657f83cf` |
| 16 | `lemma` | [smul_eq_zero_iff_right](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/smul-eq-zero-iff-right--c9d5fd8ca1aba18e57117232.md) | 106 | `result-track:c9d5fd8ca1aba18e57117232f612925d6018c16aba03853529069d2d02c1ff2f` |
| 17 | `lemma` | [smul_ne_zero_iff_right](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/smul-ne-zero-iff-right--014ddb32fe000c82a319c92e.md) | 109 | `result-track:014ddb32fe000c82a319c92e2c6f3768348b351cd3c910456289fde2ed068435` |
| 18 | `lemma` | [smul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/smul-eq-zero--f46698ee9634eb8d5353c9d2.md) | 111 | `result-track:f46698ee9634eb8d5353c9d22cf86f7cc6a42ccb233e8a4af11df3c144754627` |
| 19 | `lemma` | [smul_ne_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/smul-ne-zero-iff--4276ac903de89ab549159ca2.md) | 114 | `result-track:4276ac903de89ab549159ca204f054bb132b468e10e6d983569626d41551970a` |
| 20 | `lemma` | [smul_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/smul-ne-zero--dedebc5a86ef6da6e7a71a8a.md) | 116 | `result-track:dedebc5a86ef6da6e7a71a8a5e25d1463daacd2e6287aa5ec535e2669b85939f` |
| 21 | `lemma` | [smul_eq_zero_iff_left](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/smul-eq-zero-iff-left--21053984c4bea9c687d686f3.md) | 118 | `result-track:21053984c4bea9c687d686f3829021c5c84675207cb4235ab064fcf6cc41c1ce` |
| 22 | `lemma` | [smul_ne_zero_iff_left](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/smul-ne-zero-iff-left--1eb19552d059fb92bf73d2e4.md) | 119 | `result-track:1eb19552d059fb92bf73d2e45137d4d5cb1d18587c425a5ac8ba970eb03c1724` |
| 23 | `lemma` | [IsAddTorsionFree.of_isTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/isaddtorsionfree-of-istorsionfree--49e468b1f7048acb8bfe2d28.md) | 125 | `result-track:49e468b1f7048acb8bfe2d282eedf185bbaa23d9d7363e7e333619ab3c829672` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/instance--e0f367e41b97ec5bd3e9c517.md) | 130 | `declaration-track:e0f367e41b97ec5bd3e9c5171e1d2f88e014625b6de2dacbcc3e13d9de8aabf0` |
| 25 | `lemma` | [Module.isTorsionFree_nat_iff_isAddTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/module-istorsionfree-nat-iff-isaddtorsionfree--00c94afb6758eb4338d113b9.md) | 134 | `result-track:00c94afb6758eb4338d113b92395a92e9e6715ec4298b4ae91424a94bcb5c33b` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/instance--6c6331cb72d26a97c8e62732.md) | 143 | `declaration-track:6c6331cb72d26a97c8e62732e7da2dc957ca875c60b287cec90c3e625f7d8e22` |
| 27 | `lemma` | [Module.isTorsionFree_int_iff_isAddTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/module-istorsionfree-int-iff-isaddtorsionfree--5a57b06c34b3710a6afc6091.md) | 147 | `result-track:5a57b06c34b3710a6afc6091c6f2cbc9620c8d810b9d1e814090c1e6c977edb5` |
| 28 | `theorem` | [isLeftRegular_natCast](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/isleftregular-natcast--15ca8b352558634b723ad4ae.md) | 159 | `result-track:15ca8b352558634b723ad4ae67fa50a7d3c272550f0db30789f9b9ed3bec39b9` |
| 29 | `theorem` | [isRightRegular_natCast](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/isrightregular-natcast--f99822c448a9fb1f1925fd46.md) | 163 | `result-track:f99822c448a9fb1f1925fd46c94b4c0d00011bede534779e8f2665db6f4ae6b3` |
| 30 | `theorem` | [isRegular_natCast](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/isregular-natcast--41606062b17877d5d16cd9c1.md) | 167 | `result-track:41606062b17877d5d16cd9c1a6b860fbe3f74776cca96ac03a10e95789d6128a` |
| 31 | `lemma` | [Module.IsTorsionFree.of_smul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/module-istorsionfree-of-smul-eq-zero--fba8e1cba38a8f88c6b66225.md) | 175 | `result-track:fba8e1cba38a8f88c6b66225ec3c3d7f19a6278d9ad13f20355be0ad87799715` |
| 32 | `lemma` | [Module.isTorsionFree_iff_smul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/module-istorsionfree-iff-smul-eq-zero--489d37cfae09d7caca1d45ad.md) | 181 | `result-track:489d37cfae09d7caca1d45add352d594edc40d5e9c9dc818585bbad1470168e7` |
| 33 | `lemma` | [smul_left_injective](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/smul-left-injective--7f0cc118b17a35362584742e.md) | 189 | `result-track:7f0cc118b17a35362584742e74375a5f9eb17e3f024aa7735fe91f39a4c27e22` |
| 34 | `lemma` | [smul_left_inj](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/smul-left-inj--5462832786c8d8b11b53f569.md) | 194 | `result-track:5462832786c8d8b11b53f5691fa8ae60c7985ea2a1701190b803025ef652420b` |
| 35 | `lemma` | [CharZero.of_isAddTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/charzero-of-isaddtorsionfree--016319f99b2905781897db8f.md) | 205 | `result-track:016319f99b2905781897db8f5d0ce78e6324c4ed4932db97d5338678fbfc628a` |
| 36 | `theorem` | [isSelfNeg_of_isSMulRegular_two](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variante4694ba089682e02e340570e45ff995c7ed8a8e8d7b479932d60d1ec33566725.lean/declarations/isselfneg-of-issmulregular-two--ae991eff4399780c5d1e6eef.md) | 216 | `result-track:ae991eff4399780c5d1e6eef77e1ec3fe668fe3813305670eb53fa0de54c5dbc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
