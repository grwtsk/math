# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.EulerSineProd.Variant23bc979ebdcc37e95ef887647e7f89293ec5175887aed0a9c27cd3e10f8d4a36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1ef4b5a7288d7062b79a2d08429a7d278dafae7",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EulerSineProd/Variant23bc979ebdcc37e95ef887647e7f89293ec5175887aed0a9c27cd3e10f8d4a36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variant23bc979ebdcc37e95ef887647e7f89293ec5175887aed0a9c27cd3e10f8d4a36.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variant23bc979ebdcc37e95ef887647e7f89293ec5175887aed0a9c27cd3e10f8d4a36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1ef4b5a7288d7062b79a2d08429a7d278dafae7`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EulerSineProd/Variant23bc979ebdcc37e95ef887647e7f89293ec5175887aed0a9c27cd3e10f8d4a36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EulerSineProd/Variant23bc979ebdcc37e95ef887647e7f89293ec5175887aed0a9c27cd3e10f8d4a36.lean.json)

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
| 1 | `theorem` | [antideriv_cos_comp_const_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variant23bc979ebdcc37e95ef887647e7f89293ec5175887aed0a9c27cd3e10f8d4a36.lean/declarations/antideriv-cos-comp-const-mul--2b653d96b018ef421fa0069c.md) | 45 | `result-track:2b653d96b018ef421fa0069c59d9c45d22c4b80d27f38a89a1f256217667d507` |
| 2 | `theorem` | [antideriv_sin_comp_const_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variant23bc979ebdcc37e95ef887647e7f89293ec5175887aed0a9c27cd3e10f8d4a36.lean/declarations/antideriv-sin-comp-const-mul--e383ec8f9795d0c3cd449262.md) | 54 | `result-track:e383ec8f9795d0c3cd44926251bb5b1b5767cd9b08581dc7c218730d67183ec8` |
| 3 | `theorem` | [integral_cos_mul_cos_pow_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variant23bc979ebdcc37e95ef887647e7f89293ec5175887aed0a9c27cd3e10f8d4a36.lean/declarations/integral-cos-mul-cos-pow-aux--6f7d7b776ea0b167eb750fb1.md) | 63 | `result-track:6f7d7b776ea0b167eb750fb11adf4968689ad89e423a84dd511ad757abf4bf6c` |
| 4 | `theorem` | [integral_sin_mul_sin_mul_cos_pow_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variant23bc979ebdcc37e95ef887647e7f89293ec5175887aed0a9c27cd3e10f8d4a36.lean/declarations/integral-sin-mul-sin-mul-cos-pow-eq--bd652b1fd2ce3c2abee1ddff.md) | 91 | `result-track:bd652b1fd2ce3c2abee1ddff8ac8a011b175f8aeed37ae19bec8cacb17b17d82` |
| 5 | `theorem` | [integral_cos_mul_cos_pow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variant23bc979ebdcc37e95ef887647e7f89293ec5175887aed0a9c27cd3e10f8d4a36.lean/declarations/integral-cos-mul-cos-pow--f1c4c321f09a70758855e062.md) | 153 | `result-track:f1c4c321f09a70758855e0621a332c3a4b2e1d5615133394b1437510cdf13a6c` |
| 6 | `theorem` | [integral_cos_mul_cos_pow_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variant23bc979ebdcc37e95ef887647e7f89293ec5175887aed0a9c27cd3e10f8d4a36.lean/declarations/integral-cos-mul-cos-pow-even--9c9639e06685f5bdb36a3ceb.md) | 166 | `result-track:9c9639e06685f5bdb36a3cebad1e8503076df1e0d8eedc84d455ea2616011138` |
| 7 | `theorem` | [integral_cos_pow_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variant23bc979ebdcc37e95ef887647e7f89293ec5175887aed0a9c27cd3e10f8d4a36.lean/declarations/integral-cos-pow-eq--b7715ffc67ad1e8992ca1d2d.md) | 181 | `result-track:b7715ffc67ad1e8992ca1d2d01888eaead76f1b5d47a83559ac1e32b226fd4da` |
| 8 | `theorem` | [integral_cos_pow_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variant23bc979ebdcc37e95ef887647e7f89293ec5175887aed0a9c27cd3e10f8d4a36.lean/declarations/integral-cos-pow-pos--b1551a41b100396ac5cd2ff1.md) | 200 | `result-track:b1551a41b100396ac5cd2ff17575e85ac0fc770c54749dc627c7480717d06918` |
| 9 | `theorem` | [sin_pi_mul_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variant23bc979ebdcc37e95ef887647e7f89293ec5175887aed0a9c27cd3e10f8d4a36.lean/declarations/sin-pi-mul-eq--c66e54d444f44365ad96912a.md) | 205 | `result-track:c66e54d444f44365ad96912a8d4e15338c472c7eb192fd608dd48d9fa30d9fc2` |
| 10 | `theorem` | [tendsto_integral_cos_pow_mul_div](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variant23bc979ebdcc37e95ef887647e7f89293ec5175887aed0a9c27cd3e10f8d4a36.lean/declarations/tendsto-integral-cos-pow-mul-div--8e39f720743c330a092e3c75.md) | 274 | `result-track:8e39f720743c330a092e3c7581dce5d343b323373ff9158520cde73ce2cf5b9c` |
| 11 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.AntiderivCosCompConstMul.Variante43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.Complex.tendsto_euler_sin_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variant23bc979ebdcc37e95ef887647e7f89293ec5175887aed0a9c27cd3e10f8d4a36.lean/declarations/root-grwtsk-analysis-realanalysis-integration-antiderivcoscompconstmul-v--7fc1ca8701977222300c266b.md) | 294 | `result-track:7fc1ca8701977222300c266bd8615aba7df45896000445e4fdc145ccbadafb23` |
| 12 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.AntiderivCosCompConstMul.Variante43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.Real.tendsto_euler_sin_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variant23bc979ebdcc37e95ef887647e7f89293ec5175887aed0a9c27cd3e10f8d4a36.lean/declarations/root-grwtsk-analysis-realanalysis-integration-antiderivcoscompconstmul-v--cdd5589ac3ccda6347c4f4ef.md) | 319 | `result-track:cdd5589ac3ccda6347c4f4ef5bb07624f26da4701808a5cd6bbefcd2ad0faa21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
