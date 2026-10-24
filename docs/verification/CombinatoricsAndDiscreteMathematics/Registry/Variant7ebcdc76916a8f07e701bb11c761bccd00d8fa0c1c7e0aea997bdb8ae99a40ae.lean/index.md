# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Registry.Variant7ebcdc76916a8f07e701bb11c761bccd00d8fa0c1c7e0aea997bdb8ae99a40ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7c8830846da0de19d33f26902fad0d075b72969",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Registry/Variant7ebcdc76916a8f07e701bb11c761bccd00d8fa0c1c7e0aea997bdb8ae99a40ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Registry/Variant7ebcdc76916a8f07e701bb11c761bccd00d8fa0c1c7e0aea997bdb8ae99a40ae.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Registry/Variant7ebcdc76916a8f07e701bb11c761bccd00d8fa0c1c7e0aea997bdb8ae99a40ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7c8830846da0de19d33f26902fad0d075b72969`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Registry/Variant7ebcdc76916a8f07e701bb11c761bccd00d8fa0c1c7e0aea997bdb8ae99a40ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Registry/Variant7ebcdc76916a8f07e701bb11c761bccd00d8fa0c1c7e0aea997bdb8ae99a40ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.WorldModel.ObjectIndex` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.DependencyGraph` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.NNReal.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MathematicalWorldModel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Registry/Variant7ebcdc76916a8f07e701bb11c761bccd00d8fa0c1c7e0aea997bdb8ae99a40ae.lean/declarations/mathematicalworldmodel--6d4388a95c5f5c28db4cd2f3.md) | 27 | `declaration-track:6d4388a95c5f5c28db4cd2f37c5e03afd10152e79459c08d9b1862d7caee945f` |
| 2 | `structure` | [WorldModelRegistry](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Registry/Variant7ebcdc76916a8f07e701bb11c761bccd00d8fa0c1c7e0aea997bdb8ae99a40ae.lean/declarations/worldmodelregistry--a7b4dfb7d3b9b99521c5252a.md) | 57 | `declaration-track:a7b4dfb7d3b9b99521c5252a86e7247c71a51183519327e862283d05457fe107` |
| 3 | `abbrev` | [ModelId](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Registry/Variant7ebcdc76916a8f07e701bb11c761bccd00d8fa0c1c7e0aea997bdb8ae99a40ae.lean/declarations/modelid--02d91734892ac38227eda84a.md) | 76 | `declaration-track:02d91734892ac38227eda84ab683a9bb3dc12954b416314711da8a7df1e501ee` |
| 4 | `def` | [Version](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Registry/Variant7ebcdc76916a8f07e701bb11c761bccd00d8fa0c1c7e0aea997bdb8ae99a40ae.lean/declarations/version--ddf4cecb7e742b78ffc0832b.md) | 80 | `declaration-track:ddf4cecb7e742b78ffc0832b6048c440623937c85110ca94fb73364a29bd5831` |
| 5 | `def` | [HasVersion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Registry/Variant7ebcdc76916a8f07e701bb11c761bccd00d8fa0c1c7e0aea997bdb8ae99a40ae.lean/declarations/hasversion--c72e4aae47ad2afb76e16c89.md) | 85 | `declaration-track:c72e4aae47ad2afb76e16c89eb0fb98e12e0966d65fa61c9d11069da75ccd1ae` |
| 6 | `theorem` | [version_slot_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Registry/Variant7ebcdc76916a8f07e701bb11c761bccd00d8fa0c1c7e0aea997bdb8ae99a40ae.lean/declarations/version-slot-unique--9812a53fcd62068221834a69.md) | 91 | `result-track:9812a53fcd62068221834a69a4774ff760bc9fb958c781980808b11b07b45f66` |
| 7 | `theorem` | [stored_source_digest_valid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Registry/Variant7ebcdc76916a8f07e701bb11c761bccd00d8fa0c1c7e0aea997bdb8ae99a40ae.lean/declarations/stored-source-digest-valid--54d92a8dad0c6752d06ba704.md) | 99 | `result-track:54d92a8dad0c6752d06ba7040c601ee4dc7806bdb68f21e3bdc04979e9efb55f` |
| 8 | `theorem` | [supersession_wellFounded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Registry/Variant7ebcdc76916a8f07e701bb11c761bccd00d8fa0c1c7e0aea997bdb8ae99a40ae.lean/declarations/supersession-wellfounded--db69430660124b26f3e29ae3.md) | 106 | `result-track:db69430660124b26f3e29ae38941433a0ef1874741fb740c093af01ad7c49451` |
| 9 | `theorem` | [no_supersession_cycle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Registry/Variant7ebcdc76916a8f07e701bb11c761bccd00d8fa0c1c7e0aea997bdb8ae99a40ae.lean/declarations/no-supersession-cycle--58abf910f1ea6dbe439f4281.md) | 115 | `result-track:58abf910f1ea6dbe439f42810797513b6d0729d542fcf56eb3d29e355b6bb960` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
