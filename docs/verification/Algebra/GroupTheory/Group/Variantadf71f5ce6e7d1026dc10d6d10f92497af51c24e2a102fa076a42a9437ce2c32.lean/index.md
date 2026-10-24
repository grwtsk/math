# Verification target: GRWTSK.Algebra.GroupTheory.Group.Variantadf71f5ce6e7d1026dc10d6d10f92497af51c24e2a102fa076a42a9437ce2c32

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbd76f66bfcecdd5faf291a640d91723e89cea9d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Group/Variantadf71f5ce6e7d1026dc10d6d10f92497af51c24e2a102fa076a42a9437ce2c32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Group/Variantadf71f5ce6e7d1026dc10d6d10f92497af51c24e2a102fa076a42a9437ce2c32.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Group/Variantadf71f5ce6e7d1026dc10d6d10f92497af51c24e2a102fa076a42a9437ce2c32.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbd76f66bfcecdd5faf291a640d91723e89cea9d`.

Source path: `GRWTSK/Algebra/GroupTheory/Group/Variantadf71f5ce6e7d1026dc10d6d10f92497af51c24e2a102fa076a42a9437ce2c32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Group/Variantadf71f5ce6e7d1026dc10d6d10f92497af51c24e2a102fa076a42a9437ce2c32.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Ring` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FailIfNoProgress` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Commutator` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zpow_trick](../../../../../mathematics/Algebra/GroupTheory/Group/Variantadf71f5ce6e7d1026dc10d6d10f92497af51c24e2a102fa076a42a9437ce2c32.lean/declarations/zpow-trick--8610cc557f735d3fa7d0371f.md) | 43 | `result-track:8610cc557f735d3fa7d0371f8f5000bf325defbccbd81b49977d5f1fd2a0a78c` |
| 2 | `theorem` | [zpow_trick_one](../../../../../mathematics/Algebra/GroupTheory/Group/Variantadf71f5ce6e7d1026dc10d6d10f92497af51c24e2a102fa076a42a9437ce2c32.lean/declarations/zpow-trick-one--3e28df2e38df40b54e22924c.md) | 47 | `result-track:3e28df2e38df40b54e22924cb9834a66fec33c2b76ced0330d3a6b392bd0a0dc` |
| 3 | `theorem` | [zpow_trick_one'](../../../../../mathematics/Algebra/GroupTheory/Group/Variantadf71f5ce6e7d1026dc10d6d10f92497af51c24e2a102fa076a42a9437ce2c32.lean/declarations/zpow-trick-one--77002f0cdbb43823f8633e70.md) | 51 | `result-track:77002f0cdbb43823f8633e70fbd4dc32a87d1e21dd2813b314a4c2699b148765` |
| 4 | `syntax` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Group/Variantadf71f5ce6e7d1026dc10d6d10f92497af51c24e2a102fa076a42a9437ce2c32.lean/declarations/syntax--4951408e209bc0411e3efc37.md) | 55 | `declaration-track:4951408e209bc0411e3efc37099e569ac3168269fe7dd0659ec756b05ae494e7` |
| 5 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Group/Variantadf71f5ce6e7d1026dc10d6d10f92497af51c24e2a102fa076a42a9437ce2c32.lean/declarations/macro-rules--2b989857f19939302159a2fa.md) | 57 | `declaration-track:2b989857f19939302159a2fae319140be78e0d71b21771c2841a8ea01606de28` |
| 6 | `syntax` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Group/Variantadf71f5ce6e7d1026dc10d6d10f92497af51c24e2a102fa076a42a9437ce2c32.lean/declarations/syntax--4ef9410c76dbe3b454323baa.md) | 71 | `declaration-track:4ef9410c76dbe3b454323baad7311325030628b7f5c34e55667c2d9bf8ca9654` |
| 7 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Group/Variantadf71f5ce6e7d1026dc10d6d10f92497af51c24e2a102fa076a42a9437ce2c32.lean/declarations/macro-rules--45bff267db170a860e55069a.md) | 73 | `declaration-track:45bff267db170a860e55069a9161530a3aff521fc25531d87dec2ab4932df7fe` |
| 8 | `syntax` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Group/Variantadf71f5ce6e7d1026dc10d6d10f92497af51c24e2a102fa076a42a9437ce2c32.lean/declarations/syntax--be4ec025eb18c9855c9995e3.md) | 91 | `declaration-track:be4ec025eb18c9855c9995e340c79aa3b2a2499c78787d55002e85e6e468db68` |
| 9 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Group/Variantadf71f5ce6e7d1026dc10d6d10f92497af51c24e2a102fa076a42a9437ce2c32.lean/declarations/macro-rules--ee200cf7a56c460462e684e3.md) | 93 | `declaration-track:ee200cf7a56c460462e684e3e965f7ad32592b42c05363a34bdce23664c6b125` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
