# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LineDeriv.Variantd0cca44fb6304e71da78d4d6ea8716c3126cb3cb18cd427c8654f786e667030a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9758b0166a00d6586f970559a2bd970a881f82cb",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variantd0cca44fb6304e71da78d4d6ea8716c3126cb3cb18cd427c8654f786e667030a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variantd0cca44fb6304e71da78d4d6ea8716c3126cb3cb18cd427c8654f786e667030a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variantd0cca44fb6304e71da78d4d6ea8716c3126cb3cb18cd427c8654f786e667030a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9758b0166a00d6586f970559a2bd970a881f82cb`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variantd0cca44fb6304e71da78d4d6ea8716c3126cb3cb18cd427c8654f786e667030a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variantd0cca44fb6304e71da78d4d6ea8716c3126cb3cb18cd427c8654f786e667030a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsExtrFilter.hasLineDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variantd0cca44fb6304e71da78d4d6ea8716c3126cb3cb18cd427c8654f786e667030a.lean/declarations/isextrfilter-haslinederivat-eq-zero--be11645c972b75201f5c61b5.md) | 35 | `result-track:be11645c972b75201f5c61b56df152a1cb9e072d072d5259d5724f5f26f910ec` |
| 2 | `theorem` | [IsExtrFilter.lineDeriv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variantd0cca44fb6304e71da78d4d6ea8716c3126cb3cb18cd427c8654f786e667030a.lean/declarations/isextrfilter-linederiv-eq-zero--1882a304cb93c6cbc512e541.md) | 39 | `result-track:1882a304cb93c6cbc512e54144f2d179825a28f0532d0b89de71ece3342dff33` |
| 3 | `theorem` | [IsExtrOn.hasLineDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variantd0cca44fb6304e71da78d4d6ea8716c3126cb3cb18cd427c8654f786e667030a.lean/declarations/isextron-haslinederivat-eq-zero--d164cbee4ca4aef9fd57314a.md) | 47 | `result-track:d164cbee4ca4aef9fd57314a67ef72e5fe767c8ddc8a4215701e4d38d52c9b37` |
| 4 | `theorem` | [IsExtrOn.lineDeriv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variantd0cca44fb6304e71da78d4d6ea8716c3126cb3cb18cd427c8654f786e667030a.lean/declarations/isextron-linederiv-eq-zero--5c6e4b10abf1258457c97b6c.md) | 51 | `result-track:5c6e4b10abf1258457c97b6cf73a4697d88bf67294209c091a6aad14a9532f92` |
| 5 | `theorem` | [IsMinOn.hasLineDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variantd0cca44fb6304e71da78d4d6ea8716c3126cb3cb18cd427c8654f786e667030a.lean/declarations/isminon-haslinederivat-eq-zero--b5785b1654fe6555b598ab9e.md) | 55 | `result-track:b5785b1654fe6555b598ab9ee6e279af3a74d6848bde29eac254ed2c41514cdd` |
| 6 | `theorem` | [IsMinOn.lineDeriv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variantd0cca44fb6304e71da78d4d6ea8716c3126cb3cb18cd427c8654f786e667030a.lean/declarations/isminon-linederiv-eq-zero--8ba8af9ce259d87d05d5cc5b.md) | 59 | `result-track:8ba8af9ce259d87d05d5cc5b4c87189da09b7ec9ea8353982a04d4ddc94a13d4` |
| 7 | `theorem` | [IsMaxOn.hasLineDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variantd0cca44fb6304e71da78d4d6ea8716c3126cb3cb18cd427c8654f786e667030a.lean/declarations/ismaxon-haslinederivat-eq-zero--72d7255cd90e7ba7e7ced890.md) | 63 | `result-track:72d7255cd90e7ba7e7ced890ff4991298b46b426923868b9ecadad1853f9bc53` |
| 8 | `theorem` | [IsMaxOn.lineDeriv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variantd0cca44fb6304e71da78d4d6ea8716c3126cb3cb18cd427c8654f786e667030a.lean/declarations/ismaxon-linederiv-eq-zero--e40d8c32e71b98fc04af879c.md) | 67 | `result-track:e40d8c32e71b98fc04af879cc52fca8fa1dc3ad73273164b04383497915a06ee` |
| 9 | `theorem` | [IsExtrOn.hasLineDerivWithinAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variantd0cca44fb6304e71da78d4d6ea8716c3126cb3cb18cd427c8654f786e667030a.lean/declarations/isextron-haslinederivwithinat-eq-zero--737d23bd27b685c75b52c6e3.md) | 71 | `result-track:737d23bd27b685c75b52c6e3ef9f2b5e38e830b80713e223d2ce5ab33cc30bde` |
| 10 | `theorem` | [IsExtrOn.lineDerivWithin_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variantd0cca44fb6304e71da78d4d6ea8716c3126cb3cb18cd427c8654f786e667030a.lean/declarations/isextron-linederivwithin-eq-zero--10df9cece455a6a639669ecc.md) | 75 | `result-track:10df9cece455a6a639669ecc27db24fd0bfac7b9fc1220742df533575e0caf94` |
| 11 | `theorem` | [IsMinOn.hasLineDerivWithinAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variantd0cca44fb6304e71da78d4d6ea8716c3126cb3cb18cd427c8654f786e667030a.lean/declarations/isminon-haslinederivwithinat-eq-zero--e7070dd7bd1f5b258f216684.md) | 83 | `result-track:e7070dd7bd1f5b258f2166849bdb0cf63c3b214cf409d1e5c9ad5fa315bcce3b` |
| 12 | `theorem` | [IsMinOn.lineDerivWithin_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variantd0cca44fb6304e71da78d4d6ea8716c3126cb3cb18cd427c8654f786e667030a.lean/declarations/isminon-linederivwithin-eq-zero--86a6c7b7c28c75107c652874.md) | 87 | `result-track:86a6c7b7c28c75107c6528748d97134e4aceb8ad2050cf3439aa74cb505004f3` |
| 13 | `theorem` | [IsMaxOn.hasLineDerivWithinAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variantd0cca44fb6304e71da78d4d6ea8716c3126cb3cb18cd427c8654f786e667030a.lean/declarations/ismaxon-haslinederivwithinat-eq-zero--bfaa7363b7cb334fad13cacf.md) | 91 | `result-track:bfaa7363b7cb334fad13cacf17d6e44dfe8a61704e85db4d675290b6e6699795` |
| 14 | `theorem` | [IsMaxOn.lineDerivWithin_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variantd0cca44fb6304e71da78d4d6ea8716c3126cb3cb18cd427c8654f786e667030a.lean/declarations/ismaxon-linederivwithin-eq-zero--982ecb504f6891a454ea94f8.md) | 95 | `result-track:982ecb504f6891a454ea94f8716e9e7db5327cee2cda532004d4e145a20e55af` |
| 15 | `theorem` | [IsLocalExtr.hasLineDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variantd0cca44fb6304e71da78d4d6ea8716c3126cb3cb18cd427c8654f786e667030a.lean/declarations/islocalextr-haslinederivat-eq-zero--9daed5c3d352bdd6d9dd64b7.md) | 104 | `result-track:9daed5c3d352bdd6d9dd64b7a4adcf7cd18f4d12b995d31c20fc69ff2b819d7d` |
| 16 | `theorem` | [IsLocalExtr.lineDeriv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variantd0cca44fb6304e71da78d4d6ea8716c3126cb3cb18cd427c8654f786e667030a.lean/declarations/islocalextr-linederiv-eq-zero--b296f66888b642ba53f08481.md) | 108 | `result-track:b296f66888b642ba53f08481e8e5da061d8fed87309878fb1631a45db05cbf9a` |
| 17 | `theorem` | [IsLocalMin.hasLineDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variantd0cca44fb6304e71da78d4d6ea8716c3126cb3cb18cd427c8654f786e667030a.lean/declarations/islocalmin-haslinederivat-eq-zero--8e2bf5a894fd82a530eda56e.md) | 111 | `result-track:8e2bf5a894fd82a530eda56e28c1819e79d4095b140311c4347e80528f28b396` |
| 18 | `theorem` | [IsLocalMin.lineDeriv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variantd0cca44fb6304e71da78d4d6ea8716c3126cb3cb18cd427c8654f786e667030a.lean/declarations/islocalmin-linederiv-eq-zero--cb4cffc5bbd81680eb10dceb.md) | 115 | `result-track:cb4cffc5bbd81680eb10dceba46ee403c50addf1bf042bd346f135785834a7b0` |
| 19 | `theorem` | [IsLocalMax.hasLineDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variantd0cca44fb6304e71da78d4d6ea8716c3126cb3cb18cd427c8654f786e667030a.lean/declarations/islocalmax-haslinederivat-eq-zero--f74237d8915b5279bfce4fff.md) | 118 | `result-track:f74237d8915b5279bfce4fff7d61fe6e93c39adb869c385edc0ddb1e64e21c02` |
| 20 | `theorem` | [IsLocalMax.lineDeriv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variantd0cca44fb6304e71da78d4d6ea8716c3126cb3cb18cd427c8654f786e667030a.lean/declarations/islocalmax-linederiv-eq-zero--ffa0a00a404a8b474732b192.md) | 122 | `result-track:ffa0a00a404a8b474732b19246a5a80cc8262e109ebc338708bf6f38fb7d49c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
