# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.L2Space.Variant9a9398a634854ce358a589a3293706ff0adb7803afbac5a8e9c8f7ba12e3a0d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e82a13ad9748f91b142069dba4705e657829891",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variant9a9398a634854ce358a589a3293706ff0adb7803afbac5a8e9c8f7ba12e3a0d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant9a9398a634854ce358a589a3293706ff0adb7803afbac5a8e9c8f7ba12e3a0d3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant9a9398a634854ce358a589a3293706ff0adb7803afbac5a8e9c8f7ba12e3a0d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e82a13ad9748f91b142069dba4705e657829891`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variant9a9398a634854ce358a589a3293706ff0adb7803afbac5a8e9c8f7ba12e3a0d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/L2Space/Variant9a9398a634854ce358a589a3293706ff0adb7803afbac5a8e9c8f7ba12e3a0d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.IsROrC.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.Inner` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.SetIntegral` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant9a9398a634854ce358a589a3293706ff0adb7803afbac5a8e9c8f7ba12e3a0d3.lean/declarations/macro-rules--5aebb668c45884a93fce5628.md) | 28 | `declaration-track:5aebb668c45884a93fce562875c17cc8d6f6f59ae70faa1c3a04357704473549` |
| 2 | `theorem` | [Memℒp.integrable_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant9a9398a634854ce358a589a3293706ff0adb7803afbac5a8e9c8f7ba12e3a0d3.lean/declarations/mem-p-integrable-sq--ab3c20f664b7f63ce6933785.md) | 44 | `result-track:ab3c20f664b7f63ce6933785e4dd9fd63e63624d6f60cb4851f4f90a0add17fe` |
| 3 | `theorem` | [memℒp_two_iff_integrable_sq_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant9a9398a634854ce358a589a3293706ff0adb7803afbac5a8e9c8f7ba12e3a0d3.lean/declarations/mem-p-two-iff-integrable-sq-norm--f60c1f41c035d19e4632c3cb.md) | 48 | `result-track:f60c1f41c035d19e4632c3cb16ae299a5b6dcf3579ee404657f41c7fd5069559` |
| 4 | `theorem` | [memℒp_two_iff_integrable_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant9a9398a634854ce358a589a3293706ff0adb7803afbac5a8e9c8f7ba12e3a0d3.lean/declarations/mem-p-two-iff-integrable-sq--f3d6037fcb4d1d109d43ac39.md) | 56 | `result-track:f3d6037fcb4d1d109d43ac397b07342e57edc19ddd10634e6a25fd571a81ad13` |
| 5 | `theorem` | [Memℒp.const_inner](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant9a9398a634854ce358a589a3293706ff0adb7803afbac5a8e9c8f7ba12e3a0d3.lean/declarations/mem-p-const-inner--9c7ffbd833ecbbc6a2b86ae8.md) | 73 | `result-track:9c7ffbd833ecbbc6a2b86ae8bd06f2ac55a3315e692789032a42ad5044688f68` |
| 6 | `theorem` | [Memℒp.inner_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant9a9398a634854ce358a589a3293706ff0adb7803afbac5a8e9c8f7ba12e3a0d3.lean/declarations/mem-p-inner-const--2906d75b9bdeaf52f25367de.md) | 78 | `result-track:2906d75b9bdeaf52f25367de24c73098c6eb69a3e27d2a81844099da4751ef78` |
| 7 | `theorem` | [Integrable.const_inner](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant9a9398a634854ce358a589a3293706ff0adb7803afbac5a8e9c8f7ba12e3a0d3.lean/declarations/integrable-const-inner--c95138486d81d4b802974814.md) | 85 | `result-track:c95138486d81d4b802974814f263a641218c64d988da81a70ba93f50a69d7202` |
| 8 | `theorem` | [Integrable.inner_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant9a9398a634854ce358a589a3293706ff0adb7803afbac5a8e9c8f7ba12e3a0d3.lean/declarations/integrable-inner-const--a7d9624ac8d4c0e77dd38701.md) | 89 | `result-track:a7d9624ac8d4c0e77dd38701ac4a783f85532cc0ff249635086d33d1de481e24` |
| 9 | `theorem` | [_root_.integral_inner](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant9a9398a634854ce358a589a3293706ff0adb7803afbac5a8e9c8f7ba12e3a0d3.lean/declarations/root-integral-inner--feb389a60767a1de9ef3c6ec.md) | 95 | `result-track:feb389a60767a1de9ef3c6ec0962d42370d9ddcc4e9cd1d0ddb082ab2e3a968c` |
| 10 | `theorem` | [_root_.integral_eq_zero_of_forall_integral_inner_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant9a9398a634854ce358a589a3293706ff0adb7803afbac5a8e9c8f7ba12e3a0d3.lean/declarations/root-integral-eq-zero-of-forall-integral-inner-eq-zero--c7b9531d4a523fb8e759420a.md) | 107 | `result-track:c7b9531d4a523fb8e759420a670dbf28a2368d87c4491bff591a9626a7fe6c73` |
| 11 | `theorem` | [snorm_rpow_two_norm_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant9a9398a634854ce358a589a3293706ff0adb7803afbac5a8e9c8f7ba12e3a0d3.lean/declarations/snorm-rpow-two-norm-lt-top--041e7f50fe7a955d559e08d0.md) | 122 | `result-track:041e7f50fe7a955d559e08d0ba20e789154284b45f938bae509bcc69efe43b15` |
| 12 | `theorem` | [snorm_inner_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant9a9398a634854ce358a589a3293706ff0adb7803afbac5a8e9c8f7ba12e3a0d3.lean/declarations/snorm-inner-lt-top--8567c63482068515b96a1afe.md) | 128 | `result-track:8567c63482068515b96a1afe53acad6aeb1085f119e390008d0346133baf074b` |
| 13 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant9a9398a634854ce358a589a3293706ff0adb7803afbac5a8e9c8f7ba12e3a0d3.lean/declarations/instance--7549c1c03b574ee7479e18b7.md) | 150 | `declaration-track:7549c1c03b574ee7479e18b72c546ccb59356acaba7af8cfc4e39783d1b697f0` |
| 14 | `theorem` | [inner_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant9a9398a634854ce358a589a3293706ff0adb7803afbac5a8e9c8f7ba12e3a0d3.lean/declarations/inner-def--43c7963ba31ac192d9b107a1.md) | 153 | `result-track:43c7963ba31ac192d9b107a1f037e05a9646e3aacb045dbab50e2796c24a7709` |
| 15 | `theorem` | [integral_inner_eq_sq_snorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant9a9398a634854ce358a589a3293706ff0adb7803afbac5a8e9c8f7ba12e3a0d3.lean/declarations/integral-inner-eq-sq-snorm--b39857d52e3e12d635457401.md) | 157 | `result-track:b39857d52e3e12d635457401f5d90a3d06f450393eddba5793ca7c5ed25732b7` |
| 16 | `theorem` | [norm_sq_eq_inner'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant9a9398a634854ce358a589a3293706ff0adb7803afbac5a8e9c8f7ba12e3a0d3.lean/declarations/norm-sq-eq-inner--74369b715f2cf24feea77a59.md) | 173 | `result-track:74369b715f2cf24feea77a594e7e9d475c6e5b08089ad85da34393149496c9df` |
| 17 | `theorem` | [mem_L1_inner](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant9a9398a634854ce358a589a3293706ff0adb7803afbac5a8e9c8f7ba12e3a0d3.lean/declarations/mem-l1-inner--2714e8cd4a6449847ab564ba.md) | 184 | `result-track:2714e8cd4a6449847ab564bae2d12071539ecb0b9f9f214013901a28738282e3` |
| 18 | `theorem` | [integrable_inner](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant9a9398a634854ce358a589a3293706ff0adb7803afbac5a8e9c8f7ba12e3a0d3.lean/declarations/integrable-inner--c58cce7380e83e7c04fc33ba.md) | 191 | `result-track:c58cce7380e83e7c04fc33ba2df15701eead593dfb6319bb768371519c57ffbd` |
| 19 | `theorem` | [add_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant9a9398a634854ce358a589a3293706ff0adb7803afbac5a8e9c8f7ba12e3a0d3.lean/declarations/add-left--90789ae9f8b7e1888900fa4f.md) | 198 | `result-track:90789ae9f8b7e1888900fa4f02ee4d145fcb8180fa69fd39bb829d2882f24c03` |
| 20 | `theorem` | [smul_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant9a9398a634854ce358a589a3293706ff0adb7803afbac5a8e9c8f7ba12e3a0d3.lean/declarations/smul-left--bba7b35f20e527509bd8af1b.md) | 209 | `result-track:bba7b35f20e527509bd8af1b34ccef45122906e4caf6e8eb598805182331566b` |
| 21 | `instance` | [innerProductSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant9a9398a634854ce358a589a3293706ff0adb7803afbac5a8e9c8f7ba12e3a0d3.lean/declarations/innerproductspace--a1f396b1290bf994b0c5bfcf.md) | 219 | `declaration-track:a1f396b1290bf994b0c5bfcf4415c38a384a4158bf393331c4b9a3b6288d3557` |
| 22 | `theorem` | [inner_indicatorConstLp_eq_set_integral_inner](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant9a9398a634854ce358a589a3293706ff0adb7803afbac5a8e9c8f7ba12e3a0d3.lean/declarations/inner-indicatorconstlp-eq-set-integral-inner--47c3d361080fa8a8fad031b9.md) | 234 | `result-track:47c3d361080fa8a8fad031b93c26cc0deaec762dcd83a8ea611a00146d1be322` |
| 23 | `theorem` | [inner_indicatorConstLp_eq_inner_set_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant9a9398a634854ce358a589a3293706ff0adb7803afbac5a8e9c8f7ba12e3a0d3.lean/declarations/inner-indicatorconstlp-eq-inner-set-integral--022824c4837f6d2ee901f9cd.md) | 263 | `result-track:022824c4837f6d2ee901f9cdca1d4789b1451f172e8f8e680314133f2315753f` |
| 24 | `theorem` | [inner_indicatorConstLp_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant9a9398a634854ce358a589a3293706ff0adb7803afbac5a8e9c8f7ba12e3a0d3.lean/declarations/inner-indicatorconstlp-one--4e95be366cff20a7b40c8e38.md) | 274 | `result-track:4e95be366cff20a7b40c8e381dba861f9948388b211632fa5d444518d6781744` |
| 25 | `theorem` | [BoundedContinuousFunction.inner_toLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant9a9398a634854ce358a589a3293706ff0adb7803afbac5a8e9c8f7ba12e3a0d3.lean/declarations/boundedcontinuousfunction-inner-tolp--01caa48bf5fccd9903a1a5c3.md) | 297 | `result-track:01caa48bf5fccd9903a1a5c39e7950d38eca070284dbc69b88a83d5899a86f74` |
| 26 | `theorem` | [ContinuousMap.inner_toLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/L2Space/Variant9a9398a634854ce358a589a3293706ff0adb7803afbac5a8e9c8f7ba12e3a0d3.lean/declarations/continuousmap-inner-tolp--77899e5c678cc5dc540d2660.md) | 313 | `result-track:77899e5c678cc5dc540d26609bd5a96b13cdfa53e89bab36436b268a54903f9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
