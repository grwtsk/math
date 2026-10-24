# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Defs.Variant7c0fe8d3e2a4cd425580be71fd2236a3db26753a7b2b1345c61592fdeffd9fe7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56168388bdc0a46d3e4ed5e945201230591e7f24",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant7c0fe8d3e2a4cd425580be71fd2236a3db26753a7b2b1345c61592fdeffd9fe7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant7c0fe8d3e2a4cd425580be71fd2236a3db26753a7b2b1345c61592fdeffd9fe7.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant7c0fe8d3e2a4cd425580be71fd2236a3db26753a7b2b1345c61592fdeffd9fe7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56168388bdc0a46d3e4ed5e945201230591e7f24`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant7c0fe8d3e2a4cd425580be71fd2236a3db26753a7b2b1345c61592fdeffd9fe7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant7c0fe8d3e2a4cd425580be71fd2236a3db26753a7b2b1345c61592fdeffd9fe7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Bounds.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SetNotation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFounded` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ConditionallyCompleteLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant7c0fe8d3e2a4cd425580be71fd2236a3db26753a7b2b1345c61592fdeffd9fe7.lean/declarations/conditionallycompletelattice--12d3539da078afc52c5eae28.md) | 50 | `declaration-track:12d3539da078afc52c5eae286f5da89b9e8d01ff1ad19c9cd70f028dd76a898d` |
| 2 | `class` | [ConditionallyCompleteLinearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant7c0fe8d3e2a4cd425580be71fd2236a3db26753a7b2b1345c61592fdeffd9fe7.lean/declarations/conditionallycompletelinearorder--3cfd4ac359910b8b71b9cf6b.md) | 69 | `declaration-track:3cfd4ac359910b8b71b9cf6b5e14705fd6771fa6b1b221403c466aec0ef73635` |
| 3 | `class` | [ConditionallyCompleteLinearOrderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant7c0fe8d3e2a4cd425580be71fd2236a3db26753a7b2b1345c61592fdeffd9fe7.lean/declarations/conditionallycompletelinearorderbot--8e09f66b21362b505925a293.md) | 96 | `declaration-track:8e09f66b21362b505925a293f53bdcd5dc9cf4aa1c8ec5a7243c39e56c2072cc` |
| 4 | `abbrev` | [WellFoundedLT.conditionallyCompleteLinearOrderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant7c0fe8d3e2a4cd425580be71fd2236a3db26753a7b2b1345c61592fdeffd9fe7.lean/declarations/wellfoundedlt-conditionallycompletelinearorderbot--cb683bcb51f98ce2f27c8084.md) | 106 | `declaration-track:cb683bcb51f98ce2f27c8084f21efdabccc65a08ebee2f90ef2092273634bf4c` |
| 5 | `def` | [conditionallyCompleteLatticeOfsSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant7c0fe8d3e2a4cd425580be71fd2236a3db26753a7b2b1345c61592fdeffd9fe7.lean/declarations/conditionallycompletelatticeofssup--957347c737adae46a8ab0f39.md) | 149 | `declaration-track:957347c737adae46a8ab0f39c5e8722a9677d59dfb239266a5b173b554c73582` |
| 6 | `def` | [conditionallyCompleteLatticeOfsInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant7c0fe8d3e2a4cd425580be71fd2236a3db26753a7b2b1345c61592fdeffd9fe7.lean/declarations/conditionallycompletelatticeofsinf--097853c416885f58735a9d27.md) | 200 | `declaration-track:097853c416885f58735a9d278ef62c8409f90eb7c0fd2e22fe406f8b3a4ec39e` |
| 7 | `def` | [conditionallyCompleteLatticeOfLatticeOfsSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant7c0fe8d3e2a4cd425580be71fd2236a3db26753a7b2b1345c61592fdeffd9fe7.lean/declarations/conditionallycompletelatticeoflatticeofssup--e46f29e0f8b16d39b7d9d4bf.md) | 239 | `declaration-track:e46f29e0f8b16d39b7d9d4bf2f22ccd7a642bc259a1cf5ee4952ed944a809766` |
| 8 | `def` | [conditionallyCompleteLatticeOfLatticeOfsInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant7c0fe8d3e2a4cd425580be71fd2236a3db26753a7b2b1345c61592fdeffd9fe7.lean/declarations/conditionallycompletelatticeoflatticeofsinf--e9593ac46cef01b608b9d6ec.md) | 251 | `declaration-track:e9593ac46cef01b608b9d6ecdfe4b9410bd99565e5d6e0b97645c015fe7f9669` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
