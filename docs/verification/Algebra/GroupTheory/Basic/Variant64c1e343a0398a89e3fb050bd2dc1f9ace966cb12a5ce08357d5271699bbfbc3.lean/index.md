# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant64c1e343a0398a89e3fb050bd2dc1f9ace966cb12a5ce08357d5271699bbfbc3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a87c21d5e54e235cca0effbaabae37b628752f97",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant64c1e343a0398a89e3fb050bd2dc1f9ace966cb12a5ce08357d5271699bbfbc3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant64c1e343a0398a89e3fb050bd2dc1f9ace966cb12a5ce08357d5271699bbfbc3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant64c1e343a0398a89e3fb050bd2dc1f9ace966cb12a5ce08357d5271699bbfbc3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a87c21d5e54e235cca0effbaabae37b628752f97`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant64c1e343a0398a89e3fb050bd2dc1f9ace966cb12a5ce08357d5271699bbfbc3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant64c1e343a0398a89e3fb050bd2dc1f9ace966cb12a5ce08357d5271699bbfbc3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Semiconj.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inv_inv_symm_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant64c1e343a0398a89e3fb050bd2dc1f9ace966cb12a5ce08357d5271699bbfbc3.lean/declarations/inv-inv-symm-iff--b6e7d771fd179eea4b2fd743.md) | 31 | `result-track:b6e7d771fd179eea4b2fd743f3466b159272f3112e26f90b7ba72cd13d34354b` |
| 2 | `lemma` | [inv_symm_left_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant64c1e343a0398a89e3fb050bd2dc1f9ace966cb12a5ce08357d5271699bbfbc3.lean/declarations/inv-symm-left-iff--f81db644f91cfc15efe13854.md) | 41 | `result-track:f81db644f91cfc15efe1385499b38794e5a7d6056292c06e03ee3878cb37bbd1` |
| 3 | `lemma` | [inv_right_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant64c1e343a0398a89e3fb050bd2dc1f9ace966cb12a5ce08357d5271699bbfbc3.lean/declarations/inv-right-iff--28e2e802e1cb46dba36443aa.md) | 46 | `result-track:28e2e802e1cb46dba36443aac0462a6e0f9a29d3018cce3bb3b1bbe189b23c48` |
| 4 | `lemma` | [zpow_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant64c1e343a0398a89e3fb050bd2dc1f9ace966cb12a5ce08357d5271699bbfbc3.lean/declarations/zpow-right--f40e0c9e8c6992ada58a073a.md) | 51 | `result-track:f40e0c9e8c6992ada58a073a822ca72029918cf4fb0f43802177b73ba28a77f4` |
| 5 | `lemma` | [eq_one_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant64c1e343a0398a89e3fb050bd2dc1f9ace966cb12a5ce08357d5271699bbfbc3.lean/declarations/eq-one-iff--1bb70e2664e1f5b4a2cd376d.md) | 59 | `result-track:1bb70e2664e1f5b4a2cd376d1eff2f5f8642a502c01fad223fbbd3eeca8413c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
