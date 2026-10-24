# Verification target: GRWTSK.Algebra.GroupTheory.Support.Variant306573eff68cb12f92bed9610c1f06461898ccefb67ee9f6e1ad0ead66d9072f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8963234f6c92a3003f2406b4c6bbb1bda690dea5",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Support/Variant306573eff68cb12f92bed9610c1f06461898ccefb67ee9f6e1ad0ead66d9072f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Support/Variant306573eff68cb12f92bed9610c1f06461898ccefb67ee9f6e1ad0ead66d9072f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Support/Variant306573eff68cb12f92bed9610c1f06461898ccefb67ee9f6e1ad0ead66d9072f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8963234f6c92a3003f2406b4c6bbb1bda690dea5`.

Source path: `GRWTSK/Algebra/GroupTheory/Support/Variant306573eff68cb12f92bed9610c1f06461898ccefb67ee9f6e1ad0ead66d9072f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Support/Variant306573eff68cb12f92bed9610c1f06461898ccefb67ee9f6e1ad0ead66d9072f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Scalar` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Supports](../../../../../mathematics/Algebra/GroupTheory/Support/Variant306573eff68cb12f92bed9610c1f06461898ccefb67ee9f6e1ad0ead66d9072f.lean/declarations/supports--5886973e9a513e1b7d27afcb.md) | 32 | `declaration-track:5886973e9a513e1b7d27afcb57b8420129c7b7f48398982541a9160d7432f0d6` |
| 2 | `theorem` | [supports_of_mem](../../../../../mathematics/Algebra/GroupTheory/Support/Variant306573eff68cb12f92bed9610c1f06461898ccefb67ee9f6e1ad0ead66d9072f.lean/declarations/supports-of-mem--438f64943955ab3da20825a7.md) | 38 | `result-track:438f64943955ab3da20825a7ab61b87f8c451863fb0cc40d42db03bb50e8e1e9` |
| 3 | `theorem` | [Supports.mono](../../../../../mathematics/Algebra/GroupTheory/Support/Variant306573eff68cb12f92bed9610c1f06461898ccefb67ee9f6e1ad0ead66d9072f.lean/declarations/supports-mono--a814131d452787eaed027161.md) | 43 | `result-track:a814131d452787eaed027161d07c8bd589f4aa7d6feee540d26e79378f4cb9e3` |
| 4 | `theorem` | [Supports.smul](../../../../../mathematics/Algebra/GroupTheory/Support/Variant306573eff68cb12f92bed9610c1f06461898ccefb67ee9f6e1ad0ead66d9072f.lean/declarations/supports-smul--302d0e1e6d59e72845c5650d.md) | 53 | `result-track:302d0e1e6d59e72845c5650d583f5945dcfde678b1ff9328aeb391a1e3df65d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
