# Verification target: GRWTSK.Analysis.Resolvent.ScreenAlgebra

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15abe207293eb4423c62bac5dbeddfb1fc85297b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Resolvent/ScreenAlgebra.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Resolvent/ScreenAlgebra.lean/index.md) · [Full source](../../../../mathematics/Analysis/Resolvent/ScreenAlgebra.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15abe207293eb4423c62bac5dbeddfb1fc85297b`.

Source path: `GRWTSK/Analysis/Resolvent/ScreenAlgebra.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Resolvent/ScreenAlgebra.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [reciprocal_difference](../../../../mathematics/Analysis/Resolvent/ScreenAlgebra.lean/declarations/reciprocal-difference--9f5ed43de028f6e37cdccbc2.md) | 12 | `result-track:9f5ed43de028f6e37cdccbc25e77571f1ba8e0be271ac978f5916f9f3bb6b233` |
| 2 | `theorem` | [filter_identity](../../../../mathematics/Analysis/Resolvent/ScreenAlgebra.lean/declarations/filter-identity--46476c64c1bcd10d0c6cecad.md) | 17 | `result-track:46476c64c1bcd10d0c6cecad97b7690d7bec35d8b42c8250c169603c7524e920` |
| 3 | `theorem` | [exact_return](../../../../mathematics/Analysis/Resolvent/ScreenAlgebra.lean/declarations/exact-return--87abab451bb47e198631c433.md) | 25 | `result-track:87abab451bb47e198631c4333b572ea9c98601773d07f2a3306c5dbe7c15e764` |
| 4 | `theorem` | [retained_nonnegative](../../../../mathematics/Analysis/Resolvent/ScreenAlgebra.lean/declarations/retained-nonnegative--2a5d95985ea9e859d7b34bf3.md) | 27 | `result-track:2a5d95985ea9e859d7b34bf3af080fdc3f191a91124532bff0d393606aa71027` |
| 5 | `theorem` | [high_band_pointwise](../../../../mathematics/Analysis/Resolvent/ScreenAlgebra.lean/declarations/high-band-pointwise--e9c3391fa52194faf99835cc.md) | 29 | `result-track:e9c3391fa52194faf99835cc0d429628a0fc515c4a0f76f433ed38b1b3fe8404` |
| 6 | `theorem` | [boundary_interval_retained](../../../../mathematics/Analysis/Resolvent/ScreenAlgebra.lean/declarations/boundary-interval-retained--3c9588e3b4da69e7fdb37427.md) | 37 | `result-track:3c9588e3b4da69e7fdb37427f1b7125c7082eb08241c3da99959cf8104962ccd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
