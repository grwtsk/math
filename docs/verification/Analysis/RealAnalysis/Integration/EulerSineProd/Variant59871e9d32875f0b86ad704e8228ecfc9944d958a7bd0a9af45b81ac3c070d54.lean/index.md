# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.EulerSineProd.Variant59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "743f6583cf95ab20850d0dc2d9c0208f4857814e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EulerSineProd/Variant59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variant59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variant59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `743f6583cf95ab20850d0dc2d9c0208f4857814e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EulerSineProd/Variant59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EulerSineProd/Variant59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54.lean.json)

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
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variant59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54.lean/declarations/macro-rules--7f7301d361392b9bc3135667.md) | 24 | `declaration-track:7f7301d361392b9bc313566766768624220b8bdda3b05c3b5e0658d340235188` |
| 2 | `theorem` | [antideriv_cos_comp_const_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variant59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54.lean/declarations/antideriv-cos-comp-const-mul--3abcc40be94812aa20dc103a.md) | 42 | `result-track:3abcc40be94812aa20dc103a8cae95ee88fe9fffceae296a9417b610ae3675a6` |
| 3 | `theorem` | [antideriv_sin_comp_const_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variant59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54.lean/declarations/antideriv-sin-comp-const-mul--0378deddaf473ca01b29f1db.md) | 52 | `result-track:0378deddaf473ca01b29f1db418caacaef962f6de6f92cd18fe5351abdd20c67` |
| 4 | `theorem` | [integral_cos_mul_cos_pow_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variant59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54.lean/declarations/integral-cos-mul-cos-pow-aux--e5ba409eaefa4dd01a759a4e.md) | 62 | `result-track:e5ba409eaefa4dd01a759a4e0961117d7af74b2f732efbd8dd6b7c1307fd030d` |
| 5 | `theorem` | [integral_sin_mul_sin_mul_cos_pow_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variant59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54.lean/declarations/integral-sin-mul-sin-mul-cos-pow-eq--4b219660a74df951dbc803d4.md) | 92 | `result-track:4b219660a74df951dbc803d4279f02863943787aa4962a9e26fb96509e6884bc` |
| 6 | `theorem` | [integral_cos_mul_cos_pow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variant59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54.lean/declarations/integral-cos-mul-cos-pow--e89fad12405e5be74c7de32e.md) | 155 | `result-track:e89fad12405e5be74c7de32e4b641a1eb6e7d97508c6eca50c1c0343996bac8a` |
| 7 | `theorem` | [integral_cos_mul_cos_pow_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variant59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54.lean/declarations/integral-cos-mul-cos-pow-even--25b7b527d9c77c030bd85f96.md) | 169 | `result-track:25b7b527d9c77c030bd85f9686991e8df41245e021a13d6a1827b708c7034901` |
| 8 | `theorem` | [integral_cos_pow_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variant59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54.lean/declarations/integral-cos-pow-eq--95cba6fad30dbcffefa9876a.md) | 185 | `result-track:95cba6fad30dbcffefa9876a87700e9d0bc85af3e20d35c4a467b1f78d9f3edb` |
| 9 | `theorem` | [integral_cos_pow_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variant59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54.lean/declarations/integral-cos-pow-pos--dbb9bb715d4856ff0e48f3ce.md) | 206 | `result-track:dbb9bb715d4856ff0e48f3cee421d88b0dedabc6094b3f196e0ef43472deb9eb` |
| 10 | `theorem` | [sin_pi_mul_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variant59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54.lean/declarations/sin-pi-mul-eq--b4d094b9dc518d15e5f88dee.md) | 212 | `result-track:b4d094b9dc518d15e5f88dee1b1f8c75f4393fc7b7d7ea2d4081413ffeb121d3` |
| 11 | `theorem` | [tendsto_integral_cos_pow_mul_div](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variant59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54.lean/declarations/tendsto-integral-cos-pow-mul-div--0842370009d4dbfc25507895.md) | 282 | `result-track:0842370009d4dbfc25507895d04481faaf5787872a5b4e11ab7b904807e95fc5` |
| 12 | `theorem` | [_root_.Complex.tendsto_euler_sin_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variant59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54.lean/declarations/root-complex-tendsto-euler-sin-prod--7eccc45b8ac73c6df7e0808b.md) | 303 | `result-track:7eccc45b8ac73c6df7e0808b0050660e7f4c769aa1bfb65587d9fe6452fd39de` |
| 13 | `theorem` | [_root_.Real.tendsto_euler_sin_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EulerSineProd/Variant59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54.lean/declarations/root-real-tendsto-euler-sin-prod--c71fc01a95dadd939f14f905.md) | 332 | `result-track:c71fc01a95dadd939f14f9053c65101909dc0bf2769be3853029e362c663a55c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
