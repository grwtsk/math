# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TakeWhile.Variante5df29c871cc83b9a56018ab9b602dcd759dbe82a7f977888a104fa145628130

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f29ddd6c6d54610d88e9eb32cf3bfc451776303d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variante5df29c871cc83b9a56018ab9b602dcd759dbe82a7f977888a104fa145628130.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variante5df29c871cc83b9a56018ab9b602dcd759dbe82a7f977888a104fa145628130.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variante5df29c871cc83b9a56018ab9b602dcd759dbe82a7f977888a104fa145628130.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f29ddd6c6d54610d88e9eb32cf3bfc451776303d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variante5df29c871cc83b9a56018ab9b602dcd759dbe82a7f977888a104fa145628130.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variante5df29c871cc83b9a56018ab9b602dcd759dbe82a7f977888a104fa145628130.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Set` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dropWhile_get_zero_not](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variante5df29c871cc83b9a56018ab9b602dcd759dbe82a7f977888a104fa145628130.lean/declarations/dropwhile-get-zero-not--f0071e1035fc311375557f15.md) | 24 | `result-track:f0071e1035fc311375557f15cc1725f052e127a7648898fa863d8dd988f8e3aa` |
| 2 | `theorem` | [dropWhile_eq_nil_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variante5df29c871cc83b9a56018ab9b602dcd759dbe82a7f977888a104fa145628130.lean/declarations/dropwhile-eq-nil-iff--e0514f6144f5877b49673be4.md) | 39 | `result-track:e0514f6144f5877b49673be4fd1cdb5734aec9ae1e2645aac73251ab6ed51362` |
| 3 | `theorem` | [takeWhile_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variante5df29c871cc83b9a56018ab9b602dcd759dbe82a7f977888a104fa145628130.lean/declarations/takewhile-eq-self-iff--1880c81f81c8a4986b46196c.md) | 45 | `result-track:1880c81f81c8a4986b46196c2a4f52109f813fc5ef43e52f77ed86f528a30959` |
| 4 | `theorem` | [takeWhile_eq_nil_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variante5df29c871cc83b9a56018ab9b602dcd759dbe82a7f977888a104fa145628130.lean/declarations/takewhile-eq-nil-iff--203512eb9b13f91f4ca45bc5.md) | 51 | `result-track:203512eb9b13f91f4ca45bc5ba4fe1d932ee89a38b81d25ad5579f4f3574c6ab` |
| 5 | `theorem` | [mem_takeWhile_imp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variante5df29c871cc83b9a56018ab9b602dcd759dbe82a7f977888a104fa145628130.lean/declarations/mem-takewhile-imp--d8e5dd2164d1ac10e7e0334f.md) | 59 | `result-track:d8e5dd2164d1ac10e7e0334f22693e84ed10b8257356fe2bb18b6c76ab50366a` |
| 6 | `theorem` | [takeWhile_takeWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variante5df29c871cc83b9a56018ab9b602dcd759dbe82a7f977888a104fa145628130.lean/declarations/takewhile-takewhile--71f207e0e5b770eea74e881c.md) | 69 | `result-track:71f207e0e5b770eea74e881c0f73decd7a67809914e7d6bc354eb50169b7c617` |
| 7 | `theorem` | [takeWhile_idem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variante5df29c871cc83b9a56018ab9b602dcd759dbe82a7f977888a104fa145628130.lean/declarations/takewhile-idem--55382b98f187635b2d399153.md) | 75 | `result-track:55382b98f187635b2d399153388ea9f382f405def2a7bd97fe6d1f5f3eed74f8` |
| 8 | `lemma` | [find?_eq_head?_dropWhile_not](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variante5df29c871cc83b9a56018ab9b602dcd759dbe82a7f977888a104fa145628130.lean/declarations/find-eq-head-dropwhile-not--8cf176258b2671949645d021.md) | 80 | `result-track:8cf176258b2671949645d021ee963cd48eb7dbac95b47f4e793c89a5e070d299` |
| 9 | `lemma` | [find?_not_eq_head?_dropWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variante5df29c871cc83b9a56018ab9b602dcd759dbe82a7f977888a104fa145628130.lean/declarations/find-not-eq-head-dropwhile--0324d45a09edac6bf9196d78.md) | 95 | `result-track:0324d45a09edac6bf9196d786056013a759d1bcf5dde2f4784307e664bcb7672` |
| 10 | `lemma` | [find?_eq_head_dropWhile_not](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variante5df29c871cc83b9a56018ab9b602dcd759dbe82a7f977888a104fa145628130.lean/declarations/find-eq-head-dropwhile-not--4e27bffdf8ff05c92abc4941.md) | 102 | `result-track:4e27bffdf8ff05c92abc49411a2d4761cd455562b4c75793bfcfecbb66acfd12` |
| 11 | `lemma` | [find?_not_eq_head_dropWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variante5df29c871cc83b9a56018ab9b602dcd759dbe82a7f977888a104fa145628130.lean/declarations/find-not-eq-head-dropwhile--91cf772261b2a863323bb1a5.md) | 106 | `result-track:91cf772261b2a863323bb1a5b2851d0fa992e340841c74500b55990b61587758` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
