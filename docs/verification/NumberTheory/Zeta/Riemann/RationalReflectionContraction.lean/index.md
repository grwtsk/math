# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.RationalReflectionContraction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65e16f4c55e4fdc381decf03352928a062579794",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65e16f4c55e4fdc381decf03352928a062579794`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalReflectionIsolation`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalReflectionIsolation.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.RationalComplexDisk`](../../../../../mathematics/Analysis/ErrorBounds/RationalComplexDisk.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normMajorant](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean/declarations/normmajorant--78d24b957aa171800d837060.md) | 41 | `declaration-track:78d24b957aa171800d8370606d6771f837189d459510ee9dd47061ce108af95b` |
| 2 | `def` | [slopeDefectDisk](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean/declarations/slopedefectdisk--39e0e323862655653f68a86c.md) | 44 | `declaration-track:39e0e323862655653f68a86c1a66e74bff854d4427cb563805a49d766b256fb9` |
| 3 | `def` | [rateBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean/declarations/ratebound--8870ab214cee023262d49690.md) | 48 | `declaration-track:8870ab214cee023262d49690bd5ad7675f66518298fb5b89298c98f1a8ad7134` |
| 4 | `def` | [accepts](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean/declarations/accepts--32a26f3d189558c5a1d6f238.md) | 53 | `declaration-track:32a26f3d189558c5a1d6f23841e7bac72e37add47e7da3ea884f72e1392d7c50` |
| 5 | `theorem` | [contains_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean/declarations/contains-norm-le--4158547fcd2809a692b719cc.md) | 60 | `result-track:4158547fcd2809a692b719ccefa9880e930c3b2d1fd729270b3bf261ebf0f262` |
| 6 | `theorem` | [slopeDefectDisk_contains](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean/declarations/slopedefectdisk-contains--f163260a4df01727e60b5f82.md) | 68 | `result-track:f163260a4df01727e60b5f8267369ed170be331dd46028f1c5c18d1ea6100935` |
| 7 | `theorem` | [zeta_correction_derivative_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean/declarations/zeta-correction-derivative-bound--ddb3b54bacf8e8027d80b754.md) | 81 | `result-track:ddb3b54bacf8e8027d80b7546d82a1ce122396553d1db235f0695ead55f1c9f9` |
| 8 | `theorem` | [critical_line_of_rational_slope](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean/declarations/critical-line-of-rational-slope--da3e655618529d7d26f50f60.md) | 125 | `result-track:da3e655618529d7d26f50f609f98cf56347f897a64ff86d2fb4c91d9a17edbc7` |
| 9 | `theorem` | [derivative_ne_zero_of_accepted](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean/declarations/derivative-ne-zero-of-accepted--d6452f887c6211b25b00e22a.md) | 146 | `result-track:d6452f887c6211b25b00e22acb32e669afef55e989e1c2e44e860a42eecc8616` |
| 10 | `theorem` | [rejects_off_line_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean/declarations/rejects-off-line-zero--f23afc7686ef257eccff1d8a.md) | 166 | `result-track:f23afc7686ef257eccff1d8ad5c7e01791ca83ad143c926d4049464732dc6713` |
| 11 | `theorem` | [rhThrough_of_rational_slope_cover](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean/declarations/rhthrough-of-rational-slope-cover--ff8b703d20f85d1233dc0c9e.md) | 183 | `result-track:ff8b703d20f85d1233dc0c9e5da4a84e4ca59662c387f45ab9756f78b90fb014` |
| 12 | `theorem` | [positive_curvature_acceptance_fixture](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean/declarations/positive-curvature-acceptance-fixture--1b22ceba1e535d4079f70473.md) | 200 | `result-track:1b22ceba1e535d4079f70473bc9672d0d939b3b2f3a053d3d8fa0d99b4208f7a` |
| 13 | `theorem` | [curvature_consumes_margin_fixture](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean/declarations/curvature-consumes-margin-fixture--8d38b434b561414acab1f8af.md) | 207 | `result-track:8d38b434b561414acab1f8afa799fd4423ca12f9b5368d902ba3689180cafb22` |
| 14 | `theorem` | [slope_uncertainty_rejected_fixture](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean/declarations/slope-uncertainty-rejected-fixture--4a9d536e74841c47829de15a.md) | 215 | `result-track:4a9d536e74841c47829de15a45a3f817f91cc101c43bb0dccae85f1ef051056d` |
| 15 | `theorem` | [imaginary_slope_fixture](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean/declarations/imaginary-slope-fixture--79f8e420fc7bf168c41787bf.md) | 221 | `result-track:79f8e420fc7bf168c41787bf3e7e0fe5540d4656bda9335e9a02162d05f0760f` |
| 16 | `theorem` | [zero_multiplier_rejected](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean/declarations/zero-multiplier-rejected--bde76882051be5505f6fb3dd.md) | 228 | `result-track:bde76882051be5505f6fb3dd943f6bc12c9c25471cdbb31e1ed88913cff7fb5e` |
| 17 | `theorem` | [negative_slope_radius_rejected](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean/declarations/negative-slope-radius-rejected--67465ffec2e8ae921bfd89d5.md) | 234 | `result-track:67465ffec2e8ae921bfd89d5ae13caeeca6a8795154e65e400ae9a2559a404b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
