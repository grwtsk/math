# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Canonicalize.Variantae6b21add48f8bb686776c9ede738f62215676f6200821814326aafc2d37b85b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6984d90d23f0c5c250157849ad7ef19b921e27ae",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variantae6b21add48f8bb686776c9ede738f62215676f6200821814326aafc2d37b85b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variantae6b21add48f8bb686776c9ede738f62215676f6200821814326aafc2d37b85b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variantae6b21add48f8bb686776c9ede738f62215676f6200821814326aafc2d37b85b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6984d90d23f0c5c250157849ad7ef19b921e27ae`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variantae6b21add48f8bb686776c9ede738f62215676f6200821814326aafc2d37b85b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variantae6b21add48f8bb686776c9ede738f62215676f6200821814326aafc2d37b85b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.PropLemmas` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [BitVec.eq_to_beq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variantae6b21add48f8bb686776c9ede738f62215676f6200821814326aafc2d37b85b.lean/declarations/bitvec-eq-to-beq--4ac289e6844c8e531a8920a3.md) | 33 | `result-track:4ac289e6844c8e531a8920a34f9407be8b52be9cc171fbb28584da33273df93d` |
| 2 | `theorem` | [BitVec.ne_to_beq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variantae6b21add48f8bb686776c9ede738f62215676f6200821814326aafc2d37b85b.lean/declarations/bitvec-ne-to-beq--4d698186980b567118b37970.md) | 37 | `result-track:4d698186980b567118b3797036c11c472c0035bab99d6271f5feeb9b0f898180` |
| 3 | `theorem` | [Bool.eq_to_beq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variantae6b21add48f8bb686776c9ede738f62215676f6200821814326aafc2d37b85b.lean/declarations/bool-eq-to-beq--e02ef7ecc96e0ce29a79b827.md) | 40 | `result-track:e02ef7ecc96e0ce29a79b8278777c8b2ba7c0ea6a98561002e48042cd4deb221` |
| 4 | `theorem` | [BitVec.bne_to_beq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variantae6b21add48f8bb686776c9ede738f62215676f6200821814326aafc2d37b85b.lean/declarations/bitvec-bne-to-beq--76b840412b5f3b4969015880.md) | 43 | `result-track:76b840412b5f3b49690158803ba16ccf1ad7bbb5929cf22b54ce7e27fb52adaa` |
| 5 | `theorem` | [Bool.bne_to_beq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variantae6b21add48f8bb686776c9ede738f62215676f6200821814326aafc2d37b85b.lean/declarations/bool-bne-to-beq--3a22a9d4c141577b571c09a6.md) | 47 | `result-track:3a22a9d4c141577b571c09a64f9bfac505cf25606093b7a7fbaaf095dc1a1416` |
| 6 | `theorem` | [Bool.neg_to_not](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variantae6b21add48f8bb686776c9ede738f62215676f6200821814326aafc2d37b85b.lean/declarations/bool-neg-to-not--e4be7dce0c9913caab1565ca.md) | 51 | `result-track:e4be7dce0c9913caab1565ca66559a54178e9d56b24f3311eaab3be3dc12664e` |
| 7 | `theorem` | [Bool.ne_to_beq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variantae6b21add48f8bb686776c9ede738f62215676f6200821814326aafc2d37b85b.lean/declarations/bool-ne-to-beq--1765e15d2a8cc6217187d424.md) | 55 | `result-track:1765e15d2a8cc6217187d424073e7502208380a57ed4217fe6f4ee562a6c995b` |
| 8 | `theorem` | [Bool.imp_to_or](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variantae6b21add48f8bb686776c9ede738f62215676f6200821814326aafc2d37b85b.lean/declarations/bool-imp-to-or--47b94eed01c133ad7a7b9947.md) | 59 | `result-track:47b94eed01c133ad7a7b994758d39f64542c38fb538bdcf712cc6e13eeebc770` |
| 9 | `theorem` | [Bool.or_to_or](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variantae6b21add48f8bb686776c9ede738f62215676f6200821814326aafc2d37b85b.lean/declarations/bool-or-to-or--66c8c72b57321cd51e3deef0.md) | 64 | `result-track:66c8c72b57321cd51e3deef0b0e7b6ded21fb6f19879467be3331700e9e1cc0a` |
| 10 | `theorem` | [Bool.and_to_and](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variantae6b21add48f8bb686776c9ede738f62215676f6200821814326aafc2d37b85b.lean/declarations/bool-and-to-and--a24f2b0cf2d18c87a0b858ca.md) | 68 | `result-track:a24f2b0cf2d18c87a0b858cab674a2c0eaf8fc855c4c68e633a5c165e889a498` |
| 11 | `theorem` | [Bool.iff_to_beq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variantae6b21add48f8bb686776c9ede738f62215676f6200821814326aafc2d37b85b.lean/declarations/bool-iff-to-beq--0191d98a39777b7c4953eec0.md) | 72 | `result-track:0191d98a39777b7c4953eec0463ec44c2893e4c59bd3b5f9beece3442dd65e83` |
| 12 | `theorem` | [Bool.eq_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variantae6b21add48f8bb686776c9ede738f62215676f6200821814326aafc2d37b85b.lean/declarations/bool-eq-false--84577150f2100c062da49553.md) | 77 | `result-track:84577150f2100c062da49553c9262e34b251fb8889cbfe8e4acf4f7aa47aec03` |
| 13 | `theorem` | [Bool.decide_eq_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variantae6b21add48f8bb686776c9ede738f62215676f6200821814326aafc2d37b85b.lean/declarations/bool-decide-eq-true--8b5b51ca3b36b34fae8d0937.md) | 81 | `result-track:8b5b51ca3b36b34fae8d0937946929c364a07f0dd8a6d453f2b6487372e0fcc0` |
| 14 | `theorem` | [BitVec.lt_ult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variantae6b21add48f8bb686776c9ede738f62215676f6200821814326aafc2d37b85b.lean/declarations/bitvec-lt-ult--433bf32b1a1bd0ce344d050c.md) | 88 | `result-track:433bf32b1a1bd0ce344d050cb8d70eb92eeb6f7aed11ab0071f7e8021f8db850` |
| 15 | `theorem` | [Bool.or_elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variantae6b21add48f8bb686776c9ede738f62215676f6200821814326aafc2d37b85b.lean/declarations/bool-or-elim--693ca5d7743dfe9c071240a2.md) | 93 | `result-track:693ca5d7743dfe9c071240a2330b3e4ff921f9e93860e27ffb31f47a9e07a886` |
| 16 | `theorem` | [BitVec.or_elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variantae6b21add48f8bb686776c9ede738f62215676f6200821814326aafc2d37b85b.lean/declarations/bitvec-or-elim--c42af0f660adda1ecac6d4dd.md) | 95 | `result-track:c42af0f660adda1ecac6d4dda1228f7767885e42d6b7cdb845436be0b618772e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
