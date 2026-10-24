# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt06.Variant7382440858a942ee23cf45134a8b25aefe63ff7c9863b3162494c910c493bbd7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a608c689442b9f2f8fed8dd3d27079b4a5bee592",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt06/Variant7382440858a942ee23cf45134a8b25aefe63ff7c9863b3162494c910c493bbd7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant7382440858a942ee23cf45134a8b25aefe63ff7c9863b3162494c910c493bbd7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant7382440858a942ee23cf45134a8b25aefe63ff7c9863b3162494c910c493bbd7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a608c689442b9f2f8fed8dd3d27079b4a5bee592`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt06/Variant7382440858a942ee23cf45134a8b25aefe63ff7c9863b3162494c910c493bbd7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt06/Variant7382440858a942ee23cf45134a8b25aefe63ff7c9863b3162494c910c493bbd7.lean.json)

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
| 1 | `def` | [fractionalWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant7382440858a942ee23cf45134a8b25aefe63ff7c9863b3162494c910c493bbd7.lean/declarations/fractionalweight--b51da7d9832679d72743cb94.md) | 17 | `declaration-track:b51da7d9832679d72743cb94f75d0c584e268b66b568ecf290827f36eaacacf5` |
| 2 | `theorem` | [fractionalWeight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant7382440858a942ee23cf45134a8b25aefe63ff7c9863b3162494c910c493bbd7.lean/declarations/fractionalweight-integrable--2b640c5977f7ba2d0f4afe48.md) | 19 | `result-track:2b640c5977f7ba2d0f4afe486ce26717566a326c7656cdf33665e6e09bd555e4` |
| 3 | `theorem` | [fractionalWeight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant7382440858a942ee23cf45134a8b25aefe63ff7c9863b3162494c910c493bbd7.lean/declarations/fractionalweight-nonneg--421f7cbcd86f5fe6535e0b3c.md) | 28 | `result-track:421f7cbcd86f5fe6535e0b3c075d0774b24e28fbac7c95bbb5edd452c21884fe` |
| 4 | `theorem` | [real_centered_euler_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant7382440858a942ee23cf45134a8b25aefe63ff7c9863b3162494c910c493bbd7.lean/declarations/real-centered-euler-integral--22476bccdc66e454c86b3617.md) | 32 | `result-track:22476bccdc66e454c86b3617a38df70d5c1f94bcb18bb5538bf80a6f1eb066dc` |
| 5 | `theorem` | [riemannZeta_real_euler](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant7382440858a942ee23cf45134a8b25aefe63ff7c9863b3162494c910c493bbd7.lean/declarations/riemannzeta-real-euler--ebd3a9be5c5e768947d07cc9.md) | 47 | `result-track:ebd3a9be5c5e768947d07cc94a2656dce95d8f49ca99b1ea3e12d603d819b975` |
| 6 | `theorem` | [riemannZeta_ofReal_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant7382440858a942ee23cf45134a8b25aefe63ff7c9863b3162494c910c493bbd7.lean/declarations/riemannzeta-ofreal-neg--69634e0a2f30a8fd10bd4fde.md) | 78 | `result-track:69634e0a2f30a8fd10bd4fdee25778a0872953fa3c253e938438298fe4d84a81` |
| 7 | `theorem` | [nontrivial_zero_im_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant7382440858a942ee23cf45134a8b25aefe63ff7c9863b3162494c910c493bbd7.lean/declarations/nontrivial-zero-im-ne-zero--7d0b59fabdc7bd3b5837f3a5.md) | 88 | `result-track:7d0b59fabdc7bd3b5837f3a5ecfa218967033169b57a19375d267f63d5dca5f0` |
| 8 | `def` | [realGammaR](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant7382440858a942ee23cf45134a8b25aefe63ff7c9863b3162494c910c493bbd7.lean/declarations/realgammar--c341a67164a7cfcf7aeef79a.md) | 96 | `declaration-track:c341a67164a7cfcf7aeef79a09471249bc0efe05f1881f36cd17180615354e58` |
| 9 | `theorem` | [gammaR_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant7382440858a942ee23cf45134a8b25aefe63ff7c9863b3162494c910c493bbd7.lean/declarations/gammar-ofreal--456708b276668a73bc9f57dc.md) | 98 | `result-track:456708b276668a73bc9f57dce40533734ce7df415ef1da2fd90b64623fc8805d` |
| 10 | `theorem` | [realGammaR_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant7382440858a942ee23cf45134a8b25aefe63ff7c9863b3162494c910c493bbd7.lean/declarations/realgammar-pos--d3a4954465c4f32524d39fd1.md) | 105 | `result-track:d3a4954465c4f32524d39fd1c3c36496818847c6c11cdcbc4024eede7d61b41d` |
| 11 | `theorem` | [xi_real_euler](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant7382440858a942ee23cf45134a8b25aefe63ff7c9863b3162494c910c493bbd7.lean/declarations/xi-real-euler--c6f14c61eee1f784cda131a9.md) | 108 | `result-track:c6f14c61eee1f784cda131a9cf205f8ce3df4f39546b4f228fb420c5ea91595d` |
| 12 | `theorem` | [xi_ofReal_re_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant7382440858a942ee23cf45134a8b25aefe63ff7c9863b3162494c910c493bbd7.lean/declarations/xi-ofreal-re-pos--250ecd65a5433e1c86d89b5f.md) | 122 | `result-track:250ecd65a5433e1c86d89b5f35ebaebede00dc2e36db0d11a1627f4caf2a6cb0` |
| 13 | `theorem` | [coefficient_zero_exact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant7382440858a942ee23cf45134a8b25aefe63ff7c9863b3162494c910c493bbd7.lean/declarations/coefficient-zero-exact--b764c074c44798dbe29e476a.md) | 133 | `result-track:b764c074c44798dbe29e476a97b628c36a55199fc334bf925dda4acf56fffa79` |
| 14 | `theorem` | [coefficient_zero_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant7382440858a942ee23cf45134a8b25aefe63ff7c9863b3162494c910c493bbd7.lean/declarations/coefficient-zero-pos--b2e7efccfb88bd781cd94290.md) | 144 | `result-track:b2e7efccfb88bd781cd9429085caf52dfa1593a36dfffa0676f1eae1567870f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
