# Verification target: GRWTSK.Topology.GeneralTopology.ContinuousMap.Variant38e51e81b2064d6127fa14621fd863531f2efc774b7a2406f168606ccec0833e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f05fd2310d1708284782840a985884c56a9ef8ac",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ContinuousMap/Variant38e51e81b2064d6127fa14621fd863531f2efc774b7a2406f168606ccec0833e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ContinuousMap/Variant38e51e81b2064d6127fa14621fd863531f2efc774b7a2406f168606ccec0833e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ContinuousMap/Variant38e51e81b2064d6127fa14621fd863531f2efc774b7a2406f168606ccec0833e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f05fd2310d1708284782840a985884c56a9ef8ac`.

Source path: `GRWTSK/Topology/GeneralTopology/ContinuousMap/Variant38e51e81b2064d6127fa14621fd863531f2efc774b7a2406f168606ccec0833e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ContinuousMap/Variant38e51e81b2064d6127fa14621fd863531f2efc774b7a2406f168606ccec0833e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.Classes` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Compact` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.ZeroAtInfty` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousMap/Variant38e51e81b2064d6127fa14621fd863531f2efc774b7a2406f168606ccec0833e.lean/declarations/instance--9683168b0f0bac05512724ea.md) | 24 | `declaration-track:9683168b0f0bac05512724eaa86ee3f7da441f27b3be20070a33b6f6bb57bc88` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousMap/Variant38e51e81b2064d6127fa14621fd863531f2efc774b7a2406f168606ccec0833e.lean/declarations/instance--3fafbe3043a1bab0363cf685.md) | 27 | `declaration-track:3fafbe3043a1bab0363cf6856c10072c27c74595dee01964e7050f00768d927b` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousMap/Variant38e51e81b2064d6127fa14621fd863531f2efc774b7a2406f168606ccec0833e.lean/declarations/instance--f849796aa9910569a0132d1e.md) | 31 | `declaration-track:f849796aa9910569a0132d1e5bcd653852eaf8c26ce60a9ba754df47dc2008b7` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousMap/Variant38e51e81b2064d6127fa14621fd863531f2efc774b7a2406f168606ccec0833e.lean/declarations/instance--50d67d1ecf7ae58a476919bf.md) | 34 | `declaration-track:50d67d1ecf7ae58a476919bf596a81462ccbf18100a88423f9bf1dc184c7554f` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousMap/Variant38e51e81b2064d6127fa14621fd863531f2efc774b7a2406f168606ccec0833e.lean/declarations/instance--61dc0a60cdd958c7b0beb447.md) | 44 | `declaration-track:61dc0a60cdd958c7b0beb447cfff28e79ed877dd0e69ee3d1a5f770c99d2df83` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousMap/Variant38e51e81b2064d6127fa14621fd863531f2efc774b7a2406f168606ccec0833e.lean/declarations/instance--31346f49aa22c697fba60731.md) | 47 | `declaration-track:31346f49aa22c697fba607314edc46852e8ab5c2880f4bb52653133f5293ba45` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousMap/Variant38e51e81b2064d6127fa14621fd863531f2efc774b7a2406f168606ccec0833e.lean/declarations/instance--12311ba2fb3d1451a0fc39bb.md) | 51 | `declaration-track:12311ba2fb3d1451a0fc39bb358bb1dfdaf3d0a72432be86874a02b8b500f318` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousMap/Variant38e51e81b2064d6127fa14621fd863531f2efc774b7a2406f168606ccec0833e.lean/declarations/instance--b2d11266527a2a4d576e4fb0.md) | 54 | `declaration-track:b2d11266527a2a4d576e4fb0389533a1b156582cf8f8e10c6d79dff00d234ebc` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousMap/Variant38e51e81b2064d6127fa14621fd863531f2efc774b7a2406f168606ccec0833e.lean/declarations/instance--8d0c35ca8caea5550b3821c7.md) | 64 | `declaration-track:8d0c35ca8caea5550b3821c7c6ed1b07996afaf4c8c4d425fd1476d5fb1cc933` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousMap/Variant38e51e81b2064d6127fa14621fd863531f2efc774b7a2406f168606ccec0833e.lean/declarations/instance--0c58fa61ce1ae3172bf41efb.md) | 67 | `declaration-track:0c58fa61ce1ae3172bf41efbe8bc9aee1944b68f2cdf1d8ad72e03e978eab5a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
