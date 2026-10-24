# Verification target: GRWTSK.Analysis.BranchRayleighVariation.Variantb79ee9e1fd3d65982535ae7d7b0ad4b70c487e37ca47ee5c59bdafeeb8060b28

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e93862a6b66b1ba631b91e28e57ce70013a5392",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/BranchRayleighVariation/Variantb79ee9e1fd3d65982535ae7d7b0ad4b70c487e37ca47ee5c59bdafeeb8060b28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/BranchRayleighVariation/Variantb79ee9e1fd3d65982535ae7d7b0ad4b70c487e37ca47ee5c59bdafeeb8060b28.lean/index.md) · [Full source](../../../../mathematics/Analysis/BranchRayleighVariation/Variantb79ee9e1fd3d65982535ae7d7b0ad4b70c487e37ca47ee5c59bdafeeb8060b28.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e93862a6b66b1ba631b91e28e57ce70013a5392`.

Source path: `GRWTSK/Analysis/BranchRayleighVariation/Variantb79ee9e1fd3d65982535ae7d7b0ad4b70c487e37ca47ee5c59bdafeeb8060b28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/BranchRayleighVariation/Variantb79ee9e1fd3d65982535ae7d7b0ad4b70c487e37ca47ee5c59bdafeeb8060b28.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Add` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FieldDerivAt](../../../../mathematics/Analysis/BranchRayleighVariation/Variantb79ee9e1fd3d65982535ae7d7b0ad4b70c487e37ca47ee5c59bdafeeb8060b28.lean/declarations/fieldderivat--5ef524d08c33295f7a33dc23.md) | 23 | `declaration-track:5ef524d08c33295f7a33dc2351b32f6121a640b66b041c375095ed30519930ee` |
| 2 | `def` | [denominator](../../../../mathematics/Analysis/BranchRayleighVariation/Variantb79ee9e1fd3d65982535ae7d7b0ad4b70c487e37ca47ee5c59bdafeeb8060b28.lean/declarations/denominator--734e633ccd83cba1f2f054d6.md) | 33 | `declaration-track:734e633ccd83cba1f2f054d6b1a9a0672c4c8691ef56d0933580a278a1397bb6` |
| 3 | `def` | [increment](../../../../mathematics/Analysis/BranchRayleighVariation/Variantb79ee9e1fd3d65982535ae7d7b0ad4b70c487e37ca47ee5c59bdafeeb8060b28.lean/declarations/increment--3686edb773a5752e210656ab.md) | 38 | `declaration-track:3686edb773a5752e210656abd1484c06ef96bbaf0cf28a91c6b77636e55555b6` |
| 4 | `theorem` | [exact_quotient](../../../../mathematics/Analysis/BranchRayleighVariation/Variantb79ee9e1fd3d65982535ae7d7b0ad4b70c487e37ca47ee5c59bdafeeb8060b28.lean/declarations/exact-quotient--7e1c0b6b2262a2137a9f78df.md) | 41 | `result-track:7e1c0b6b2262a2137a9f78df8d085053bc1540c13498333857ad9f98e240c2e9` |
| 5 | `theorem` | [numerator_derivative](../../../../mathematics/Analysis/BranchRayleighVariation/Variantb79ee9e1fd3d65982535ae7d7b0ad4b70c487e37ca47ee5c59bdafeeb8060b28.lean/declarations/numerator-derivative--5f2668550b90b724f93e7797.md) | 52 | `result-track:5f2668550b90b724f93e7797fea981a5fff93e355b89ddd7ad05c1a2c3e4e675` |
| 6 | `theorem` | [denominator_derivative](../../../../mathematics/Analysis/BranchRayleighVariation/Variantb79ee9e1fd3d65982535ae7d7b0ad4b70c487e37ca47ee5c59bdafeeb8060b28.lean/declarations/denominator-derivative--80da1a8ea53eec82ef79e1f1.md) | 61 | `result-track:80da1a8ea53eec82ef79e1f1c4ce36a5b18f4af0286814c9734b961a2db5a149` |
| 7 | `def` | [slope](../../../../mathematics/Analysis/BranchRayleighVariation/Variantb79ee9e1fd3d65982535ae7d7b0ad4b70c487e37ca47ee5c59bdafeeb8060b28.lean/declarations/slope--1e3966cebaeb3f53265ae7cd.md) | 71 | `declaration-track:1e3966cebaeb3f53265ae7cd9610e89974d0b70c9f0c4d9586e0f192ef89ec02` |
| 8 | `theorem` | [increment_derivative](../../../../mathematics/Analysis/BranchRayleighVariation/Variantb79ee9e1fd3d65982535ae7d7b0ad4b70c487e37ca47ee5c59bdafeeb8060b28.lean/declarations/increment-derivative--b74d540f06896760b168040d.md) | 76 | `result-track:b74d540f06896760b168040d100493cd8c3a662c40be4b3dc506e46587b28a1c` |
| 9 | `theorem` | [first_variation](../../../../mathematics/Analysis/BranchRayleighVariation/Variantb79ee9e1fd3d65982535ae7d7b0ad4b70c487e37ca47ee5c59bdafeeb8060b28.lean/declarations/first-variation--d7dc2cfdef01d3d82b08e5b9.md) | 80 | `result-track:d7dc2cfdef01d3d82b08e5b9e7c965169902499ccdf4218570af8247e969444c` |
| 10 | `theorem` | [slope_simplified](../../../../mathematics/Analysis/BranchRayleighVariation/Variantb79ee9e1fd3d65982535ae7d7b0ad4b70c487e37ca47ee5c59bdafeeb8060b28.lean/declarations/slope-simplified--e94f725df2e0489b918f8a49.md) | 84 | `result-track:e94f725df2e0489b918f8a49eab818bbf2d7b16cca1c38914ac473403575fc6f` |
| 11 | `theorem` | [second_variation](../../../../mathematics/Analysis/BranchRayleighVariation/Variantb79ee9e1fd3d65982535ae7d7b0ad4b70c487e37ca47ee5c59bdafeeb8060b28.lean/declarations/second-variation--6da9ff77dda152c5910de39b.md) | 92 | `result-track:6da9ff77dda152c5910de39b376d72c84dd851bdcd6c7c71613f1a10744d8a20` |
| 12 | `theorem` | [vanishing_variations](../../../../mathematics/Analysis/BranchRayleighVariation/Variantb79ee9e1fd3d65982535ae7d7b0ad4b70c487e37ca47ee5c59bdafeeb8060b28.lean/declarations/vanishing-variations--738db9ee0c99c97a4d2a9560.md) | 114 | `result-track:738db9ee0c99c97a4d2a956045b5577a44bad55a65e598143bfa2bef8706f2a9` |
| 13 | `theorem` | [flat_affine_path](../../../../mathematics/Analysis/BranchRayleighVariation/Variantb79ee9e1fd3d65982535ae7d7b0ad4b70c487e37ca47ee5c59bdafeeb8060b28.lean/declarations/flat-affine-path--44177933a1e1fb5f8474c065.md) | 122 | `result-track:44177933a1e1fb5f8474c065ebe564a5c12edf761447cfb658b64112617fda20` |
| 14 | `theorem` | [flat_of_zero_first_and_second_variations](../../../../mathematics/Analysis/BranchRayleighVariation/Variantb79ee9e1fd3d65982535ae7d7b0ad4b70c487e37ca47ee5c59bdafeeb8060b28.lean/declarations/flat-of-zero-first-and-second-variations--e787c8d16225212e55c23f9c.md) | 127 | `result-track:e787c8d16225212e55c23f9cb29f01d9d7d6128e04bec9bcc68c17158dd9f988` |
| 15 | `theorem` | [negative_increment](../../../../mathematics/Analysis/BranchRayleighVariation/Variantb79ee9e1fd3d65982535ae7d7b0ad4b70c487e37ca47ee5c59bdafeeb8060b28.lean/declarations/negative-increment--fbabaf1fd5b34f4501343003.md) | 135 | `result-track:fbabaf1fd5b34f45013430031f713a8313bda2b905108f8345eedca11a36cdac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
