# Verification target: GRWTSK.Analysis.MellinTransform.CompactGaussianWindow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf939b35c7cb08c3dc0e26b5dfbac6fed6667c7e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinTransform/CompactGaussianWindow.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/CompactGaussianWindow.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/CompactGaussianWindow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf939b35c7cb08c3dc0e26b5dfbac6fed6667c7e`.

Source path: `GRWTSK/Analysis/MellinTransform/CompactGaussianWindow.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinTransform/CompactGaussianWindow.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.PartitionOfUnity.DyadicAnnulus`](../../../../../../mathematics/Analysis/PartitionOfUnity/DyadicAnnulus.lean/index.md) — import line 20; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.NormalizedGaussian`](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/NormalizedGaussian.lean/index.md) — import line 21; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Distribution.SchwartzSpace.Basic` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rootWeight](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/CompactGaussianWindow.lean/declarations/rootweight--be510b7c69d5246459bee0eb.md) | 32 | `declaration-track:be510b7c69d5246459bee0eb7833e024b4738e0d2e2659e7e4a252bf84d5a1d9` |
| 2 | `lemma` | [gaussianMellinProfile_real](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/CompactGaussianWindow.lean/declarations/gaussianmellinprofile-real--e338fbc1c71fad29c173648e.md) | 34 | `result-track:e338fbc1c71fad29c173648e9c62b241caeba68b52286c1e2acf987c60c5edec` |
| 3 | `def` | [gaussianDyadicProfile](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/CompactGaussianWindow.lean/declarations/gaussiandyadicprofile--f59156d0cbfa980ccd28bf17.md) | 46 | `declaration-track:f59156d0cbfa980ccd28bf17a5faf6acccaf6355bd260eec6d9ccf059ba7dbd8` |
| 4 | `lemma` | [gaussianDyadicProfile_small](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/CompactGaussianWindow.lean/declarations/gaussiandyadicprofile-small--262b05a92e6cd08277adf9a2.md) | 49 | `result-track:262b05a92e6cd08277adf9a200b1fb59ba1170716b6e0af611b591e1cef5e2cc` |
| 5 | `lemma` | [gaussianDyadicProfile_large](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/CompactGaussianWindow.lean/declarations/gaussiandyadicprofile-large--f9703e8d1e3c64b31e5360ab.md) | 52 | `result-track:f9703e8d1e3c64b31e5360abe779080af8e716adeb988d9cb5ef403703d102ba` |
| 6 | `lemma` | [gaussianDyadicProfile_compact](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/CompactGaussianWindow.lean/declarations/gaussiandyadicprofile-compact--1c3653d49096a5a1e0f19c67.md) | 56 | `result-track:1c3653d49096a5a1e0f19c6749af20e174d8cb34625d5065fac0d8e83cf1d352` |
| 7 | `lemma` | [gaussianDyadicProfile_contDiff](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/CompactGaussianWindow.lean/declarations/gaussiandyadicprofile-contdiff--39f49b02d909a3fbd3dfa6ab.md) | 66 | `result-track:39f49b02d909a3fbd3dfa6ab04581983205a055cc18b229ed2552a7e5c7625f9` |
| 8 | `lemma` | [gaussianDyadicProfile_rootWeight](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/CompactGaussianWindow.lean/declarations/gaussiandyadicprofile-rootweight--61d02e5e1ab72d6047d4ee96.md) | 98 | `result-track:61d02e5e1ab72d6047d4ee969a23a8ad053a9af602e4affc21af6ba06a72892e` |
| 9 | `def` | [gaussianDyadicSchwartz](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/CompactGaussianWindow.lean/declarations/gaussiandyadicschwartz--c85b4b5f5861607d0eff53e8.md) | 107 | `declaration-track:c85b4b5f5861607d0eff53e8cf870c38971728912a909d13d11210f85853643a` |
| 10 | `theorem` | [gaussianDyadicSchwartz_apply](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/CompactGaussianWindow.lean/declarations/gaussiandyadicschwartz-apply--d27ce6e95d8729dfa6e0c12a.md) | 110 | `result-track:d27ce6e95d8729dfa6e0c12a6a392da5f8d1b04a8cd65a027352d362801d9cbf` |
| 11 | `theorem` | [gaussianDyadicSchwartz_rootWeight](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/CompactGaussianWindow.lean/declarations/gaussiandyadicschwartz-rootweight--06a64a7f260f0ee00deea996.md) | 113 | `result-track:06a64a7f260f0ee00deea9963f1bf1a8be2d79d190e262da50243df6dcb1b05c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
