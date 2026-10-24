# Verification target: GRWTSK.Algebra.GroupTheory.Semiconj.Varianta0e3fbcee6c916e2df3c29ebd35f4ef5a659a4df1e3af6c48613ce3192488a12

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a2596fbc9c2274e19b65e1ce4aa9f04aca44742",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Semiconj/Varianta0e3fbcee6c916e2df3c29ebd35f4ef5a659a4df1e3af6c48613ce3192488a12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta0e3fbcee6c916e2df3c29ebd35f4ef5a659a4df1e3af6c48613ce3192488a12.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta0e3fbcee6c916e2df3c29ebd35f4ef5a659a4df1e3af6c48613ce3192488a12.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a2596fbc9c2274e19b65e1ce4aa9f04aca44742`.

Source path: `GRWTSK/Algebra/GroupTheory/Semiconj/Varianta0e3fbcee6c916e2df3c29ebd35f4ef5a659a4df1e3af6c48613ce3192488a12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Semiconj/Varianta0e3fbcee6c916e2df3c29ebd35f4ef5a659a4df1e3af6c48613ce3192488a12.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Semiconj.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_right](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta0e3fbcee6c916e2df3c29ebd35f4ef5a659a4df1e3af6c48613ce3192488a12.lean/declarations/add-right--8c0ed5fd600bb183a565db4f.md) | 31 | `result-track:8c0ed5fd600bb183a565db4f19d008062bd1aa1dc0bcdb493f44f6314b77c763` |
| 2 | `theorem` | [add_left](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta0e3fbcee6c916e2df3c29ebd35f4ef5a659a4df1e3af6c48613ce3192488a12.lean/declarations/add-left--159303e40ffdb4c6764befdf.md) | 36 | `result-track:159303e40ffdb4c6764befdf049d0e5460941e90bc987487030329eb2e170cc6` |
| 3 | `theorem` | [neg_right](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta0e3fbcee6c916e2df3c29ebd35f4ef5a659a4df1e3af6c48613ce3192488a12.lean/declarations/neg-right--f5ec35696ea9621520493b43.md) | 44 | `result-track:f5ec35696ea9621520493b4385c33a85b154aaffa1599cc31f8713e37b4d1648` |
| 4 | `theorem` | [neg_right_iff](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta0e3fbcee6c916e2df3c29ebd35f4ef5a659a4df1e3af6c48613ce3192488a12.lean/declarations/neg-right-iff--eb300b05c5ab6f91093aa767.md) | 48 | `result-track:eb300b05c5ab6f91093aa767b811c270fbfab75f053968928bbd779c2dfbecab` |
| 5 | `theorem` | [neg_left](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta0e3fbcee6c916e2df3c29ebd35f4ef5a659a4df1e3af6c48613ce3192488a12.lean/declarations/neg-left--901d357715794c715453e0ee.md) | 51 | `result-track:901d357715794c715453e0eef649a026ea12f716a5a2385582a3079eb2b240dc` |
| 6 | `theorem` | [neg_left_iff](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta0e3fbcee6c916e2df3c29ebd35f4ef5a659a4df1e3af6c48613ce3192488a12.lean/declarations/neg-left-iff--75edc8dd36b6c22b36694e09.md) | 55 | `result-track:75edc8dd36b6c22b36694e0958fc97975ef590f68932ae81c975fe2577e1a618` |
| 7 | `theorem` | [neg_one_right](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta0e3fbcee6c916e2df3c29ebd35f4ef5a659a4df1e3af6c48613ce3192488a12.lean/declarations/neg-one-right--6385224bfbf9f39b78e566c1.md) | 64 | `result-track:6385224bfbf9f39b78e566c1b2d4a0ac3dc92f1f38562910fb61f94d40993aa4` |
| 8 | `theorem` | [neg_one_left](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta0e3fbcee6c916e2df3c29ebd35f4ef5a659a4df1e3af6c48613ce3192488a12.lean/declarations/neg-one-left--2436de0637738e5eee6186f0.md) | 66 | `result-track:2436de0637738e5eee6186f0daddf188abcc1a4cb3b14822877505682a973b60` |
| 9 | `theorem` | [sub_right](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta0e3fbcee6c916e2df3c29ebd35f4ef5a659a4df1e3af6c48613ce3192488a12.lean/declarations/sub-right--4d15f87d376e3ac45e09110c.md) | 75 | `result-track:4d15f87d376e3ac45e09110c09195b24294c31c9c5668fcb00b978db9da55694` |
| 10 | `theorem` | [sub_left](../../../../../mathematics/Algebra/GroupTheory/Semiconj/Varianta0e3fbcee6c916e2df3c29ebd35f4ef5a659a4df1e3af6c48613ce3192488a12.lean/declarations/sub-left--916e59cd6ff025b9b024ae0e.md) | 80 | `result-track:916e59cd6ff025b9b024ae0efc1a3d6192ccf3c669897586e0829d8467ea010e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
