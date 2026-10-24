# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Integration.Variantf7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "086aa988b14ec0f3ccc6a1ecb63843e8b14b2db4",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variantf7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `086aa988b14ec0f3ccc6a1ecb63843e8b14b2db4`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variantf7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Integration/Variantf7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Independence.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lintegral_mul_indicator_eq_lintegral_mul_lintegral_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean/declarations/lintegral-mul-indicator-eq-lintegral-mul-lintegral-indicator--e66fab63cbd3afedff3f2f2b.md) | 43 | `result-track:e66fab63cbd3afedff3f2f2b68b087d9e69462eadb6c25276f335ae1135b5217` |
| 2 | `theorem` | [lintegral_mul_eq_lintegral_mul_lintegral_of_independent_measurableSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean/declarations/lintegral-mul-eq-lintegral-mul-lintegral-of-independent-measurablespace--0081274051b1967796b2ea3b.md) | 79 | `result-track:0081274051b1967796b2ea3ba2664ca5557141f983dab06d39493d8a95a300f9` |
| 3 | `theorem` | [lintegral_mul_eq_lintegral_mul_lintegral_of_indepFun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean/declarations/lintegral-mul-eq-lintegral-mul-lintegral-of-indepfun--7a11bbe0c45ee20f4fc78d05.md) | 105 | `result-track:7a11bbe0c45ee20f4fc78d0507c8c7341136e15c86cd4c2bfc144aedce76e525` |
| 4 | `theorem` | [lintegral_mul_eq_lintegral_mul_lintegral_of_indepFun'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean/declarations/lintegral-mul-eq-lintegral-mul-lintegral-of-indepfun--5278610e94431ee5cb60df29.md) | 115 | `result-track:5278610e94431ee5cb60df29a8b425d83ef1703477b5461bacd5ce29f90d0260` |
| 5 | `theorem` | [lintegral_mul_eq_lintegral_mul_lintegral_of_indepFun''](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean/declarations/lintegral-mul-eq-lintegral-mul-lintegral-of-indepfun--50b9c0c4e3e7c57ae61d3e23.md) | 125 | `result-track:50b9c0c4e3e7c57ae61d3e23d2866bfbb452c15bd688ff28c3b3afb9547d75ab` |
| 6 | `theorem` | [lintegral_prod_eq_prod_lintegral_of_indepFun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean/declarations/lintegral-prod-eq-prod-lintegral-of-indepfun--0f49dd10e933de7d073145e7.md) | 130 | `result-track:0f49dd10e933de7d073145e74e2492543bf9b650f5ba3cd855a6e7b18628a627` |
| 7 | `theorem` | [IndepFun.integrable_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean/declarations/indepfun-integrable-mul--9160d661f6155080f69ca5d1.md) | 145 | `result-track:9160d661f6155080f69ca5d1c3f102acb181eede991e0cb8bdec5fa05269e512` |
| 8 | `theorem` | [IndepFun.integrable_left_of_integrable_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean/declarations/indepfun-integrable-left-of-integrable-mul--52af49c227420976a19454ce.md) | 162 | `result-track:52af49c227420976a19454ceb7ede81e64c8552b47b8892b31359dbcee28d4ed` |
| 9 | `theorem` | [IndepFun.integrable_right_of_integrable_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean/declarations/indepfun-integrable-right-of-integrable-mul--f9ce9c9a94d6334e016becb9.md) | 182 | `result-track:f9ce9c9a94d6334e016becb9d27e3034dad0e8d8d72d607703cf5705f95aa2b6` |
| 10 | `theorem` | [IndepFun.integral_mul_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean/declarations/indepfun-integral-mul-of-nonneg--eaa133647a3ab7fda23b7d1c.md) | 204 | `result-track:eaa133647a3ab7fda23b7d1cf93a047c18148391d94def67750a31cde15ae5ed` |
| 11 | `theorem` | [IndepFun.integral_mul_of_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean/declarations/indepfun-integral-mul-of-integrable--33917beeef3afdacdfbdf767.md) | 225 | `result-track:33917beeef3afdacdfbdf76719bffb26eca24bd9c20c17408024b8fb61c3367b` |
| 12 | `theorem` | [IndepFun.integral_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean/declarations/indepfun-integral-mul--762fb640e810197b1ac3d2d1.md) | 269 | `result-track:762fb640e810197b1ac3d2d1bb660a24f802e9d02847c14e9f1e0c228a29fbd8` |
| 13 | `theorem` | [IndepFun.integral_mul'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean/declarations/indepfun-integral-mul--afbeada46356f9b1c3d35549.md) | 294 | `result-track:afbeada46356f9b1c3d35549cf52f15ff30cb3a596eea6cf8121c3935891226e` |
| 14 | `theorem` | [indepFun_iff_integral_comp_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variantf7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean/declarations/indepfun-iff-integral-comp-mul--913f41887583e533245c4f8b.md) | 302 | `result-track:913f41887583e533245c4f8beabd44c1b7251bc222dfc9ec59bbff83d7236d24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
