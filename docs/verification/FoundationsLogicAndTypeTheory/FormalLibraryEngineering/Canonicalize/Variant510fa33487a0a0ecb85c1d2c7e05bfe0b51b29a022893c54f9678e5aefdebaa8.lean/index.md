# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Canonicalize.Variant510fa33487a0a0ecb85c1d2c7e05bfe0b51b29a022893c54f9678e5aefdebaa8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a46459f44f40776d1cec162b75cd4554da3cb6c",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variant510fa33487a0a0ecb85c1d2c7e05bfe0b51b29a022893c54f9678e5aefdebaa8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variant510fa33487a0a0ecb85c1d2c7e05bfe0b51b29a022893c54f9678e5aefdebaa8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variant510fa33487a0a0ecb85c1d2c7e05bfe0b51b29a022893c54f9678e5aefdebaa8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a46459f44f40776d1cec162b75cd4554da3cb6c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variant510fa33487a0a0ecb85c1d2c7e05bfe0b51b29a022893c54f9678e5aefdebaa8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variant510fa33487a0a0ecb85c1d2c7e05bfe0b51b29a022893c54f9678e5aefdebaa8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.PropLemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [BitVec.eq_to_beq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variant510fa33487a0a0ecb85c1d2c7e05bfe0b51b29a022893c54f9678e5aefdebaa8.lean/declarations/bitvec-eq-to-beq--2d112dd25001c13cf489ff58.md) | 25 | `result-track:2d112dd25001c13cf489ff58b975de956c5e47dfa61ea37344c4f1dffe20681a` |
| 2 | `theorem` | [BitVec.ne_to_beq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variant510fa33487a0a0ecb85c1d2c7e05bfe0b51b29a022893c54f9678e5aefdebaa8.lean/declarations/bitvec-ne-to-beq--414090c6a19d563bebe877e5.md) | 29 | `result-track:414090c6a19d563bebe877e59c86034b378270247e2c8fd8326363fc92b3e419` |
| 3 | `theorem` | [Bool.eq_to_beq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variant510fa33487a0a0ecb85c1d2c7e05bfe0b51b29a022893c54f9678e5aefdebaa8.lean/declarations/bool-eq-to-beq--0053d038b43b99d7c83407ad.md) | 32 | `result-track:0053d038b43b99d7c83407ad041f0904418c889c2e353811eaf38899a22256bf` |
| 4 | `theorem` | [BitVec.bne_to_beq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variant510fa33487a0a0ecb85c1d2c7e05bfe0b51b29a022893c54f9678e5aefdebaa8.lean/declarations/bitvec-bne-to-beq--fbeb20bfa0ace280038c8d60.md) | 35 | `result-track:fbeb20bfa0ace280038c8d6093354f022aa3427e08089ecab0bf5a45d1f5f8d8` |
| 5 | `theorem` | [Bool.bne_to_beq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variant510fa33487a0a0ecb85c1d2c7e05bfe0b51b29a022893c54f9678e5aefdebaa8.lean/declarations/bool-bne-to-beq--893085c90979ec865a289eb1.md) | 39 | `result-track:893085c90979ec865a289eb183773937fe70fb1c411218eaac5becd066d79b25` |
| 6 | `theorem` | [Bool.neg_to_not](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variant510fa33487a0a0ecb85c1d2c7e05bfe0b51b29a022893c54f9678e5aefdebaa8.lean/declarations/bool-neg-to-not--c30f4d34bdbeea275f0af40d.md) | 43 | `result-track:c30f4d34bdbeea275f0af40dfb0041b8ec8c2060c879975cfeb6f891b1e49d11` |
| 7 | `theorem` | [Bool.ne_to_beq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variant510fa33487a0a0ecb85c1d2c7e05bfe0b51b29a022893c54f9678e5aefdebaa8.lean/declarations/bool-ne-to-beq--3a136494d44e218b3838f7e7.md) | 47 | `result-track:3a136494d44e218b3838f7e778bb9e24384e148d108ede4c50f91f5797943e92` |
| 8 | `theorem` | [Bool.imp_to_or](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variant510fa33487a0a0ecb85c1d2c7e05bfe0b51b29a022893c54f9678e5aefdebaa8.lean/declarations/bool-imp-to-or--03013a6e4a6cf7196ed5079f.md) | 51 | `result-track:03013a6e4a6cf7196ed5079fb98a3d6146deb05d75bca71e991c223ba0a7d3f4` |
| 9 | `theorem` | [Bool.or_to_or](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variant510fa33487a0a0ecb85c1d2c7e05bfe0b51b29a022893c54f9678e5aefdebaa8.lean/declarations/bool-or-to-or--7c006bc457a7de9deb38e917.md) | 56 | `result-track:7c006bc457a7de9deb38e91702348551d6412c45301a413dc6dc45187f408ea8` |
| 10 | `theorem` | [Bool.and_to_and](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variant510fa33487a0a0ecb85c1d2c7e05bfe0b51b29a022893c54f9678e5aefdebaa8.lean/declarations/bool-and-to-and--e2294eafc0bfab4ad92113b6.md) | 60 | `result-track:e2294eafc0bfab4ad92113b6a32dd4b506338943566837b512289bcc46c32d88` |
| 11 | `theorem` | [Bool.iff_to_beq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variant510fa33487a0a0ecb85c1d2c7e05bfe0b51b29a022893c54f9678e5aefdebaa8.lean/declarations/bool-iff-to-beq--dadc796dc0443cb3ae3a4545.md) | 64 | `result-track:dadc796dc0443cb3ae3a4545c7c4e654d10203d324c2f473a3063d6fbcc9633e` |
| 12 | `theorem` | [Bool.eq_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variant510fa33487a0a0ecb85c1d2c7e05bfe0b51b29a022893c54f9678e5aefdebaa8.lean/declarations/bool-eq-false--c0c84edafdf08897ffaceb1a.md) | 69 | `result-track:c0c84edafdf08897ffaceb1a223d7e56fc0be0b2266d59b44bd3dd3d6f922027` |
| 13 | `theorem` | [Bool.decide_eq_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variant510fa33487a0a0ecb85c1d2c7e05bfe0b51b29a022893c54f9678e5aefdebaa8.lean/declarations/bool-decide-eq-true--e23df86468d54d63d2b718d1.md) | 73 | `result-track:e23df86468d54d63d2b718d139284cd496954a28d620be415a95f22ada80abca` |
| 14 | `theorem` | [BitVec.lt_ult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variant510fa33487a0a0ecb85c1d2c7e05bfe0b51b29a022893c54f9678e5aefdebaa8.lean/declarations/bitvec-lt-ult--8354b84e8fff9f1458afd2c4.md) | 80 | `result-track:8354b84e8fff9f1458afd2c47b6128c6c5232428156f0521e5fc1ac0cb439334` |
| 15 | `theorem` | [Bool.or_elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variant510fa33487a0a0ecb85c1d2c7e05bfe0b51b29a022893c54f9678e5aefdebaa8.lean/declarations/bool-or-elim--8460aa983c5d50aa00518944.md) | 85 | `result-track:8460aa983c5d50aa005189447b7469240a941b439721fadd6b1b5aa22dcc7324` |
| 16 | `theorem` | [BitVec.or_elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalize/Variant510fa33487a0a0ecb85c1d2c7e05bfe0b51b29a022893c54f9678e5aefdebaa8.lean/declarations/bitvec-or-elim--cfd627c8248e755c8f249a0a.md) | 87 | `result-track:cfd627c8248e755c8f249a0a2e8206fd09c9a30d4771c4e52beb53ec3b8debac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
