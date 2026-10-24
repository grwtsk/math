# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.DirichletLine.Variant753295f90f60081c0d02f4ef35f928aacffb932c67b5b0c971b51313e3b5729c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ab24618853daeb6c2ef5214ca2f76f0f75a906f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant753295f90f60081c0d02f4ef35f928aacffb932c67b5b0c971b51313e3b5729c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant753295f90f60081c0d02f4ef35f928aacffb932c67b5b0c971b51313e3b5729c.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant753295f90f60081c0d02f4ef35f928aacffb932c67b5b0c971b51313e3b5729c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ab24618853daeb6c2ef5214ca2f76f0f75a906f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant753295f90f60081c0d02f4ef35f928aacffb932c67b5b0c971b51313e3b5729c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant753295f90f60081c0d02f4ef35f928aacffb932c67b5b0c971b51313e3b5729c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.WeilEF.Main` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.FunctionSeries` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [LSeries_term_line](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant753295f90f60081c0d02f4ef35f928aacffb932c67b5b0c971b51313e3b5729c.lean/declarations/lseries-term-line--9d704e9e4424665d440fd240.md) | 33 | `result-track:9d704e9e4424665d440fd240a676ed13ad51ce9c093726dc40114d2c6fd2b326` |
| 2 | `theorem` | [norm_LSeries_term_line](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant753295f90f60081c0d02f4ef35f928aacffb932c67b5b0c971b51313e3b5729c.lean/declarations/norm-lseries-term-line--034eef39d50e99068426a945.md) | 55 | `result-track:034eef39d50e99068426a945b38ee73f73c7b7dc3fc601ade1f9d2f7f0766677` |
| 3 | `theorem` | [integrand_eq_tsum_gen](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant753295f90f60081c0d02f4ef35f928aacffb932c67b5b0c971b51313e3b5729c.lean/declarations/integrand-eq-tsum-gen--2ab3b6d1e5ba0c98717444c0.md) | 65 | `result-track:2ab3b6d1e5ba0c98717444c07dffd3ec9bd503de385afe3076d50f0fae182e92` |
| 4 | `theorem` | [per_n_line_integral_gen](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant753295f90f60081c0d02f4ef35f928aacffb932c67b5b0c971b51313e3b5729c.lean/declarations/per-n-line-integral-gen--ca8f9363395be4acf486e723.md) | 72 | `result-track:ca8f9363395be4acf486e7238f49a7ba6401ef436df1ab7352c5a54080e8aa39` |
| 5 | `theorem` | [continuous_LSeries_term_line](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant753295f90f60081c0d02f4ef35f928aacffb932c67b5b0c971b51313e3b5729c.lean/declarations/continuous-lseries-term-line--0d0e79e0060eaf9c69dcc842.md) | 117 | `result-track:0d0e79e0060eaf9c69dcc842f4b34c9190c202fdd3454e20c77d10467b127713` |
| 6 | `theorem` | [summable_coeff_bound](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant753295f90f60081c0d02f4ef35f928aacffb932c67b5b0c971b51313e3b5729c.lean/declarations/summable-coeff-bound--4020e43167ae7c329094483b.md) | 128 | `result-track:4020e43167ae7c329094483b629b65946d7ebe7d49569072a629ae70f7936476` |
| 7 | `theorem` | [continuous_LSeries_line](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant753295f90f60081c0d02f4ef35f928aacffb932c67b5b0c971b51313e3b5729c.lean/declarations/continuous-lseries-line--58c2afcef6f86bbb2237f1cc.md) | 137 | `result-track:58c2afcef6f86bbb2237f1cccae54521e0972dcc0b529de3f0b859ef4ca27273` |
| 8 | `theorem` | [norm_LSeries_line_le](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant753295f90f60081c0d02f4ef35f928aacffb932c67b5b0c971b51313e3b5729c.lean/declarations/norm-lseries-line-le--53febcecee9ddeb674da92bd.md) | 145 | `result-track:53febcecee9ddeb674da92bd6d2d5617cecd25cd1ecf2b632b0d3eeb788ebb68` |
| 9 | `theorem` | [line_terms_integrable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant753295f90f60081c0d02f4ef35f928aacffb932c67b5b0c971b51313e3b5729c.lean/declarations/line-terms-integrable--5844282462f37fa79d3060aa.md) | 155 | `result-track:5844282462f37fa79d3060aac84e889b4acbc3b760e3889ae2744595904e50db` |
| 10 | `theorem` | [line_integral_swap_gen](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant753295f90f60081c0d02f4ef35f928aacffb932c67b5b0c971b51313e3b5729c.lean/declarations/line-integral-swap-gen--a8b883dbc866180deca147b1.md) | 190 | `result-track:a8b883dbc866180deca147b19367860dce0ad85d5830d2d817556d5f2c706777` |
| 11 | `theorem` | [integrable_Hfn_mul_LSeries](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant753295f90f60081c0d02f4ef35f928aacffb932c67b5b0c971b51313e3b5729c.lean/declarations/integrable-hfn-mul-lseries--bbc1a7160161407bdf207573.md) | 198 | `result-track:bbc1a7160161407bdf20757338fa6ad0e26153624255b36141105e7380f01c53` |
| 12 | `theorem` | [dirichlet_line](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant753295f90f60081c0d02f4ef35f928aacffb932c67b5b0c971b51313e3b5729c.lean/declarations/dirichlet-line--4a3d6e2e71c79d67d7f389c7.md) | 215 | `result-track:4a3d6e2e71c79d67d7f389c7a57297aa80e2e7086c902c77c1f6d6d53954e6df` |
| 13 | `theorem` | [dirichlet_line_mirror](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant753295f90f60081c0d02f4ef35f928aacffb932c67b5b0c971b51313e3b5729c.lean/declarations/dirichlet-line-mirror--f304a34acda2855c45a2dba3.md) | 238 | `result-track:f304a34acda2855c45a2dba3a0ffacdfd79e00a70cc618a354513fb0f7ee9b6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
