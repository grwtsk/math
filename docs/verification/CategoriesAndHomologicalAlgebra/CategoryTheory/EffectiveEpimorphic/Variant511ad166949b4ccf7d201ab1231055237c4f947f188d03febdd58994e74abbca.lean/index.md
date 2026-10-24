# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EffectiveEpimorphic.Variant511ad166949b4ccf7d201ab1231055237c4f947f188d03febdd58994e74abbca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3563bda7321d1bec521436fb0022266f7ab3b77",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant511ad166949b4ccf7d201ab1231055237c4f947f188d03febdd58994e74abbca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant511ad166949b4ccf7d201ab1231055237c4f947f188d03febdd58994e74abbca.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant511ad166949b4ccf7d201ab1231055237c4f947f188d03febdd58994e74abbca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3563bda7321d1bec521436fb0022266f7ab3b77`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant511ad166949b4ccf7d201ab1231055237c4f947f188d03febdd58994e74abbca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant511ad166949b4ccf7d201ab1231055237c4f947f188d03febdd58994e74abbca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sieves` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EffectiveEpi.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Sieve.EffectiveEpimorphic](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant511ad166949b4ccf7d201ab1231055237c4f947f188d03febdd58994e74abbca.lean/declarations/sieve-effectiveepimorphic--524943d3b0f038a6a91cfbcf.md) | 29 | `declaration-track:524943d3b0f038a6a91cfbcf46c4d96ec309bcad71d2f2d7b9735cb6e29cae4c` |
| 2 | `abbrev` | [Presieve.EffectiveEpimorphic](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant511ad166949b4ccf7d201ab1231055237c4f947f188d03febdd58994e74abbca.lean/declarations/presieve-effectiveepimorphic--d2658139f9345b895caf11aa.md) | 34 | `declaration-track:d2658139f9345b895caf11aa7d130840ef4729f55eabad10343a9a644e8f474c` |
| 3 | `def` | [Sieve.generateSingleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant511ad166949b4ccf7d201ab1231055237c4f947f188d03febdd58994e74abbca.lean/declarations/sieve-generatesingleton--c94d5e60927a447b87f22aab.md) | 42 | `declaration-track:c94d5e60927a447b87f22aab2aceb806a320ddac94cadb2ba4d86ca1752fdbf7` |
| 4 | `lemma` | [Sieve.generateSingleton_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant511ad166949b4ccf7d201ab1231055237c4f947f188d03febdd58994e74abbca.lean/declarations/sieve-generatesingleton-eq--4bc0538bb203bc775e0052b2.md) | 48 | `result-track:4bc0538bb203bc775e0052b2487f0b5c17fc5926c327dcb9ee743c70670a8fff` |
| 5 | `def` | [isColimitOfEffectiveEpiStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant511ad166949b4ccf7d201ab1231055237c4f947f188d03febdd58994e74abbca.lean/declarations/iscolimitofeffectiveepistruct--ff89dc15e9b4c631ef1b0a1e.md) | 62 | `declaration-track:ff89dc15e9b4c631ef1b0a1e8d6a7f42140cb2ed36fe99a851c2e4d3626a48a7` |
| 6 | `def` | [effectiveEpiStructOfIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant511ad166949b4ccf7d201ab1231055237c4f947f188d03febdd58994e74abbca.lean/declarations/effectiveepistructofiscolimit--84d3684999152304cc65dae8.md) | 97 | `declaration-track:84d3684999152304cc65dae82a8cf8a577c8062c92f7f3752d46eaa0c4acd3e9` |
| 7 | `theorem` | [Sieve.effectiveEpimorphic_singleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant511ad166949b4ccf7d201ab1231055237c4f947f188d03febdd58994e74abbca.lean/declarations/sieve-effectiveepimorphic-singleton--fe96925222bddd8a76f2acc4.md) | 132 | `result-track:fe96925222bddd8a76f2acc46eeea62a0228c3ffbe578acf9b419c4661102e5c` |
| 8 | `def` | [Sieve.generateFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant511ad166949b4ccf7d201ab1231055237c4f947f188d03febdd58994e74abbca.lean/declarations/sieve-generatefamily--1de28a63a5dbbc1aa1bc0e46.md) | 149 | `declaration-track:1de28a63a5dbbc1aa1bc0e4699d267096220bf4465d194ec7fbdeac5b092e6e2` |
| 9 | `lemma` | [Sieve.generateFamily_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant511ad166949b4ccf7d201ab1231055237c4f947f188d03febdd58994e74abbca.lean/declarations/sieve-generatefamily-eq--9d7a85467cd78e0d5d923fe3.md) | 156 | `result-track:9d7a85467cd78e0d5d923fe316f1e191d84d19efb74e63eca69ed137d09ff431` |
| 10 | `def` | [isColimitOfEffectiveEpiFamilyStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant511ad166949b4ccf7d201ab1231055237c4f947f188d03febdd58994e74abbca.lean/declarations/iscolimitofeffectiveepifamilystruct--fd2a2bb882a516fa21e881b2.md) | 170 | `declaration-track:fd2a2bb882a516fa21e881b214a22958413c29b8263498cb6d5f25633ab8b208` |
| 11 | `def` | [effectiveEpiFamilyStructOfIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant511ad166949b4ccf7d201ab1231055237c4f947f188d03febdd58994e74abbca.lean/declarations/effectiveepifamilystructofiscolimit--85d3cd47979c949af7ead94c.md) | 207 | `declaration-track:85d3cd47979c949af7ead94c3cce281a2bd9fc9d55a090d315c577784ede10ab` |
| 12 | `theorem` | [Sieve.effectiveEpimorphic_family](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant511ad166949b4ccf7d201ab1231055237c4f947f188d03febdd58994e74abbca.lean/declarations/sieve-effectiveepimorphic-family--6188e291853a5e47942310c6.md) | 244 | `result-track:6188e291853a5e47942310c6ce7fb3ddb455e27901d87c9a48ad1eaed8c2e140` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
