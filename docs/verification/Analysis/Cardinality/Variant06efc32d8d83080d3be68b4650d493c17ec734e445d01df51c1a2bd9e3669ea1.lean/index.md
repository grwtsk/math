# Verification target: GRWTSK.Analysis.Cardinality.Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0c75800e6ddb04d36684a319fe7ba27432d7012",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/index.md) · [Full source](../../../../mathematics/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0c75800e6ddb04d36684a319fe7ba27432d7012`.

Source path: `GRWTSK/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean.json)

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
| 1 | `def` | [cantorFunctionAux](../../../../mathematics/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/declarations/cantorfunctionaux--c92f2046591d782b40591367.md) | 69 | `declaration-track:c92f2046591d782b405913674eb33cbbcb2ff866c118f11810125e8bb173f832` |
| 2 | `theorem` | [cantorFunctionAux_true](../../../../mathematics/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/declarations/cantorfunctionaux-true--8555e792dba719af56aa8ed8.md) | 73 | `result-track:8555e792dba719af56aa8ed8c36b8b3612a66b295c8160d333e509c523f63765` |
| 3 | `theorem` | [cantorFunctionAux_false](../../../../mathematics/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/declarations/cantorfunctionaux-false--06284b14b131b75c98ba9a08.md) | 77 | `result-track:06284b14b131b75c98ba9a08f87845362223c55113032f0cef23c0e9a4e6f556` |
| 4 | `theorem` | [cantorFunctionAux_nonneg](../../../../mathematics/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/declarations/cantorfunctionaux-nonneg--5a8771ca96a0a3ea970245a7.md) | 80 | `result-track:5a8771ca96a0a3ea970245a7c5cd0768c6473be1ff17b2c53671dd75160446b4` |
| 5 | `theorem` | [cantorFunctionAux_eq](../../../../mathematics/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/declarations/cantorfunctionaux-eq--d158f4af0977365b23c886bd.md) | 85 | `result-track:d158f4af0977365b23c886bd21a3997888c200272cb876938e295706c5416b05` |
| 6 | `theorem` | [cantorFunctionAux_zero](../../../../mathematics/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/declarations/cantorfunctionaux-zero--399e80e13681ee098b248ee4.md) | 88 | `result-track:399e80e13681ee098b248ee43904e5724d739beecf99ac783bae108ac5d1bc13` |
| 7 | `theorem` | [cantorFunctionAux_succ](../../../../mathematics/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/declarations/cantorfunctionaux-succ--5b1050da0291b97e9701f6a3.md) | 91 | `result-track:5b1050da0291b97e9701f6a32251880c7dfa19f086a73473c691ebabeb458916` |
| 8 | `theorem` | [summable_cantor_function](../../../../mathematics/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/declarations/summable-cantor-function--b3d25b09dc43369f29010f3c.md) | 97 | `result-track:b3d25b09dc43369f29010f3ce3d2ffc515fe0cd1275120d22e91390721312d92` |
| 9 | `def` | [cantorFunction](../../../../mathematics/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/declarations/cantorfunction--e1f32b3ea9e312309be24311.md) | 104 | `declaration-track:e1f32b3ea9e312309be24311ed4f9ccf0784c97eb693371c2da00fe01bf0ba8a` |
| 10 | `theorem` | [cantorFunction_le](../../../../mathematics/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/declarations/cantorfunction-le--2f120c6381a9ab26a95b3175.md) | 107 | `result-track:2f120c6381a9ab26a95b31758e299edc7aa297197efad23addcfbb130e8b19d0` |
| 11 | `theorem` | [cantorFunction_succ](../../../../mathematics/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/declarations/cantorfunction-succ--0fddb41e0db42ebc0b33d28e.md) | 114 | `result-track:0fddb41e0db42ebc0b33d28ee169a8f80ff6f92d0b672bb0755e276b089659fb` |
| 12 | `theorem` | [increasing_cantorFunction](../../../../mathematics/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/declarations/increasing-cantorfunction--858562dd763367d2768ee99c.md) | 122 | `result-track:858562dd763367d2768ee99cd060752929770f0ff25239dd5836f33670e436f5` |
| 13 | `theorem` | [cantorFunction_injective](../../../../mathematics/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/declarations/cantorfunction-injective--fbcdfd7ff054359a0d0a0e4b.md) | 167 | `result-track:fbcdfd7ff054359a0d0a0e4b4eddcd853ac4adcbf4b1c312df04bccd3143676e` |
| 14 | `theorem` | [mk_real](../../../../mathematics/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/declarations/mk-real--c47c08fb586b8f048606bccb.md) | 193 | `result-track:c47c08fb586b8f048606bccb831dc9546486897c8e4f73a01cb7c9d9cfd2709d` |
| 15 | `theorem` | [mk_univ_real](../../../../mathematics/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/declarations/mk-univ-real--0124adbb661420fc32eae79e.md) | 206 | `result-track:0124adbb661420fc32eae79e20810e8de6e245abdb41ac287158afca2cdaced8` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/declarations/instance--a32661f1cfe78369d3136521.md) | 209 | `declaration-track:a32661f1cfe78369d31365215e20979844f9c61380d2791b86f4b76df89dcd59` |
| 17 | `theorem` | [not_countable_real](../../../../mathematics/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/declarations/not-countable-real--54dd064bb09e6fbbf7dbf306.md) | 213 | `result-track:54dd064bb09e6fbbf7dbf306cc5ce870c2ecc61eb77b7d06aa5e6c09fdce1b7b` |
| 18 | `theorem` | [mk_Ioi_real](../../../../mathematics/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/declarations/mk-ioi-real--b285ca784fc7252d0a2abd29.md) | 217 | `result-track:b285ca784fc7252d0a2abd295c7e7b1b3e4fb3c8b901b85e255f29bd6adbecf3` |
| 19 | `theorem` | [mk_Ici_real](../../../../mathematics/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/declarations/mk-ici-real--6969796e8a2d3f42e6294a6a.md) | 237 | `result-track:6969796e8a2d3f42e6294a6a13903eeb6008ba9cd3c9cf1dd3c3c5e849da4d41` |
| 20 | `theorem` | [mk_Iio_real](../../../../mathematics/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/declarations/mk-iio-real--eb9e11b0924b6b525dcea15b.md) | 241 | `result-track:eb9e11b0924b6b525dcea15bba311c2c784838e35bd43e2682c203d1980627cc` |
| 21 | `theorem` | [mk_Iic_real](../../../../mathematics/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/declarations/mk-iic-real--93d9379c336993265c62b86c.md) | 248 | `result-track:93d9379c336993265c62b86ceeeb5f99c9bf04eaa4c9f2574f22c52d455a0d89` |
| 22 | `theorem` | [mk_Ioo_real](../../../../mathematics/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/declarations/mk-ioo-real--c7b0f76c382a9e8cf398da29.md) | 252 | `result-track:c7b0f76c382a9e8cf398da29eacdffae9eeae3a1d99a08b4a0dd63b8040543d2` |
| 23 | `theorem` | [mk_Ico_real](../../../../mathematics/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/declarations/mk-ico-real--c9b6cfec6c84d36adbb7f5a3.md) | 263 | `result-track:c9b6cfec6c84d36adbb7f5a3c94720b6527d07c370c3aff54ce2287e11208f4d` |
| 24 | `theorem` | [mk_Icc_real](../../../../mathematics/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/declarations/mk-icc-real--0c98ed20b2549fb5adb4a6a6.md) | 267 | `result-track:0c98ed20b2549fb5adb4a6a606222fec0048c1f8a94fce42bede2105ee529446` |
| 25 | `theorem` | [mk_Ioc_real](../../../../mathematics/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/declarations/mk-ioc-real--2ef65d9c1a6d0a7f50905ec3.md) | 271 | `result-track:2ef65d9c1a6d0a7f50905ec37aab3265a7861895704a974da6e6334178835e53` |
| 26 | `theorem` | [mk_unitInterval](../../../../mathematics/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/declarations/mk-unitinterval--e6bc71081d260c32f4f3835a.md) | 275 | `result-track:e6bc71081d260c32f4f3835aa27a4c89a92c8d71f8875174c232ba315b5b9a38` |
| 27 | `lemma` | [Real.Ioo_countable_iff](../../../../mathematics/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/declarations/real-ioo-countable-iff--3a54568213738282813b9a8a.md) | 279 | `result-track:3a54568213738282813b9a8a437fb9670faf99e28dadb54e9b4c242c2e4c0b3c` |
| 28 | `lemma` | [Real.Ico_countable_iff](../../../../mathematics/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/declarations/real-ico-countable-iff--7fbd6be4d7114ca48332effa.md) | 287 | `result-track:7fbd6be4d7114ca48332effa90837f634fd6b0651b0b84f40b1f8a844786028b` |
| 29 | `lemma` | [Real.Ioc_countable_iff](../../../../mathematics/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/declarations/real-ioc-countable-iff--bc20c2c99caf04b047e578de.md) | 295 | `result-track:bc20c2c99caf04b047e578def93966283ae65b4b08b4a982e3c0484db719475e` |
| 30 | `lemma` | [Real.Icc_countable_iff](../../../../mathematics/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean/declarations/real-icc-countable-iff--4a818c3ff942b2f5dbc6f1bb.md) | 303 | `result-track:4a818c3ff942b2f5dbc6f1bb8b3c7e268230bff5ddc1af1f10363c1d8761b114` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
