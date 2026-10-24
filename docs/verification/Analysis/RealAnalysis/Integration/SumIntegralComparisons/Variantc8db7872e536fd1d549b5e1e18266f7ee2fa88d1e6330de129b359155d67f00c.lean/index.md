# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SumIntegralComparisons.Variantc8db7872e536fd1d549b5e1e18266f7ee2fa88d1e6330de129b359155d67f00c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e18e8f8052a6b06bdf333c85060d5c41791c343",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variantc8db7872e536fd1d549b5e1e18266f7ee2fa88d1e6330de129b359155d67f00c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variantc8db7872e536fd1d549b5e1e18266f7ee2fa88d1e6330de129b359155d67f00c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variantc8db7872e536fd1d549b5e1e18266f7ee2fa88d1e6330de129b359155d67f00c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e18e8f8052a6b06bdf333c85060d5c41791c343`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variantc8db7872e536fd1d549b5e1e18266f7ee2fa88d1e6330de129b359155d67f00c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variantc8db7872e536fd1d549b5e1e18266f7ee2fa88d1e6330de129b359155d67f00c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Function` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [sum_Ico_le_integral_of_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variantc8db7872e536fd1d549b5e1e18266f7ee2fa88d1e6330de129b359155d67f00c.lean/declarations/sum-ico-le-integral-of-le--ead21a3771fbb3463cadb6db.md) | 48 | `result-track:ead21a3771fbb3463cadb6db5782bab034281117b5763ea8e260c18b0aa2b0de` |
| 2 | `lemma` | [integral_le_sum_Ico_of_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variantc8db7872e536fd1d549b5e1e18266f7ee2fa88d1e6330de129b359155d67f00c.lean/declarations/integral-le-sum-ico-of-le--943fa53441617397e6a9d4e5.md) | 70 | `result-track:943fa53441617397e6a9d4e59112400461303f78ba9ec4216df27255b88ca501` |
| 3 | `theorem` | [AntitoneOn.integral_le_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variantc8db7872e536fd1d549b5e1e18266f7ee2fa88d1e6330de129b359155d67f00c.lean/declarations/antitoneon-integral-le-sum--c9573bd6b4c5df0326a9bafe.md) | 77 | `result-track:c9573bd6b4c5df0326a9bafe3590d96b00c2e8abaa7e01ebe174d73099f4ba77` |
| 4 | `theorem` | [AntitoneOn.integral_le_sum_Ico](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variantc8db7872e536fd1d549b5e1e18266f7ee2fa88d1e6330de129b359155d67f00c.lean/declarations/antitoneon-integral-le-sum-ico--97be7a4067ab0e20ec67d8ae.md) | 102 | `result-track:97be7a4067ab0e20ec67d8aea674bdd349b40dfb5c2e2204c4e48aa207cf2b6d` |
| 5 | `theorem` | [AntitoneOn.sum_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variantc8db7872e536fd1d549b5e1e18266f7ee2fa88d1e6330de129b359155d67f00c.lean/declarations/antitoneon-sum-le-integral--0c3d54920bb83c02697e93ee.md) | 126 | `result-track:0c3d54920bb83c02697e93ee98d83b4d83e5712f4e4a8370f0fa067255935914` |
| 6 | `theorem` | [AntitoneOn.sum_le_integral_Ico](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variantc8db7872e536fd1d549b5e1e18266f7ee2fa88d1e6330de129b359155d67f00c.lean/declarations/antitoneon-sum-le-integral-ico--7af4f83a7da2451f38424eb0.md) | 153 | `result-track:7af4f83a7da2451f38424eb09375ccd5d647b62f80c779d62285a1997cf1cdd3` |
| 7 | `theorem` | [MonotoneOn.sum_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variantc8db7872e536fd1d549b5e1e18266f7ee2fa88d1e6330de129b359155d67f00c.lean/declarations/monotoneon-sum-le-integral--2806f4862b99767a096f6cfd.md) | 176 | `result-track:2806f4862b99767a096f6cfd2ed8fa84d993635c2cb81fd0667966fa5542d64b` |
| 8 | `theorem` | [MonotoneOn.sum_le_integral_Ico](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variantc8db7872e536fd1d549b5e1e18266f7ee2fa88d1e6330de129b359155d67f00c.lean/declarations/monotoneon-sum-le-integral-ico--b0ae2a8aa7d311dc413013f8.md) | 181 | `result-track:b0ae2a8aa7d311dc413013f8674ff311e8c516de0d45f0ea733c96712267a0c3` |
| 9 | `theorem` | [MonotoneOn.integral_le_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variantc8db7872e536fd1d549b5e1e18266f7ee2fa88d1e6330de129b359155d67f00c.lean/declarations/monotoneon-integral-le-sum--39f27413416e81265eb206da.md) | 186 | `result-track:39f27413416e81265eb206da9889fa4e5794f4963ffd5ae05a0d53e06d42145c` |
| 10 | `theorem` | [MonotoneOn.integral_le_sum_Ico](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variantc8db7872e536fd1d549b5e1e18266f7ee2fa88d1e6330de129b359155d67f00c.lean/declarations/monotoneon-integral-le-sum-ico--fb92c001539e86d037ee0366.md) | 191 | `result-track:fb92c001539e86d037ee03666cee825aed5e3d88965da85e9cdfd0b32ab74dfb` |
| 11 | `lemma` | [sum_mul_Ico_le_integral_of_monotone_antitone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variantc8db7872e536fd1d549b5e1e18266f7ee2fa88d1e6330de129b359155d67f00c.lean/declarations/sum-mul-ico-le-integral-of-monotone-antitone--83fdf41b3671b0c02bf667b5.md) | 196 | `result-track:83fdf41b3671b0c02bf667b50dc8285f3b5c4f5e80056504adc7d16809c59d1c` |
| 12 | `lemma` | [integral_le_sum_mul_Ico_of_antitone_monotone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variantc8db7872e536fd1d549b5e1e18266f7ee2fa88d1e6330de129b359155d67f00c.lean/declarations/integral-le-sum-mul-ico-of-antitone-monotone--003f27cebae720d8e5fb53a8.md) | 242 | `result-track:003f27cebae720d8e5fb53a8425f49938f74fd34f2e3387eb9c372ff5975d798` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
