# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Core.Variant0232f8e54d46e1f57901c305f2785e316bfb9cf3c2a3517eaccb75d371861c26

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c86701a91392da85363329d4be5b002aceef0f6b",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant0232f8e54d46e1f57901c305f2785e316bfb9cf3c2a3517eaccb75d371861c26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant0232f8e54d46e1f57901c305f2785e316bfb9cf3c2a3517eaccb75d371861c26.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant0232f8e54d46e1f57901c305f2785e316bfb9cf3c2a3517eaccb75d371861c26.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c86701a91392da85363329d4be5b002aceef0f6b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant0232f8e54d46e1f57901c305f2785e316bfb9cf3c2a3517eaccb75d371861c26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant0232f8e54d46e1f57901c305f2785e316bfb9cf3c2a3517eaccb75d371861c26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Mathport.Rename` — import line 8; external provider; requires a separately pinned dependency.
- `Std.Classes.SetNotation` — import line 9; external provider; requires a separately pinned dependency.
- `Std.Classes.Dvd` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Relation.Rfl` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Relation.Symm` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Relation.Trans` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Prod.mk.injArrow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant0232f8e54d46e1f57901c305f2785e316bfb9cf3c2a3517eaccb75d371861c26.lean/declarations/prod-mk-injarrow--d64d4773f2fc5865855f8179.md) | 69 | `declaration-track:d64d4773f2fc5865855f81791fa2cf145a778cd2ea31fe0e98db1592ee6d6c31` |
| 2 | `def` | [PProd.mk.injArrow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant0232f8e54d46e1f57901c305f2785e316bfb9cf3c2a3517eaccb75d371861c26.lean/declarations/pprod-mk-injarrow--70fcf4f020883320d3df9f1c.md) | 73 | `declaration-track:70fcf4f020883320d3df9f1c8990013af2a801c2269ba6da0776430f7b0a28c5` |
| 3 | `class` | [AndThen'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant0232f8e54d46e1f57901c305f2785e316bfb9cf3c2a3517eaccb75d371861c26.lean/declarations/andthen--1fea37d2a0f8a45bb36ada53.md) | 134 | `declaration-track:1fea37d2a0f8a45bb36ada53690d7eea9be9fd71388588afdc6f0857a8438727` |
| 4 | `def` | [Std.Priority.default](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant0232f8e54d46e1f57901c305f2785e316bfb9cf3c2a3517eaccb75d371861c26.lean/declarations/std-priority-default--26a111d9eace03b68b5878bc.md) | 162 | `declaration-track:26a111d9eace03b68b5878bc6c2ad162361f113d0d432098ac91455fdf52fab7` |
| 5 | `def` | [Std.Priority.max](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant0232f8e54d46e1f57901c305f2785e316bfb9cf3c2a3517eaccb75d371861c26.lean/declarations/std-priority-max--7190efd110ddac30cab7ef5e.md) | 163 | `declaration-track:7190efd110ddac30cab7ef5e924d1a0da0a50933ade181a4c3c2685632e80bbd` |
| 6 | `def` | [Nat.prio](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant0232f8e54d46e1f57901c305f2785e316bfb9cf3c2a3517eaccb75d371861c26.lean/declarations/nat-prio--a3a754b0b656bb7038058578.md) | 165 | `declaration-track:a3a754b0b656bb7038058578415259241e95df812c5fa40c6bb9f4f889900514` |
| 7 | `def` | [Std.Prec.max](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant0232f8e54d46e1f57901c305f2785e316bfb9cf3c2a3517eaccb75d371861c26.lean/declarations/std-prec-max--c12cc0f4ffd5d08351ab8680.md) | 166 | `declaration-track:c12cc0f4ffd5d08351ab86803cfcb9f4f99ef1074c227ffc1e420e9314970c0d` |
| 8 | `def` | [Std.Prec.arrow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant0232f8e54d46e1f57901c305f2785e316bfb9cf3c2a3517eaccb75d371861c26.lean/declarations/std-prec-arrow--19fd70a7e3cc105490a46cf2.md) | 167 | `declaration-track:19fd70a7e3cc105490a46cf2e94edeba6dcb97e933aa237d96fb7be96be60db7` |
| 9 | `def` | [Std.Prec.maxPlus](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant0232f8e54d46e1f57901c305f2785e316bfb9cf3c2a3517eaccb75d371861c26.lean/declarations/std-prec-maxplus--ce5b1914f785a82c9add290b.md) | 169 | `declaration-track:ce5b1914f785a82c9add290bd13ea169f6bee9b235a0893aa6314a797f128c00` |
| 10 | `def` | [I](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant0232f8e54d46e1f57901c305f2785e316bfb9cf3c2a3517eaccb75d371861c26.lean/declarations/i--2ff4e12de89524698e38fc84.md) | 180 | `declaration-track:2ff4e12de89524698e38fc84c96dd52c514c51c5e6cfaa08aca419d51586a199` |
| 11 | `def` | [K](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant0232f8e54d46e1f57901c305f2785e316bfb9cf3c2a3517eaccb75d371861c26.lean/declarations/k--ad93ea9e1cf78c9c557155b4.md) | 181 | `declaration-track:ad93ea9e1cf78c9c557155b49f377ddb527a6eade5aa329fee8e50dc471824ef` |
| 12 | `def` | [S](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant0232f8e54d46e1f57901c305f2785e316bfb9cf3c2a3517eaccb75d371861c26.lean/declarations/s--f090700052e1622fe14255d0.md) | 182 | `declaration-track:f090700052e1622fe14255d05e86b9d5c4485e52b5f6de27bfb58aa7b108c155` |
| 13 | `inductive` | [BinTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant0232f8e54d46e1f57901c305f2785e316bfb9cf3c2a3517eaccb75d371861c26.lean/declarations/bintree--6f7646d57fc8621bb3f14d99.md) | 186 | `declaration-track:6f7646d57fc8621bb3f14d996b921f536fb946bf40d01bc190285eb05630decb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
