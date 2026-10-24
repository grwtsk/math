# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.NonArchimedeanFiber.Variant6490d0934006efc1b994334317c527a618bce5df1e558d5294d48e88131e2214

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a66fce3f5a3b6edb7aea8127abef7e3a1aae523",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/NonArchimedeanFiber/Variant6490d0934006efc1b994334317c527a618bce5df1e558d5294d48e88131e2214.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/NonArchimedeanFiber/Variant6490d0934006efc1b994334317c527a618bce5df1e558d5294d48e88131e2214.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/NonArchimedeanFiber/Variant6490d0934006efc1b994334317c527a618bce5df1e558d5294d48e88131e2214.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a66fce3f5a3b6edb7aea8127abef7e3a1aae523`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/NonArchimedeanFiber/Variant6490d0934006efc1b994334317c527a618bce5df1e558d5294d48e88131e2214.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/NonArchimedeanFiber/Variant6490d0934006efc1b994334317c527a618bce5df1e558d5294d48e88131e2214.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.ResearchTopos.TMFFraming` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.AdelicInfinityTopos.BadPrimeLocalization` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.AdelicInfinityTopos.SpectrumObject` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MoravaLocalContract](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/NonArchimedeanFiber/Variant6490d0934006efc1b994334317c527a618bce5df1e558d5294d48e88131e2214.lean/declarations/moravalocalcontract--12c811cca0703c5b354dce95.md) | 28 | `declaration-track:12c811cca0703c5b354dce958e23be7dc94741e7ee525d3531b5c2f6bbf8a008` |
| 2 | `structure` | [NonArchimedeanTMFFiber](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/NonArchimedeanFiber/Variant6490d0934006efc1b994334317c527a618bce5df1e558d5294d48e88131e2214.lean/declarations/nonarchimedeantmffiber--198a2aac2707732092aed474.md) | 35 | `declaration-track:198a2aac2707732092aed474bb5a2b71a20ec68c4a1edaebc621f9c30885bfe5` |
| 3 | `theorem` | [nonarchimedean_fiber_is_finite](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/NonArchimedeanFiber/Variant6490d0934006efc1b994334317c527a618bce5df1e558d5294d48e88131e2214.lean/declarations/nonarchimedean-fiber-is-finite--96052e39edb9ee9bb7efd187.md) | 45 | `result-track:96052e39edb9ee9bb7efd1873b368f806a9e01ba677859976a92e898dcaa4535` |
| 4 | `theorem` | [nonarchimedean_local_modular_compatible](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/NonArchimedeanFiber/Variant6490d0934006efc1b994334317c527a618bce5df1e558d5294d48e88131e2214.lean/declarations/nonarchimedean-local-modular-compatible--d57828f1b7abea46e7ca763f.md) | 50 | `result-track:d57828f1b7abea46e7ca763f1a1e3838b21ff4f0bb23b2bfdd87dce325140f7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
