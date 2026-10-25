# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Specialize.Variantb98a68c13db1f9e97280341150aff7bb33fde06377f462f07821201b81f643b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7008ec26f46569412b79934b93b9c36510e5cd25",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variantb98a68c13db1f9e97280341150aff7bb33fde06377f462f07821201b81f643b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variantb98a68c13db1f9e97280341150aff7bb33fde06377f462f07821201b81f643b1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variantb98a68c13db1f9e97280341150aff7bb33fde06377f462f07821201b81f643b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7008ec26f46569412b79934b93b9c36510e5cd25`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variantb98a68c13db1f9e97280341150aff7bb33fde06377f462f07821201b81f643b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variantb98a68c13db1f9e97280341150aff7bb33fde06377f462f07821201b81f643b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Do.ProofMode.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Do.ProofMode.Focus` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variantb98a68c13db1f9e97280341150aff7bb33fde06377f462f07821201b81f643b1.lean/declarations/initialize--6a44f80bf10845f7fc6e0a55.md) | 28 | `declaration-track:6a44f80bf10845f7fc6e0a55a8d1011a9a4ebcc6e7c3b729b0ee53f79c67d764` |
| 2 | `def` | [mSpecializeImpStateful](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variantb98a68c13db1f9e97280341150aff7bb33fde06377f462f07821201b81f643b1.lean/declarations/mspecializeimpstateful--283f42e93073e45d8c49629f.md) | 30 | `declaration-track:283f42e93073e45d8c49629f1f31a8090abfcbb984ab6346d9794ac2e48eb6b9` |
| 3 | `def` | [mSpecializeImpPure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variantb98a68c13db1f9e97280341150aff7bb33fde06377f462f07821201b81f643b1.lean/declarations/mspecializeimppure--3f170bbf382da74b44b0757b.md) | 52 | `declaration-track:3f170bbf382da74b44b0757b4ef6bcc5b2e3b567d6efa1f0deda64a07a47cade` |
| 4 | `def` | [mSpecializeForall](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variantb98a68c13db1f9e97280341150aff7bb33fde06377f462f07821201b81f643b1.lean/declarations/mspecializeforall--cb1bdbf6c64a553aa00ec7c6.md) | 80 | `declaration-track:cb1bdbf6c64a553aa00ec7c6d0b4af31fe27442819f13e9ead13d25d2b576e91` |
| 5 | `def` | [elabMSpecialize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variantb98a68c13db1f9e97280341150aff7bb33fde06377f462f07821201b81f643b1.lean/declarations/elabmspecialize--283a1595890b0958c6e26d8c.md) | 95 | `declaration-track:283a1595890b0958c6e26d8c3efade0cd2d8012dde4ded3bfad2e4cd85e99373` |
| 6 | `def` | [elabMspecializePure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variantb98a68c13db1f9e97280341150aff7bb33fde06377f462f07821201b81f643b1.lean/declarations/elabmspecializepure--35c74a9b4199dee1b7e6d66f.md) | 139 | `declaration-track:35c74a9b4199dee1b7e6d66f41939d1e2f19568859006e03aaeacac08f5ac712` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
