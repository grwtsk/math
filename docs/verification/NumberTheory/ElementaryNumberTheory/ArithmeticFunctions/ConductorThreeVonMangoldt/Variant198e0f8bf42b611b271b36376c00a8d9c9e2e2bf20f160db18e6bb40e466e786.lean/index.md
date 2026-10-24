# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ConductorThreeVonMangoldt.Variant198e0f8bf42b611b271b36376c00a8d9c9e2e2bf20f160db18e6bb40e466e786

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3aaf4b6d518f3c2a509f85a52b6558a21a884f82",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant198e0f8bf42b611b271b36376c00a8d9c9e2e2bf20f160db18e6bb40e466e786.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant198e0f8bf42b611b271b36376c00a8d9c9e2e2bf20f160db18e6bb40e466e786.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant198e0f8bf42b611b271b36376c00a8d9c9e2e2bf20f160db18e6bb40e466e786.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3aaf4b6d518f3c2a509f85a52b6558a21a884f82`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant198e0f8bf42b611b271b36376c00a8d9c9e2e2bf20f160db18e6bb40e466e786.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant198e0f8bf42b611b271b36376c00a8d9c9e2e2bf20f160db18e6bb40e466e786.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [twistedVonMangoldtThree](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant198e0f8bf42b611b271b36376c00a8d9c9e2e2bf20f160db18e6bb40e466e786.lean/declarations/twistedvonmangoldtthree--fd9c4636e9c2c4a6619c0681.md) | 32 | `declaration-track:fd9c4636e9c2c4a6619c06818185e53779d7570fb3998f88b55e7a4420fd4835` |
| 2 | `def` | [conductorThreePsi](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant198e0f8bf42b611b271b36376c00a8d9c9e2e2bf20f160db18e6bb40e466e786.lean/declarations/conductorthreepsi--f4ecd31dc13b107541a5ac34.md) | 39 | `declaration-track:f4ecd31dc13b107541a5ac34fc6512d8860fbd35d47ce601148b8815d7fa7f13` |
| 3 | `theorem` | [twistedVonMangoldtThree_mod_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant198e0f8bf42b611b271b36376c00a8d9c9e2e2bf20f160db18e6bb40e466e786.lean/declarations/twistedvonmangoldtthree-mod-zero--94e62c566214d544dce04a9e.md) | 43 | `result-track:94e62c566214d544dce04a9e7e235b890d7d7c5596747df91e9b70e01dce9a6f` |
| 4 | `theorem` | [twistedVonMangoldtThree_mod_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant198e0f8bf42b611b271b36376c00a8d9c9e2e2bf20f160db18e6bb40e466e786.lean/declarations/twistedvonmangoldtthree-mod-one--9cef902c3e037d7d45276d19.md) | 49 | `result-track:9cef902c3e037d7d45276d191cbdec4e095e1d5c74482af5d5e2eb0aec7c35e9` |
| 5 | `theorem` | [twistedVonMangoldtThree_mod_two](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant198e0f8bf42b611b271b36376c00a8d9c9e2e2bf20f160db18e6bb40e466e786.lean/declarations/twistedvonmangoldtthree-mod-two--5c53fa9ede6978045422ab88.md) | 55 | `result-track:5c53fa9ede6978045422ab886e3cfdaeb325edc3f9520863d3a84d857a0f62e8` |
| 6 | `theorem` | [twistedVonMangoldtThree_eq_residue_difference](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant198e0f8bf42b611b271b36376c00a8d9c9e2e2bf20f160db18e6bb40e466e786.lean/declarations/twistedvonmangoldtthree-eq-residue-difference--e1067d7af7aab8360a267e85.md) | 63 | `result-track:e1067d7af7aab8360a267e8568c73ab3722b915a21a70b487295398c4cf374b0` |
| 7 | `def` | [residueVonMangoldtThree](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant198e0f8bf42b611b271b36376c00a8d9c9e2e2bf20f160db18e6bb40e466e786.lean/declarations/residuevonmangoldtthree--95a359ad295c826633158cdc.md) | 73 | `declaration-track:95a359ad295c826633158cdcf7d49d9a3b64d32b3a4fd5ec32318ac2d6c74515` |
| 8 | `theorem` | [conductorThreePsi_eq_residue_difference](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant198e0f8bf42b611b271b36376c00a8d9c9e2e2bf20f160db18e6bb40e466e786.lean/declarations/conductorthreepsi-eq-residue-difference--02da7bde029c2dcd5bb3211f.md) | 79 | `result-track:02da7bde029c2dcd5bb3211ff97ea429e55062ebbe1cac6fd70e312bf2f9d9e6` |
| 9 | `def` | [conductorThreePsiComplex](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant198e0f8bf42b611b271b36376c00a8d9c9e2e2bf20f160db18e6bb40e466e786.lean/declarations/conductorthreepsicomplex--ee757de7cca324071986b595.md) | 89 | `declaration-track:ee757de7cca324071986b595391ff84c068321b9084887fe180ccb27d037e322` |
| 10 | `theorem` | [conductorThreePsiComplex_eq_real](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant198e0f8bf42b611b271b36376c00a8d9c9e2e2bf20f160db18e6bb40e466e786.lean/declarations/conductorthreepsicomplex-eq-real--b9e38a591c2b3f93072fb1ee.md) | 95 | `result-track:b9e38a591c2b3f93072fb1ee78cead5cec2510cd5aae6fddc41d2e6798e74171` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
