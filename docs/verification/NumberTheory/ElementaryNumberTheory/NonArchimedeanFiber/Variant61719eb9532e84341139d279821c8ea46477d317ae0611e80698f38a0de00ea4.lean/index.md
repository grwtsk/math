# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.NonArchimedeanFiber.Variant61719eb9532e84341139d279821c8ea46477d317ae0611e80698f38a0de00ea4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d757cd206e05f9b14108900adefaa1eed654cbba",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/NonArchimedeanFiber/Variant61719eb9532e84341139d279821c8ea46477d317ae0611e80698f38a0de00ea4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/NonArchimedeanFiber/Variant61719eb9532e84341139d279821c8ea46477d317ae0611e80698f38a0de00ea4.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/NonArchimedeanFiber/Variant61719eb9532e84341139d279821c8ea46477d317ae0611e80698f38a0de00ea4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d757cd206e05f9b14108900adefaa1eed654cbba`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/NonArchimedeanFiber/Variant61719eb9532e84341139d279821c8ea46477d317ae0611e80698f38a0de00ea4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/NonArchimedeanFiber/Variant61719eb9532e84341139d279821c8ea46477d317ae0611e80698f38a0de00ea4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.ResearchTopos.TMFFraming` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.AdelicInfinityTopos.BadPrimeLocalization` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.AdelicInfinityTopos.SpectrumObject` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MoravaLocalContract](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/NonArchimedeanFiber/Variant61719eb9532e84341139d279821c8ea46477d317ae0611e80698f38a0de00ea4.lean/declarations/moravalocalcontract--14aa4d36253cdf2ecefa697b.md) | 20 | `declaration-track:14aa4d36253cdf2ecefa697b287aeb3b2df804f354352c9f0922e40d5ac292f4` |
| 2 | `structure` | [NonArchimedeanTMFFiber](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/NonArchimedeanFiber/Variant61719eb9532e84341139d279821c8ea46477d317ae0611e80698f38a0de00ea4.lean/declarations/nonarchimedeantmffiber--76f42d63483515a0cad0f152.md) | 27 | `declaration-track:76f42d63483515a0cad0f152b9f20d2db684d11093b8ecd985a065f978ef3c1a` |
| 3 | `theorem` | [nonarchimedean_fiber_is_finite](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/NonArchimedeanFiber/Variant61719eb9532e84341139d279821c8ea46477d317ae0611e80698f38a0de00ea4.lean/declarations/nonarchimedean-fiber-is-finite--497c4625a4afa59204cb448d.md) | 37 | `result-track:497c4625a4afa59204cb448d70200ac9eb11998363ad34108d14da280609472c` |
| 4 | `theorem` | [nonarchimedean_local_modular_compatible](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/NonArchimedeanFiber/Variant61719eb9532e84341139d279821c8ea46477d317ae0611e80698f38a0de00ea4.lean/declarations/nonarchimedean-local-modular-compatible--3ae5c813486648b4f85c1de8.md) | 42 | `result-track:3ae5c813486648b4f85c1de86d3a2faafb43e9f9ce241d7d881eef616fc5a087` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
