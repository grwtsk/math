# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Nonvanishing.Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a231254a2c4cd89d6baf8133f9e55e4267fa5eec",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a231254a2c4cd89d6baf8133f9e55e4267fa5eec`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Complex.LogBounds` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.DirichletContinuation` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Positivity` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zetaMul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean/declarations/zetamul--7070082e5f64b720481932cf.md) | 79 | `declaration-track:7070082e5f64b720481932cf70fd1561eb880e39ce9e27f6bf14ec087a5703c3` |
| 2 | `lemma` | [isMultiplicative_zetaMul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean/declarations/ismultiplicative-zetamul--1c92769d3c35540f1ee21c11.md) | 83 | `result-track:1c92769d3c35540f1ee21c11c22a83b422d2ba2754f3407a847688758abe0de7` |
| 3 | `lemma` | [LSeriesSummable_zetaMul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean/declarations/lseriessummable-zetamul--83c63de0aeb7e3509b56f871.md) | 86 | `result-track:83c63de0aeb7e3509b56f871082a507dafaa8b20b934b7d0b5b011fae4d63acd` |
| 4 | `lemma` | [zetaMul_prime_pow_nonneg](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean/declarations/zetamul-prime-pow-nonneg--dc9693b74d290ab97267599a.md) | 93 | `result-track:dc9693b74d290ab97267599ab72cc78b117a1279d582628b2d5b87ac51d71114` |
| 5 | `lemma` | [zetaMul_nonneg](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean/declarations/zetamul-nonneg--73b2a7eb6df1328d0f207c6c.md) | 109 | `result-track:73b2a7eb6df1328d0f207c6c07065e73e1909d816f56f696e174e4d3b58453d4` |
| 6 | `structure` | [BadChar](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean/declarations/badchar--86b6e91cd59b32f6e8df399f.md) | 129 | `declaration-track:86b6e91cd59b32f6e8df399f38b8d31a927c345d14b147abe66e65cae13c9c71` |
| 7 | `def` | [F](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean/declarations/f--031350d69988966f5c671689.md) | 144 | `declaration-track:031350d69988966f5c6716898841c4f8cb19c52fc59d606f0d508cfa7c832352` |
| 8 | `lemma` | [F_differentiableAt_of_ne](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean/declarations/f-differentiableat-of-ne--78fdae56cc86dc85c2d037ee.md) | 147 | `result-track:78fdae56cc86dc85c2d037ee527cd203a30bfe9e7b08be6df43ea21dc3cd291f` |
| 9 | `lemma` | [F_eq_LSeries](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean/declarations/f-eq-lseries--79203fc200373d9d2d6200c0.md) | 154 | `result-track:79203fc200373d9d2d6200c0de5637d34d099ca35f106204b6f2e6fb2c42b04f` |
| 10 | `lemma` | [F_differentiable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean/declarations/f-differentiable--b2b110e1c4cc703795ed927b.md) | 168 | `result-track:b2b110e1c4cc703795ed927b57f237fb1d522126162bd1bb256eee7a11a2103c` |
| 11 | `lemma` | [F_neg_two](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean/declarations/f-neg-two--a31ee8c1f6e75eefbbb03ab7.md) | 193 | `result-track:a31ee8c1f6e75eefbbb03ab76c1c7c24ec9feb52ee86e5ea09711801e503f123` |
| 12 | `theorem` | [LFunction_apply_one_ne_zero_of_quadratic](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean/declarations/lfunction-apply-one-ne-zero-of-quadratic--38f1cac257681d34f70a3dec.md) | 203 | `result-track:38f1cac257681d34f70a3dec519ba186206175c8ad7d79486bc75f6630c48b5b` |
| 13 | `lemma` | [re_log_comb_nonneg'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean/declarations/re-log-comb-nonneg--4da8a4f960aa25e1861605e1.md) | 224 | `result-track:4da8a4f960aa25e1861605e172f70ce5d6add939dd34ef77c46cd3fb0aa71aa0` |
| 14 | `lemma` | [re_log_comb_nonneg](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean/declarations/re-log-comb-nonneg--953f028279cc2c498a08dddf.md) | 245 | `result-track:953f028279cc2c498a08dddfafcd6df8c7fe5f222902358bd80d4bca1cb0c71f` |
| 15 | `lemma` | [summable_neg_log_one_sub_mul_prime_cpow](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean/declarations/summable-neg-log-one-sub-mul-prime-cpow--c55203d9223e5eb40fa53771.md) | 272 | `result-track:c55203d9223e5eb40fa53771737d0b5bf0e0a424d54aa2e05a5963aee609fedc` |
| 16 | `lemma` | [one_lt_re_one_add](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean/declarations/one-lt-re-one-add--2be36e1a9817406d750e228b.md) | 281 | `result-track:2be36e1a9817406d750e228bc8aea6e7903ccb2546706844934ff9c43dd6e0ca` |
| 17 | `lemma` | [norm_LSeries_product_ge_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean/declarations/norm-lseries-product-ge-one--51098157ab83b63e8d2c6312.md) | 289 | `result-track:51098157ab83b63e8d2c63126563999fbca51f23f64d3fbe37eb481ffb5c9c3b` |
| 18 | `lemma` | [norm_LFunction_product_ge_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean/declarations/norm-lfunction-product-ge-one--b6f116b80d3b4fe2bde16178.md) | 312 | `result-track:b6f116b80d3b4fe2bde161781bda17998e9c8693cfbcd58ca2718d1ada69ce7f` |
| 19 | `lemma` | [LFunctionTrivChar_isBigO_near_one_horizontal](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean/declarations/lfunctiontrivchar-isbigo-near-one-horizontal--a4c22a758123eae552440e79.md) | 320 | `result-track:a4c22a758123eae552440e79947c9088477b8aebcb6d5398809bc05d38d2ab3d` |
| 20 | `lemma` | [one_add_I_mul_ne_one_or](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean/declarations/one-add-i-mul-ne-one-or--b4d7107ba580016c34988350.md) | 333 | `result-track:b4d7107ba580016c34988350e52b5086f6703f1a58287d721952ecd08172bee4` |
| 21 | `lemma` | [LFunction_isBigO_horizontal](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean/declarations/lfunction-isbigo-horizontal--6c6e4bd8f8a123582d3a28e2.md) | 338 | `result-track:6c6e4bd8f8a123582d3a28e2390bcd8fd8a2b3b3e12d88eca670e80000174097` |
| 22 | `lemma` | [LFunction_isBigO_horizontal_of_eq_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean/declarations/lfunction-isbigo-horizontal-of-eq-zero--225c93213d4be70059f989a6.md) | 346 | `result-track:225c93213d4be70059f989a6f2991e605a8b54a1a42cf401a41e7f60cdb7cfdb` |
| 23 | `lemma` | [LFunction_ne_zero_of_not_quadratic_or_ne_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean/declarations/lfunction-ne-zero-of-not-quadratic-or-ne-one--de20ca3ad24b63768f5c15f9.md) | 357 | `result-track:de20ca3ad24b63768f5c15f9632e8543588414eddfd74b4f2c6b351126443f46` |
| 24 | `theorem` | [LFunction_ne_zero_of_re_eq_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean/declarations/lfunction-ne-zero-of-re-eq-one--8e03f8252af76bf69749dc6b.md) | 391 | `result-track:8e03f8252af76bf69749dc6b5a454d0ae90e8df4597c27cb771931115e4ce56c` |
| 25 | `theorem` | [LFunction_ne_zero_of_one_le_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean/declarations/lfunction-ne-zero-of-one-le-re--29715786ccffdd3758acd923.md) | 404 | `result-track:29715786ccffdd3758acd923834707eb6597dfab32754e0ea085fbd4188f9d81` |
| 26 | `theorem` | [LFunction_apply_one_ne_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean/declarations/lfunction-apply-one-ne-zero--b63b168ea8414753a75ee6a1.md) | 412 | `result-track:b63b168ea8414753a75ee6a137cfa2a96a58487a2a8862a359d0a2548daf1a78` |
| 27 | `lemma` | [_root_.GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.BadChar.Variantfee46ff7be0a1b5ff606753682294b362c0ffa4bc97e5d8d43eece8be11b7026.riemannZeta_ne_zero_of_one_le_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variant0b12699f19959b4e0b0d6e9f9e91a8839ee00271ea3ee179de76ab1add4a3e7a.lean/declarations/root-grwtsk-numbertheory-analyticnumbertheory-zetaandlfunctions-badchar--8838b3dc266656304c0872b9.md) | 417 | `result-track:8838b3dc266656304c0872b9ba58334b045f0cb0b0ba8162647f7147a4f0d063` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
