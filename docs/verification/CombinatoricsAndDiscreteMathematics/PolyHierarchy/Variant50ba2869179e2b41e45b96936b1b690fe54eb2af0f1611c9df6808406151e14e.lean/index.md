# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PolyHierarchy.Variant50ba2869179e2b41e45b96936b1b690fe54eb2af0f1611c9df6808406151e14e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e480506c178f7b2cd3ee23df9cc7979b61868f5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PolyHierarchy/Variant50ba2869179e2b41e45b96936b1b690fe54eb2af0f1611c9df6808406151e14e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PolyHierarchy/Variant50ba2869179e2b41e45b96936b1b690fe54eb2af0f1611c9df6808406151e14e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PolyHierarchy/Variant50ba2869179e2b41e45b96936b1b690fe54eb2af0f1611c9df6808406151e14e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e480506c178f7b2cd3ee23df9cc7979b61868f5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PolyHierarchy/Variant50ba2869179e2b41e45b96936b1b690fe54eb2af0f1611c9df6808406151e14e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PolyHierarchy/Variant50ba2869179e2b41e45b96936b1b690fe54eb2af0f1611c9df6808406151e14e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Authority.Evidence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [FactAuthority](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PolyHierarchy/Variant50ba2869179e2b41e45b96936b1b690fe54eb2af0f1611c9df6808406151e14e.lean/declarations/factauthority--accd0dfbf081a4eebec5e1ec.md) | 31 | `declaration-track:accd0dfbf081a4eebec5e1ecdc1a80380f6f63b03e8567f8e5b4eeffc49c88c4` |
| 2 | `structure` | [StructuralSignature](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PolyHierarchy/Variant50ba2869179e2b41e45b96936b1b690fe54eb2af0f1611c9df6808406151e14e.lean/declarations/structuralsignature--99ad8235d2f8d8573911dbb7.md) | 43 | `declaration-track:99ad8235d2f8d8573911dbb76d56b58ade98a4398faa9dc1c0589e5202bd53b6` |
| 3 | `structure` | [PolyHierarchy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PolyHierarchy/Variant50ba2869179e2b41e45b96936b1b690fe54eb2af0f1611c9df6808406151e14e.lean/declarations/polyhierarchy--1cfd8dbf6efe3ce3336dc300.md) | 62 | `declaration-track:1cfd8dbf6efe3ce3336dc3002e06aeb7dde08e70097ccafe14e9da8e07267e6e` |
| 4 | `inductive` | [ProposalAuthority](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PolyHierarchy/Variant50ba2869179e2b41e45b96936b1b690fe54eb2af0f1611c9df6808406151e14e.lean/declarations/proposalauthority--ada54fa38caab9b88b3ef2af.md) | 86 | `declaration-track:ada54fa38caab9b88b3ef2af59283688d0b9af91f42be77d63852fb2419ecd07` |
| 5 | `theorem` | [proposal_is_not_fact_authority](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PolyHierarchy/Variant50ba2869179e2b41e45b96936b1b690fe54eb2af0f1611c9df6808406151e14e.lean/declarations/proposal-is-not-fact-authority--074125f19ff602ec14e92955.md) | 94 | `result-track:074125f19ff602ec14e92955ec6c1df8a71c87386f03585909a00b7b812eb046` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
