# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Enumerate.Variant47ccd307d22e13749334827802ec6c89bf5251d664fca46ab293dbe6346de47c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "277b679924a4a2fa66b9ac16d4ccd5a652706161",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant47ccd307d22e13749334827802ec6c89bf5251d664fca46ab293dbe6346de47c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant47ccd307d22e13749334827802ec6c89bf5251d664fca46ab293dbe6346de47c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant47ccd307d22e13749334827802ec6c89bf5251d664fca46ab293dbe6346de47c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `277b679924a4a2fa66b9ac16d4ccd5a652706161`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant47ccd307d22e13749334827802ec6c89bf5251d664fca46ab293dbe6346de47c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant47ccd307d22e13749334827802ec6c89bf5251d664fca46ab293dbe6346de47c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Nat.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Insert` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [enumerate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant47ccd307d22e13749334827802ec6c89bf5251d664fca46ab293dbe6346de47c.lean/declarations/enumerate--45a25c6277c593039d7bac8c.md) | 40 | `declaration-track:45a25c6277c593039d7bac8c90528b3a9b35074838d0618ff2e8e5a94bb9f5eb` |
| 2 | `theorem` | [enumerate_eq_none_of_sel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant47ccd307d22e13749334827802ec6c89bf5251d664fca46ab293dbe6346de47c.lean/declarations/enumerate-eq-none-of-sel--c3727a7a19a95616c550d3c4.md) | 46 | `result-track:c3727a7a19a95616c550d3c4edf728e9f5726223b65bed20ea90395ccd6ab193` |
| 3 | `theorem` | [enumerate_eq_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant47ccd307d22e13749334827802ec6c89bf5251d664fca46ab293dbe6346de47c.lean/declarations/enumerate-eq-none--06b893eda14ff77653d947be.md) | 50 | `result-track:06b893eda14ff77653d947bef502d92318db0abf3fe964ee8dc8c5921ca451b5` |
| 4 | `theorem` | [enumerate_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant47ccd307d22e13749334827802ec6c89bf5251d664fca46ab293dbe6346de47c.lean/declarations/enumerate-mem--00863c976f75ea2cca1f43ac.md) | 64 | `result-track:00863c976f75ea2cca1f43acc7a5714e91515174328ebc319dbf6413f8b937ad` |
| 5 | `theorem` | [enumerate_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant47ccd307d22e13749334827802ec6c89bf5251d664fca46ab293dbe6346de47c.lean/declarations/enumerate-inj--cdb8e8e862762b389041921e.md) | 76 | `result-track:cdb8e8e862762b389041921efb00bbd0fd0fe974ca3f5ede761a0ddc26b4dbea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
