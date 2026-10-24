# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt08.Variantdaf7146fabd06b03b78d618681b11d8fe798c87d112a5e19eee85be87d71dc92

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c345804e57c85d21e845fc83f6c477ea7e6f924b",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt08/Variantdaf7146fabd06b03b78d618681b11d8fe798c87d112a5e19eee85be87d71dc92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variantdaf7146fabd06b03b78d618681b11d8fe798c87d112a5e19eee85be87d71dc92.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variantdaf7146fabd06b03b78d618681b11d8fe798c87d112a5e19eee85be87d71dc92.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c345804e57c85d21e845fc83f6c477ea7e6f924b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt08/Variantdaf7146fabd06b03b78d618681b11d8fe798c87d112a5e19eee85be87d71dc92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt08/Variantdaf7146fabd06b03b78d618681b11d8fe798c87d112a5e19eee85be87d71dc92.lean.json)

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
| 1 | `def` | [fractionalWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variantdaf7146fabd06b03b78d618681b11d8fe798c87d112a5e19eee85be87d71dc92.lean/declarations/fractionalweight--a226b7e46db948b219d05d4c.md) | 17 | `declaration-track:a226b7e46db948b219d05d4c1134b503b54f1f79e84be53476daad4d9ad86e48` |
| 2 | `theorem` | [fractionalWeight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variantdaf7146fabd06b03b78d618681b11d8fe798c87d112a5e19eee85be87d71dc92.lean/declarations/fractionalweight-integrable--b9752dfb25ee78873dc7c8f5.md) | 19 | `result-track:b9752dfb25ee78873dc7c8f53a10479f9195cb576be0e7e2a24a03e8ce3ed747` |
| 3 | `theorem` | [fractionalWeight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variantdaf7146fabd06b03b78d618681b11d8fe798c87d112a5e19eee85be87d71dc92.lean/declarations/fractionalweight-nonneg--a6844513f82df54235a31612.md) | 28 | `result-track:a6844513f82df54235a31612c560cb30f3f8fe84ae039750947536e443e17943` |
| 4 | `theorem` | [real_centered_euler_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variantdaf7146fabd06b03b78d618681b11d8fe798c87d112a5e19eee85be87d71dc92.lean/declarations/real-centered-euler-integral--dfd83ccca150ebfa316958ed.md) | 32 | `result-track:dfd83ccca150ebfa316958ed97382fef975238f8d232bef82bde819f20931fab` |
| 5 | `theorem` | [riemannZeta_real_euler](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variantdaf7146fabd06b03b78d618681b11d8fe798c87d112a5e19eee85be87d71dc92.lean/declarations/riemannzeta-real-euler--df52b40e06bff89fe6480831.md) | 47 | `result-track:df52b40e06bff89fe6480831d0c9929162f8b50d27840b95aa6041303466e4e9` |
| 6 | `theorem` | [riemannZeta_ofReal_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variantdaf7146fabd06b03b78d618681b11d8fe798c87d112a5e19eee85be87d71dc92.lean/declarations/riemannzeta-ofreal-neg--52a4fd5eb184cfe47fbedf66.md) | 78 | `result-track:52a4fd5eb184cfe47fbedf667458144427435a00bf59d2b4aac8792b9a907380` |
| 7 | `theorem` | [nontrivial_zero_im_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variantdaf7146fabd06b03b78d618681b11d8fe798c87d112a5e19eee85be87d71dc92.lean/declarations/nontrivial-zero-im-ne-zero--2a43abf6f2582bfe4627d060.md) | 88 | `result-track:2a43abf6f2582bfe4627d0600f655dd191d18f0610d90c02be2a1868d2c9e4ac` |
| 8 | `def` | [realGammaR](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variantdaf7146fabd06b03b78d618681b11d8fe798c87d112a5e19eee85be87d71dc92.lean/declarations/realgammar--3272a69ab544881ef063eceb.md) | 96 | `declaration-track:3272a69ab544881ef063ecebdcb48a96bc3a9e488e70a6ab672d49e6e2eaf7e7` |
| 9 | `theorem` | [gammaR_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variantdaf7146fabd06b03b78d618681b11d8fe798c87d112a5e19eee85be87d71dc92.lean/declarations/gammar-ofreal--c2f9ad3eb0dd6313f06906fe.md) | 98 | `result-track:c2f9ad3eb0dd6313f06906feebd59a2559a9b8ae374a6a51864eab54ca9deaa9` |
| 10 | `theorem` | [realGammaR_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variantdaf7146fabd06b03b78d618681b11d8fe798c87d112a5e19eee85be87d71dc92.lean/declarations/realgammar-pos--a047d31c3d7e38b89f771c7b.md) | 105 | `result-track:a047d31c3d7e38b89f771c7bea856130940aec8e3daaef238ec6e5877202ebfb` |
| 11 | `theorem` | [xi_real_euler](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variantdaf7146fabd06b03b78d618681b11d8fe798c87d112a5e19eee85be87d71dc92.lean/declarations/xi-real-euler--ac7c967db8305b84b1344492.md) | 108 | `result-track:ac7c967db8305b84b13444926359e3cfb8aae80638cc3be551a86d56a90749b7` |
| 12 | `theorem` | [xi_ofReal_re_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variantdaf7146fabd06b03b78d618681b11d8fe798c87d112a5e19eee85be87d71dc92.lean/declarations/xi-ofreal-re-pos--4346381601df385c27ee9dd1.md) | 122 | `result-track:4346381601df385c27ee9dd1401de1ccb438092942ce67361c1e82fd8bb63545` |
| 13 | `theorem` | [coefficient_zero_exact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variantdaf7146fabd06b03b78d618681b11d8fe798c87d112a5e19eee85be87d71dc92.lean/declarations/coefficient-zero-exact--52545436b2851516b317e7e1.md) | 133 | `result-track:52545436b2851516b317e7e15ee71908bfd5ccfc97c23a3c6c15b5cabdfde929` |
| 14 | `theorem` | [coefficient_zero_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variantdaf7146fabd06b03b78d618681b11d8fe798c87d112a5e19eee85be87d71dc92.lean/declarations/coefficient-zero-pos--36f21edbd76fbbac3d2fb2cc.md) | 144 | `result-track:36f21edbd76fbbac3d2fb2cc12c64cc4f88589aaf348ff91794d70be3e48d6f4` |
| 15 | `theorem` | [coefficient_zero_lower_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variantdaf7146fabd06b03b78d618681b11d8fe798c87d112a5e19eee85be87d71dc92.lean/declarations/coefficient-zero-lower-bound--0d9d2b686132764855d3ef63.md) | 150 | `result-track:0d9d2b686132764855d3ef63dd46a8c338b6c137226f81128d7377f4fac1115e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
