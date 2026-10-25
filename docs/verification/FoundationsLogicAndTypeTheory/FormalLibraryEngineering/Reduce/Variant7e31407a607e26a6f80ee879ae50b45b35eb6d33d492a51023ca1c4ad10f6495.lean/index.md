# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reduce.Variant7e31407a607e26a6f80ee879ae50b45b35eb6d33d492a51023ca1c4ad10f6495

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be38a5c64f68c2d81305da15553229a0f4e9fd4b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reduce/Variant7e31407a607e26a6f80ee879ae50b45b35eb6d33d492a51023ca1c4ad10f6495.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reduce/Variant7e31407a607e26a6f80ee879ae50b45b35eb6d33d492a51023ca1c4ad10f6495.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reduce/Variant7e31407a607e26a6f80ee879ae50b45b35eb6d33d492a51023ca1c4ad10f6495.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be38a5c64f68c2d81305da15553229a0f4e9fd4b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reduce/Variant7e31407a607e26a6f80ee879ae50b45b35eb6d33d492a51023ca1c4ad10f6495.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reduce/Variant7e31407a607e26a6f80ee879ae50b45b35eb6d33d492a51023ca1c4ad10f6495.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.InstantiateS` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Util` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.WHNF` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.ProjFns` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [beta](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reduce/Variant7e31407a607e26a6f80ee879ae50b45b35eb6d33d492a51023ca1c4ad10f6495.lean/declarations/beta--d203c66ed8061156be23ac35.md) | 23 | `declaration-track:d203c66ed8061156be23ac3529d76b643e44784df7f084c98deef04b17bd6c82` |
| 2 | `def` | [zetaDelta](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reduce/Variant7e31407a607e26a6f80ee879ae50b45b35eb6d33d492a51023ca1c4ad10f6495.lean/declarations/zetadelta--1450deb68ac72eb03c1aeab3.md) | 31 | `declaration-track:1450deb68ac72eb03c1aeab32510a3aff83d125b257ef494505405a67f72d8ee` |
| 3 | `def` | [zetaDeltaAll](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reduce/Variant7e31407a607e26a6f80ee879ae50b45b35eb6d33d492a51023ca1c4ad10f6495.lean/declarations/zetadeltaall--7bd986fbc0a08a264561ea53.md) | 38 | `declaration-track:7bd986fbc0a08a264561ea53bf4c821b3ff1c5db9d577f34340ebbbf0a03c28a` |
| 4 | `def` | [zeta](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reduce/Variant7e31407a607e26a6f80ee879ae50b45b35eb6d33d492a51023ca1c4ad10f6495.lean/declarations/zeta--84837e1407b8ecb847cae109.md) | 44 | `declaration-track:84837e1407b8ecb847cae109f6e99cbb40a97e9a62cabd89475e73530fc8e829` |
| 5 | `def` | [dsimpProj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reduce/Variant7e31407a607e26a6f80ee879ae50b45b35eb6d33d492a51023ca1c4ad10f6495.lean/declarations/dsimpproj--7da3923ed75da22b2329d48b.md) | 53 | `declaration-track:7da3923ed75da22b2329d48bd7a48c439ccd090a623e9eadea2331e0096a9e39` |
| 6 | `def` | [dsimpMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reduce/Variant7e31407a607e26a6f80ee879ae50b45b35eb6d33d492a51023ca1c4ad10f6495.lean/declarations/dsimpmatch--bd07562fab82b9cba281e078.md) | 67 | `declaration-track:bd07562fab82b9cba281e078914044c4df61c949606d27c70cad74711343c42a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
