# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant95ea962fa7f9cc5a6b832f613250d2659db8a891c914142c9715819c02bc18d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50bcf7b9bae5a207dd4137c89bb464b2005c3142",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant95ea962fa7f9cc5a6b832f613250d2659db8a891c914142c9715819c02bc18d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant95ea962fa7f9cc5a6b832f613250d2659db8a891c914142c9715819c02bc18d9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant95ea962fa7f9cc5a6b832f613250d2659db8a891c914142c9715819c02bc18d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50bcf7b9bae5a207dd4137c89bb464b2005c3142`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant95ea962fa7f9cc5a6b832f613250d2659db8a891c914142c9715819c02bc18d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant95ea962fa7f9cc5a6b832f613250d2659db8a891c914142c9715819c02bc18d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.CharacterSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.WeakDual` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Algebra.Spectrum` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_le_norm_one](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant95ea962fa7f9cc5a6b832f613250d2659db8a891c914142c9715819c02bc18d9.lean/declarations/norm-le-norm-one--dd745c837430ea04561ac451.md) | 46 | `result-track:dd745c837430ea04561ac45147ce2fe1aaeab23ae054c8ec982e31890c6afd19` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant95ea962fa7f9cc5a6b832f613250d2659db8a891c914142c9715819c02bc18d9.lean/declarations/instance--1eb81658d8e218e1400db36e.md) | 50 | `declaration-track:1eb81658d8e218e1400db36e1c06ad172c82b1ba0e05ce6a7640daae1829638f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
