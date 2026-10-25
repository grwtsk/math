# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Inv.Variant143a160ab620417ad7209da6527d564ea8e727cc492d2f1a884c5c33a6cb31f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5063980ee575a982d365bb2764eaeab15c3e1706",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant143a160ab620417ad7209da6527d564ea8e727cc492d2f1a884c5c33a6cb31f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant143a160ab620417ad7209da6527d564ea8e727cc492d2f1a884c5c33a6cb31f2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant143a160ab620417ad7209da6527d564ea8e727cc492d2f1a884c5c33a6cb31f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5063980ee575a982d365bb2764eaeab15c3e1706`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant143a160ab620417ad7209da6527d564ea8e727cc492d2f1a884c5c33a6cb31f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant143a160ab620417ad7209da6527d564ea8e727cc492d2f1a884c5c33a6cb31f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Int.Order` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Rat.Lemmas` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invAtPrec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant143a160ab620417ad7209da6527d564ea8e727cc492d2f1a884c5c33a6cb31f2.lean/declarations/invatprec--27463692031d7a6cf3a30368.md) | 38 | `declaration-track:27463692031d7a6cf3a3036858b914e0c29cc2926e2cc4bb7c9076409b3591ee` |
| 2 | `def` | [divAtPrec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant143a160ab620417ad7209da6527d564ea8e727cc492d2f1a884c5c33a6cb31f2.lean/declarations/divatprec--a70af3e8e0363805b1c347c6.md) | 48 | `declaration-track:a70af3e8e0363805b1c347c630fd5df1a3a6cf1fccbc3ec9fc98ca7ce336a543` |
| 3 | `theorem` | [invAtPrec_eq_divAtPrec_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant143a160ab620417ad7209da6527d564ea8e727cc492d2f1a884c5c33a6cb31f2.lean/declarations/invatprec-eq-divatprec-one--46798f07ee4cd998cd3208be.md) | 54 | `result-track:46798f07ee4cd998cd3208be98240ee772c3b274f1ce4cf53dbfdee63317f1a1` |
| 4 | `theorem` | [eq_toDyadic_of_precision_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant143a160ab620417ad7209da6527d564ea8e727cc492d2f1a884c5c33a6cb31f2.lean/declarations/eq-todyadic-of-precision-le--3993f3b84350d2da941bd4b4.md) | 68 | `result-track:3993f3b84350d2da941bd4b444feab0006e020c3595f3d84b292cc7ac8503feb` |
| 5 | `theorem` | [divAtPrec_mul_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant143a160ab620417ad7209da6527d564ea8e727cc492d2f1a884c5c33a6cb31f2.lean/declarations/divatprec-mul-le--86135e28478a72e4ec2841c4.md) | 103 | `result-track:86135e28478a72e4ec2841c4d839b4853034dbc84e53275218320e45f225f054` |
| 6 | `theorem` | [lt_divAtPrec_add_inc_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant143a160ab620417ad7209da6527d564ea8e727cc492d2f1a884c5c33a6cb31f2.lean/declarations/lt-divatprec-add-inc-mul--f61b191e555e728b580749ac.md) | 118 | `result-track:f61b191e555e728b580749acd3b056a132e9db545abd692570871351d1a9c675` |
| 7 | `theorem` | [eq_divAtPrec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant143a160ab620417ad7209da6527d564ea8e727cc492d2f1a884c5c33a6cb31f2.lean/declarations/eq-divatprec--aa2db48e38334621982a0e7e.md) | 138 | `result-track:aa2db48e38334621982a0e7ea7c10c62c000a1b02835f8cfbc1cf43c62d400f8` |
| 8 | `theorem` | [invAtPrec_mul_le_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant143a160ab620417ad7209da6527d564ea8e727cc492d2f1a884c5c33a6cb31f2.lean/declarations/invatprec-mul-le-one--40fcde1fc544eb86fd713be9.md) | 167 | `result-track:40fcde1fc544eb86fd713be985a8fad95e385402c94b9160b0f96da32a9d6aed` |
| 9 | `theorem` | [one_lt_invAtPrec_add_inc_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant143a160ab620417ad7209da6527d564ea8e727cc492d2f1a884c5c33a6cb31f2.lean/declarations/one-lt-invatprec-add-inc-mul--a3e4ea651f430ad057593959.md) | 173 | `result-track:a3e4ea651f430ad05759395970ce502ecc9dd0ffe753b5e7220afefe717b607c` |
| 10 | `theorem` | [eq_invAtPrec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant143a160ab620417ad7209da6527d564ea8e727cc492d2f1a884c5c33a6cb31f2.lean/declarations/eq-invatprec--bae0fe2fc2bc4ed53f29ad4a.md) | 182 | `result-track:bae0fe2fc2bc4ed53f29ad4ac0f8af1030eae5ae70926c67be2226c39aca6d39` |
| 11 | `theorem` | [mul_invAtPrec_lt_divAtPrec_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant143a160ab620417ad7209da6527d564ea8e727cc492d2f1a884c5c33a6cb31f2.lean/declarations/mul-invatprec-lt-divatprec-add--f2f5a4f8c8ce7fd19b131d2e.md) | 199 | `result-track:f2f5a4f8c8ce7fd19b131d2ebd041f13b52b1933fd05df8da4ebe03a7b3b7e8e` |
| 12 | `theorem` | [divAtPrec_sub_mul_lt_mul_invAtPrec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant143a160ab620417ad7209da6527d564ea8e727cc492d2f1a884c5c33a6cb31f2.lean/declarations/divatprec-sub-mul-lt-mul-invatprec--da3735754a5241352be8e397.md) | 220 | `result-track:da3735754a5241352be8e397f3d8d7ffc493f3567ca755c060daf92cfd62c790` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
