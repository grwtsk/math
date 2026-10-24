# Verification target: GRWTSK.Algebra.GroupTheory.Support.Variant2758b12d8fdea1a4a749fb595749eaf231dc6a8aa9686cd1f650a64af2445c17

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4cf5d1dfdb31caba3661833b678ab24e3afcf24",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Support/Variant2758b12d8fdea1a4a749fb595749eaf231dc6a8aa9686cd1f650a64af2445c17.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Support/Variant2758b12d8fdea1a4a749fb595749eaf231dc6a8aa9686cd1f650a64af2445c17.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Support/Variant2758b12d8fdea1a4a749fb595749eaf231dc6a8aa9686cd1f650a64af2445c17.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4cf5d1dfdb31caba3661833b678ab24e3afcf24`.

Source path: `GRWTSK/Algebra/GroupTheory/Support/Variant2758b12d8fdea1a4a749fb595749eaf231dc6a8aa9686cd1f650a64af2445c17.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Support/Variant2758b12d8fdea1a4a749fb595749eaf231dc6a8aa9686cd1f650a64af2445c17.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Scalar` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Supports](../../../../../mathematics/Algebra/GroupTheory/Support/Variant2758b12d8fdea1a4a749fb595749eaf231dc6a8aa9686cd1f650a64af2445c17.lean/declarations/supports--05ba61e54791c05f3d33f77c.md) | 40 | `declaration-track:05ba61e54791c05f3d33f77ce4ca95c0e2c4c11e9b828cd6c5a1e88aafb31d4b` |
| 2 | `theorem` | [supports_of_mem](../../../../../mathematics/Algebra/GroupTheory/Support/Variant2758b12d8fdea1a4a749fb595749eaf231dc6a8aa9686cd1f650a64af2445c17.lean/declarations/supports-of-mem--14cf60cf7bac073b740ad977.md) | 46 | `result-track:14cf60cf7bac073b740ad97760a5973d90349ae93d174e8be9a5eee1b1d4135c` |
| 3 | `theorem` | [Supports.mono](../../../../../mathematics/Algebra/GroupTheory/Support/Variant2758b12d8fdea1a4a749fb595749eaf231dc6a8aa9686cd1f650a64af2445c17.lean/declarations/supports-mono--8bc08b11d2fa52fa2215efe8.md) | 51 | `result-track:8bc08b11d2fa52fa2215efe88da18dbf046c2925143f18441f60682365065711` |
| 4 | `theorem` | [Supports.smul](../../../../../mathematics/Algebra/GroupTheory/Support/Variant2758b12d8fdea1a4a749fb595749eaf231dc6a8aa9686cd1f650a64af2445c17.lean/declarations/supports-smul--c7773a222fc31409a1d99c72.md) | 61 | `result-track:c7773a222fc31409a1d99c72a75e049d808c98e764037560f5a4916ca4ffb4ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
