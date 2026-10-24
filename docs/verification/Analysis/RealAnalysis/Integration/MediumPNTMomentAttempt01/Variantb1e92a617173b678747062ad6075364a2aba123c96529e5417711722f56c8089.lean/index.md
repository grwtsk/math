# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MediumPNTMomentAttempt01.Variantb1e92a617173b678747062ad6075364a2aba123c96529e5417711722f56c8089

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c60fa98e9f8ab85edcd7cb03bf18c813016a7504",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MediumPNTMomentAttempt01/Variantb1e92a617173b678747062ad6075364a2aba123c96529e5417711722f56c8089.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNTMomentAttempt01/Variantb1e92a617173b678747062ad6075364a2aba123c96529e5417711722f56c8089.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNTMomentAttempt01/Variantb1e92a617173b678747062ad6075364a2aba123c96529e5417711722f56c8089.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c60fa98e9f8ab85edcd7cb03bf18c813016a7504`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MediumPNTMomentAttempt01/Variantb1e92a617173b678747062ad6075364a2aba123c96529e5417711722f56c8089.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MediumPNTMomentAttempt01/Variantb1e92a617173b678747062ad6075364a2aba123c96529e5417711722f56c8089.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MediumPNTLogError` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [psiRelativeError_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNTMomentAttempt01/Variantb1e92a617173b678747062ad6075364a2aba123c96529e5417711722f56c8089.lean/declarations/psirelativeerror-measurable--9f76df091c79dffe08166cc2.md) | 19 | `result-track:9f76df091c79dffe08166cc2e023dd6d04eb93bd5a5de16a4b09ec4073e7d853` |
| 2 | `theorem` | [psiRelativeError_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNTMomentAttempt01/Variantb1e92a617173b678747062ad6075364a2aba123c96529e5417711722f56c8089.lean/declarations/psirelativeerror-bound--6e419678b1d1de9b08e2b0f4.md) | 25 | `result-track:6e419678b1d1de9b08e2b0f4ba40afd8170fefc005a3a245fb64cf187e8bece0` |
| 3 | `theorem` | [inverse_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNTMomentAttempt01/Variantb1e92a617173b678747062ad6075364a2aba123c96529e5417711722f56c8089.lean/declarations/inverse-square-integrable--e4f3896e4e0b6c9c3b919bd3.md) | 41 | `result-track:e4f3896e4e0b6c9c3b919bd33aa917d1fbacaf3a063b50428a558334333823d6` |
| 4 | `theorem` | [psiRelativeError_mul_pow_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNTMomentAttempt01/Variantb1e92a617173b678747062ad6075364a2aba123c96529e5417711722f56c8089.lean/declarations/psirelativeerror-mul-pow-integrable--7af52ccec06142f5b621d3c0.md) | 50 | `result-track:7af52ccec06142f5b621d3c0f5f0ffd86c4c2392fb2d11ec24e0a5c489cfa267` |
| 5 | `theorem` | [psiRelativeError_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNTMomentAttempt01/Variantb1e92a617173b678747062ad6075364a2aba123c96529e5417711722f56c8089.lean/declarations/psirelativeerror-integrable--d148bb577a3015a767361752.md) | 87 | `result-track:d148bb577a3015a767361752b9b3eb589e21f090502cdd7892d82917e88e688b` |
| 6 | `theorem` | [psiRelativeError_first_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MediumPNTMomentAttempt01/Variantb1e92a617173b678747062ad6075364a2aba123c96529e5417711722f56c8089.lean/declarations/psirelativeerror-first-moment-integrable--3eb726ba44dce88335be8280.md) | 91 | `result-track:3eb726ba44dce88335be8280eb0a4a42be0b1855d44298ba31ed85b146c0737a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
