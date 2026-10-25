# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Find.Variant9fa097bbb7095b432b49a405fe714c055aea41c64d6c4c3387178a1a230fa9bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94f39ceb9c42e353f3a206265845aa4ef104cacc",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Find/Variant9fa097bbb7095b432b49a405fe714c055aea41c64d6c4c3387178a1a230fa9bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant9fa097bbb7095b432b49a405fe714c055aea41c64d6c4c3387178a1a230fa9bb.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant9fa097bbb7095b432b49a405fe714c055aea41c64d6c4c3387178a1a230fa9bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94f39ceb9c42e353f3a206265845aa4ef104cacc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Find/Variant9fa097bbb7095b432b49a405fe714c055aea41c64d6c4c3387178a1a230fa9bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Find/Variant9fa097bbb7095b432b49a405fe714c055aea41c64d6c4c3387178a1a230fa9bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Find` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [decidablePredExistsNat](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant9fa097bbb7095b432b49a405fe714c055aea41c64d6c4c3387178a1a230fa9bb.lean/declarations/decidablepredexistsnat--522b496f5ecaca03c73d8e75.md) | 21 | `declaration-track:522b496f5ecaca03c73d8e758542e1a78be795242dfb78ecf37f936abf0eb0f5` |
| 2 | `def` | [findX](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant9fa097bbb7095b432b49a405fe714c055aea41c64d6c4c3387178a1a230fa9bb.lean/declarations/findx--aebd3a3fe1ac0115fd186bfc.md) | 28 | `declaration-track:aebd3a3fe1ac0115fd186bfc6fd66b2afdf252df91f522650b5fc5fdd32d3bc1` |
| 3 | `def` | [find](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant9fa097bbb7095b432b49a405fe714c055aea41c64d6c4c3387178a1a230fa9bb.lean/declarations/find--4085a9e4546eee314b32e371.md) | 50 | `declaration-track:4085a9e4546eee314b32e3714d66b913afcbc7deae07151f1bda84ac238568a7` |
| 4 | `theorem` | [find_spec](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant9fa097bbb7095b432b49a405fe714c055aea41c64d6c4c3387178a1a230fa9bb.lean/declarations/find-spec--5980e8b9ed106cf5b23fcded.md) | 53 | `result-track:5980e8b9ed106cf5b23fcded963afa8f05543c69080778baa28976aef1a04c2e` |
| 5 | `theorem` | [find_min](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant9fa097bbb7095b432b49a405fe714c055aea41c64d6c4c3387178a1a230fa9bb.lean/declarations/find-min--72c9a5ba76d6c2eef435c965.md) | 56 | `result-track:72c9a5ba76d6c2eef435c9658c32f36c860beb5fe0821b5c4f0bfb4d8313c51a` |
| 6 | `theorem` | [find_min'](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant9fa097bbb7095b432b49a405fe714c055aea41c64d6c4c3387178a1a230fa9bb.lean/declarations/find-min--3b199c674b724cca0ca30710.md) | 59 | `result-track:3b199c674b724cca0ca30710439c7e4324802b02524d4de05c20b457f324dfed` |
| 7 | `theorem` | [find_eq_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant9fa097bbb7095b432b49a405fe714c055aea41c64d6c4c3387178a1a230fa9bb.lean/declarations/find-eq-iff--029aced2dd5206b6abf1a719.md) | 64 | `result-track:029aced2dd5206b6abf1a719f1193ad6d1e0f0a3af5c3595d6f8eb3dc14d7cfe` |
| 8 | `theorem` | [find_lt_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant9fa097bbb7095b432b49a405fe714c055aea41c64d6c4c3387178a1a230fa9bb.lean/declarations/find-lt-iff--555668d7446b441b8fceabed.md) | 72 | `result-track:555668d7446b441b8fceabed840687927176640894a4148e7b8bf92c14cc6dad` |
| 9 | `theorem` | [find_le_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant9fa097bbb7095b432b49a405fe714c055aea41c64d6c4c3387178a1a230fa9bb.lean/declarations/find-le-iff--1b38103f1a6b23b77f2d497b.md) | 77 | `result-track:1b38103f1a6b23b77f2d497b6613df86b598e19ab95cc7bb1bffcccbbc6bd2fc` |
| 10 | `theorem` | [le_find_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant9fa097bbb7095b432b49a405fe714c055aea41c64d6c4c3387178a1a230fa9bb.lean/declarations/le-find-iff--dba90a7c796b66ea6743f928.md) | 81 | `result-track:dba90a7c796b66ea6743f928fa897a4a838397df40f68b360d93921eace5106f` |
| 11 | `theorem` | [lt_find_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant9fa097bbb7095b432b49a405fe714c055aea41c64d6c4c3387178a1a230fa9bb.lean/declarations/lt-find-iff--9267b882905f872ac6203984.md) | 85 | `result-track:9267b882905f872ac62039842f2644057eb3ba8fa520e8b0f888eebf270a2e9e` |
| 12 | `theorem` | [find_eq_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant9fa097bbb7095b432b49a405fe714c055aea41c64d6c4c3387178a1a230fa9bb.lean/declarations/find-eq-one--6e5817cbe3abf775312d8020.md) | 89 | `result-track:6e5817cbe3abf775312d8020e589c8fad9e17fac1ce9a183df6c6ed5d2f89ac8` |
| 13 | `theorem` | [one_le_find](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant9fa097bbb7095b432b49a405fe714c055aea41c64d6c4c3387178a1a230fa9bb.lean/declarations/one-le-find--6b9ac2245e26fce8fc1c2d60.md) | 91 | `result-track:6b9ac2245e26fce8fc1c2d603a55bad31ce0631b0dc9af9f9d30bc680f59884e` |
| 14 | `theorem` | [find_mono](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant9fa097bbb7095b432b49a405fe714c055aea41c64d6c4c3387178a1a230fa9bb.lean/declarations/find-mono--30f2afbc31ae127af66c3a99.md) | 93 | `result-track:30f2afbc31ae127af66c3a99e9423b56697c59fbf6cce603a775f449d8b0dcce` |
| 15 | `theorem` | [find_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant9fa097bbb7095b432b49a405fe714c055aea41c64d6c4c3387178a1a230fa9bb.lean/declarations/find-le--92573a70a70f2154220e7a76.md) | 97 | `result-track:92573a70a70f2154220e7a762f3dc395e6d1a4968355f4eb0e928cf03c9a9bb9` |
| 16 | `theorem` | [find_comp_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Find/Variant9fa097bbb7095b432b49a405fe714c055aea41c64d6c4c3387178a1a230fa9bb.lean/declarations/find-comp-succ--5acb9756882c3299ab0f9f86.md) | 100 | `result-track:5acb9756882c3299ab0f9f8689f1905e9401944b93b5068e66be11075f54a6c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
