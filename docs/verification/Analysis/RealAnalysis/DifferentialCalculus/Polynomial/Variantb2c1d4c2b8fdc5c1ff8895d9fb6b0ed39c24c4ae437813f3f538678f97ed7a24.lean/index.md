# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Polynomial.Variantb2c1d4c2b8fdc5c1ff8895d9fb6b0ed39c24c4ae437813f3f538678f97ed7a24

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ae0093d53e4ddbad7386e6e4a63215cf42eea19",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variantb2c1d4c2b8fdc5c1ff8895d9fb6b0ed39c24c4ae437813f3f538678f97ed7a24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variantb2c1d4c2b8fdc5c1ff8895d9fb6b0ed39c24c4ae437813f3f538678f97ed7a24.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variantb2c1d4c2b8fdc5c1ff8895d9fb6b0ed39c24c4ae437813f3f538678f97ed7a24.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ae0093d53e4ddbad7386e6e4a63215cf42eea19`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variantb2c1d4c2b8fdc5c1ff8895d9fb6b0ed39c24c4ae437813f3f538678f97ed7a24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variantb2c1d4c2b8fdc5c1ff8895d9fb6b0ed39c24c4ae437813f3f538678f97ed7a24.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Derivative` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Add` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasStrictDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variantb2c1d4c2b8fdc5c1ff8895d9fb6b0ed39c24c4ae437813f3f538678f97ed7a24.lean/declarations/hasstrictderivat--7e68e2edc780cac76a1897bc.md) | 48 | `result-track:7e68e2edc780cac76a1897bcfed794b039a9faab495ab2887e01573d6b898b31` |
| 2 | `theorem` | [hasStrictDerivAt_aeval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variantb2c1d4c2b8fdc5c1ff8895d9fb6b0ed39c24c4ae437813f3f538678f97ed7a24.lean/declarations/hasstrictderivat-aeval--616aa88a0cbf1ef1a485e877.md) | 55 | `result-track:616aa88a0cbf1ef1a485e877ea8f4f9e0fa76a9d36f1c1ce0ca1686c7d526f83` |
| 3 | `theorem` | [hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variantb2c1d4c2b8fdc5c1ff8895d9fb6b0ed39c24c4ae437813f3f538678f97ed7a24.lean/declarations/hasderivat--215fb687bc3c663e8ffc158c.md) | 61 | `result-track:215fb687bc3c663e8ffc158c6f481e18aada8086ab58ea08697522c4f00a2d9d` |
| 4 | `theorem` | [hasDerivAt_aeval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variantb2c1d4c2b8fdc5c1ff8895d9fb6b0ed39c24c4ae437813f3f538678f97ed7a24.lean/declarations/hasderivat-aeval--94f4d9f6391cf991d90a84bf.md) | 64 | `result-track:94f4d9f6391cf991d90a84bf1b4cf641b39bdf17ec6852b8a637754ec5af4ae2` |
| 5 | `theorem` | [hasDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variantb2c1d4c2b8fdc5c1ff8895d9fb6b0ed39c24c4ae437813f3f538678f97ed7a24.lean/declarations/hasderivwithinat--57cb7d00b558e658d28cf094.md) | 68 | `result-track:57cb7d00b558e658d28cf0944eb2b740b1653e137c93920b5016367654908b72` |
| 6 | `theorem` | [hasDerivWithinAt_aeval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variantb2c1d4c2b8fdc5c1ff8895d9fb6b0ed39c24c4ae437813f3f538678f97ed7a24.lean/declarations/hasderivwithinat-aeval--0440a9e9bd29d3b3eb66699e.md) | 72 | `result-track:0440a9e9bd29d3b3eb66699eb829e75a83069c98635fa90ff08e018a7fb7381b` |
| 7 | `theorem` | [differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variantb2c1d4c2b8fdc5c1ff8895d9fb6b0ed39c24c4ae437813f3f538678f97ed7a24.lean/declarations/differentiableat--eb26d3e29f1302b382280b28.md) | 76 | `result-track:eb26d3e29f1302b382280b281edfc0bda4a0afb8c75c37d904870dc35d327050` |
| 8 | `theorem` | [differentiableAt_aeval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variantb2c1d4c2b8fdc5c1ff8895d9fb6b0ed39c24c4ae437813f3f538678f97ed7a24.lean/declarations/differentiableat-aeval--489dfd17bebc1a098ede497b.md) | 79 | `result-track:489dfd17bebc1a098ede497bb55d86c7927aa52956e14a99c62c8ca49fa8b0a4` |
| 9 | `theorem` | [differentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variantb2c1d4c2b8fdc5c1ff8895d9fb6b0ed39c24c4ae437813f3f538678f97ed7a24.lean/declarations/differentiablewithinat--b1dafde9de7e638f6ab9f07f.md) | 82 | `result-track:b1dafde9de7e638f6ab9f07fa824731bde9661d0661396e1a77f31d890ace588` |
| 10 | `theorem` | [differentiableWithinAt_aeval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variantb2c1d4c2b8fdc5c1ff8895d9fb6b0ed39c24c4ae437813f3f538678f97ed7a24.lean/declarations/differentiablewithinat-aeval--d29181c2fe9e87dc1519a6ca.md) | 85 | `result-track:d29181c2fe9e87dc1519a6ca06345b61eb28417e313346193530d65c0e42dd3e` |
| 11 | `theorem` | [differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variantb2c1d4c2b8fdc5c1ff8895d9fb6b0ed39c24c4ae437813f3f538678f97ed7a24.lean/declarations/differentiable--b766e162232e70b2cc5416b1.md) | 89 | `result-track:b766e162232e70b2cc5416b18c54d3813880a9416c2247ac65aa960507c5d683` |
| 12 | `theorem` | [differentiable_aeval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variantb2c1d4c2b8fdc5c1ff8895d9fb6b0ed39c24c4ae437813f3f538678f97ed7a24.lean/declarations/differentiable-aeval--1b4a1dd4ba068a329927d4f3.md) | 91 | `result-track:1b4a1dd4ba068a329927d4f3eb80be6283e5840d65193ce0f15fa6cafea0a449` |
| 13 | `theorem` | [differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variantb2c1d4c2b8fdc5c1ff8895d9fb6b0ed39c24c4ae437813f3f538678f97ed7a24.lean/declarations/differentiableon--fc021dcdd83beb7750820ed0.md) | 94 | `result-track:fc021dcdd83beb7750820ed0e5e26b46729b1ec85b7dd0521ee29d44a8a26eeb` |
| 14 | `theorem` | [differentiableOn_aeval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variantb2c1d4c2b8fdc5c1ff8895d9fb6b0ed39c24c4ae437813f3f538678f97ed7a24.lean/declarations/differentiableon-aeval--8e0f6d0425a01feacf71667f.md) | 97 | `result-track:8e0f6d0425a01feacf71667fc0644dfb5d02126bd3d481d9cc2ad6c343b78dbe` |
| 15 | `theorem` | [deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variantb2c1d4c2b8fdc5c1ff8895d9fb6b0ed39c24c4ae437813f3f538678f97ed7a24.lean/declarations/deriv--9a35d73c08324ca27eaf207d.md) | 101 | `result-track:9a35d73c08324ca27eaf207dd8f1df878ec291a46c2fe50c5807c05102ee374e` |
| 16 | `theorem` | [deriv_aeval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variantb2c1d4c2b8fdc5c1ff8895d9fb6b0ed39c24c4ae437813f3f538678f97ed7a24.lean/declarations/deriv-aeval--2ddd6db7e4a124fac55afeaa.md) | 105 | `result-track:2ddd6db7e4a124fac55afeaa937abf498fe3d3a90b656c3d5daef1fa8cfafd87` |
| 17 | `theorem` | [derivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variantb2c1d4c2b8fdc5c1ff8895d9fb6b0ed39c24c4ae437813f3f538678f97ed7a24.lean/declarations/derivwithin--74b95501ceae3f37b2fc2a19.md) | 108 | `result-track:74b95501ceae3f37b2fc2a1956ee3259e694a8af018f32b31fcd0ac25bb4877e` |
| 18 | `theorem` | [derivWithin_aeval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variantb2c1d4c2b8fdc5c1ff8895d9fb6b0ed39c24c4ae437813f3f538678f97ed7a24.lean/declarations/derivwithin-aeval--749ff0fa8b8cdf593af8ee48.md) | 113 | `result-track:749ff0fa8b8cdf593af8ee487283694a0a53a6b8c756493bab747ac708f8311c` |
| 19 | `theorem` | [hasFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variantb2c1d4c2b8fdc5c1ff8895d9fb6b0ed39c24c4ae437813f3f538678f97ed7a24.lean/declarations/hasfderivat--810797e80345b9dc986b440d.md) | 118 | `result-track:810797e80345b9dc986b440d94b1f2533b6f9cf17e0256e39c2e94637eeea78d` |
| 20 | `theorem` | [hasFDerivAt_aeval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variantb2c1d4c2b8fdc5c1ff8895d9fb6b0ed39c24c4ae437813f3f538678f97ed7a24.lean/declarations/hasfderivat-aeval--1dfad0591c68b6b3d9f3953f.md) | 122 | `result-track:1dfad0591c68b6b3d9f3953f5fbe21ed4923bd8c9253fc37a93606ce48ba008c` |
| 21 | `theorem` | [hasFDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variantb2c1d4c2b8fdc5c1ff8895d9fb6b0ed39c24c4ae437813f3f538678f97ed7a24.lean/declarations/hasfderivwithinat--4709d35efa1044ae2360ea3e.md) | 126 | `result-track:4709d35efa1044ae2360ea3ea1d118b79e55bcab911919e59ad97d4b791d37ec` |
| 22 | `theorem` | [hasFDerivWithinAt_aeval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variantb2c1d4c2b8fdc5c1ff8895d9fb6b0ed39c24c4ae437813f3f538678f97ed7a24.lean/declarations/hasfderivwithinat-aeval--4ddd1184bdce324416ccd737.md) | 130 | `result-track:4ddd1184bdce324416ccd737d91c0e6cd6251e53317bca14e3c3bfe410fbb63c` |
| 23 | `theorem` | [fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variantb2c1d4c2b8fdc5c1ff8895d9fb6b0ed39c24c4ae437813f3f538678f97ed7a24.lean/declarations/fderiv--236e54cade8ab951605e85b7.md) | 136 | `result-track:236e54cade8ab951605e85b70370efa0a416410fcbb6532cda748bd7cc91fb69` |
| 24 | `theorem` | [fderiv_aeval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variantb2c1d4c2b8fdc5c1ff8895d9fb6b0ed39c24c4ae437813f3f538678f97ed7a24.lean/declarations/fderiv-aeval--2a27040193d8dc68b677abf9.md) | 141 | `result-track:2a27040193d8dc68b677abf96a9bf9c31d7edcec3bf7d647094a683e8994f534` |
| 25 | `theorem` | [fderivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variantb2c1d4c2b8fdc5c1ff8895d9fb6b0ed39c24c4ae437813f3f538678f97ed7a24.lean/declarations/fderivwithin--3f43630ae3c7805ec93142ce.md) | 145 | `result-track:3f43630ae3c7805ec93142cebe09990310b561c825a6642b3fc6cdff6b702a21` |
| 26 | `theorem` | [fderivWithin_aeval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Polynomial/Variantb2c1d4c2b8fdc5c1ff8895d9fb6b0ed39c24c4ae437813f3f538678f97ed7a24.lean/declarations/fderivwithin-aeval--0d0a197cc28fe17c981cac9b.md) | 149 | `result-track:0d0a197cc28fe17c981cac9b3521d3f75e8acf2e035e3cbb3585209fb603b95c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
