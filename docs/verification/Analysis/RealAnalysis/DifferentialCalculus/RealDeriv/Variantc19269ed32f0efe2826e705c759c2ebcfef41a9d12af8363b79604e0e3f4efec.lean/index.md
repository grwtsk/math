# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RealDeriv.Variantc19269ed32f0efe2826e705c759c2ebcfef41a9d12af8363b79604e0e3f4efec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cafb47cfb5dc70f36a00fd903125a4ed08a6fbf9",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantc19269ed32f0efe2826e705c759c2ebcfef41a9d12af8363b79604e0e3f4efec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantc19269ed32f0efe2826e705c759c2ebcfef41a9d12af8363b79604e0e3f4efec.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantc19269ed32f0efe2826e705c759c2ebcfef41a9d12af8363b79604e0e3f4efec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cafb47cfb5dc70f36a00fd903125a4ed08a6fbf9`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantc19269ed32f0efe2826e705c759c2ebcfef41a9d12af8363b79604e0e3f4efec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantc19269ed32f0efe2826e705c759c2ebcfef41a9d12af8363b79604e0e3f4efec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Linear` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Conformal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Conformal.NormedSpace` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasStrictDerivAt.real_of_complex](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantc19269ed32f0efe2826e705c759c2ebcfef41a9d12af8363b79604e0e3f4efec.lean/declarations/hasstrictderivat-real-of-complex--881dd7357b272054b0b1cfa3.md) | 49 | `result-track:881dd7357b272054b0b1cfa3980fdb64e3fba667504b62ce3eeb59f3bc1b8fec` |
| 2 | `theorem` | [HasDerivAt.real_of_complex](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantc19269ed32f0efe2826e705c759c2ebcfef41a9d12af8363b79604e0e3f4efec.lean/declarations/hasderivat-real-of-complex--348e889e63ee8238b715e53a.md) | 68 | `result-track:348e889e63ee8238b715e53a06d9e222db4507f18e8f008cd41aad0da003c87e` |
| 3 | `theorem` | [ContDiffAt.real_of_complex](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantc19269ed32f0efe2826e705c759c2ebcfef41a9d12af8363b79604e0e3f4efec.lean/declarations/contdiffat-real-of-complex--0870e60c305cb4dc0a999b05.md) | 84 | `result-track:0870e60c305cb4dc0a999b0525c0988379865a636b44c34c1b728217b4d80ee9` |
| 4 | `theorem` | [ContDiff.real_of_complex](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantc19269ed32f0efe2826e705c759c2ebcfef41a9d12af8363b79604e0e3f4efec.lean/declarations/contdiff-real-of-complex--83105df46d1cb0161ef3df1f.md) | 92 | `result-track:83105df46d1cb0161ef3df1fc1871a66c5d0dec31fbba33865ecddf47427d6bc` |
| 5 | `theorem` | [HasStrictDerivAt.complexToReal_fderiv'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantc19269ed32f0efe2826e705c759c2ebcfef41a9d12af8363b79604e0e3f4efec.lean/declarations/hasstrictderivat-complextoreal-fderiv--02f2d794b9e64430228d831a.md) | 99 | `result-track:02f2d794b9e64430228d831a25cdf584a9e35807974826de2df22cab6f322a19` |
| 6 | `theorem` | [HasDerivAt.complexToReal_fderiv'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantc19269ed32f0efe2826e705c759c2ebcfef41a9d12af8363b79604e0e3f4efec.lean/declarations/hasderivat-complextoreal-fderiv--eb8adcf4e313552167e77a41.md) | 106 | `result-track:eb8adcf4e313552167e77a41875264b3dcd5ae61b6f776b4ed7a15e5c33b44a6` |
| 7 | `theorem` | [HasDerivWithinAt.complexToReal_fderiv'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantc19269ed32f0efe2826e705c759c2ebcfef41a9d12af8363b79604e0e3f4efec.lean/declarations/hasderivwithinat-complextoreal-fderiv--c6d9718dde2882e490c7edcb.md) | 111 | `result-track:c6d9718dde2882e490c7edcb51bb70c9c3a207af5b6c469d14a3a08da11c26fe` |
| 8 | `theorem` | [HasStrictDerivAt.complexToReal_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantc19269ed32f0efe2826e705c759c2ebcfef41a9d12af8363b79604e0e3f4efec.lean/declarations/hasstrictderivat-complextoreal-fderiv--5c9d29ebe4112b703ab3f39f.md) | 118 | `result-track:5c9d29ebe4112b703ab3f39f07d408a3bdfea5437f0397ada6e7d18659398c3d` |
| 9 | `theorem` | [HasDerivAt.complexToReal_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantc19269ed32f0efe2826e705c759c2ebcfef41a9d12af8363b79604e0e3f4efec.lean/declarations/hasderivat-complextoreal-fderiv--d261c1e6c8d91a20f926baf5.md) | 123 | `result-track:d261c1e6c8d91a20f926baf5baada6a4a7066971ed3b436e4db95fd7267cda65` |
| 10 | `theorem` | [HasDerivWithinAt.complexToReal_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantc19269ed32f0efe2826e705c759c2ebcfef41a9d12af8363b79604e0e3f4efec.lean/declarations/hasderivwithinat-complextoreal-fderiv--0486ba9a59f80e04cdd4cf9a.md) | 128 | `result-track:0486ba9a59f80e04cdd4cf9a47437d1f6c5613495273098f14e3b94cea5f39da` |
| 11 | `theorem` | [HasDerivAt.comp_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantc19269ed32f0efe2826e705c759c2ebcfef41a9d12af8363b79604e0e3f4efec.lean/declarations/hasderivat-comp-ofreal--0d69669ff22fae3ed8e493c6.md) | 135 | `result-track:0d69669ff22fae3ed8e493c6e33dcb0ae88d79d09d19605632082ad4799afced` |
| 12 | `theorem` | [HasDerivAt.ofReal_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantc19269ed32f0efe2826e705c759c2ebcfef41a9d12af8363b79604e0e3f4efec.lean/declarations/hasderivat-ofreal-comp--93ae9642bbbd2824f2417310.md) | 141 | `result-track:93ae9642bbbd2824f2417310c37b667c05c9f0ed985c1a21e0d6055355957e6a` |
| 13 | `theorem` | [DifferentiableAt.conformalAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantc19269ed32f0efe2826e705c759c2ebcfef41a9d12af8363b79604e0e3f4efec.lean/declarations/differentiableat-conformalat--7079cf30ee4f2ba1ad257cfa.md) | 162 | `result-track:7079cf30ee4f2ba1ad257cfaae46ef6ea99bc0f8b298ed173b0b605e83c71631` |
| 14 | `theorem` | [conformalAt_iff_differentiableAt_or_differentiableAt_comp_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Variantc19269ed32f0efe2826e705c759c2ebcfef41a9d12af8363b79604e0e3f4efec.lean/declarations/conformalat-iff-differentiableat-or-differentiableat-comp-conj--fd5da98bc3c20cba65df4a91.md) | 171 | `result-track:fd5da98bc3c20cba65df4a91bdb93d12c2b12b27eb11e418468346433f2756c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
