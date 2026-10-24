# Verification target: GRWTSK.Analysis.FiniteDimension.Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b9d4818ff159efc9cfd66012e9f5a2d560fb041",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/index.md) · [Full source](../../../../mathematics/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b9d4818ff159efc9cfd66012e9f5a2d560fb041`.

Source path: `GRWTSK/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Series` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.BumpFunction.Convolution` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.BumpFunction.InnerProduct` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.EuclideanDist` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.NormedSpace` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pointwise.Support` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_smooth_tsupport_subset](../../../../mathematics/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/declarations/exists-smooth-tsupport-subset--a36e2554f738be78f2a03a91.md) | 42 | `result-track:a36e2554f738be78f2a03a917a2383a7ff39319da06bb847c8216f0c848a5a6e` |
| 2 | `theorem` | [IsOpen.exists_smooth_support_eq](../../../../mathematics/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/declarations/isopen-exists-smooth-support-eq--8731ed703aa8416de2ac2c66.md) | 78 | `result-track:8731ed703aa8416de2ac2c6627fafcdc4fd64b78be3a848b381f6dc1425b3bb4` |
| 3 | `def` | [φ](../../../../mathematics/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/declarations/anonymous--d97be09ea0a9bc16c35d4547.md) | 205 | `declaration-track:d97be09ea0a9bc16c35d4547960932aa3f463181cb907b50bcc9f03f0f7eac51` |
| 4 | `theorem` | [u_exists](../../../../mathematics/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/declarations/u-exists--c3479be5fc98025e5be79f1a.md) | 215 | `result-track:c3479be5fc98025e5be79f1ab1da5278a281f2358f681074c945c5a74a83a4b9` |
| 5 | `def` | [u](../../../../mathematics/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/declarations/u--68f5b13fb640b0adff1c8692.md) | 249 | `declaration-track:68f5b13fb640b0adff1c869233fd895bf5e63fee3fec89987ef2a47799bfa901` |
| 6 | `theorem` | [u_smooth](../../../../mathematics/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/declarations/u-smooth--06d03187fc66b9d3e5af2672.md) | 255 | `result-track:06d03187fc66b9d3e5af267204da24b74eaa5ac6578d3bf4c2f47e746b83aab4` |
| 7 | `theorem` | [u_continuous](../../../../mathematics/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/declarations/u-continuous--e694588863b50ce22fca2596.md) | 259 | `result-track:e694588863b50ce22fca2596ca89b531fcc352225aebd403fdd0a25680e010dd` |
| 8 | `theorem` | [u_support](../../../../mathematics/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/declarations/u-support--d28895efce7158afced55048.md) | 263 | `result-track:d28895efce7158afced55048b00ad4ddd0c520fdbf0c3a9db8dd67af3df773d8` |
| 9 | `theorem` | [u_compact_support](../../../../mathematics/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/declarations/u-compact-support--78f873cf023fe92bfa4ee342.md) | 267 | `result-track:78f873cf023fe92bfa4ee3420b1f8c924779dc36f380bff791e8c4437592ee09` |
| 10 | `theorem` | [u_nonneg](../../../../mathematics/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/declarations/u-nonneg--99c627c782cd6bec9f4752f3.md) | 274 | `result-track:99c627c782cd6bec9f4752f3ae85ab5a2f598dbcf31b3f75c9749b2b98d2d4cd` |
| 11 | `theorem` | [u_le_one](../../../../mathematics/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/declarations/u-le-one--d79df8cbda545eb5d322b47a.md) | 278 | `result-track:d79df8cbda545eb5d322b47ae16887c09d4657d2da9d2326ec3acdcaf35c492d` |
| 12 | `theorem` | [u_neg](../../../../mathematics/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/declarations/u-neg--2db8f86ef39112d6923907f3.md) | 282 | `result-track:2db8f86ef39112d6923907f313793c009e977a3d249572b05a5535790d28d07f` |
| 13 | `theorem` | [u_int_pos](../../../../mathematics/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/declarations/u-int-pos--6391748edffc6e5e42bea21f.md) | 292 | `result-track:6391748edffc6e5e42bea21f4cb4eba1e661e6267faa27d79afb9f98bf5b38fb` |
| 14 | `def` | [w](../../../../mathematics/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/declarations/w--279313a511484db0596e462e.md) | 304 | `declaration-track:279313a511484db0596e462e45a1c41b264a87b8039065d1304a719bb92efb5b` |
| 15 | `theorem` | [w_def](../../../../mathematics/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/declarations/w-def--1067789e1ae27f6c0eec583d.md) | 308 | `result-track:1067789e1ae27f6c0eec583d23f754126a5abf352da8055a1c61def32122198b` |
| 16 | `theorem` | [w_nonneg](../../../../mathematics/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/declarations/w-nonneg--4fc4ae222b58388ba3270700.md) | 313 | `result-track:4fc4ae222b58388ba32707002b6c3e33def54b76dddaabbe864665d17997830f` |
| 17 | `theorem` | [w_mul_φ_nonneg](../../../../mathematics/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/declarations/w-mul-nonneg--e237651b4420be6c74c70326.md) | 321 | `result-track:e237651b4420be6c74c70326ae852e0228172818e8fb995d687b60e7fb00616c` |
| 18 | `theorem` | [w_integral](../../../../mathematics/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/declarations/w-integral--953a8d54520cbd8092194fac.md) | 327 | `result-track:953a8d54520cbd8092194face626c1326e357a26319ff8da12dedc3b5bd9a9bb` |
| 19 | `theorem` | [w_support](../../../../mathematics/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/declarations/w-support--518acb631f54040349e4328e.md) | 333 | `result-track:518acb631f54040349e4328ef0f707d9fa71261f2e6c26b6e93de4f1da97dbbd` |
| 20 | `theorem` | [w_compact_support](../../../../mathematics/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/declarations/w-compact-support--b043592ba6b91baa2afd529f.md) | 344 | `result-track:b043592ba6b91baa2afd529f50adcf04fba72a5389acb15d3bda2f9161a5c8f1` |
| 21 | `def` | [y](../../../../mathematics/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/declarations/y--61964ee6d9134f82d176d1d7.md) | 355 | `declaration-track:61964ee6d9134f82d176d1d76af17785957982397d31ad3564bf2831ec3f47a9` |
| 22 | `theorem` | [y_neg](../../../../mathematics/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/declarations/y-neg--09730b28b5b4a79907825182.md) | 359 | `result-track:09730b28b5b4a799078251829bf0859986e1573a900f12aa52ab0dab468ed682` |
| 23 | `theorem` | [y_eq_one_of_mem_closedBall](../../../../mathematics/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/declarations/y-eq-one-of-mem-closedball--4c4bb5674800aa75f0a53a5f.md) | 367 | `result-track:4c4bb5674800aa75f0a53a5f810a22d318a9c097ecdc5107144b810b0acdf3fb` |
| 24 | `theorem` | [y_eq_zero_of_not_mem_ball](../../../../mathematics/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/declarations/y-eq-zero-of-not-mem-ball--da510913aa4de70a3dcace58.md) | 386 | `result-track:da510913aa4de70a3dcace58b460cbdbf66d3e7b6ad56dcad7c19a7ac985407c` |
| 25 | `theorem` | [y_nonneg](../../../../mathematics/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/declarations/y-nonneg--99ef3cff0335208965563298.md) | 404 | `result-track:99ef3cff0335208965563298e53b5a800408b2ac1f487ea1a506acfb40adb9a8` |
| 26 | `theorem` | [y_le_one](../../../../mathematics/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/declarations/y-le-one--f6b0b9f9213541932249fbe9.md) | 408 | `result-track:f6b0b9f9213541932249fbe9e619a94892cce4ed4e78aad9e50c4331e73975eb` |
| 27 | `theorem` | [y_pos_of_mem_ball](../../../../mathematics/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/declarations/y-pos-of-mem-ball--b8ed77ed9926a8ee4bfed3b9.md) | 423 | `result-track:b8ed77ed9926a8ee4bfed3b99cf71bb423fbd191eaea76a21611c2f304fec853` |
| 28 | `theorem` | [y_smooth](../../../../mathematics/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/declarations/y-smooth--d38bd1fba3ef7579a709c0dc.md) | 468 | `result-track:d38bd1fba3ef7579a709c0dcea347eeef3f5c2634a7bb1b38245be5734c5a82c` |
| 29 | `theorem` | [y_support](../../../../mathematics/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/declarations/y-support--94b858e70741f64dfc01a916.md) | 496 | `result-track:94b858e70741f64dfc01a9161463591cc8917be4a4001616827716f5995404f8` |
| 30 | `instance` | [(anonymous)](../../../../mathematics/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/declarations/instance--802df518696356890cbbf525.md) | 507 | `declaration-track:802df518696356890cbbf525b1b27a0915ade4467bb769f75d33ffcea2b595cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
