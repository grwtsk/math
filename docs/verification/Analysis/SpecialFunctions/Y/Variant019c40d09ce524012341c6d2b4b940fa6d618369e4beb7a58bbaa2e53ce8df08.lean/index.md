# Verification target: GRWTSK.Analysis.SpecialFunctions.Y.Variant019c40d09ce524012341c6d2b4b940fa6d618369e4beb7a58bbaa2e53ce8df08

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdfcd632bf3910659a1a69583ecc1b8706a66d09",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Y/Variant019c40d09ce524012341c6d2b4b940fa6d618369e4beb7a58bbaa2e53ce8df08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant019c40d09ce524012341c6d2b4b940fa6d618369e4beb7a58bbaa2e53ce8df08.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant019c40d09ce524012341c6d2b4b940fa6d618369e4beb7a58bbaa2e53ce8df08.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdfcd632bf3910659a1a69583ecc1b8706a66d09`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Y/Variant019c40d09ce524012341c6d2b4b940fa6d618369e4beb7a58bbaa2e53ce8df08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Y/Variant019c40d09ce524012341c6d2b4b940fa6d618369e4beb7a58bbaa2e53ce8df08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Seam` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.ZetaGrowth` — import line 24; external provider; requires a separately pinned dependency.
- `Zeta23.GammaFacts.StirlingVert` — import line 25; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.ZetaBounds` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Liouville` — import line 27; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [norm_digamma_le](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant019c40d09ce524012341c6d2b4b940fa6d618369e4beb7a58bbaa2e53ce8df08.lean/declarations/norm-digamma-le--41ea31d391042a26be2abdd3.md) | 44 | `result-track:41ea31d391042a26be2abdd3935ecef83c378aaa01ff88a98911b27775dfd2fb` |
| 2 | `lemma` | [re_digamma_ge](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant019c40d09ce524012341c6d2b4b940fa6d618369e4beb7a58bbaa2e53ce8df08.lean/declarations/re-digamma-ge--ab9f4f2c59ce6740d675d23f.md) | 79 | `result-track:ab9f4f2c59ce6740d675d23f8868479d4b7b69bcbc44f1e0b06ff52eee9a903c` |
| 3 | `lemma` | [norm_deriv_zeta_le](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant019c40d09ce524012341c6d2b4b940fa6d618369e4beb7a58bbaa2e53ce8df08.lean/declarations/norm-deriv-zeta-le--b5364541a688a9788186ba67.md) | 107 | `result-track:b5364541a688a9788186ba6783d8ad6026986d928a4c821d4f7338440da096a6` |
| 4 | `lemma` | [norm_logDeriv_Gammaℝ_le](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant019c40d09ce524012341c6d2b4b940fa6d618369e4beb7a58bbaa2e53ce8df08.lean/declarations/norm-logderiv-gamma-le--4a03c8f158ed1b808aa606c4.md) | 149 | `result-track:4a03c8f158ed1b808aa606c472e1433c00ba83ff50c982f07907893eab1570de` |
| 5 | `theorem` | [Yfn_growth](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant019c40d09ce524012341c6d2b4b940fa6d618369e4beb7a58bbaa2e53ce8df08.lean/declarations/yfn-growth--fd72530dba6ae76cbeb4496f.md) | 185 | `result-track:fd72530dba6ae76cbeb4496fa163f6b3563f5e234e23e4a9eba48e61066be660` |
| 6 | `theorem` | [Yfn_analyticOnNhd_disc](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant019c40d09ce524012341c6d2b4b940fa6d618369e4beb7a58bbaa2e53ce8df08.lean/declarations/yfn-analyticonnhd-disc--588ff225d4b27086419f9aa7.md) | 247 | `result-track:588ff225d4b27086419f9aa723678454f9887dbd5704bdfabd542d073b230e85` |
| 7 | `lemma` | [two_line_re](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant019c40d09ce524012341c6d2b4b940fa6d618369e4beb7a58bbaa2e53ce8df08.lean/declarations/two-line-re--5388d0230c9652575c01d834.md) | 261 | `result-track:5388d0230c9652575c01d83444ea58698e5d111398330e97070e24b45d39ef04` |
| 8 | `lemma` | [two_line_im](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant019c40d09ce524012341c6d2b4b940fa6d618369e4beb7a58bbaa2e53ce8df08.lean/declarations/two-line-im--16dac33de2eff531418c6527.md) | 262 | `result-track:16dac33de2eff531418c6527f3f9e8ad1fb82e7e3d7d8d5506348ee66ba02f42` |
| 9 | `lemma` | [two_line_ne_one](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant019c40d09ce524012341c6d2b4b940fa6d618369e4beb7a58bbaa2e53ce8df08.lean/declarations/two-line-ne-one--763970b5296ca55b69e42086.md) | 263 | `result-track:763970b5296ca55b69e42086efdeaddbbd115b13648660f0312ae3e596db4002` |
| 10 | `lemma` | [two_line_ne_zero](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant019c40d09ce524012341c6d2b4b940fa6d618369e4beb7a58bbaa2e53ce8df08.lean/declarations/two-line-ne-zero--436091dd11940b6480f1aa5d.md) | 265 | `result-track:436091dd11940b6480f1aa5d2380b279320762bdbbd46f2d94d13319894d12ff` |
| 11 | `lemma` | [zeta_two_line_ne_zero](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant019c40d09ce524012341c6d2b4b940fa6d618369e4beb7a58bbaa2e53ce8df08.lean/declarations/zeta-two-line-ne-zero--f80eaf96ed7a2a37ff42ec7e.md) | 267 | `result-track:f80eaf96ed7a2a37ff42ec7efe79631fa74bf576b5a2f4d8c389843e35093d76` |
| 12 | `lemma` | [norm_logDeriv_zeta_two_le](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant019c40d09ce524012341c6d2b4b940fa6d618369e4beb7a58bbaa2e53ce8df08.lean/declarations/norm-logderiv-zeta-two-le--64fb25703355d054f6414f67.md) | 271 | `result-track:64fb25703355d054f6414f677c6b44d4206885cfc57991389a29a9dc0a1c8827` |
| 13 | `lemma` | [re_Lfn_two_ge](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant019c40d09ce524012341c6d2b4b940fa6d618369e4beb7a58bbaa2e53ce8df08.lean/declarations/re-lfn-two-ge--2fd7bd00efc8f345cbff7169.md) | 281 | `result-track:2fd7bd00efc8f345cbff71695d34599fc045a7ae3b762bfee0f4480d23f04467` |
| 14 | `theorem` | [two_line_lower](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant019c40d09ce524012341c6d2b4b940fa6d618369e4beb7a58bbaa2e53ce8df08.lean/declarations/two-line-lower--16fef308feb20129be99f64a.md) | 313 | `result-track:16fef308feb20129be99f64a10b5ec0b58c3f012ca69e27ebbfbeada8296047b` |
| 15 | `lemma` | [norm_logDeriv_Gammaℝ_le_log](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant019c40d09ce524012341c6d2b4b940fa6d618369e4beb7a58bbaa2e53ce8df08.lean/declarations/norm-logderiv-gamma-le-log--674a2ae016136b7010c143b4.md) | 360 | `result-track:674a2ae016136b7010c143b4ddfe80db764c137210b5f5c823fe188842c2a739` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
