# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.FourierL1L2Bridge.Variantd55aa71df25db124e325074b715846641f4b8daeb644e3143a1799079589d298

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e335ad5ab5fad4028cdfc9e96a06f05f00df8d9a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FourierL1L2Bridge/Variantd55aa71df25db124e325074b715846641f4b8daeb644e3143a1799079589d298.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierL1L2Bridge/Variantd55aa71df25db124e325074b715846641f4b8daeb644e3143a1799079589d298.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierL1L2Bridge/Variantd55aa71df25db124e325074b715846641f4b8daeb644e3143a1799079589d298.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e335ad5ab5fad4028cdfc9e96a06f05f00df8d9a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FourierL1L2Bridge/Variantd55aa71df25db124e325074b715846641f4b8daeb644e3143a1799079589d298.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FourierL1L2Bridge/Variantd55aa71df25db124e325074b715846641f4b8daeb644e3143a1799079589d298.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.LpSpace` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integral_fourierInv_mul_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierL1L2Bridge/Variantd55aa71df25db124e325074b715846641f4b8daeb644e3143a1799079589d298.lean/declarations/integral-fourierinv-mul-eq--cdf494ccdd71d3d82941dec6.md) | 20 | `result-track:cdf494ccdd71d3d82941dec609e4b25d41f30d3416da6cb57e4c0d4054f9c16c` |
| 2 | `theorem` | [continuous_fourierInv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierL1L2Bridge/Variantd55aa71df25db124e325074b715846641f4b8daeb644e3143a1799079589d298.lean/declarations/continuous-fourierinv--a9a2a3fd0aab06b1109a1cfa.md) | 34 | `result-track:a9a2a3fd0aab06b1109a1cfae98c6b1be8b4740b4efd8b508ee9305a96764b42` |
| 3 | `theorem` | [fourierInv_toLp_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierL1L2Bridge/Variantd55aa71df25db124e325074b715846641f4b8daeb644e3143a1799079589d298.lean/declarations/fourierinv-tolp-ae--97d54fe645a09364f219447b.md) | 41 | `result-track:97d54fe645a09364f219447b2be072d10d2b66546ded260af60ba12043b18170` |
| 4 | `theorem` | [fourierInv_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierL1L2Bridge/Variantd55aa71df25db124e325074b715846641f4b8daeb644e3143a1799079589d298.lean/declarations/fourierinv-memlp--7e1bb17d08723a60a8ec9657.md) | 72 | `result-track:7e1bb17d08723a60a8ec965798635bba083334ecc5d39b794c4d36eb34506525` |
| 5 | `theorem` | [fourierInv_toLp_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierL1L2Bridge/Variantd55aa71df25db124e325074b715846641f4b8daeb644e3143a1799079589d298.lean/declarations/fourierinv-tolp-eq--2752e0a7f49ae8fc41000aff.md) | 77 | `result-track:2752e0a7f49ae8fc41000affe952d0277ed041c0b653c6169a40a12f64a78cb9` |
| 6 | `theorem` | [norm_fourierInv_toLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierL1L2Bridge/Variantd55aa71df25db124e325074b715846641f4b8daeb644e3143a1799079589d298.lean/declarations/norm-fourierinv-tolp--6d78dd39ab8f77596af2df78.md) | 83 | `result-track:6d78dd39ab8f77596af2df78adfaf44da1c7799f1afc6f51691d4f21f321ade6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
