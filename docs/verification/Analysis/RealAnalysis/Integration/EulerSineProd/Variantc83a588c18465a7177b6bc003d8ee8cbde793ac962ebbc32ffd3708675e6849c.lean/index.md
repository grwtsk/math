# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.EulerSineProd.Variantc83a588c18465a7177b6bc003d8ee8cbde793ac962ebbc32ffd3708675e6849c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "588a6fd282bf917ecd8d0896ffd09b3e15366a6a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EulerSineProd/Variantc83a588c18465a7177b6bc003d8ee8cbde793ac962ebbc32ffd3708675e6849c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variantc83a588c18465a7177b6bc003d8ee8cbde793ac962ebbc32ffd3708675e6849c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variantc83a588c18465a7177b6bc003d8ee8cbde793ac962ebbc32ffd3708675e6849c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `588a6fd282bf917ecd8d0896ffd09b3e15366a6a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EulerSineProd/Variantc83a588c18465a7177b6bc003d8ee8cbde793ac962ebbc32ffd3708675e6849c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EulerSineProd/Variantc83a588c18465a7177b6bc003d8ee8cbde793ac962ebbc32ffd3708675e6849c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.PeakFunction` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variantc83a588c18465a7177b6bc003d8ee8cbde793ac962ebbc32ffd3708675e6849c.lean/declarations/macro-rules--13cf4b3a9e39fe0c8aa580d6.md) | 32 | `declaration-track:13cf4b3a9e39fe0c8aa580d6f2d23a31add6b4257d067a9abd9915605ba023ff` |
| 2 | `theorem` | [antideriv_cos_comp_const_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variantc83a588c18465a7177b6bc003d8ee8cbde793ac962ebbc32ffd3708675e6849c.lean/declarations/antideriv-cos-comp-const-mul--3c6ce3162c9e6b044c62c3a9.md) | 50 | `result-track:3c6ce3162c9e6b044c62c3a924e120ab8f552b2fe2d96b1ff320222cc8579f23` |
| 3 | `theorem` | [antideriv_sin_comp_const_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variantc83a588c18465a7177b6bc003d8ee8cbde793ac962ebbc32ffd3708675e6849c.lean/declarations/antideriv-sin-comp-const-mul--69e06d51a7b91a88e20f01eb.md) | 60 | `result-track:69e06d51a7b91a88e20f01ebc7a7de443c2334e8335fef4a052df9cb4c647d15` |
| 4 | `theorem` | [integral_cos_mul_cos_pow_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variantc83a588c18465a7177b6bc003d8ee8cbde793ac962ebbc32ffd3708675e6849c.lean/declarations/integral-cos-mul-cos-pow-aux--b60bcccd054fc320ce4b71ff.md) | 70 | `result-track:b60bcccd054fc320ce4b71ffb3a3393987694cb9bdb083ae1b5ecd41e17dc30e` |
| 5 | `theorem` | [integral_sin_mul_sin_mul_cos_pow_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variantc83a588c18465a7177b6bc003d8ee8cbde793ac962ebbc32ffd3708675e6849c.lean/declarations/integral-sin-mul-sin-mul-cos-pow-eq--d51b29c5d824a8be3398969b.md) | 100 | `result-track:d51b29c5d824a8be3398969b63cb23ae06cef1aec16416f209d679889d0f7531` |
| 6 | `theorem` | [integral_cos_mul_cos_pow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variantc83a588c18465a7177b6bc003d8ee8cbde793ac962ebbc32ffd3708675e6849c.lean/declarations/integral-cos-mul-cos-pow--22533627d30b53a28693b327.md) | 163 | `result-track:22533627d30b53a28693b3273691c0076cbbcb7d24eaeea9a47ee4dc2a00374b` |
| 7 | `theorem` | [integral_cos_mul_cos_pow_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variantc83a588c18465a7177b6bc003d8ee8cbde793ac962ebbc32ffd3708675e6849c.lean/declarations/integral-cos-mul-cos-pow-even--a42c8724eb66014ea7bd1715.md) | 177 | `result-track:a42c8724eb66014ea7bd1715bb9cb663a0c420e1dea94605a170dfe4706f89bd` |
| 8 | `theorem` | [integral_cos_pow_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variantc83a588c18465a7177b6bc003d8ee8cbde793ac962ebbc32ffd3708675e6849c.lean/declarations/integral-cos-pow-eq--ad0a8500f994dae60175a918.md) | 193 | `result-track:ad0a8500f994dae60175a918d5d9cfd32c60852dd80b19dc754c73ee299e0e13` |
| 9 | `theorem` | [integral_cos_pow_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variantc83a588c18465a7177b6bc003d8ee8cbde793ac962ebbc32ffd3708675e6849c.lean/declarations/integral-cos-pow-pos--4e34c3d835ba911aed8ae807.md) | 214 | `result-track:4e34c3d835ba911aed8ae807b26b7e7f55aa593b75dd9de5406a606cd5750a44` |
| 10 | `theorem` | [sin_pi_mul_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variantc83a588c18465a7177b6bc003d8ee8cbde793ac962ebbc32ffd3708675e6849c.lean/declarations/sin-pi-mul-eq--faf790450873b6a318ee4c4a.md) | 220 | `result-track:faf790450873b6a318ee4c4a764f7f02d11a8aa997cb369754fd733efa388734` |
| 11 | `theorem` | [tendsto_integral_cos_pow_mul_div](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variantc83a588c18465a7177b6bc003d8ee8cbde793ac962ebbc32ffd3708675e6849c.lean/declarations/tendsto-integral-cos-pow-mul-div--b00e6ae10ca595d907a2d969.md) | 290 | `result-track:b00e6ae10ca595d907a2d969085a7c1903d118e3f2208b960cbc940a423b96d3` |
| 12 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.AntiderivCosCompConstMul.Variant59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54.Complex.tendsto_euler_sin_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variantc83a588c18465a7177b6bc003d8ee8cbde793ac962ebbc32ffd3708675e6849c.lean/declarations/root-grwtsk-analysis-realanalysis-integration-antiderivcoscompconstmul-v--be4eb27405bc43d93c335c27.md) | 311 | `result-track:be4eb27405bc43d93c335c27204772c8e02c3152868b60912024478b9c562bfa` |
| 13 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.AntiderivCosCompConstMul.Variant59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54.Real.tendsto_euler_sin_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variantc83a588c18465a7177b6bc003d8ee8cbde793ac962ebbc32ffd3708675e6849c.lean/declarations/root-grwtsk-analysis-realanalysis-integration-antiderivcoscompconstmul-v--596156790940e34619de458b.md) | 340 | `result-track:596156790940e34619de458bed0d43722db3c6340e0cb5aef58bb8a136095bde` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
