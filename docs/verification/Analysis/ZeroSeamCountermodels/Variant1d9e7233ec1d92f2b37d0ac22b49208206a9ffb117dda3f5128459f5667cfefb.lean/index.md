# Verification target: GRWTSK.Analysis.ZeroSeamCountermodels.Variant1d9e7233ec1d92f2b37d0ac22b49208206a9ffb117dda3f5128459f5667cfefb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6c8269c55e50e78719d2c7e456f14a4ebfe2efe",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ZeroSeamCountermodels/Variant1d9e7233ec1d92f2b37d0ac22b49208206a9ffb117dda3f5128459f5667cfefb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ZeroSeamCountermodels/Variant1d9e7233ec1d92f2b37d0ac22b49208206a9ffb117dda3f5128459f5667cfefb.lean/index.md) · [Full source](../../../../mathematics/Analysis/ZeroSeamCountermodels/Variant1d9e7233ec1d92f2b37d0ac22b49208206a9ffb117dda3f5128459f5667cfefb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6c8269c55e50e78719d2c7e456f14a4ebfe2efe`.

Source path: `GRWTSK/Analysis/ZeroSeamCountermodels/Variant1d9e7233ec1d92f2b37d0ac22b49208206a9ffb117dda3f5128459f5667cfefb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ZeroSeamCountermodels/Variant1d9e7233ec1d92f2b37d0ac22b49208206a9ffb117dda3f5128459f5667cfefb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.WeightedHodge` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bump](../../../../mathematics/Analysis/ZeroSeamCountermodels/Variant1d9e7233ec1d92f2b37d0ac22b49208206a9ffb117dda3f5128459f5667cfefb.lean/declarations/bump--5105f12d4666e3a67cf9fb31.md) | 27 | `declaration-track:5105f12d4666e3a67cf9fb3122bc7401ddcd7a5db350c34b35e0ca152fde6109` |
| 2 | `theorem` | [bump_continuous](../../../../mathematics/Analysis/ZeroSeamCountermodels/Variant1d9e7233ec1d92f2b37d0ac22b49208206a9ffb117dda3f5128459f5667cfefb.lean/declarations/bump-continuous--ffa1a4c42fcc0e90b5862884.md) | 29 | `result-track:ffa1a4c42fcc0e90b58628842d3f11d4a727bb5a1002139371785b8127322fa3` |
| 3 | `theorem` | [bump_endpoints](../../../../mathematics/Analysis/ZeroSeamCountermodels/Variant1d9e7233ec1d92f2b37d0ac22b49208206a9ffb117dda3f5128459f5667cfefb.lean/declarations/bump-endpoints--ff9e405b2916d74758c3b49f.md) | 32 | `result-track:ff9e405b2916d74758c3b49fb14edad8a1486d4ddc2a45bf1d21c3a54412651e` |
| 4 | `theorem` | [bump_nonneg](../../../../mathematics/Analysis/ZeroSeamCountermodels/Variant1d9e7233ec1d92f2b37d0ac22b49208206a9ffb117dda3f5128459f5667cfefb.lean/declarations/bump-nonneg--187d9e470b578de9b245f4e4.md) | 34 | `result-track:187d9e470b578de9b245f4e4d33be1459eb9990f36e918ae50f3c15728d2b57a` |
| 5 | `theorem` | [bump_midpoint](../../../../mathematics/Analysis/ZeroSeamCountermodels/Variant1d9e7233ec1d92f2b37d0ac22b49208206a9ffb117dda3f5128459f5667cfefb.lean/declarations/bump-midpoint--75783a37fc91e792a6323c7f.md) | 37 | `result-track:75783a37fc91e792a6323c7fef9a2d21491d7d3cd6f18d824cd497989adddbb2` |
| 6 | `theorem` | [bump_integral](../../../../mathematics/Analysis/ZeroSeamCountermodels/Variant1d9e7233ec1d92f2b37d0ac22b49208206a9ffb117dda3f5128459f5667cfefb.lean/declarations/bump-integral--257cbd54b625aeddf53a603d.md) | 39 | `result-track:257cbd54b625aeddf53a603d6b2d6efa1744032e05c12e73f117c0afd57046e0` |
| 7 | `theorem` | [fixed_zero_seams_have_unbounded_height_and_mass](../../../../mathematics/Analysis/ZeroSeamCountermodels/Variant1d9e7233ec1d92f2b37d0ac22b49208206a9ffb117dda3f5128459f5667cfefb.lean/declarations/fixed-zero-seams-have-unbounded-height-and-mass--9f06d3e03a2fc6081651dce9.md) | 52 | `result-track:9f06d3e03a2fc6081651dce99d90fb606cfa09785e82bd031f5e3f3cf3b7973c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
