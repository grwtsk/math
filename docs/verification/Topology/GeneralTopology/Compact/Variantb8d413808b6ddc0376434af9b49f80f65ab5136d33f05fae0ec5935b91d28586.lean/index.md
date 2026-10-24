# Verification target: GRWTSK.Topology.GeneralTopology.Compact.Variantb8d413808b6ddc0376434af9b49f80f65ab5136d33f05fae0ec5935b91d28586

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18d9dd8901be84f41148f6ff4c53d1dd5d652cd0",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Compact/Variantb8d413808b6ddc0376434af9b49f80f65ab5136d33f05fae0ec5935b91d28586.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantb8d413808b6ddc0376434af9b49f80f65ab5136d33f05fae0ec5935b91d28586.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantb8d413808b6ddc0376434af9b49f80f65ab5136d33f05fae0ec5935b91d28586.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18d9dd8901be84f41148f6ff4c53d1dd5d652cd0`.

Source path: `GRWTSK/Topology/GeneralTopology/Compact/Variantb8d413808b6ddc0376434af9b49f80f65ab5136d33f05fae0ec5935b91d28586.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Compact/Variantb8d413808b6ddc0376434af9b49f80f65ab5136d33f05fae0ec5935b91d28586.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Finsupp.LinearCombination` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Submodule.isCompact_of_fg](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantb8d413808b6ddc0376434af9b49f80f65ab5136d33f05fae0ec5935b91d28586.lean/declarations/submodule-iscompact-of-fg--efefdeff5804e7fbff7f62c9.md) | 28 | `result-track:efefdeff5804e7fbff7f62c9fbbb75e339201a1fbefac5229faaab055366344e` |
| 2 | `lemma` | [Ideal.isCompact_of_fg](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantb8d413808b6ddc0376434af9b49f80f65ab5136d33f05fae0ec5935b91d28586.lean/declarations/ideal-iscompact-of-fg--b5fd2faa211f5bbc053021af.md) | 39 | `result-track:b5fd2faa211f5bbc053021afef0d89c7ceff3c23ba27a13d82b2b7b38c5f317d` |
| 3 | `lemma` | [Module.Finite.compactSpace](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantb8d413808b6ddc0376434af9b49f80f65ab5136d33f05fae0ec5935b91d28586.lean/declarations/module-finite-compactspace--3db73453253e9db58dd664af.md) | 44 | `result-track:3db73453253e9db58dd664af69440c7a7c1c2850b09ef8a4bb296623641fa9b3` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantb8d413808b6ddc0376434af9b49f80f65ab5136d33f05fae0ec5935b91d28586.lean/declarations/instance--9a0a79650ac3a146814b12b9.md) | 47 | `declaration-track:9a0a79650ac3a146814b12b9cece7c2ad9e927839f9ac73b98c5c91c581735e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
