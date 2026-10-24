# Verification target: GRWTSK.Algebra.GroupTheory.Finsupp.Variant8e1db1f2ac7f2815882b055a460769528bcd6a6bd916d1fa7f4a272d046e6f1a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a235af348302e10966fee2ee72335e8f6911b70d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Finsupp/Variant8e1db1f2ac7f2815882b055a460769528bcd6a6bd916d1fa7f4a272d046e6f1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant8e1db1f2ac7f2815882b055a460769528bcd6a6bd916d1fa7f4a272d046e6f1a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant8e1db1f2ac7f2815882b055a460769528bcd6a6bd916d1fa7f4a272d046e6f1a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a235af348302e10966fee2ee72335e8f6911b70d`.

Source path: `GRWTSK/Algebra/GroupTheory/Finsupp/Variant8e1db1f2ac7f2815882b055a460769528bcd6a6bd916d1fa7f4a272d046e6f1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Finsupp/Variant8e1db1f2ac7f2815882b055a460769528bcd6a6bd916d1fa7f4a272d046e6f1a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Finsupp.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Lattice` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_finsupp_of_mem_closure_range](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant8e1db1f2ac7f2815882b055a460769528bcd6a6bd916d1fa7f4a272d046e6f1a.lean/declarations/exists-finsupp-of-mem-closure-range--8808bdc36713aabeb652f72d.md) | 26 | `result-track:8808bdc36713aabeb652f72d5e78638fcccbd27d23565dd0d03eb4186dc93655` |
| 2 | `theorem` | [mem_closure_range_iff](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant8e1db1f2ac7f2815882b055a460769528bcd6a6bd916d1fa7f4a272d046e6f1a.lean/declarations/mem-closure-range-iff--d3af9ba0d393eda925de5edd.md) | 47 | `result-track:d3af9ba0d393eda925de5edd9a6710e9b883c9099a74b173d5d7289c23340941` |
| 3 | `theorem` | [exists_of_mem_closure_range](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant8e1db1f2ac7f2815882b055a460769528bcd6a6bd916d1fa7f4a272d046e6f1a.lean/declarations/exists-of-mem-closure-range--e48f7883f880ade23f7707ca.md) | 54 | `result-track:e48f7883f880ade23f7707ca9e6ce0ce14658a844ccb5a4f542ea0cc5257ea9e` |
| 4 | `theorem` | [mem_closure_range_iff_of_fintype](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant8e1db1f2ac7f2815882b055a460769528bcd6a6bd916d1fa7f4a272d046e6f1a.lean/declarations/mem-closure-range-iff-of-fintype--051bca2d512c6500c4c2ea1f.md) | 61 | `result-track:051bca2d512c6500c4c2ea1f8a04cfc2f277fc54c086183a9a41aac441759053` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
