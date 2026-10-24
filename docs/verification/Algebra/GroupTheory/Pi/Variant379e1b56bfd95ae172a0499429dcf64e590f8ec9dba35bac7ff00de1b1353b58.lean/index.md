# Verification target: GRWTSK.Algebra.GroupTheory.Pi.Variant379e1b56bfd95ae172a0499429dcf64e590f8ec9dba35bac7ff00de1b1353b58

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0383d6e8c1d786111c72334117469365de26d969",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Pi/Variant379e1b56bfd95ae172a0499429dcf64e590f8ec9dba35bac7ff00de1b1353b58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant379e1b56bfd95ae172a0499429dcf64e590f8ec9dba35bac7ff00de1b1353b58.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant379e1b56bfd95ae172a0499429dcf64e590f8ec9dba35bac7ff00de1b1353b58.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0383d6e8c1d786111c72334117469365de26d969`.

Source path: `GRWTSK/Algebra/GroupTheory/Pi/Variant379e1b56bfd95ae172a0499429dcf64e590f8ec9dba35bac7ff00de1b1353b58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Pi/Variant379e1b56bfd95ae172a0499429dcf64e590f8ec9dba35bac7ff00de1b1353b58.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [orderedCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant379e1b56bfd95ae172a0499429dcf64e590f8ec9dba35bac7ff00de1b1353b58.lean/declarations/orderedcommmonoid--2d134f783e3f2bccf12c1f70.md) | 36 | `declaration-track:2d134f783e3f2bccf12c1f704f3dd30e523797a987b88efc871d02a72c46b80f` |
| 2 | `instance` | [existsMulOfLe](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant379e1b56bfd95ae172a0499429dcf64e590f8ec9dba35bac7ff00de1b1353b58.lean/declarations/existsmulofle--609f6a2e2e15e74b019a20b8.md) | 44 | `declaration-track:609f6a2e2e15e74b019a20b8691d61c27e6955e5cd485b96e6f75192791eb39f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant379e1b56bfd95ae172a0499429dcf64e590f8ec9dba35bac7ff00de1b1353b58.lean/declarations/instance--5ce8c083372e98cbd374cddd.md) | 56 | `declaration-track:5ce8c083372e98cbd374cddde42b6d49417b483ef8a0ebddbd4805feda8b6ef6` |
| 4 | `instance` | [orderedCancelCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant379e1b56bfd95ae172a0499429dcf64e590f8ec9dba35bac7ff00de1b1353b58.lean/declarations/orderedcancelcommmonoid--27c410fc40dff0813923443c.md) | 62 | `declaration-track:27c410fc40dff0813923443cdcc558b29333167aa6f4a9c9eecd43b618ec1234` |
| 5 | `instance` | [orderedCommGroup](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant379e1b56bfd95ae172a0499429dcf64e590f8ec9dba35bac7ff00de1b1353b58.lean/declarations/orderedcommgroup--79587bad1c93810a779d1a3a.md) | 87 | `declaration-track:79587bad1c93810a779d1a3a2e9135671aa51a711ee9ca1df0e9fda1cf32e79d` |
| 6 | `instance` | [orderedSemiring](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant379e1b56bfd95ae172a0499429dcf64e590f8ec9dba35bac7ff00de1b1353b58.lean/declarations/orderedsemiring--e8ebebdd5f2cdfd4b5b2adfd.md) | 97 | `declaration-track:e8ebebdd5f2cdfd4b5b2adfd254c5b6e301a99320add8a756273724d3ca43748` |
| 7 | `instance` | [orderedCommSemiring](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant379e1b56bfd95ae172a0499429dcf64e590f8ec9dba35bac7ff00de1b1353b58.lean/declarations/orderedcommsemiring--2620d567d3245145190ba4f8.md) | 106 | `declaration-track:2620d567d3245145190ba4f8f7000b11e16dbac7cf817ce52714b3acb8ac58ec` |
| 8 | `instance` | [orderedRing](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant379e1b56bfd95ae172a0499429dcf64e590f8ec9dba35bac7ff00de1b1353b58.lean/declarations/orderedring--a3b31ff76b8aa34c5710aa76.md) | 110 | `declaration-track:a3b31ff76b8aa34c5710aa761dbff4a9aa0c4966e749426645235ccdde10e491` |
| 9 | `instance` | [orderedCommRing](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant379e1b56bfd95ae172a0499429dcf64e590f8ec9dba35bac7ff00de1b1353b58.lean/declarations/orderedcommring--4445a838d10fe4e389e42e49.md) | 114 | `declaration-track:4445a838d10fe4e389e42e4904a4172d3856d7fd0235e964ed50e70e1a1211df` |
| 10 | `theorem` | [one_le_const_of_one_le](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant379e1b56bfd95ae172a0499429dcf64e590f8ec9dba35bac7ff00de1b1353b58.lean/declarations/one-le-const-of-one-le--e6d29ec290823070db2cc602.md) | 125 | `result-track:e6d29ec290823070db2cc602694123464b07b57daf43607616d36b26f0ac9673` |
| 11 | `theorem` | [const_le_one_of_le_one](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant379e1b56bfd95ae172a0499429dcf64e590f8ec9dba35bac7ff00de1b1353b58.lean/declarations/const-le-one-of-le-one--9fc541bdb431372cb62dcb76.md) | 130 | `result-track:9fc541bdb431372cb62dcb7699b69cc8ed2ddd0e92eaa9fca216fd545ccdb788` |
| 12 | `theorem` | [one_le_const](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant379e1b56bfd95ae172a0499429dcf64e590f8ec9dba35bac7ff00de1b1353b58.lean/declarations/one-le-const--022419b3d1f54b97e14df0cc.md) | 137 | `result-track:022419b3d1f54b97e14df0ccd97671194c76d3fc1be746d6346ac23f1e59c2fb` |
| 13 | `theorem` | [one_lt_const](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant379e1b56bfd95ae172a0499429dcf64e590f8ec9dba35bac7ff00de1b1353b58.lean/declarations/one-lt-const--877c0492eeab7aa6c453afd6.md) | 143 | `result-track:877c0492eeab7aa6c453afd605ff97b225191c55aca67a2445a70598956ca3d9` |
| 14 | `theorem` | [const_le_one](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant379e1b56bfd95ae172a0499429dcf64e590f8ec9dba35bac7ff00de1b1353b58.lean/declarations/const-le-one--e438c393da4102621f7a017d.md) | 149 | `result-track:e438c393da4102621f7a017dc4ae3942a7b8021ad5be8e9a68d5a5048be11f5e` |
| 15 | `theorem` | [const_lt_one](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant379e1b56bfd95ae172a0499429dcf64e590f8ec9dba35bac7ff00de1b1353b58.lean/declarations/const-lt-one--e259f3abb1a80e4692d42802.md) | 155 | `result-track:e259f3abb1a80e4692d42802202690d24ad77d5610f9f5e790101b8b514d46e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
