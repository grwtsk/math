# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.FourierL1L2Bridge.Variantb1b3fc81ea79616750c2877dfe851642d25dce9c9d30da4206846df7a18e0650

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c0f38c7a27313f642a75b43f32e26a130feb3d7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FourierL1L2Bridge/Variantb1b3fc81ea79616750c2877dfe851642d25dce9c9d30da4206846df7a18e0650.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierL1L2Bridge/Variantb1b3fc81ea79616750c2877dfe851642d25dce9c9d30da4206846df7a18e0650.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierL1L2Bridge/Variantb1b3fc81ea79616750c2877dfe851642d25dce9c9d30da4206846df7a18e0650.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c0f38c7a27313f642a75b43f32e26a130feb3d7`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FourierL1L2Bridge/Variantb1b3fc81ea79616750c2877dfe851642d25dce9c9d30da4206846df7a18e0650.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FourierL1L2Bridge/Variantb1b3fc81ea79616750c2877dfe851642d25dce9c9d30da4206846df7a18e0650.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.LpSpace` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integral_fourierInv_mul_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierL1L2Bridge/Variantb1b3fc81ea79616750c2877dfe851642d25dce9c9d30da4206846df7a18e0650.lean/declarations/integral-fourierinv-mul-eq--7bf940436c0922cd91bb12b0.md) | 12 | `result-track:7bf940436c0922cd91bb12b06d944b216043ce78efa7e02ee2fc7975f5866539` |
| 2 | `theorem` | [continuous_fourierInv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierL1L2Bridge/Variantb1b3fc81ea79616750c2877dfe851642d25dce9c9d30da4206846df7a18e0650.lean/declarations/continuous-fourierinv--462b21f7ec6327234a5b152c.md) | 26 | `result-track:462b21f7ec6327234a5b152ca1f0ce3bbc73fc1a99c410560e20e282e100e1a1` |
| 3 | `theorem` | [fourierInv_toLp_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierL1L2Bridge/Variantb1b3fc81ea79616750c2877dfe851642d25dce9c9d30da4206846df7a18e0650.lean/declarations/fourierinv-tolp-ae--3ae2f23a1f4160a95de61da9.md) | 33 | `result-track:3ae2f23a1f4160a95de61da9b4948c6855afb9ffb05b7c8f2375e9f53731f10c` |
| 4 | `theorem` | [fourierInv_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierL1L2Bridge/Variantb1b3fc81ea79616750c2877dfe851642d25dce9c9d30da4206846df7a18e0650.lean/declarations/fourierinv-memlp--d99ff8110ea6893675daaea0.md) | 64 | `result-track:d99ff8110ea6893675daaea0c83f256c65455936d4474ae7ce9a671f3f9485a6` |
| 5 | `theorem` | [fourierInv_toLp_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierL1L2Bridge/Variantb1b3fc81ea79616750c2877dfe851642d25dce9c9d30da4206846df7a18e0650.lean/declarations/fourierinv-tolp-eq--8bb898adb656e4651ea7fc18.md) | 69 | `result-track:8bb898adb656e4651ea7fc18d2506f340406f8e09d3ecfec27cde29a2eeb0a5b` |
| 6 | `theorem` | [norm_fourierInv_toLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierL1L2Bridge/Variantb1b3fc81ea79616750c2877dfe851642d25dce9c9d30da4206846df7a18e0650.lean/declarations/norm-fourierinv-tolp--588483e5794a5199a3ba3689.md) | 75 | `result-track:588483e5794a5199a3ba3689aa43effaeced2310dde459f59f6f13639ea89d5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
