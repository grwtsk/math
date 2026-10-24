# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt04.Variantd8ac75da7f9e7b9a21039c37fc45f5240f9c83e52e1b9c5f2121b143f3e12c58

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3cbc03fb36983a461f3f37f7699a39500aea5b7",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt04/Variantd8ac75da7f9e7b9a21039c37fc45f5240f9c83e52e1b9c5f2121b143f3e12c58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantd8ac75da7f9e7b9a21039c37fc45f5240f9c83e52e1b9c5f2121b143f3e12c58.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantd8ac75da7f9e7b9a21039c37fc45f5240f9c83e52e1b9c5f2121b143f3e12c58.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3cbc03fb36983a461f3f37f7699a39500aea5b7`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt04/Variantd8ac75da7f9e7b9a21039c37fc45f5240f9c83e52e1b9c5f2121b143f3e12c58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt04/Variantd8ac75da7f9e7b9a21039c37fc45f5240f9c83e52e1b9c5f2121b143f3e12c58.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiToeplitz` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ZeroSymmetry` — import line 2; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.ZetaBounds` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fractionalWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantd8ac75da7f9e7b9a21039c37fc45f5240f9c83e52e1b9c5f2121b143f3e12c58.lean/declarations/fractionalweight--066f27ddbca69bc5508dc78d.md) | 17 | `declaration-track:066f27ddbca69bc5508dc78d3cc375f348a9c1b1d5ed11efcd01604fbf465d3f` |
| 2 | `theorem` | [fractionalWeight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantd8ac75da7f9e7b9a21039c37fc45f5240f9c83e52e1b9c5f2121b143f3e12c58.lean/declarations/fractionalweight-integrable--d633ef06c4c87d17f935a35c.md) | 19 | `result-track:d633ef06c4c87d17f935a35c76932d31a6ff78eff1a887eaa73b5be1531fa4c6` |
| 3 | `theorem` | [fractionalWeight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantd8ac75da7f9e7b9a21039c37fc45f5240f9c83e52e1b9c5f2121b143f3e12c58.lean/declarations/fractionalweight-nonneg--ff99a84a1b740d80ed388dae.md) | 28 | `result-track:ff99a84a1b740d80ed388dae391ce907233b08c57724b8ae38145c0ceb1d5904` |
| 4 | `theorem` | [real_centered_euler_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantd8ac75da7f9e7b9a21039c37fc45f5240f9c83e52e1b9c5f2121b143f3e12c58.lean/declarations/real-centered-euler-integral--e58927d48bb633ed899bafe1.md) | 32 | `result-track:e58927d48bb633ed899bafe164611fae44c2b3625d89e624c27d8aeede6ea55a` |
| 5 | `theorem` | [riemannZeta_real_euler](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantd8ac75da7f9e7b9a21039c37fc45f5240f9c83e52e1b9c5f2121b143f3e12c58.lean/declarations/riemannzeta-real-euler--8662df86edab4c17582a4adf.md) | 47 | `result-track:8662df86edab4c17582a4adf5a8a937fab0c8388d520a3d19ee2d42217dab897` |
| 6 | `theorem` | [riemannZeta_ofReal_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantd8ac75da7f9e7b9a21039c37fc45f5240f9c83e52e1b9c5f2121b143f3e12c58.lean/declarations/riemannzeta-ofreal-neg--8b97f56b4d0a1383df6e606a.md) | 78 | `result-track:8b97f56b4d0a1383df6e606ab153bea3ecb1d56bd49675e949d8d2045c6e7056` |
| 7 | `theorem` | [nontrivial_zero_im_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantd8ac75da7f9e7b9a21039c37fc45f5240f9c83e52e1b9c5f2121b143f3e12c58.lean/declarations/nontrivial-zero-im-ne-zero--c1fed53a891e645e07ac0320.md) | 88 | `result-track:c1fed53a891e645e07ac03209be345944bff0e51c2cf8fcda5075fd936f078e5` |
| 8 | `def` | [realGammaR](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantd8ac75da7f9e7b9a21039c37fc45f5240f9c83e52e1b9c5f2121b143f3e12c58.lean/declarations/realgammar--ffe7964a6d0459fff32ff7ba.md) | 96 | `declaration-track:ffe7964a6d0459fff32ff7ba40066de0583763beb32ee64db34d3c29d992f3cf` |
| 9 | `theorem` | [gammaR_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantd8ac75da7f9e7b9a21039c37fc45f5240f9c83e52e1b9c5f2121b143f3e12c58.lean/declarations/gammar-ofreal--100813d9fcc153e5bca19161.md) | 98 | `result-track:100813d9fcc153e5bca19161e2401027904fe02a0f283bf78f67bd05afbc98d1` |
| 10 | `theorem` | [realGammaR_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantd8ac75da7f9e7b9a21039c37fc45f5240f9c83e52e1b9c5f2121b143f3e12c58.lean/declarations/realgammar-pos--2781292b531e1d5bee5b7ef3.md) | 105 | `result-track:2781292b531e1d5bee5b7ef3d5d748f18e2137bc56f352d5837ce86b5319a1a2` |
| 11 | `theorem` | [xi_real_euler](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantd8ac75da7f9e7b9a21039c37fc45f5240f9c83e52e1b9c5f2121b143f3e12c58.lean/declarations/xi-real-euler--f21776af4c9e18844ff650a1.md) | 108 | `result-track:f21776af4c9e18844ff650a1f544d07a99bc3b711984eb4ee7b7e75aa0281841` |
| 12 | `theorem` | [xi_ofReal_re_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantd8ac75da7f9e7b9a21039c37fc45f5240f9c83e52e1b9c5f2121b143f3e12c58.lean/declarations/xi-ofreal-re-pos--72e9cfdb5308bfe97dff2601.md) | 122 | `result-track:72e9cfdb5308bfe97dff2601d6e50173e940b41fdcfeee45e949fbb0c22efab1` |
| 13 | `theorem` | [coefficient_zero_exact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantd8ac75da7f9e7b9a21039c37fc45f5240f9c83e52e1b9c5f2121b143f3e12c58.lean/declarations/coefficient-zero-exact--897631211d292bf2514ed1f8.md) | 133 | `result-track:897631211d292bf2514ed1f8193af7b9830f5bf85c616ae04d9d732b5e76c9ce` |
| 14 | `theorem` | [coefficient_zero_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantd8ac75da7f9e7b9a21039c37fc45f5240f9c83e52e1b9c5f2121b143f3e12c58.lean/declarations/coefficient-zero-pos--44ed1ddb1f01ec664c4cbfc4.md) | 141 | `result-track:44ed1ddb1f01ec664c4cbfc4d1688aecd77bce525c308a8fefa287974b1f2f0d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
