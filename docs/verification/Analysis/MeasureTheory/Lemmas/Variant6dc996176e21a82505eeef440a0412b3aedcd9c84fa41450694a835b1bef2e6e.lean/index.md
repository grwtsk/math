# Verification target: GRWTSK.Analysis.MeasureTheory.Lemmas.Variant6dc996176e21a82505eeef440a0412b3aedcd9c84fa41450694a835b1bef2e6e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6282a5e2408e3b487fd4c6fa55039d0f56b567c4",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Lemmas/Variant6dc996176e21a82505eeef440a0412b3aedcd9c84fa41450694a835b1bef2e6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variant6dc996176e21a82505eeef440a0412b3aedcd9c84fa41450694a835b1bef2e6e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variant6dc996176e21a82505eeef440a0412b3aedcd9c84fa41450694a835b1bef2e6e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6282a5e2408e3b487fd4c6fa55039d0f56b567c4`.

Source path: `GRWTSK/Analysis/MeasureTheory/Lemmas/Variant6dc996176e21a82505eeef440a0412b3aedcd9c84fa41450694a835b1bef2e6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Lemmas/Variant6dc996176e21a82505eeef440a0412b3aedcd9c84fa41450694a835b1bef2e6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Operator.BoundedLinearMaps` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.Ergodic.MeasurePreserving` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.AEStronglyMeasurable` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.WithDensity` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.FiniteDimension` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [aestronglyMeasurable_dirac](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variant6dc996176e21a82505eeef440a0412b3aedcd9c84fa41450694a835b1bef2e6e.lean/declarations/aestronglymeasurable-dirac--3aabdacc51bab1d4b77fff08.md) | 39 | `result-track:3aabdacc51bab1d4b77fff0857f5521cd698ffb8d3df2e45d6451c8413a94269` |
| 2 | `theorem` | [MeasureTheory.AEStronglyMeasurable.comp_measurePreserving](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variant6dc996176e21a82505eeef440a0412b3aedcd9c84fa41450694a835b1bef2e6e.lean/declarations/measuretheory-aestronglymeasurable-comp-measurepreserving--ec984f40a3d9da5708b1c64c.md) | 43 | `result-track:ec984f40a3d9da5708b1c64c6405c74ca0f00cf27ec94911727a4dc09c4bac58` |
| 3 | `theorem` | [MeasureTheory.MeasurePreserving.aestronglyMeasurable_comp_iff](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variant6dc996176e21a82505eeef440a0412b3aedcd9c84fa41450694a835b1bef2e6e.lean/declarations/measuretheory-measurepreserving-aestronglymeasurable-comp-iff--97769a96d53230244b4555f9.md) | 49 | `result-track:97769a96d53230244b4555f9b6a2782bdc383aa291240cd6c80801b4209d6961` |
| 4 | `theorem` | [aestronglyMeasurable_smul_const_iff](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variant6dc996176e21a82505eeef440a0412b3aedcd9c84fa41450694a835b1bef2e6e.lean/declarations/aestronglymeasurable-smul-const-iff--3faed09431fe9c7eab411324.md) | 60 | `result-track:3faed09431fe9c7eab4113242d36ff2c2a7bfbc0a970904aebf58f6639c8eb9b` |
| 5 | `theorem` | [StronglyMeasurable.apply_continuousLinearMap](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variant6dc996176e21a82505eeef440a0412b3aedcd9c84fa41450694a835b1bef2e6e.lean/declarations/stronglymeasurable-apply-continuouslinearmap--b869083f43e48f031a10f6db.md) | 73 | `result-track:b869083f43e48f031a10f6db8e094fd827c74db353b3b188dc8eb67ce4bf8e9c` |
| 6 | `theorem` | [MeasureTheory.AEStronglyMeasurable.apply_continuousLinearMap](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variant6dc996176e21a82505eeef440a0412b3aedcd9c84fa41450694a835b1bef2e6e.lean/declarations/measuretheory-aestronglymeasurable-apply-continuouslinearmap--bcf6f2c9b83034ff8e05f0a2.md) | 79 | `result-track:bcf6f2c9b83034ff8e05f0a2a9ebb15c17ca168f6451d7933301909be8765a3e` |
| 7 | `theorem` | [ContinuousLinearMap.aestronglyMeasurable_comp₂](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variant6dc996176e21a82505eeef440a0412b3aedcd9c84fa41450694a835b1bef2e6e.lean/declarations/continuouslinearmap-aestronglymeasurable-comp--211bbede45d1e1c9db070dfb.md) | 84 | `result-track:211bbede45d1e1c9db070dfbb0c96074709e753d6c3c3b5ea243553e987ded4b` |
| 8 | `theorem` | [aestronglyMeasurable_withDensity_iff](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variant6dc996176e21a82505eeef440a0412b3aedcd9c84fa41450694a835b1bef2e6e.lean/declarations/aestronglymeasurable-withdensity-iff--5e41faa2332d099b6080b17c.md) | 91 | `result-track:5e41faa2332d099b6080b17c62002b3a0847909c0525bcf161a57c9198c7be47` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
