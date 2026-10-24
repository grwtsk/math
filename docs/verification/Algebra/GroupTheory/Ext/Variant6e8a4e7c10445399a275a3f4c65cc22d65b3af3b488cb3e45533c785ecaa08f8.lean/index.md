# Verification target: GRWTSK.Algebra.GroupTheory.Ext.Variant6e8a4e7c10445399a275a3f4c65cc22d65b3af3b488cb3e45533c785ecaa08f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab8b82c50675624f069a0b22cbfc70939ea42db2",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Ext/Variant6e8a4e7c10445399a275a3f4c65cc22d65b3af3b488cb3e45533c785ecaa08f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant6e8a4e7c10445399a275a3f4c65cc22d65b3af3b488cb3e45533c785ecaa08f8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant6e8a4e7c10445399a275a3f4c65cc22d65b3af3b488cb3e45533c785ecaa08f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab8b82c50675624f069a0b22cbfc70939ea42db2`.

Source path: `GRWTSK/Algebra/GroupTheory/Ext/Variant6e8a4e7c10445399a275a3f4c65cc22d65b3af3b488cb3e45533c785ecaa08f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Ext/Variant6e8a4e7c10445399a275a3f4c65cc22d65b3af3b488cb3e45533c785ecaa08f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Group` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Monoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant6e8a4e7c10445399a275a3f4c65cc22d65b3af3b488cb3e45533c785ecaa08f8.lean/declarations/monoid-ext--c8ba14f5d20bbb7eac50edd6.md) | 29 | `result-track:c8ba14f5d20bbb7eac50edd6dc1f13bbc090420a05c38f71e169f162f617bc8e` |
| 2 | `theorem` | [CommMonoid.toMonoid_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant6e8a4e7c10445399a275a3f4c65cc22d65b3af3b488cb3e45533c785ecaa08f8.lean/declarations/commmonoid-tomonoid-injective--c5c99c6d8f8e87155352b713.md) | 45 | `result-track:c5c99c6d8f8e87155352b7135db112aef7a2b5892a733104b470c01cdf487b82` |
| 3 | `theorem` | [CommMonoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant6e8a4e7c10445399a275a3f4c65cc22d65b3af3b488cb3e45533c785ecaa08f8.lean/declarations/commmonoid-ext--bbbc074dd9f407d1e2784902.md) | 53 | `result-track:bbbc074dd9f407d1e27849029938cf75059cb73e282b4f53a7381af556f93ad7` |
| 4 | `theorem` | [LeftCancelMonoid.toMonoid_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant6e8a4e7c10445399a275a3f4c65cc22d65b3af3b488cb3e45533c785ecaa08f8.lean/declarations/leftcancelmonoid-tomonoid-injective--b32abbfeb84351802441014e.md) | 59 | `result-track:b32abbfeb84351802441014eb117635720bee86fe37340032a23050bd765ef9a` |
| 5 | `theorem` | [LeftCancelMonoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant6e8a4e7c10445399a275a3f4c65cc22d65b3af3b488cb3e45533c785ecaa08f8.lean/declarations/leftcancelmonoid-ext--e8f281aca57abbddeccbbc7c.md) | 67 | `result-track:e8f281aca57abbddeccbbc7c8ed562bf68a81f9b7c53482b356dff0ac1e415f6` |
| 6 | `theorem` | [RightCancelMonoid.toMonoid_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant6e8a4e7c10445399a275a3f4c65cc22d65b3af3b488cb3e45533c785ecaa08f8.lean/declarations/rightcancelmonoid-tomonoid-injective--af7f5766d6d7f26e2120dbf8.md) | 74 | `result-track:af7f5766d6d7f26e2120dbf807b6b9b503503333bc9243d66a4aa887b1be202b` |
| 7 | `theorem` | [RightCancelMonoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant6e8a4e7c10445399a275a3f4c65cc22d65b3af3b488cb3e45533c785ecaa08f8.lean/declarations/rightcancelmonoid-ext--74be2aeb2a9cf6bf213df74f.md) | 82 | `result-track:74be2aeb2a9cf6bf213df74f55704a0543129a451f8f312a1bbed9bbf5680091` |
| 8 | `theorem` | [CancelMonoid.toLeftCancelMonoid_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant6e8a4e7c10445399a275a3f4c65cc22d65b3af3b488cb3e45533c785ecaa08f8.lean/declarations/cancelmonoid-toleftcancelmonoid-injective--acd7c41d70cb6e615f67b8d9.md) | 89 | `result-track:acd7c41d70cb6e615f67b8d90f85a939f20eedbf3c14b1d5b16226d813f6fe06` |
| 9 | `theorem` | [CancelMonoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant6e8a4e7c10445399a275a3f4c65cc22d65b3af3b488cb3e45533c785ecaa08f8.lean/declarations/cancelmonoid-ext--301d1456dda85005f8c1bbe1.md) | 97 | `result-track:301d1456dda85005f8c1bbe11b0e79fd539f470eed3337de7c8c489423568bf1` |
| 10 | `theorem` | [CancelCommMonoid.toCommMonoid_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant6e8a4e7c10445399a275a3f4c65cc22d65b3af3b488cb3e45533c785ecaa08f8.lean/declarations/cancelcommmonoid-tocommmonoid-injective--c8165be81e08e69f57d21cf2.md) | 104 | `result-track:c8165be81e08e69f57d21cf236c2e66c720fc6ae4e63c277bfb93fc526a626e3` |
| 11 | `theorem` | [CancelCommMonoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant6e8a4e7c10445399a275a3f4c65cc22d65b3af3b488cb3e45533c785ecaa08f8.lean/declarations/cancelcommmonoid-ext--5e4e95be37d045b8f4f2ef8d.md) | 114 | `result-track:5e4e95be37d045b8f4f2ef8ddbfa9c86081da0624c84e525d7bd87e800797d20` |
| 12 | `theorem` | [DivInvMonoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant6e8a4e7c10445399a275a3f4c65cc22d65b3af3b488cb3e45533c785ecaa08f8.lean/declarations/divinvmonoid-ext--531a3e5047ff0336703ca312.md) | 121 | `result-track:531a3e5047ff0336703ca31283d151b07378d5dca1a89a8ffc5d72f86f023ef7` |
| 13 | `theorem` | [Group.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant6e8a4e7c10445399a275a3f4c65cc22d65b3af3b488cb3e45533c785ecaa08f8.lean/declarations/group-ext--78d3499a909606424671a61d.md) | 144 | `result-track:78d3499a909606424671a61d7856ce5bd5ea93108f34d22e72af34f06a563937` |
| 14 | `theorem` | [CommGroup.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant6e8a4e7c10445399a275a3f4c65cc22d65b3af3b488cb3e45533c785ecaa08f8.lean/declarations/commgroup-ext--3e63d7f3b8c4fdccbc66976f.md) | 157 | `result-track:3e63d7f3b8c4fdccbc66976fdce60a0dfaed535c89054ff5e07f88aef0b5fc37` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
