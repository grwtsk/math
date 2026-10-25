# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.LintSimpNF.Variant47d1abfdd0cd03d2fa65e5ca65caf16f271b31618c0b4728d3e96ec8e15ef342

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a66e5059286aad1c62e7bc59863fc928da6e8fc",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant47d1abfdd0cd03d2fa65e5ca65caf16f271b31618c0b4728d3e96ec8e15ef342.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant47d1abfdd0cd03d2fa65e5ca65caf16f271b31618c0b4728d3e96ec8e15ef342.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant47d1abfdd0cd03d2fa65e5ca65caf16f271b31618c0b4728d3e96ec8e15ef342.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a66e5059286aad1c62e7bc59863fc928da6e8fc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant47d1abfdd0cd03d2fa65e5ca65caf16f271b31618c0b4728d3e96ec8e15ef342.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant47d1abfdd0cd03d2fa65e5ca65caf16f271b31618c0b4728d3e96ec8e15ef342.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Lint` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant47d1abfdd0cd03d2fa65e5ca65caf16f271b31618c0b4728d3e96ec8e15ef342.lean/declarations/equiv--64de429cdc657f4cc54b3565.md) | 5 | `declaration-track:64de429cdc657f4cc54b356515058de64b74d99ce7bd5a1ed35a421e07dfce0b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant47d1abfdd0cd03d2fa65e5ca65caf16f271b31618c0b4728d3e96ec8e15ef342.lean/declarations/instance--8a4b2a7c80e8d25b50d11d3d.md) | 13 | `declaration-track:8a4b2a7c80e8d25b50d11d3da64a8a5da891f0a9e1c3d3b585f1a569156f0526` |
| 3 | `def` | [symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant47d1abfdd0cd03d2fa65e5ca65caf16f271b31618c0b4728d3e96ec8e15ef342.lean/declarations/symm--e8ec6301f61148e54cd08b56.md) | 15 | `declaration-track:e8ec6301f61148e54cd08b5646f4d31212da2bba2ee29936012e01c816a50ffe` |
| 4 | `def` | [sumCompl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant47d1abfdd0cd03d2fa65e5ca65caf16f271b31618c0b4728d3e96ec8e15ef342.lean/declarations/sumcompl--b134e071f06621ba8e174fdf.md) | 17 | `declaration-track:b134e071f06621ba8e174fdf26d5f68b53fb57e686940f7abee24e1c514a3e92` |
| 5 | `theorem` | [sumCompl_apply_symm_of_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant47d1abfdd0cd03d2fa65e5ca65caf16f271b31618c0b4728d3e96ec8e15ef342.lean/declarations/sumcompl-apply-symm-of-pos--cc84ffd6292b28bc2258039f.md) | 23 | `result-track:cc84ffd6292b28bc2258039f25b28be5a2c09422a9a9846b7b194abd6ead1360` |
| 6 | `def` | [foo](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant47d1abfdd0cd03d2fa65e5ca65caf16f271b31618c0b4728d3e96ec8e15ef342.lean/declarations/foo--c7a41ad16fa9c8d28cad6aeb.md) | 27 | `declaration-track:c7a41ad16fa9c8d28cad6aeb3ae5c580e7d7e34d6aa7c212aab9fe517be0896f` |
| 7 | `theorem` | [foo_eq_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant47d1abfdd0cd03d2fa65e5ca65caf16f271b31618c0b4728d3e96ec8e15ef342.lean/declarations/foo-eq-id--7f3eeefd41dfe66760991175.md) | 30 | `result-track:7f3eeefd41dfe667609911755390ee21d5db35775033ab4bcb7e17f85a8eb708` |
| 8 | `theorem` | [foo_eq_ite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant47d1abfdd0cd03d2fa65e5ca65caf16f271b31618c0b4728d3e96ec8e15ef342.lean/declarations/foo-eq-ite--eba088dd0b3c42c9322efe6b.md) | 36 | `result-track:eba088dd0b3c42c9322efe6bf437b6c9252ffa62ecd1b630e07c421b96709667` |
| 9 | `axiom` | [test_sorry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant47d1abfdd0cd03d2fa65e5ca65caf16f271b31618c0b4728d3e96ec8e15ef342.lean/declarations/test-sorry--5dd31edd098d0c91eb3a33c5.md) | 43 | `declaration-track:5dd31edd098d0c91eb3a33c537a4d81c4efa39164babd0acfa1c0d85c22e4f1c` |
| 10 | `theorem` | [ofFn_getElem_eq_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant47d1abfdd0cd03d2fa65e5ca65caf16f271b31618c0b4728d3e96ec8e15ef342.lean/declarations/offn-getelem-eq-map--61536fc20ca806a0a6356a5a.md) | 46 | `result-track:61536fc20ca806a0a6356a5a8e22770e90fbdc2d8ee8ace5602ad7b6a7e979e0` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant47d1abfdd0cd03d2fa65e5ca65caf16f271b31618c0b4728d3e96ec8e15ef342.lean/declarations/example--30765a0dc34b1bd4358c109d.md) | 49 | `declaration-track:30765a0dc34b1bd4358c109d06239165a02fce2e8f2b7100ee340f9781ec3eae` |
| 12 | `def` | [eqToFun](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant47d1abfdd0cd03d2fa65e5ca65caf16f271b31618c0b4728d3e96ec8e15ef342.lean/declarations/eqtofun--3a054d3c2a3ef2092d03fad8.md) | 56 | `declaration-track:3a054d3c2a3ef2092d03fad8339bf11bd6a07d5f107089c58acf98e117f7636a` |
| 13 | `theorem` | [eqToFun_comp_eq_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant47d1abfdd0cd03d2fa65e5ca65caf16f271b31618c0b4728d3e96ec8e15ef342.lean/declarations/eqtofun-comp-eq-self--42c1ec9ce4622f8f8e2fc1f8.md) | 59 | `result-track:42c1ec9ce4622f8f8e2fc1f86fafbb695acf407db88d8a8b0fb6131d7c2609d7` |
| 14 | `theorem` | [eqToFun_comp_iso_hom_eq_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant47d1abfdd0cd03d2fa65e5ca65caf16f271b31618c0b4728d3e96ec8e15ef342.lean/declarations/eqtofun-comp-iso-hom-eq-self--fce5ffa93c8dfde5c7b0fd96.md) | 65 | `result-track:fce5ffa93c8dfde5c7b0fd965e4eb0225cedda3b0eba3de94663220b1abc49b6` |
| 15 | `class` | [MyClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant47d1abfdd0cd03d2fa65e5ca65caf16f271b31618c0b4728d3e96ec8e15ef342.lean/declarations/myclass--3246753431a9b778c400708f.md) | 75 | `declaration-track:3246753431a9b778c400708f1a2dc689321e5b8bccc483cc09aba62d72c83096` |
| 16 | `structure` | [Bundle](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant47d1abfdd0cd03d2fa65e5ca65caf16f271b31618c0b4728d3e96ec8e15ef342.lean/declarations/bundle--b38f0ff4a772dbeca2507c8e.md) | 78 | `declaration-track:b38f0ff4a772dbeca2507c8e78bbd0d3de4150d0973e49ef910a6bbe70cfd6f2` |
| 17 | `def` | [Bundle.of](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant47d1abfdd0cd03d2fa65e5ca65caf16f271b31618c0b4728d3e96ec8e15ef342.lean/declarations/bundle-of--76c6c497809579540f242c14.md) | 84 | `declaration-track:76c6c497809579540f242c14681929909e2632fdfe6b3029cdf20719b0630b0f` |
| 18 | `theorem` | [Bundle.of_carrier](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant47d1abfdd0cd03d2fa65e5ca65caf16f271b31618c0b4728d3e96ec8e15ef342.lean/declarations/bundle-of-carrier--2292ab789267701d49028f13.md) | 88 | `result-track:2292ab789267701d49028f135c43ea88db92adfc074724b5ce4a75a9ab1da1c3` |
| 19 | `theorem` | [Bundle.of_op](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant47d1abfdd0cd03d2fa65e5ca65caf16f271b31618c0b4728d3e96ec8e15ef342.lean/declarations/bundle-of-op--1009497a4b294de9d139c61d.md) | 95 | `result-track:1009497a4b294de9d139c61d59487a4dfbb9220007f5d9874bb85d0102d94ffd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
