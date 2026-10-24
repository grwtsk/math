# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Spacing.Variant2a5ef294bdf97c606bdb01d60d90425b0580dbca8d0a7b6cf4f5c5bfb9858626

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1dc640c83577c69f29c1e55e9581e5e13a2c40a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Spacing/Variant2a5ef294bdf97c606bdb01d60d90425b0580dbca8d0a7b6cf4f5c5bfb9858626.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Spacing/Variant2a5ef294bdf97c606bdb01d60d90425b0580dbca8d0a7b6cf4f5c5bfb9858626.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Spacing/Variant2a5ef294bdf97c606bdb01d60d90425b0580dbca8d0a7b6cf4f5c5bfb9858626.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1dc640c83577c69f29c1e55e9581e5e13a2c40a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Spacing/Variant2a5ef294bdf97c606bdb01d60d90425b0580dbca8d0a7b6cf4f5c5bfb9858626.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Spacing/Variant2a5ef294bdf97c606bdb01d60d90425b0580dbca8d0a7b6cf4f5c5bfb9858626.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Adm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Spacing/Variant2a5ef294bdf97c606bdb01d60d90425b0580dbca8d0a7b6cf4f5c5bfb9858626.lean/declarations/adm--a180692506fa197682125972.md) | 36 | `declaration-track:a180692506fa1976821259721f5cb289be6577ef1245614c38b86a124f4895aa` |
| 2 | `def` | [itv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Spacing/Variant2a5ef294bdf97c606bdb01d60d90425b0580dbca8d0a7b6cf4f5c5bfb9858626.lean/declarations/itv--e46201b8125bca6874d29933.md) | 46 | `declaration-track:e46201b8125bca6874d29933db9f5a5a52245a8df0317d7cc4183fafb22a801a` |
| 3 | `lemma` | [centers_far](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Spacing/Variant2a5ef294bdf97c606bdb01d60d90425b0580dbca8d0a7b6cf4f5c5bfb9858626.lean/declarations/centers-far--152893d15c524b912abda918.md) | 50 | `result-track:152893d15c524b912abda918868990b9fede79484ee98851bc6e7dc29d8ab03f` |
| 4 | `lemma` | [itv_disjoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Spacing/Variant2a5ef294bdf97c606bdb01d60d90425b0580dbca8d0a7b6cf4f5c5bfb9858626.lean/declarations/itv-disjoint--595b376f6fe0d32b63e02565.md) | 58 | `result-track:595b376f6fe0d32b63e0256591f66a1dbed4ec7b38308f7427306d47953c918c` |
| 5 | `lemma` | [abs_le_of_mem_itv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Spacing/Variant2a5ef294bdf97c606bdb01d60d90425b0580dbca8d0a7b6cf4f5c5bfb9858626.lean/declarations/abs-le-of-mem-itv--5eade409743e9cc246a798b3.md) | 70 | `result-track:5eade409743e9cc246a798b355e4d0541c732090d21b5864eaec11f0ff93cde8` |
| 6 | `lemma` | [integral_inv_sq_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Spacing/Variant2a5ef294bdf97c606bdb01d60d90425b0580dbca8d0a7b6cf4f5c5bfb9858626.lean/declarations/integral-inv-sq-icc--3701d4005b6c5d5d767c1e8e.md) | 90 | `result-track:3701d4005b6c5d5d767c1e8ed0a46439327fcd17fe5cd615462a4475a96a0084` |
| 7 | `lemma` | [integral_inv_four_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Spacing/Variant2a5ef294bdf97c606bdb01d60d90425b0580dbca8d0a7b6cf4f5c5bfb9858626.lean/declarations/integral-inv-four-icc--c5974a0c58a3b759ffa30361.md) | 107 | `result-track:c5974a0c58a3b759ffa3036146444b1d523f05f9fc1192c0f1d78b8c504e049f` |
| 8 | `lemma` | [abs_bounds_closed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Spacing/Variant2a5ef294bdf97c606bdb01d60d90425b0580dbca8d0a7b6cf4f5c5bfb9858626.lean/declarations/abs-bounds-closed--14692de2d2b413fee4c38932.md) | 129 | `result-track:14692de2d2b413fee4c389326cef6ad8f03c3f22366d5b93e182120442d44521` |
| 9 | `def` | [window](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Spacing/Variant2a5ef294bdf97c606bdb01d60d90425b0580dbca8d0a7b6cf4f5c5bfb9858626.lean/declarations/window--5015588869d80ef49149b49f.md) | 150 | `declaration-track:5015588869d80ef49149b49fa006e3d21ebba3b34eb47e9d0f3decfd8bf63f50` |
| 10 | `lemma` | [mem_window](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Spacing/Variant2a5ef294bdf97c606bdb01d60d90425b0580dbca8d0a7b6cf4f5c5bfb9858626.lean/declarations/mem-window--edb023957c6b26a31a9b0bd7.md) | 153 | `result-track:edb023957c6b26a31a9b0bd7557c5424ba68862170c4b15e72eab707f8d5bf6b` |
| 11 | `lemma` | [window_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Spacing/Variant2a5ef294bdf97c606bdb01d60d90425b0580dbca8d0a7b6cf4f5c5bfb9858626.lean/declarations/window-integrable--a660091371a0fe11e4d2a8a4.md) | 170 | `result-track:a660091371a0fe11e4d2a8a4edc60df2094775a2ee1cd2b40911d1977ab6c007` |
| 12 | `theorem` | [spacing_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Spacing/Variant2a5ef294bdf97c606bdb01d60d90425b0580dbca8d0a7b6cf4f5c5bfb9858626.lean/declarations/spacing-sq--1c8d6654e12d7d95172bdb81.md) | 183 | `result-track:1c8d6654e12d7d95172bdb8191537be9160061a51c8bff8968624d8923a8a20e` |
| 13 | `theorem` | [spacing_four](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Spacing/Variant2a5ef294bdf97c606bdb01d60d90425b0580dbca8d0a7b6cf4f5c5bfb9858626.lean/declarations/spacing-four--3d9c90c3880c9c88d76b55b4.md) | 319 | `result-track:3d9c90c3880c9c88d76b55b4d0fbd7f872fca070a866ded694b50c27b73b5d05` |
| 14 | `theorem` | [two_point](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Spacing/Variant2a5ef294bdf97c606bdb01d60d90425b0580dbca8d0a7b6cf4f5c5bfb9858626.lean/declarations/two-point--9084f334af56b782e69caea1.md) | 449 | `result-track:9084f334af56b782e69caea1d110d3ad2eca94ba623b969ed13a27449bdd94ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
