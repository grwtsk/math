# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Comp.Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22a7503906153fe3e760dec33cc3ec9b310e37ef",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22a7503906153fe3e760dec33cc3ec9b310e37ef`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasFDerivAtFilter.comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/declarations/hasfderivatfilter-comp--d421bf91344bd6779d95c6fb.md) | 51 | `result-track:d421bf91344bd6779d95c6fb41030097ee9ff90b91bbd05dabc3f54a5d266dd7` |
| 2 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/declarations/example--91355e1ae44714ab71c3c035.md) | 60 | `declaration-track:91355e1ae44714ab71c3c03576dca5cdf53e40a013d56a12c700f1d3d26b4576` |
| 3 | `theorem` | [HasFDerivWithinAt.comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/declarations/hasfderivwithinat-comp--173501165ae4adfaf2857a92.md) | 75 | `result-track:173501165ae4adfaf2857a92e27648888ca571f758288b973812673ac2ae1862` |
| 4 | `theorem` | [HasFDerivAt.comp_hasFDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/declarations/hasfderivat-comp-hasfderivwithinat--abf0bda3903570c42de827cd.md) | 81 | `result-track:abf0bda3903570c42de827cda434a90ee2ebb1e0a3133c979b6a0c9436ea6fa2` |
| 5 | `theorem` | [HasFDerivWithinAt.comp_of_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/declarations/hasfderivwithinat-comp-of-tendsto--0e22830ca089cc5016f4f64f.md) | 87 | `result-track:0e22830ca089cc5016f4f64f903d6e6f72aca8400f021a3e491ca55458da8eab` |
| 6 | `theorem` | [HasFDerivWithinAt.comp_hasFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/declarations/hasfderivwithinat-comp-hasfderivat--073045036649bd5c93199768.md) | 92 | `result-track:073045036649bd5c9319976899b97f50576bd9b2a2be5a6a2f1e4e9555e22ab9` |
| 7 | `theorem` | [HasFDerivWithinAt.comp_hasFDerivAt_of_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/declarations/hasfderivwithinat-comp-hasfderivat-of-eq--9be1bc1fdbd066c336aa480d.md) | 97 | `result-track:9be1bc1fdbd066c336aa480d86baddc39a1bfe36cdc095d8f57c2b032439d19a` |
| 8 | `theorem` | [HasFDerivAt.comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/declarations/hasfderivat-comp--51597b8412f8d39013a06929.md) | 104 | `result-track:51597b8412f8d39013a0692934a164beeb20f5a4aa381b3176cfe82aafdca108` |
| 9 | `theorem` | [DifferentiableWithinAt.comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/declarations/differentiablewithinat-comp--1d59e02057fa32f36b48e554.md) | 109 | `result-track:1d59e02057fa32f36b48e554fd3f32c95ef5b0e4d5c543cdb7b4a05771fb78df` |
| 10 | `theorem` | [DifferentiableWithinAt.comp'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/declarations/differentiablewithinat-comp--4b8719d030afd6372e98a342.md) | 115 | `result-track:4b8719d030afd6372e98a342d7060bc65c8d90710dbfdef3f2a14a82dadeb032` |
| 11 | `theorem` | [DifferentiableAt.comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/declarations/differentiableat-comp--f69d769d768378806a2ca2a9.md) | 121 | `result-track:f69d769d768378806a2ca2a9e1fc745d44dfc50bdd43cea9f8418d7fd0d6f67f` |
| 12 | `theorem` | [DifferentiableAt.comp_differentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/declarations/differentiableat-comp-differentiablewithinat--fb859f87c8c7aed9fdcf7dd8.md) | 126 | `result-track:fb859f87c8c7aed9fdcf7dd866e8728d72376bbb2cfbd223362e767fd2034d9a` |
| 13 | `theorem` | [fderivWithin_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/declarations/fderivwithin-comp--ecde024aec61a0a93836a642.md) | 130 | `result-track:ecde024aec61a0a93836a642325ba1e4a1491d211ff907992b0dd449b153b4f3` |
| 14 | `theorem` | [fderivWithin_comp_of_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/declarations/fderivwithin-comp-of-eq--0e6b0da85f1551559fb41e07.md) | 137 | `result-track:0e6b0da85f1551559fb41e07a7177fe8717cb88443ec552ed70a7fbfadbe3f8d` |
| 15 | `theorem` | [fderivWithin_comp'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/declarations/fderivwithin-comp--0fa0fe826939e5601147d216.md) | 144 | `result-track:0fa0fe826939e5601147d216d1da0121be66beeb0719bdd6c3de84290cf814e9` |
| 16 | `theorem` | [fderivWithin_comp_of_eq'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/declarations/fderivwithin-comp-of-eq--f3f327f567cec42573d6c5b5.md) | 151 | `result-track:f3f327f567cec42573d6c5b59b6f93e89f61fe922f8e57c36125906c62ba98be` |
| 17 | `theorem` | [fderivWithin_fderivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/declarations/fderivwithin-fderivwithin--d8148febf3dc04fc5d306977.md) | 160 | `result-track:d8148febf3dc04fc5d30697798c8c528a6308a985634b8703fc6dc5cdaea5652` |
| 18 | `theorem` | [fderivWithin_comp₃](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/declarations/fderivwithin-comp--16422cc02b7798d5b49bf089.md) | 169 | `result-track:16422cc02b7798d5b49bf0891c228af52a4535b149983ce4eaf86a0b57cb3951` |
| 19 | `theorem` | [fderiv_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/declarations/fderiv-comp--b4e6ca57c48484de523f5251.md) | 181 | `result-track:b4e6ca57c48484de523f52515dd712a63ccac9bd666d8fc6bf5ab14fa0f42704` |
| 20 | `theorem` | [fderiv_comp'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/declarations/fderiv-comp--70cb019f69ffd2e9628c105a.md) | 188 | `result-track:70cb019f69ffd2e9628c105a87e25185d8d4e6b37ef62dfb0cc5b5605f1c0a77` |
| 21 | `theorem` | [fderiv_comp_fderivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/declarations/fderiv-comp-fderivwithin--3f3a753a06c51d2309d70a6c.md) | 192 | `result-track:3f3a753a06c51d2309d70a6c8eec5ce7235f89a878c2e6475a65210cb0a88a51` |
| 22 | `theorem` | [DifferentiableOn.comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/declarations/differentiableon-comp--9bca9630865abedff838b371.md) | 200 | `result-track:9bca9630865abedff838b3716dce6b3659a2fd6e948b2fc8686b4eb295c6a826` |
| 23 | `theorem` | [Differentiable.comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/declarations/differentiable-comp--096b1ccbd351c8f80abfa30d.md) | 205 | `result-track:096b1ccbd351c8f80abfa30df72060696ece1e5eff49ec5137a20ea673933090` |
| 24 | `theorem` | [Differentiable.comp_differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/declarations/differentiable-comp-differentiableon--e2b9043dfab4c8324e6d7382.md) | 210 | `result-track:e2b9043dfab4c8324e6d7382ebb822c6754a642b56c64c15627215e6ee3b8554` |
| 25 | `theorem` | [HasStrictFDerivAt.comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/declarations/hasstrictfderivat-comp--5782d916ad19332148b2a4c5.md) | 216 | `result-track:5782d916ad19332148b2a4c5b9ed1990a94d2b39b38a2a31d3018e177d316c96` |
| 26 | `theorem` | [Differentiable.iterate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/declarations/differentiable-iterate--1d1bb772cfcece753236583e.md) | 225 | `result-track:1d1bb772cfcece753236583e7190578672bd4b5600b2c50a50e9e8464b8528df` |
| 27 | `theorem` | [DifferentiableOn.iterate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/declarations/differentiableon-iterate--2dabeed39955e08b3d39d681.md) | 230 | `result-track:2dabeed39955e08b3d39d681c36e3845b38bb6f78efae2a32d5570a0e36bcdf3` |
| 28 | `theorem` | [HasFDerivAtFilter.iterate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/declarations/hasfderivatfilter-iterate--4d9721358843407cdc54b018.md) | 236 | `result-track:4d9721358843407cdc54b018802ba38d2553cc169855d703f647960f39d1a044` |
| 29 | `theorem` | [HasFDerivAt.iterate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/declarations/hasfderivat-iterate--22abf000ec205f5637fc8558.md) | 247 | `result-track:22abf000ec205f5637fc855866cb5cbca0ebd7b572bbc65a51a134555739ea6b` |
| 30 | `theorem` | [HasFDerivWithinAt.iterate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/declarations/hasfderivwithinat-iterate--8770f18c177ee834e490ad22.md) | 254 | `result-track:8770f18c177ee834e490ad22ddbc2438fc21193532d0b52fa99a62a882bf9222` |
| 31 | `theorem` | [HasStrictFDerivAt.iterate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/declarations/hasstrictfderivat-iterate--f57708e9c97109f0e88c62af.md) | 263 | `result-track:f57708e9c97109f0e88c62aff4817c25da36b251b3499ce3055bcba08a2f9a0b` |
| 32 | `theorem` | [DifferentiableAt.iterate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/declarations/differentiableat-iterate--07547989733a095cf89faad8.md) | 274 | `result-track:07547989733a095cf89faad8c1dd33727d7cfef5268a3110dfbf900a1129f222` |
| 33 | `theorem` | [DifferentiableWithinAt.iterate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant0d21216b00db65a47d269b329daf042b5c343f2fa61ffc3e32548d4046df4b76.lean/declarations/differentiablewithinat-iterate--84e5386fe32e1969ed9858b0.md) | 279 | `result-track:84e5386fe32e1969ed9858b0230aa9316b3675b9474e0845a580f990137dd508` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
