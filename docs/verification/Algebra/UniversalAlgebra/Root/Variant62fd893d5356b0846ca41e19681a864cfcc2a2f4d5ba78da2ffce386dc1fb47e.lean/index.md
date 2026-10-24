# Verification target: GRWTSK.Algebra.UniversalAlgebra.Root.Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ed3b0a70f665b0f1deebb4b8dae22531948f328",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Root/Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ed3b0a70f665b0f1deebb4b8dae22531948f328`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Root/Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Root/Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Floor.Div` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [floorRoot](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e.lean/declarations/floorroot--e0e89442402a8504bb22cdaa.md) | 57 | `declaration-track:e0e89442402a8504bb22cdaabc45ceae446081a59e0f7591cc6989a709e5f5a2` |
| 2 | `lemma` | [floorRoot_def](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e.lean/declarations/floorroot-def--51358c3a4669f73e7ca1c847.md) | 62 | `result-track:51358c3a4669f73e7ca1c8479a19a83d41f87cf8fa7ac8e2a4b3df5d04fbb025` |
| 3 | `lemma` | [floorRoot_zero_left](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e.lean/declarations/floorroot-zero-left--ec21664669d2772347ecd29a.md) | 66 | `result-track:ec21664669d2772347ecd29aba904d10e917090ca3e91088c50b919b3b1a5dd8` |
| 4 | `lemma` | [floorRoot_zero_right](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e.lean/declarations/floorroot-zero-right--2788c26ef0edf26a90f765d8.md) | 67 | `result-track:2788c26ef0edf26a90f765d8b53611e51258ae6d7c5fb80e972c558c8ed32f0c` |
| 5 | `lemma` | [floorRoot_one_left](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e.lean/declarations/floorroot-one-left--272b69914e2c13090b773829.md) | 68 | `result-track:272b69914e2c13090b773829bc1e0a4e8a5ae033dcad38073daaff1ea982d76d` |
| 6 | `lemma` | [floorRoot_one_right](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e.lean/declarations/floorroot-one-right--409dffa882216d9601b557db.md) | 70 | `result-track:409dffa882216d9601b557db8d0165fe073fdab6f28dcb0d8163eaf917845a28` |
| 7 | `lemma` | [floorRoot_pow_self](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e.lean/declarations/floorroot-pow-self--999e3b7a340375022e19a2bb.md) | 72 | `result-track:999e3b7a340375022e19a2bbf393f4754af4a8ee7fe3d5c64a38a39ccf114004` |
| 8 | `lemma` | [floorRoot_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e.lean/declarations/floorroot-ne-zero--61ab8ab37fa64cdf93eadc2b.md) | 75 | `result-track:61ab8ab37fa64cdf93eadc2bf64e7e2b5cc76a1b1ee763064d27c7237832a919` |
| 9 | `lemma` | [floorRoot_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e.lean/declarations/floorroot-eq-zero--ffd0d2ff40a7df74da6c4b3d.md) | 78 | `result-track:ffd0d2ff40a7df74da6c4b3dc28567239fa3db54891771d03f9a2bbed9b24588` |
| 10 | `lemma` | [factorization_floorRoot](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e.lean/declarations/factorization-floorroot--7223d88a1992bd54b9db3f9f.md) | 81 | `result-track:7223d88a1992bd54b9db3f9f095dfe7ea3caa02bb843aa9245b90efda7cb2a04` |
| 11 | `lemma` | [pow_dvd_iff_dvd_floorRoot](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e.lean/declarations/pow-dvd-iff-dvd-floorroot--7f0c40585c14003a9cf2ca42.md) | 92 | `result-track:7f0c40585c14003a9cf2ca42c2fa866ed47ddbad0ac033857cbc5c0cdfb40f02` |
| 12 | `lemma` | [floorRoot_pow_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e.lean/declarations/floorroot-pow-dvd--b29cc25ddc7e6c103673d57f.md) | 103 | `result-track:b29cc25ddc7e6c103673d57ff295f30206d17c0f64f1127fc6b69403c8eca508` |
| 13 | `def` | [ceilRoot](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e.lean/declarations/ceilroot--a837cda4f2d85a596c2a7851.md) | 117 | `declaration-track:a837cda4f2d85a596c2a785106b9fd28e0475b912e968a6e073606464961e441` |
| 14 | `lemma` | [ceilRoot_def](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e.lean/declarations/ceilroot-def--001cd0e42cdc3e45488d2352.md) | 122 | `result-track:001cd0e42cdc3e45488d23521e7e142c26a0962fddce9a76f74a456081bf688e` |
| 15 | `lemma` | [ceilRoot_zero_left](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e.lean/declarations/ceilroot-zero-left--d5fc64108a847fd712e71949.md) | 128 | `result-track:d5fc64108a847fd712e7194953c681dd085e46cd837e31b2edee8b88136ef502` |
| 16 | `lemma` | [ceilRoot_zero_right](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e.lean/declarations/ceilroot-zero-right--d3ce4faaa56bd6fd6ed5f1f3.md) | 129 | `result-track:d3ce4faaa56bd6fd6ed5f1f3101445177e888bb26c9b106a77f004af32f03fca` |
| 17 | `lemma` | [ceilRoot_one_left](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e.lean/declarations/ceilroot-one-left--895f30c4b25de1ca25d9fac5.md) | 130 | `result-track:895f30c4b25de1ca25d9fac5c6d948dfa37a4aa2ac7eab51e15d649bea51834c` |
| 18 | `lemma` | [ceilRoot_one_right](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e.lean/declarations/ceilroot-one-right--c1bcc2407f26ef13d198ccc6.md) | 132 | `result-track:c1bcc2407f26ef13d198ccc68b854ba1f9ec1c63d6e8c6f3780677fb76e9c7d7` |
| 19 | `lemma` | [ceilRoot_pow_self](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e.lean/declarations/ceilroot-pow-self--81ffaec81413f87c3a3e227b.md) | 134 | `result-track:81ffaec81413f87c3a3e227b7c0c8ac042f57182cb75f685bdde0441749c978c` |
| 20 | `lemma` | [ceilRoot_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e.lean/declarations/ceilroot-ne-zero--3b913e6496d807f5117b92c2.md) | 137 | `result-track:3b913e6496d807f5117b92c2728a1b92f0144f8e0a26cda3f97a0721a52a14d2` |
| 21 | `lemma` | [ceilRoot_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e.lean/declarations/ceilroot-eq-zero--f197177730cdb049d80b17fb.md) | 140 | `result-track:f197177730cdb049d80b17fb71e4d91da0211e3a9579739b8042f9b45264298e` |
| 22 | `lemma` | [factorization_ceilRoot](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e.lean/declarations/factorization-ceilroot--a33f68050698ba9d9bc6629b.md) | 143 | `result-track:a33f68050698ba9d9bc6629bd518918f5a700cf7c1b511286c20392d13cfacb1` |
| 23 | `lemma` | [dvd_pow_iff_ceilRoot_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e.lean/declarations/dvd-pow-iff-ceilroot-dvd--6ece74c456f67f93502c6c22.md) | 158 | `result-track:6ece74c456f67f93502c6c22e464949b4dcd1fc7e7d8af20fea7ae2f615728e2` |
| 24 | `lemma` | [dvd_ceilRoot_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e.lean/declarations/dvd-ceilroot-pow--7ac567e363e4e24b3f4b7b07.md) | 167 | `result-track:7ac567e363e4e24b3f4b7b07b78b6f6de320fc38d40706acdfd61db7e666ed42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
