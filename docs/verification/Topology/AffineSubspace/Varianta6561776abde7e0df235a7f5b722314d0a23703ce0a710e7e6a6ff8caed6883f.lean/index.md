# Verification target: GRWTSK.Topology.AffineSubspace.Varianta6561776abde7e0df235a7f5b722314d0a23703ce0a710e7e6a6ff8caed6883f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "005282470f6272f941bf9b4ee32d8178de06c597",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AffineSubspace/Varianta6561776abde7e0df235a7f5b722314d0a23703ce0a710e7e6a6ff8caed6883f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AffineSubspace/Varianta6561776abde7e0df235a7f5b722314d0a23703ce0a710e7e6a6ff8caed6883f.lean/index.md) · [Full source](../../../../mathematics/Topology/AffineSubspace/Varianta6561776abde7e0df235a7f5b722314d0a23703ce0a710e7e6a6ff8caed6883f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `005282470f6272f941bf9b4ee32d8178de06c597`.

Source path: `GRWTSK/Topology/AffineSubspace/Varianta6561776abde7e0df235a7f5b722314d0a23703ce0a710e7e6a6ff8caed6883f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AffineSubspace/Varianta6561776abde7e0df235a7f5b722314d0a23703ce0a710e7e6a6ff8caed6883f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.ContinuousAffineMap` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [subtypeA](../../../../mathematics/Topology/AffineSubspace/Varianta6561776abde7e0df235a7f5b722314d0a23703ce0a710e7e6a6ff8caed6883f.lean/declarations/subtypea--3bf6159236e973cad5d409b3.md) | 30 | `declaration-track:3bf6159236e973cad5d409b3ecfb658c2ba10381739d323bf0dbb5f95f82c75b` |
| 2 | `lemma` | [coe_subtypeA](../../../../mathematics/Topology/AffineSubspace/Varianta6561776abde7e0df235a7f5b722314d0a23703ce0a710e7e6a6ff8caed6883f.lean/declarations/coe-subtypea--fbb6067e13bebc95c75fe500.md) | 34 | `result-track:fbb6067e13bebc95c75fe5003b7f03aadf76683eefa1872f6ce82490d59ea7b3` |
| 3 | `lemma` | [subtypeA_toAffineMap](../../../../mathematics/Topology/AffineSubspace/Varianta6561776abde7e0df235a7f5b722314d0a23703ce0a710e7e6a6ff8caed6883f.lean/declarations/subtypea-toaffinemap--27a1a7efb8ef5ef59e87b5a4.md) | 37 | `result-track:27a1a7efb8ef5ef59e87b5a49e6ee3a846cdd166533dce2aaa4b2676db9f8be8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
