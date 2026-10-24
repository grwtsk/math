# Verification target: GRWTSK.Analysis.ComplexAnalysis.Analytic.Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c011999da1dd9eabfb77cb1ac6ab523a4f6b0e4",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c011999da1dd9eabfb77cb1ac6ab523a4f6b0e4`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Hardy.TwoLine` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invGammaℝ](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/invgamma--ba289af8eff8844c521dcd2b.md) | 40 | `declaration-track:ba289af8eff8844c521dcd2bf5e5f11b525f9bfbf655632c7e54e43085b0e696` |
| 2 | `lemma` | [invGammaℝ_eq](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/invgamma-eq--6c9c0fc4013cf428021a4d7c.md) | 42 | `result-track:6c9c0fc4013cf428021a4d7cc88d0b620302dce31d43359ec55d526394995dc5` |
| 3 | `theorem` | [differentiable_invGammaℝ](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/differentiable-invgamma--ee0e99380f2e63406d08fe53.md) | 47 | `result-track:ee0e99380f2e63406d08fe532f22079170284d48540bf50143cba826069d8a2e` |
| 4 | `theorem` | [analyticAt_invGammaℝ](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/analyticat-invgamma--b2818a6ba385840b16a896fa.md) | 59 | `result-track:b2818a6ba385840b16a896fa5c1b4375390891222b4cec07eedb6966ba2079ee` |
| 5 | `lemma` | [Gammaℝ_eq_inv_invGammaℝ](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/gamma-eq-inv-invgamma--48951da51bd2364e9b5910a6.md) | 61 | `result-track:48951da51bd2364e9b5910a6fec069576fcfd4df1d63e76cb08e1796365c7e6d` |
| 6 | `lemma` | [invGammaℝ_ne_zero_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/invgamma-ne-zero-iff--a4d5a1fb2a28d95a515d163d.md) | 64 | `result-track:a4d5a1fb2a28d95a515d163d30ea5855f4c32843b7c202de92da72732f8a7858` |
| 7 | `lemma` | [invGammaℝ_eq_zero_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/invgamma-eq-zero-iff--25bb6763b88e761505cf8f59.md) | 67 | `result-track:25bb6763b88e761505cf8f59938cd19f91482a2eb0dbf8206d80b84aab44b31e` |
| 8 | `theorem` | [analyticAt_Gammaℝ](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/analyticat-gamma--3970078a9c4a85e603e222ee.md) | 71 | `result-track:3970078a9c4a85e603e222eed6a4b8a5e7ac95fc711577380acb2c46d02ddb6b` |
| 9 | `theorem` | [differentiableAt_Gammaℝ](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/differentiableat-gamma--f870cb60362e0f1dbf060f75.md) | 75 | `result-track:f870cb60362e0f1dbf060f750d0d49a3210e263337c7c5481cadad8aaa484e30` |
| 10 | `theorem` | [Gammaℝ_ne_zero_of_re](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/gamma-ne-zero-of-re--105f2403b65016bd2430c3b3.md) | 79 | `result-track:105f2403b65016bd2430c3b3c5bf57d705a19ea23b366448775b464ddc382e58` |
| 11 | `theorem` | [Gammaℝ_one_sub_ne_zero_of_re](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/gamma-one-sub-ne-zero-of-re--6c4d2e7e9f333d52541bf56b.md) | 89 | `result-track:6c4d2e7e9f333d52541bf56b02772ef13ec0c7261648f88fd49c72412edef037` |
| 12 | `theorem` | [logDeriv_Gammaℝ_eq_neg](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/logderiv-gamma-eq-neg--53f0119f700ed591c4481cb0.md) | 93 | `result-track:53f0119f700ed591c4481cb0451f6cbf3dd15c7b2860be7f969e8592ccd31e43` |
| 13 | `theorem` | [invGammaℝ_eq_mul](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/invgamma-eq-mul--8bbadf1b540cdc32b9a92679.md) | 102 | `result-track:8bbadf1b540cdc32b9a926791e1e4de12cf323e5e0c13080c794a525ddcbe4d5` |
| 14 | `lemma` | [invGammaℝ_two](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/invgamma-two--9d0120c273af59e561b0c404.md) | 111 | `result-track:9d0120c273af59e561b0c404566ff104daea05a1fc702aef7ebfcdf2ef5adae2` |
| 15 | `def` | [invGammaℝCof](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/invgamma-cof--a57ba33f9f7e566e92cd1e71.md) | 117 | `declaration-track:a57ba33f9f7e566e92cd1e71def675219db9510292d35cfe2de3a2c735b4202b` |
| 16 | `lemma` | [differentiable_invGammaℝCof](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/differentiable-invgamma-cof--ed8595cf14de9b901d0c59c4.md) | 119 | `result-track:ed8595cf14de9b901d0c59c40f577b1b38ce5855d2c5121f4931d291ace67e57` |
| 17 | `lemma` | [invGammaℝCof_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/invgamma-cof-zero--01ba9720d8e4e998bd47491c.md) | 122 | `result-track:01ba9720d8e4e998bd47491c7673fa6f411d5bda67383032864583b9049e0277` |
| 18 | `lemma` | [invGammaℝ_eq_id_mul](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/invgamma-eq-id-mul--000a7a9d48e8d8ad6e7a3e9a.md) | 127 | `result-track:000a7a9d48e8d8ad6e7a3e9a2f776ddc9d84a971b76d0bb71dc07b1b828026be` |
| 19 | `lemma` | [invGammaℝ_eq_id_mul'](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/invgamma-eq-id-mul--b0d0a7eb77248c11d4a723c5.md) | 130 | `result-track:b0d0a7eb77248c11d4a723c56daaf65d665c22c1b133fd4a50217500e7e5c15c` |
| 20 | `theorem` | [analyticOrderAt_invGammaℝ_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/analyticorderat-invgamma-zero--5480ce18ad16932204248372.md) | 134 | `result-track:5480ce18ad1693220424837207f27687b918bc23bec232162d8e85c9c7f8fe8b` |
| 21 | `theorem` | [analyticOrderNatAt_invGammaℝ_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/analyticordernatat-invgamma-zero--7b0df426cbb9224ef4058947.md) | 143 | `result-track:7b0df426cbb9224ef405894739b36de5abfd3e1b2eddc886cb3d6d0fd4d13cf9` |
| 22 | `theorem` | [analyticOrderAt_invGammaℝ_one_sub_one](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/analyticorderat-invgamma-one-sub-one--0e99511cd76a2fede2201607.md) | 147 | `result-track:0e99511cd76a2fede2201607713c335fa8428469c43be92902fb32173a3ce8b2` |
| 23 | `theorem` | [analyticOrderNatAt_invGammaℝ_one_sub_one](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/analyticordernatat-invgamma-one-sub-one--97d02cac507a77c3d3c28153.md) | 154 | `result-track:97d02cac507a77c3d3c2815395183749133031547c92e33cc6d65fd49446e30c` |
| 24 | `theorem` | [tendsto_mul_logDeriv_invGammaℝ_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/tendsto-mul-logderiv-invgamma-zero--98c27a1ae6a762cadf880069.md) | 158 | `result-track:98c27a1ae6a762cadf880069ef242cd02385ba033ba937ec60e52d6758fd72ff` |
| 25 | `lemma` | [chiFE_eq_mul](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/chife-eq-mul--bcf267b8f9bc1fc093ae7b29.md) | 186 | `result-track:bcf267b8f9bc1fc093ae7b29bcd13ba1a63efb3c31dc77cdb9ab73d8379bc898` |
| 26 | `theorem` | [analyticAt_Gammaℝ_one_sub](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/analyticat-gamma-one-sub--31061187f6f9ba71ddd11d18.md) | 189 | `result-track:31061187f6f9ba71ddd11d189092f12bc82deebf7decf60ae7a43e9e3b8339ef` |
| 27 | `theorem` | [chiFE_analyticAt'](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/chife-analyticat--f74586cb7c861030e9a377b2.md) | 193 | `result-track:f74586cb7c861030e9a377b2ab89413651b4a706b229a6104a02070fd1f5b132` |
| 28 | `theorem` | [chiFE_ne_zero'](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/chife-ne-zero--5872ba5cd85eb9b89053514e.md) | 196 | `result-track:5872ba5cd85eb9b89053514e2ed01eebba1c8103b483a8537f3da25f01a13459` |
| 29 | `theorem` | [logDeriv_chiFE_eq](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/logderiv-chife-eq--c36e2503a876263ae79d431a.md) | 200 | `result-track:c36e2503a876263ae79d431a597533ef166323c34197b20ef00c722049a4afa4` |
| 30 | `theorem` | [logDeriv_Gammaℝ_one_sub_eq](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/logderiv-gamma-one-sub-eq--f308781176c21ce2049a9564.md) | 206 | `result-track:f308781176c21ce2049a9564d1ca5c6a9d29e4d7a81ceaa7d1a2f5e3b2f8910c` |
| 31 | `theorem` | [L2_analyticAt'](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/l2-analyticat--939f931afe7dd08142a99ec3.md) | 216 | `result-track:939f931afe7dd08142a99ec3fb0762f40219c0546d6a14d975ac0b5580be6e41` |
| 32 | `theorem` | [hardyW_analyticAt'](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/hardyw-analyticat--25286c50e8ca4994fc01a376.md) | 222 | `result-track:25286c50e8ca4994fc01a3764a7a3bc41c21b7d6441fb4ed71d4f6a2c533a322` |
| 33 | `def` | [stripReg](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/stripreg--4becf7b936a7d9a2e05530e3.md) | 233 | `declaration-track:4becf7b936a7d9a2e05530e35944c18efc0841888c8b51393dbc2c7e908300d4` |
| 34 | `lemma` | [isOpen_stripReg](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/isopen-stripreg--c5156fad6e9d3d70b5aa8bab.md) | 235 | `result-track:c5156fad6e9d3d70b5aa8bab2d7b56135a767b0ffb3bebfa6f8acb3ecc494a5a` |
| 35 | `theorem` | [hardyW_analyticAt_of_mem](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/hardyw-analyticat-of-mem--d0129014edd0f173a320364c.md) | 242 | `result-track:d0129014edd0f173a320364c7dd1c67ac84427efd998123838e5e7dd3a1e8987` |
| 36 | `theorem` | [L2_analyticAt_of_mem](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/l2-analyticat-of-mem--f6148342c5f76d6ec64f4818.md) | 245 | `result-track:f6148342c5f76d6ec64f481819e00778547bfc7814d5784fa399ee1f8bb03841` |
| 37 | `theorem` | [hardyW_analyticOnNhd_stripReg](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantdeea2bdefee95efff0da944b21170aad01b81cd0db6cd52308580a2d94caa686.lean/declarations/hardyw-analyticonnhd-stripreg--233c3554dddcb04be85fd806.md) | 248 | `result-track:233c3554dddcb04be85fd8061feaec1f0db691bac1ec2fae9aa94f7315bc7baa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
