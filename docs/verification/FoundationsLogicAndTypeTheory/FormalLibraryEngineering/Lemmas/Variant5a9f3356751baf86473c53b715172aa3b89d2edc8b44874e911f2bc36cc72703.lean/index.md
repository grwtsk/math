# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b91f950c66540eb297c16e7f32c757d9685fb838",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b91f950c66540eb297c16e7f32c757d9685fb838`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.Nat.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Nat.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Nat.Div` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Algebra.Functions` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_zero_of_mul_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/eq-zero-of-mul-eq-zero--163e408b9ca41b6811c97a31.md) | 69 | `result-track:163e408b9ca41b6811c97a3167785efbb988c2a9ab45e600733812ed457efb8b` |
| 2 | `theorem` | [lt_of_le_and_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/lt-of-le-and-ne--ed372e428efbb3cdc887f17b.md) | 106 | `result-track:ed372e428efbb3cdc887f17bf0fafa336f052cfff66e6df78adaebe2d2b32feb` |
| 3 | `instance` | [linearOrder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/linearorder--27576b309d6a09d10905dcf9.md) | 112 | `declaration-track:27576b309d6a09d10905dcf969566c9843db9db5338c422a187691ad89acce63` |
| 4 | `def` | [ltGeByCases](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/ltgebycases--8b3a573de2f1ff11c2db10b7.md) | 199 | `declaration-track:8b3a573de2f1ff11c2db10b78e32fdefb2abf47487368a1adf5ba661befd9ef9` |
| 5 | `def` | [ltByCases](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/ltbycases--54a16f543bd8295a5f6034fa.md) | 203 | `declaration-track:54a16f543bd8295a5f6034fa1c53090fd76e513b354bdf48dbf6f427a99854c0` |
| 6 | `theorem` | [bit1_eq_succ_bit0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/bit1-eq-succ-bit0--4623c7a8aae521b7477d520e.md) | 231 | `result-track:4623c7a8aae521b7477d520e24211d03ae658bc379b92dc8089cef21a5f5d799` |
| 7 | `theorem` | [bit1_succ_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/bit1-succ-eq--37854f6aa120acd58a5e2368.md) | 235 | `result-track:37854f6aa120acd58a5e2368fe748b2e16c8ba64c4910dd518f6ad69c04d363a` |
| 8 | `theorem` | [bit1_ne_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/bit1-ne-one--a32085427d326c20277e0943.md) | 239 | `result-track:a32085427d326c20277e094346f060a7716e3f898e10a9c7dd83e21654e5f9fe` |
| 9 | `theorem` | [bit0_ne_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/bit0-ne-one--1f227ca99c43db0ba161c203.md) | 244 | `result-track:1f227ca99c43db0ba161c20393e980a0f3da8c317addafeb5189c2e8f34b7a85` |
| 10 | `theorem` | [bit1_ne_bit0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/bit1-ne-bit0--bee679feb029a3024698b5d4.md) | 253 | `result-track:bee679feb029a3024698b5d44e509410427ad8c555f7074d71a9fc7dce1832d0` |
| 11 | `theorem` | [bit0_ne_bit1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/bit0-ne-bit1--bd7d41980cda9f1cbd19908d.md) | 265 | `result-track:bd7d41980cda9f1cbd19908d6343de0d823cc0463607ade96d876339cfd1bbf6` |
| 12 | `theorem` | [bit0_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/bit0-inj--a0fc664fae964ec271e800eb.md) | 269 | `result-track:a0fc664fae964ec271e800eb24e7f8f5debc8d9275279427d583d5242d41079b` |
| 13 | `theorem` | [bit1_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/bit1-inj--0900ff719c9651cb081c59d8.md) | 282 | `result-track:0900ff719c9651cb081c59d893d513d735671e007724b8a3508232fd64f49db3` |
| 14 | `theorem` | [bit0_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/bit0-ne--ea76a9bcd3ea619a6f04ad35.md) | 288 | `result-track:ea76a9bcd3ea619a6f04ad356eba1a31758b5c37a0b1f4706c31620d153bf4e5` |
| 15 | `theorem` | [bit1_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/bit1-ne--1488cca29fb5efc4c72ec8d6.md) | 292 | `result-track:1488cca29fb5efc4c72ec8d63bbc3074a466b0ff20ad09cccda8ea25b9a144c5` |
| 16 | `theorem` | [zero_ne_bit0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/zero-ne-bit0--b9dcbf75c1e465fd93643e8a.md) | 296 | `result-track:b9dcbf75c1e465fd93643e8a35ebadc7ef83ea7d1b3352d129470635c903a029` |
| 17 | `theorem` | [zero_ne_bit1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/zero-ne-bit1--33ef55f74ae494cc8651c740.md) | 299 | `result-track:33ef55f74ae494cc8651c74065b7697a6a5d30452e64e0cde13ca90147fddbb0` |
| 18 | `theorem` | [one_ne_bit0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/one-ne-bit0--e46f7da5327aaf440fbdcb60.md) | 303 | `result-track:e46f7da5327aaf440fbdcb6083971fd36ff57aaab19731b240064508f3ba968e` |
| 19 | `theorem` | [one_ne_bit1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/one-ne-bit1--79bc51fcdab6fabc8f43c7bd.md) | 307 | `result-track:79bc51fcdab6fabc8f43c7bd9d9eb7e5d122340c2385cc40d7938cb20a46a85f` |
| 20 | `theorem` | [one_lt_bit1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/one-lt-bit1--f0db666e11991a996aa7fe3c.md) | 310 | `result-track:f0db666e11991a996aa7fe3c9c75fb5fb61645afe31854e710a7f330c70ebeff` |
| 21 | `theorem` | [one_lt_bit0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/one-lt-bit0--c424ce3404b41ddd39ae69bb.md) | 318 | `result-track:c424ce3404b41ddd39ae69bbdc7b80382714aba291d7b8b10b5cc403ab000ffd` |
| 22 | `theorem` | [bit0_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/bit0-lt--211b08a03a35d40cde3275de.md) | 326 | `result-track:211b08a03a35d40cde3275de483e43cd2d8996cfa01e59871d1533129515e937` |
| 23 | `theorem` | [bit1_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/bit1-lt--f9a8723c51b903c80c8cb7ac.md) | 330 | `result-track:f9a8723c51b903c80c8cb7ac83ab8bd6e6d730d0a34d5ef26b3aab580057d27e` |
| 24 | `theorem` | [bit0_lt_bit1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/bit0-lt-bit1--e9848faf4aa6ff25339edf2e.md) | 334 | `result-track:e9848faf4aa6ff25339edf2e9ce1af3bad4c104838530adf6c5d152a8f634419` |
| 25 | `theorem` | [bit1_lt_bit0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/bit1-lt-bit0--313adc1d87490ca5bae0827b.md) | 338 | `result-track:313adc1d87490ca5bae0827bdc5256d49f12a977542f2bc568f26f309f51dd3e` |
| 26 | `theorem` | [one_le_bit1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/one-le-bit1--deaf41cd927d4775b6ad15af.md) | 347 | `result-track:deaf41cd927d4775b6ad15afca74b44b4dcb9ba5f59a10554fd0c650a49d248e` |
| 27 | `theorem` | [one_le_bit0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/one-le-bit0--6df90a498f28b63abfab9de7.md) | 351 | `result-track:6df90a498f28b63abfab9de784e8d36d289eb0fcad7c07d604af8bbd9a1c6e26` |
| 28 | `def` | [discriminate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/discriminate--5aa64c3594daa466cac5ea30.md) | 372 | `declaration-track:5aa64c3594daa466cac5ea30388bf0c849d3a7c526382b3cbd48f83d86beef93` |
| 29 | `theorem` | [one_eq_succ_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/one-eq-succ-zero--fd2c174af62530cff648694d.md) | 378 | `result-track:fd2c174af62530cff648694d6cf1ae7068cddf4be0ee789931a5381db823beb8` |
| 30 | `theorem` | [le_sub_iff_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/le-sub-iff-right--6bd0e10be6f7a9cfe6b5dfe2.md) | 416 | `result-track:6bd0e10be6f7a9cfe6b5dfe20948393c00f291290e41aad5801b6ef43e2a9b6c` |
| 31 | `theorem` | [sub.right_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/sub-right-comm--03fb13c2f1a2b59f3111340a.md) | 448 | `result-track:03fb13c2f1a2b59f3111340a1d46c9305cc1d96c218d4fa2e9a869b21a2b907f` |
| 32 | `def` | [twoStepInduction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/twostepinduction--0df975312e2520a0ee83e8dd.md) | 489 | `declaration-track:0df975312e2520a0ee83e8dd9e848691d256532f9fec815828ee0625c8a52ca7` |
| 33 | `def` | [subInduction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/subinduction--0761c604e0edac8d9eb7a261.md) | 496 | `declaration-track:0761c604e0edac8d9eb7a261334dc87d22c88cd314a9667a8bc82a5c481c8092` |
| 34 | `theorem` | [strong_induction_on](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/strong-induction-on--e215ea543465da83d01e8331.md) | 507 | `result-track:e215ea543465da83d01e83312acaba802c6d10454cf757247a613629001307bd` |
| 35 | `theorem` | [case_strong_induction_on](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/case-strong-induction-on--e78e8deb625438fa309cf5fb.md) | 512 | `result-track:e78e8deb625438fa309cf5fb076fe1f254a79cc86773a782a21f875eb41f39e7` |
| 36 | `theorem` | [cond_decide_mod_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/cond-decide-mod-two--5b6764cc805b434bfa26f40d.md) | 558 | `result-track:5b6764cc805b434bfa26f40dcadb38fc3d8a62a724ac1346eabe572358278d03` |
| 37 | `theorem` | [mul_div_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/mul-div-mul--21a25e74410675adea79e927.md) | 623 | `result-track:21a25e74410675adea79e9270a83306fea7280b89c3d567c91f7ee0932be611f` |
| 38 | `instance` | [decidableDvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/decidabledvd--6e8ebe4c07f83675f93d6e13.md) | 662 | `declaration-track:6e8ebe4c07f83675f93d6e13eabe4c44264e8e77829dff13368983f2c59bc2c9` |
| 39 | `def` | [iterate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/iterate--81bcf9b43a40d964766f4c0c.md) | 679 | `declaration-track:81bcf9b43a40d964766f4c0c5070be42b80439c1c7ed2111d712543184ea7cbd` |
| 40 | `def` | [lbp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/lbp--ed68b32e8b14a931fc5c8a16.md) | 693 | `declaration-track:ed68b32e8b14a931fc5c8a160c954cd248b9839fc1d28f4222184710f33cc846` |
| 41 | `def` | [wf_lbp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/wf-lbp--30e842fb9dc91653317d7357.md) | 698 | `declaration-track:30e842fb9dc91653317d7357476c3269f439a7f07cb9e78a0b0d70da6ecd195b` |
| 42 | `def` | [findX](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/findx--3a4d9269caa705301279e18b.md) | 712 | `declaration-track:3a4d9269caa705301279e18bf1a5b9bc4df2e45e166955bca8df4aa5a2a3552f` |
| 43 | `def` | [find](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/find--28f3055ad6c61119130d2fbd.md) | 734 | `declaration-track:28f3055ad6c61119130d2fbd004a7c4da4f6a1c47a31f66d36aaa8affb4eb084` |
| 44 | `theorem` | [find_spec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/find-spec--3b5d3aafcc7a5dbf7784c4db.md) | 738 | `result-track:3b5d3aafcc7a5dbf7784c4dbe14fb7a675446aa0d3264007f67d5a46bf8f7294` |
| 45 | `theorem` | [find_min](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/find-min--509316a1f594944194f0da5c.md) | 742 | `result-track:509316a1f594944194f0da5cb25687ee8b1131333437739f9641e8269563564a` |
| 46 | `theorem` | [find_min'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/find-min--5d48fe5a3b586ec138b7dabc.md) | 746 | `result-track:5d48fe5a3b586ec138b7dabc7ba66cb221c4ee6ec3c70f284ef20cc381ccb82e` |
| 47 | `lemma` | [to_digits_core_lens_eq_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/to-digits-core-lens-eq-aux--8096e6e30a2926e1f241ff0f.md) | 750 | `result-track:8096e6e30a2926e1f241ff0f09f801ef8939c15bf38023a0ceaffc6e8b2aace7` |
| 48 | `lemma` | [to_digits_core_lens_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/to-digits-core-lens-eq--9adb3d56179eafe813ba8faf.md) | 764 | `result-track:9adb3d56179eafe813ba8fafe12c1d83133fecdd3dae43bfdda8b1d98fe2d390` |
| 49 | `lemma` | [nat_repr_len_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/nat-repr-len-aux--15ae14d0a372b66001f60756.md) | 780 | `result-track:15ae14d0a372b66001f6075620d4272dc3e01969e4c3bffd4a581a93071b6cfe` |
| 50 | `lemma` | [to_digits_core_length](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/to-digits-core-length--dd5932e6b316f127bb252667.md) | 787 | `result-track:dd5932e6b316f127bb25266795621265057d893a12bcce738e5a1238a183352a` |
| 51 | `lemma` | [repr_length](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/declarations/repr-length--2bac2297d7932345c96bf968.md) | 815 | `result-track:2bac2297d7932345c96bf968de0c5b89f9e7501ee02650d50ad96daaf09e2f64` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
