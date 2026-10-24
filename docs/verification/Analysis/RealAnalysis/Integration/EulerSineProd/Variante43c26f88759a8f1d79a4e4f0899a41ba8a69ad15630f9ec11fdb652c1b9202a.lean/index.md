# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.EulerSineProd.Variante43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e2c41e2ff40abda20a9e7750c685cadd853de14",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EulerSineProd/Variante43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variante43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variante43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e2c41e2ff40abda20a9e7750c685cadd853de14`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EulerSineProd/Variante43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EulerSineProd/Variante43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.PeakFunction` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [antideriv_cos_comp_const_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variante43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.lean/declarations/antideriv-cos-comp-const-mul--fe024086cec7919615d9f72d.md) | 37 | `result-track:fe024086cec7919615d9f72dfd7b479f349bd421bbcdbfd52bc3432b754a3883` |
| 2 | `theorem` | [antideriv_sin_comp_const_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variante43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.lean/declarations/antideriv-sin-comp-const-mul--607348ab2218ac7bdd45718a.md) | 46 | `result-track:607348ab2218ac7bdd45718ab1794ae1bc6e45918df56dd3d96f86cb068af75f` |
| 3 | `theorem` | [integral_cos_mul_cos_pow_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variante43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.lean/declarations/integral-cos-mul-cos-pow-aux--7a2f1d2b8626d56a331588e1.md) | 55 | `result-track:7a2f1d2b8626d56a331588e1683092e7c48fad46453ecaaa16177bd5f75b3d37` |
| 4 | `theorem` | [integral_sin_mul_sin_mul_cos_pow_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variante43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.lean/declarations/integral-sin-mul-sin-mul-cos-pow-eq--ccee4a3ece4263a61502074a.md) | 83 | `result-track:ccee4a3ece4263a61502074a30f69cc035f129c70e5f05f36effded3178c5964` |
| 5 | `theorem` | [integral_cos_mul_cos_pow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variante43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.lean/declarations/integral-cos-mul-cos-pow--f2e9f5c887066e5baa0f0ab9.md) | 145 | `result-track:f2e9f5c887066e5baa0f0ab9d2e3fc21d57126eb3f2c9af1df3c3ca9ae9b4abc` |
| 6 | `theorem` | [integral_cos_mul_cos_pow_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variante43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.lean/declarations/integral-cos-mul-cos-pow-even--2f79cbf32169434e1b0886ca.md) | 158 | `result-track:2f79cbf32169434e1b0886cae5765894df95d40e6d3ce3f6dc75ef4a47a28cac` |
| 7 | `theorem` | [integral_cos_pow_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variante43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.lean/declarations/integral-cos-pow-eq--03786c2707b43ad87bfd75e9.md) | 173 | `result-track:03786c2707b43ad87bfd75e930cfffab47d19aed79d9c3241884cc24c42ace66` |
| 8 | `theorem` | [integral_cos_pow_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variante43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.lean/declarations/integral-cos-pow-pos--5afcc656da4fa76a888b85fb.md) | 192 | `result-track:5afcc656da4fa76a888b85fb535d7cb21a8014f7454e9da1740c3bcb873ce2a4` |
| 9 | `theorem` | [sin_pi_mul_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variante43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.lean/declarations/sin-pi-mul-eq--0cdf390e1c1d1fe52dc87bb3.md) | 197 | `result-track:0cdf390e1c1d1fe52dc87bb34227753c96d853157a4db1649a64fb3bba62394d` |
| 10 | `theorem` | [tendsto_integral_cos_pow_mul_div](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variante43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.lean/declarations/tendsto-integral-cos-pow-mul-div--5c5811354dad5d3d2f455749.md) | 266 | `result-track:5c5811354dad5d3d2f455749e16bbcaaa274c44855932a88b0d2fa58ad759ade` |
| 11 | `theorem` | [_root_.Complex.tendsto_euler_sin_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variante43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.lean/declarations/root-complex-tendsto-euler-sin-prod--cbdba877716f08e7d96c6445.md) | 286 | `result-track:cbdba877716f08e7d96c6445808903c0c455077f895da8399a9a91b3add8428c` |
| 12 | `theorem` | [_root_.Real.tendsto_euler_sin_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variante43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.lean/declarations/root-real-tendsto-euler-sin-prod--593f21a341f9fc516e7137e9.md) | 311 | `result-track:593f21a341f9fc516e7137e904a950836b04728b46efff10859311310f81da91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
