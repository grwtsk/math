# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Expect.Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "550a4a9db7560901d3c7597d9efcd7bf03178f48",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `550a4a9db7560901d3c7597d9efcd7bf03178f48`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Torsion.Field` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [expect_eq_zero_iff_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean/declarations/expect-eq-zero-iff-of-nonneg--57981db79d88610098cfdde9.md) | 36 | `result-track:57981db79d88610098cfdde902c8ad537f6bd2ceaaef9edb50dff785d03adfaa` |
| 2 | `lemma` | [expect_eq_zero_iff_of_nonpos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean/declarations/expect-eq-zero-iff-of-nonpos--db178dd3833fb00a377ef639.md) | 40 | `result-track:db178dd3833fb00a377ef63995949a818d14d3909eb5f8db26f648939034ea08` |
| 3 | `lemma` | [expect_le_expect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean/declarations/expect-le-expect--a51602004adf18c93f91dfce.md) | 48 | `result-track:a51602004adf18c93f91dfceaf60ff7af874695bf12a2ca6f33137ed08e08c6d` |
| 4 | `lemma` | [expect_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean/declarations/expect-le--29a93d2e8859e7ce16d4cdcb.md) | 51 | `result-track:29a93d2e8859e7ce16d4cdcbf227e385b00a4ce763ae3cf05b0064a9624e3616` |
| 5 | `lemma` | [le_expect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean/declarations/le-expect--485144721d24bc9ed3fce5fa.md) | 55 | `result-track:485144721d24bc9ed3fce5fa22fc878f41495cba5421b4b496842d53b3c01343` |
| 6 | `lemma` | [expect_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean/declarations/expect-nonneg--56494146d8156eba9ffdc051.md) | 59 | `result-track:56494146d8156eba9ffdc0510b1308c5dc5445548107ff7975ef4173ddc93855` |
| 7 | `lemma` | [le_expect_nonempty_of_subadditive_on_pred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean/declarations/le-expect-nonempty-of-subadditive-on-pred--4d4f2ce326e07ef135c3e3b7.md) | 73 | `result-track:4d4f2ce326e07ef135c3e3b7c241e471909b17ec38ac164e2808b57dd3930558` |
| 8 | `lemma` | [le_expect_nonempty_of_subadditive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean/declarations/le-expect-nonempty-of-subadditive--cf9de79ec1f22a637983550c.md) | 83 | `result-track:cf9de79ec1f22a637983550c29c94c7454a4f9a66b7b19a437855ece0e805f92` |
| 9 | `lemma` | [le_expect_of_subadditive_on_pred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean/declarations/le-expect-of-subadditive-on-pred--5b8805407d826b9b77638f7c.md) | 92 | `result-track:5b8805407d826b9b77638f7cb59f98ef150b4921e18539af804af519e4360cef` |
| 10 | `lemma` | [le_expect_of_subadditive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean/declarations/le-expect-of-subadditive--ee7dd7e5887885939f27fcd9.md) | 103 | `result-track:ee7dd7e5887885939f27fcd9ba7858600ad4f8c4f272c2123d724e14b77c35e0` |
| 11 | `lemma` | [expect_lt_expect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean/declarations/expect-lt-expect--b245d087ee5bb2818a3caf51.md) | 115 | `result-track:b245d087ee5bb2818a3caf51df31d2f8aee6adf9edcff80a84c48bfc1c69002a` |
| 12 | `lemma` | [expect_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean/declarations/expect-lt--cc2120cbd6ef691755f2cd92.md) | 120 | `result-track:cc2120cbd6ef691755f2cd926d29d5e1d3568a2177fc2c389b2ed4665580b3da` |
| 13 | `lemma` | [lt_expect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean/declarations/lt-expect--f6d13ca45979828dc142ee1a.md) | 125 | `result-track:f6d13ca45979828dc142ee1acf97316e16190b4467a75d67bfc931686a94f610` |
| 14 | `lemma` | [expect_pos'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean/declarations/expect-pos--c54ace3a6771fee523320c4d.md) | 130 | `result-track:c54ace3a6771fee523320c4d670a5e47ec4c660c92d2d700b5681542122b14db` |
| 15 | `lemma` | [expect_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean/declarations/expect-pos--88442c8bc8286b2d272e67dd.md) | 133 | `result-track:88442c8bc8286b2d272e67dd6c856d01f4b2d507e452bbcd8cf7957231c6b3d0` |
| 16 | `lemma` | [exists_lt_of_expect_lt_expect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean/declarations/exists-lt-of-expect-lt-expect--30879ad07727c9e481e26469.md) | 143 | `result-track:30879ad07727c9e481e26469da6818a35fdb7e07d21e01c7402298fc94012da0` |
| 17 | `lemma` | [exists_lt_of_lt_expect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean/declarations/exists-lt-of-lt-expect--be4c2b6e244b3036161edfc2.md) | 147 | `result-track:be4c2b6e244b3036161edfc2feb9f65a27ee4fb9b0f89bdb3dfe534b6b8056a2` |
| 18 | `lemma` | [exists_lt_of_expect_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean/declarations/exists-lt-of-expect-lt--8b849dd16544f1d4247eaad8.md) | 150 | `result-track:8b849dd16544f1d4247eaad80146965d048e7befe9d40c93d6248c0acb36c512` |
| 19 | `lemma` | [exists_le_of_expect_le_expect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean/declarations/exists-le-of-expect-le-expect--a57d365b63aca448df133956.md) | 159 | `result-track:a57d365b63aca448df1339566755573e5afdb1e5da651e499f9a7a61ded7ac21` |
| 20 | `lemma` | [exists_le_of_le_expect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean/declarations/exists-le-of-le-expect--8afd6c4cd26314e885c4d859.md) | 163 | `result-track:8afd6c4cd26314e885c4d859b0dc80d52d09de9609efc2a3191541c19c09f7e2` |
| 21 | `lemma` | [exists_le_of_expect_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean/declarations/exists-le-of-expect-le--d2ece3a55df4f81a76eb6074.md) | 166 | `result-track:d2ece3a55df4f81a76eb6074fa7e2070d21a87427e93ed9b7c8593a2b296ee4a` |
| 22 | `lemma` | [abs_expect_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean/declarations/abs-expect-le--b28a46f373da2556aee7e3ff.md) | 174 | `result-track:b28a46f373da2556aee7e3ff4f5de05d4751e64253f9bfaf4b0127f457308223` |
| 23 | `lemma` | [expect_mul_sq_le_sq_mul_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean/declarations/expect-mul-sq-le-sq-mul-sq--b511f5506373d6203f300248.md) | 184 | `result-track:b511f5506373d6203f30024833dd4349131cf114580d359d67d5970d0e543510` |
| 24 | `lemma` | [expect_eq_zero_iff_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean/declarations/expect-eq-zero-iff-of-nonneg--8b7e034cb77fa9a560bfce9c.md) | 201 | `result-track:8b7e034cb77fa9a560bfce9caf44d498a910597df89a5f152937b8a9e50454c4` |
| 25 | `lemma` | [expect_eq_zero_iff_of_nonpos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean/declarations/expect-eq-zero-iff-of-nonpos--03d41049a52c8bdf84c284ce.md) | 205 | `result-track:03d41049a52c8bdf84c284ceb45d0b8457441ec09ed5c3e3949c26bcb51adba4` |
| 26 | `def` | [evalFinsetExpect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean/declarations/evalfinsetexpect--e0de35bd52b83b2857d412d2.md) | 221 | `declaration-track:e0de35bd52b83b2857d412d268c087d755ffa5bc53c3a140d81624c99876ff6e` |
| 27 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean/declarations/example--2ed8d70ae759fdd73103102a.md) | 251 | `declaration-track:2ed8d70ae759fdd73103102aa7da5b7b0f5e5692f41afb6e43b058d0a4b86768` |
| 28 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean/declarations/example--297cd57d30b419992900c307.md) | 252 | `declaration-track:297cd57d30b419992900c307391b2fb8acc34ab3a632b0e16b9ddc99ac047ae7` |
| 29 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean/declarations/example--33b82520d19baba1cbe2f363.md) | 253 | `declaration-track:33b82520d19baba1cbe2f3636521ce1447593752220cb0aa3b43592a5f9ba843` |
| 30 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean/declarations/example--fbe35a3c0ed18cb27e1c1c65.md) | 254 | `declaration-track:fbe35a3c0ed18cb27e1c1c656ac9eee71a34a201af7df661c098c7aac37c3ee2` |
| 31 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variantc346c32cde15641399693d4b17cae64abc57cfaf597cb8de0cb22c74b8802484.lean/declarations/example--46f3779db406b6d4428fdb30.md) | 255 | `declaration-track:46f3779db406b6d4428fdb30b1f745dc2c26feb21a66064c8bfd3abf697f55e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
