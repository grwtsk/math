# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ImproperIntegrals.Variant082b42a0271844004500f1695787732d11dcb673982f24e322c17bda779dda54

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "337b2c51cd4c2bcb1a2cdb2927bcc5b38e11145d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant082b42a0271844004500f1695787732d11dcb673982f24e322c17bda779dda54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant082b42a0271844004500f1695787732d11dcb673982f24e322c17bda779dda54.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant082b42a0271844004500f1695787732d11dcb673982f24e322c17bda779dda54.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `337b2c51cd4c2bcb1a2cdb2927bcc5b38e11145d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant082b42a0271844004500f1695787732d11dcb673982f24e322c17bda779dda54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant082b42a0271844004500f1695787732d11dcb673982f24e322c17bda779dda54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Integral` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.ExpDecay` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Integral` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integrableOn_exp_Iic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant082b42a0271844004500f1695787732d11dcb673982f24e322c17bda779dda54.lean/declarations/integrableon-exp-iic--dc2ddd9664c64ba75783ab1a.md) | 40 | `result-track:dc2ddd9664c64ba75783ab1ab0adeb6dab92b0f51c1d1aaeb440c3fe76a1499e` |
| 2 | `theorem` | [integral_exp_Iic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant082b42a0271844004500f1695787732d11dcb673982f24e322c17bda779dda54.lean/declarations/integral-exp-iic--44a2237df46c3bd4e6584889.md) | 49 | `result-track:44a2237df46c3bd4e65848896375ceb8ef2f23b360f5ad9ef81ad6e7a090f2ff` |
| 3 | `theorem` | [integral_exp_Iic_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant082b42a0271844004500f1695787732d11dcb673982f24e322c17bda779dda54.lean/declarations/integral-exp-iic-zero--3a3693aa943ea4122aa15abf.md) | 57 | `result-track:3a3693aa943ea4122aa15abfa1a14a3b61327a68e3d3a80084d0235d5a7dd557` |
| 4 | `theorem` | [integral_exp_neg_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant082b42a0271844004500f1695787732d11dcb673982f24e322c17bda779dda54.lean/declarations/integral-exp-neg-ioi--2cc0e54beeb1d55dcb500d1d.md) | 61 | `result-track:2cc0e54beeb1d55dcb500d1d2bc09988f8f06fb02f131c7c4b9725f76a79337a` |
| 5 | `theorem` | [integral_exp_neg_Ioi_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant082b42a0271844004500f1695787732d11dcb673982f24e322c17bda779dda54.lean/declarations/integral-exp-neg-ioi-zero--54ff4ae814c793ac1aae871d.md) | 65 | `result-track:54ff4ae814c793ac1aae871d95bb6efa1c15d22135dab4c6bce404fd364a89d1` |
| 6 | `theorem` | [integrableOn_Ioi_rpow_of_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant082b42a0271844004500f1695787732d11dcb673982f24e322c17bda779dda54.lean/declarations/integrableon-ioi-rpow-of-lt--459c23967a2a08c04920df99.md) | 70 | `result-track:459c23967a2a08c04920df99c3c76806fe38e8f080b029b4cbb4ccdba2d6ef59` |
| 7 | `theorem` | [integral_Ioi_rpow_of_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant082b42a0271844004500f1695787732d11dcb673982f24e322c17bda779dda54.lean/declarations/integral-ioi-rpow-of-lt--b353049478d1ba7a0261c97f.md) | 84 | `result-track:b353049478d1ba7a0261c97f7e3ff87b5670c4ed53dbbe3d052e07568a101b76` |
| 8 | `theorem` | [integrableOn_Ioi_cpow_of_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant082b42a0271844004500f1695787732d11dcb673982f24e322c17bda779dda54.lean/declarations/integrableon-ioi-cpow-of-lt--0bab53dc6f90490a65459688.md) | 97 | `result-track:0bab53dc6f90490a6545968815ca380d4a8b8089c665ef1b27c3481a95859a9b` |
| 9 | `theorem` | [integral_Ioi_cpow_of_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant082b42a0271844004500f1695787732d11dcb673982f24e322c17bda779dda54.lean/declarations/integral-ioi-cpow-of-lt--95f919742de11d5ca088cf0b.md) | 108 | `result-track:95f919742de11d5ca088cf0b238e9dae99217d7dc335505c8cf4861f873e29da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
