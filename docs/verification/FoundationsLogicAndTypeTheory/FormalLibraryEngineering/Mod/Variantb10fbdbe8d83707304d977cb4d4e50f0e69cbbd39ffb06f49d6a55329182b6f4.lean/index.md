# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mod.Variantb10fbdbe8d83707304d977cb4d4e50f0e69cbbd39ffb06f49d6a55329182b6f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7078c67b4a939463712e697ce6f4f705af6bb3e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variantb10fbdbe8d83707304d977cb4d4e50f0e69cbbd39ffb06f49d6a55329182b6f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variantb10fbdbe8d83707304d977cb4d4e50f0e69cbbd39ffb06f49d6a55329182b6f4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variantb10fbdbe8d83707304d977cb4d4e50f0e69cbbd39ffb06f49d6a55329182b6f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7078c67b4a939463712e697ce6f4f705af6bb3e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variantb10fbdbe8d83707304d977cb4d4e50f0e69cbbd39ffb06f49d6a55329182b6f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variantb10fbdbe8d83707304d977cb4d4e50f0e69cbbd39ffb06f49d6a55329182b6f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Dvd` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 16; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mul_lt_mul_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variantb10fbdbe8d83707304d977cb4d4e50f0e69cbbd39ffb06f49d6a55329182b6f4.lean/declarations/mul-lt-mul-left--af85447eda45f7988deeb0b2.md) | 39 | `result-track:af85447eda45f7988deeb0b20d624f572fe8bb6655964f7f47decd4041f8bd39` |
| 2 | `theorem` | [mul_lt_mul_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variantb10fbdbe8d83707304d977cb4d4e50f0e69cbbd39ffb06f49d6a55329182b6f4.lean/declarations/mul-lt-mul-right--4ca63733eb5af6a463f1ef64.md) | 48 | `result-track:4ca63733eb5af6a463f1ef642dd659ba1a66c011ee5c2e9683cec375c256792f` |
| 3 | `theorem` | [lt_of_mul_lt_mul_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variantb10fbdbe8d83707304d977cb4d4e50f0e69cbbd39ffb06f49d6a55329182b6f4.lean/declarations/lt-of-mul-lt-mul-left--ff546d8592310d346f107edb.md) | 51 | `result-track:ff546d8592310d346f107edb328a5a581110392c634b7f5f4eba242aa21b721c` |
| 4 | `theorem` | [lt_of_mul_lt_mul_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variantb10fbdbe8d83707304d977cb4d4e50f0e69cbbd39ffb06f49d6a55329182b6f4.lean/declarations/lt-of-mul-lt-mul-right--a902b78a8f672f8dfa066c62.md) | 54 | `result-track:a902b78a8f672f8dfa066c62d6d3c68cfe906573b70f4da1ae59d71629d97aff` |
| 5 | `theorem` | [div_lt_of_lt_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variantb10fbdbe8d83707304d977cb4d4e50f0e69cbbd39ffb06f49d6a55329182b6f4.lean/declarations/div-lt-of-lt-mul--214f5f4abed7fe75d2c83fb7.md) | 58 | `result-track:214f5f4abed7fe75d2c83fb7ef3557453b489349926bb6595d7e5026f6a6fbde` |
| 6 | `theorem` | [mod_mul_right_div_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variantb10fbdbe8d83707304d977cb4d4e50f0e69cbbd39ffb06f49d6a55329182b6f4.lean/declarations/mod-mul-right-div-self--8f29761d4bd4f9c025b852c8.md) | 65 | `result-track:8f29761d4bd4f9c025b852c81a606160548a9784cec1f0ad64a6874ca5dfcbd6` |
| 7 | `theorem` | [mod_mul_left_div_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variantb10fbdbe8d83707304d977cb4d4e50f0e69cbbd39ffb06f49d6a55329182b6f4.lean/declarations/mod-mul-left-div-self--cede0f2ad1cf019dc8fca972.md) | 72 | `result-track:cede0f2ad1cf019dc8fca97208b32d20b003b8bd4043217545564df5a4d3a200` |
| 8 | `theorem` | [mod_mul_right_mod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variantb10fbdbe8d83707304d977cb4d4e50f0e69cbbd39ffb06f49d6a55329182b6f4.lean/declarations/mod-mul-right-mod--fee4710fb1267aeb54bf6ae7.md) | 76 | `result-track:fee4710fb1267aeb54bf6ae7ffff27afe72c67c7d84109ac9d79f2f1f3ee1e8e` |
| 9 | `theorem` | [mod_mul_left_mod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variantb10fbdbe8d83707304d977cb4d4e50f0e69cbbd39ffb06f49d6a55329182b6f4.lean/declarations/mod-mul-left-mod--b94c5e5be4826fc8525634d5.md) | 80 | `result-track:b94c5e5be4826fc8525634d587a6beba1d355bd49956d5f5dbf9bf41cb9b8ca0` |
| 10 | `theorem` | [mod_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variantb10fbdbe8d83707304d977cb4d4e50f0e69cbbd39ffb06f49d6a55329182b6f4.lean/declarations/mod-mul--4c9a827df1732e574352d41e.md) | 83 | `result-track:4c9a827df1732e574352d41ee7764045a7fa553fbad274606269a234161e5e44` |
| 11 | `theorem` | [mod_pow_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variantb10fbdbe8d83707304d977cb4d4e50f0e69cbbd39ffb06f49d6a55329182b6f4.lean/declarations/mod-pow-succ--d4912ee1b013c60c6875ba4c.md) | 87 | `result-track:d4912ee1b013c60c6875ba4c01eee01e71c38fc84645c4f4c489a5ff39311c5f` |
| 12 | `theorem` | [two_pow_mod_two_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variantb10fbdbe8d83707304d977cb4d4e50f0e69cbbd39ffb06f49d6a55329182b6f4.lean/declarations/two-pow-mod-two-eq-zero--5e0bd7b9ba7a8d18056fb9ef.md) | 91 | `result-track:5e0bd7b9ba7a8d18056fb9ef8c9888c311bc4f68cd388c4eaebec7470710ddd8` |
| 13 | `theorem` | [two_pow_mod_two_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variantb10fbdbe8d83707304d977cb4d4e50f0e69cbbd39ffb06f49d6a55329182b6f4.lean/declarations/two-pow-mod-two-eq-one--874a826c74102af9ca286fe4.md) | 94 | `result-track:874a826c74102af9ca286fe41faf1b2666303345f7b280152f7ee220386fc487` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
