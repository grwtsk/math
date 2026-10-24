# Verification target: GRWTSK.Topology.GeneralTopology.Compact.Variantb75bb8977c3df820a719e53b99af706c0db306bc3b2182e22732d82969dda00e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5e6544a5c99255a958d30c2f29b37dd2661855c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Compact/Variantb75bb8977c3df820a719e53b99af706c0db306bc3b2182e22732d82969dda00e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantb75bb8977c3df820a719e53b99af706c0db306bc3b2182e22732d82969dda00e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantb75bb8977c3df820a719e53b99af706c0db306bc3b2182e22732d82969dda00e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5e6544a5c99255a958d30c2f29b37dd2661855c`.

Source path: `GRWTSK/Topology/GeneralTopology/Compact/Variantb75bb8977c3df820a719e53b99af706c0db306bc3b2182e22732d82969dda00e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Compact/Variantb75bb8977c3df820a719e53b99af706c0db306bc3b2182e22732d82969dda00e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Finsupp.LinearCombination` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Submodule.isCompact_of_fg](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantb75bb8977c3df820a719e53b99af706c0db306bc3b2182e22732d82969dda00e.lean/declarations/submodule-iscompact-of-fg--8bc8cad90bfdfa1d79572f3b.md) | 20 | `result-track:8bc8cad90bfdfa1d79572f3be7afc3382fc41ef8d53a76052c29d0469573f970` |
| 2 | `lemma` | [Ideal.isCompact_of_fg](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantb75bb8977c3df820a719e53b99af706c0db306bc3b2182e22732d82969dda00e.lean/declarations/ideal-iscompact-of-fg--81a908a0bcdcc99bf55362fd.md) | 31 | `result-track:81a908a0bcdcc99bf55362fdb7dc8dea7312e7bdad5a3ad91e013855269ecbc8` |
| 3 | `lemma` | [Module.Finite.compactSpace](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantb75bb8977c3df820a719e53b99af706c0db306bc3b2182e22732d82969dda00e.lean/declarations/module-finite-compactspace--54fa2fc25a684a8734ba4975.md) | 36 | `result-track:54fa2fc25a684a8734ba49754c11b5614dad1c8e1d1880e28cef6aa5c428ca18` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantb75bb8977c3df820a719e53b99af706c0db306bc3b2182e22732d82969dda00e.lean/declarations/instance--4f06f15f3913cdf43708d0f1.md) | 39 | `declaration-track:4f06f15f3913cdf43708d0f1e2acac330aa3beaab019819c621ca4894d726809` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
