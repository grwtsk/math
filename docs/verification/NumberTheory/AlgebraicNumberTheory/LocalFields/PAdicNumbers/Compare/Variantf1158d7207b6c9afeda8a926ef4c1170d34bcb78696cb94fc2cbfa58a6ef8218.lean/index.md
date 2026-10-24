# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers.Compare.Variantf1158d7207b6c9afeda8a926ef4c1170d34bcb78696cb94fc2cbfa58a6ef8218

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c99776913713c3804774ca70e4b71997dceb405a",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantf1158d7207b6c9afeda8a926ef4c1170d34bcb78696cb94fc2cbfa58a6ef8218.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantf1158d7207b6c9afeda8a926ef4c1170d34bcb78696cb94fc2cbfa58a6ef8218.lean/index.md) · [Full source](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantf1158d7207b6c9afeda8a926ef4c1170d34bcb78696cb94fc2cbfa58a6ef8218.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c99776913713c3804774ca70e4b71997dceb405a`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantf1158d7207b6c9afeda8a926ef4c1170d34bcb78696cb94fc2cbfa58a6ef8218.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantf1158d7207b6c9afeda8a926ef4c1170d34bcb78696cb94fc2cbfa58a6ef8218.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.Truncated` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.Identities` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.RingHoms` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_of_le_of_cast_pow_eq_zero](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantf1158d7207b6c9afeda8a926ef4c1170d34bcb78696cb94fc2cbfa58a6ef8218.lean/declarations/eq-of-le-of-cast-pow-eq-zero--bbc746cf4d90bbfaf294fded.md) | 41 | `result-track:bbc746cf4d90bbfaf294fded68fc405ce74177bb18ef3cef059a46e2bca7d9ea` |
| 2 | `theorem` | [card_zmod](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantf1158d7207b6c9afeda8a926ef4c1170d34bcb78696cb94fc2cbfa58a6ef8218.lean/declarations/card-zmod--0c2e8aeaa557707c268a6d7c.md) | 57 | `result-track:0c2e8aeaa557707c268a6d7c5af868bc6098ea1a8defbafc571a641fa7e49b23` |
| 3 | `theorem` | [charP_zmod](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantf1158d7207b6c9afeda8a926ef4c1170d34bcb78696cb94fc2cbfa58a6ef8218.lean/declarations/charp-zmod--c4f688ff2dc285fa6fdfddcf.md) | 60 | `result-track:c4f688ff2dc285fa6fdfddcf6ebb7a85326adc64f5728c387a919a7c56f8fcd7` |
| 4 | `def` | [zmodEquivTrunc](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantf1158d7207b6c9afeda8a926ef4c1170d34bcb78696cb94fc2cbfa58a6ef8218.lean/declarations/zmodequivtrunc--282f3a47ed06c2fc0eed43dd.md) | 70 | `declaration-track:282f3a47ed06c2fc0eed43dd88944d9594b8a1eb84b15ec4ca7aaa95c7de695a` |
| 5 | `theorem` | [zmodEquivTrunc_apply](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantf1158d7207b6c9afeda8a926ef4c1170d34bcb78696cb94fc2cbfa58a6ef8218.lean/declarations/zmodequivtrunc-apply--47cb7d315dfee03fe687bffa.md) | 73 | `result-track:47cb7d315dfee03fe687bffa45dcc75272c605cb076f9dd85a025c82344c4ba1` |
| 6 | `theorem` | [commutes](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantf1158d7207b6c9afeda8a926ef4c1170d34bcb78696cb94fc2cbfa58a6ef8218.lean/declarations/commutes--05afd98ae7fa9dc882bcbb4d.md) | 90 | `result-track:05afd98ae7fa9dc882bcbb4d788ba95d1f237df11352995ed184d7651f78a89d` |
| 7 | `theorem` | [commutes'](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantf1158d7207b6c9afeda8a926ef4c1170d34bcb78696cb94fc2cbfa58a6ef8218.lean/declarations/commutes--836b07f1fb2b1b80a47f4e79.md) | 95 | `result-track:836b07f1fb2b1b80a47f4e796dbdb131bde511572f95d95a7bdcdd7f5fb77f2f` |
| 8 | `theorem` | [commutes_symm'](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantf1158d7207b6c9afeda8a926ef4c1170d34bcb78696cb94fc2cbfa58a6ef8218.lean/declarations/commutes-symm--c2517d100a1849ec8394f81c.md) | 99 | `result-track:c2517d100a1849ec8394f81cd7d62eb1a10bfe829b67e9154eeae835bafa418f` |
| 9 | `theorem` | [commutes_symm](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantf1158d7207b6c9afeda8a926ef4c1170d34bcb78696cb94fc2cbfa58a6ef8218.lean/declarations/commutes-symm--4f2ff33fcaf27ca5691463f6.md) | 118 | `result-track:4f2ff33fcaf27ca5691463f663a80cdafcc03271c801c6ec37707e207d5cc31c` |
| 10 | `def` | [toZModPow](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantf1158d7207b6c9afeda8a926ef4c1170d34bcb78696cb94fc2cbfa58a6ef8218.lean/declarations/tozmodpow--9ce529b77048795168d869bb.md) | 135 | `declaration-track:9ce529b77048795168d869bb782a06872d77ce11e3f13401226331cb164b837e` |
| 11 | `theorem` | [toZModPow_compat](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantf1158d7207b6c9afeda8a926ef4c1170d34bcb78696cb94fc2cbfa58a6ef8218.lean/declarations/tozmodpow-compat--8c680e12210ccf87ffb8306b.md) | 138 | `result-track:8c680e12210ccf87ffb8306b3031352c2c76d89f7891ca57641ae3b7d417310d` |
| 12 | `def` | [toPadicInt](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantf1158d7207b6c9afeda8a926ef4c1170d34bcb78696cb94fc2cbfa58a6ef8218.lean/declarations/topadicint--f45474e69295421d41bbf3b4.md) | 151 | `declaration-track:f45474e69295421d41bbf3b4a53a50c7eaacac2464afa3c61264ae1afc705eba` |
| 13 | `theorem` | [zmodEquivTrunc_compat](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantf1158d7207b6c9afeda8a926ef4c1170d34bcb78696cb94fc2cbfa58a6ef8218.lean/declarations/zmodequivtrunc-compat--f8e2832b2044a40838f3a99a.md) | 154 | `result-track:f8e2832b2044a40838f3a99ab56f1d4c5a15ab4e547dfa1bffe212d4b606c34b` |
| 14 | `def` | [fromPadicInt](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantf1158d7207b6c9afeda8a926ef4c1170d34bcb78696cb94fc2cbfa58a6ef8218.lean/declarations/frompadicint--1c892adaaca9d7f973a96128.md) | 164 | `declaration-track:1c892adaaca9d7f973a9612857f97871777b5f6a1c8937a6d9bc05bca7a0a934` |
| 15 | `theorem` | [toPadicInt_comp_fromPadicInt](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantf1158d7207b6c9afeda8a926ef4c1170d34bcb78696cb94fc2cbfa58a6ef8218.lean/declarations/topadicint-comp-frompadicint--09a8d4f63f6d087eca809fc1.md) | 168 | `result-track:09a8d4f63f6d087eca809fc1d28b04cb3f4fc81288335cea46a5390ad755c7e8` |
| 16 | `theorem` | [toPadicInt_comp_fromPadicInt_ext](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantf1158d7207b6c9afeda8a926ef4c1170d34bcb78696cb94fc2cbfa58a6ef8218.lean/declarations/topadicint-comp-frompadicint-ext--05cfc63a686213a2752e2d08.md) | 176 | `result-track:05cfc63a686213a2752e2d08613a616d3186d568c89d503274cb3fed26ed75e2` |
| 17 | `theorem` | [fromPadicInt_comp_toPadicInt](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantf1158d7207b6c9afeda8a926ef4c1170d34bcb78696cb94fc2cbfa58a6ef8218.lean/declarations/frompadicint-comp-topadicint--e201a7187d5023a36331a771.md) | 180 | `result-track:e201a7187d5023a36331a77101de25f998817a5e02f0bc0c8aa03c0126f75cd2` |
| 18 | `theorem` | [fromPadicInt_comp_toPadicInt_ext](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantf1158d7207b6c9afeda8a926ef4c1170d34bcb78696cb94fc2cbfa58a6ef8218.lean/declarations/frompadicint-comp-topadicint-ext--8c051c435f2e2af9d90e2246.md) | 188 | `result-track:8c051c435f2e2af9d90e22461932750b95cd30c41573fc59cf4c9eaadb96528c` |
| 19 | `def` | [equiv](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantf1158d7207b6c9afeda8a926ef4c1170d34bcb78696cb94fc2cbfa58a6ef8218.lean/declarations/equiv--1df1fb025f99501fe98033f8.md) | 195 | `declaration-track:1df1fb025f99501fe98033f806ce492abc96c0de346c62fb881d3e3e0a191529` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
