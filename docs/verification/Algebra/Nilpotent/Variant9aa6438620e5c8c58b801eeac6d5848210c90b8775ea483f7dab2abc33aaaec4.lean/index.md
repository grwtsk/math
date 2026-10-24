# Verification target: GRWTSK.Algebra.Nilpotent.Variant9aa6438620e5c8c58b801eeac6d5848210c90b8775ea483f7dab2abc33aaaec4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3032ff735b11202545b8b6fee607b671e3d8b74",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Nilpotent/Variant9aa6438620e5c8c58b801eeac6d5848210c90b8775ea483f7dab2abc33aaaec4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Nilpotent/Variant9aa6438620e5c8c58b801eeac6d5848210c90b8775ea483f7dab2abc33aaaec4.lean/index.md) · [Full source](../../../../mathematics/Algebra/Nilpotent/Variant9aa6438620e5c8c58b801eeac6d5848210c90b8775ea483f7dab2abc33aaaec4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3032ff735b11202545b8b6fee607b671e3d8b74`.

Source path: `GRWTSK/Algebra/Nilpotent/Variant9aa6438620e5c8c58b801eeac6d5848210c90b8775ea483f7dab2abc33aaaec4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Nilpotent/Variant9aa6438620e5c8c58b801eeac6d5848210c90b8775ea483f7dab2abc33aaaec4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Finiteness.Ideal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsNoetherianRing.isNilpotent_nilradical](../../../../mathematics/Algebra/Nilpotent/Variant9aa6438620e5c8c58b801eeac6d5848210c90b8775ea483f7dab2abc33aaaec4.lean/declarations/isnoetherianring-isnilpotent-nilradical--ec47ce4a8e6044ca1bee33b2.md) | 29 | `result-track:ec47ce4a8e6044ca1bee33b273bf1c9d653ad4959e10eac08312fcd81c859d67` |
| 2 | `lemma` | [Ideal.FG.isNilpotent_iff_le_nilradical](../../../../mathematics/Algebra/Nilpotent/Variant9aa6438620e5c8c58b801eeac6d5848210c90b8775ea483f7dab2abc33aaaec4.lean/declarations/ideal-fg-isnilpotent-iff-le-nilradical--3d0851fae5dfb3f57d3a2157.md) | 34 | `result-track:3d0851fae5dfb3f57d3a215723d46547d5a62202d527244001056297d4785670` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
