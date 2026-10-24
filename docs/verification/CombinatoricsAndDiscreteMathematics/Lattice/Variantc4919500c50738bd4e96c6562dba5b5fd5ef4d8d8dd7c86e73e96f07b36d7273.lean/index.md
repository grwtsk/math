# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Lattice.Variantc4919500c50738bd4e96c6562dba5b5fd5ef4d8d8dd7c86e73e96f07b36d7273

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b95c0c390b8d970bb20c386f3d140dc380f192f8",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variantc4919500c50738bd4e96c6562dba5b5fd5ef4d8d8dd7c86e73e96f07b36d7273.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantc4919500c50738bd4e96c6562dba5b5fd5ef4d8d8dd7c86e73e96f07b36d7273.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantc4919500c50738bd4e96c6562dba5b5fd5ef4d8d8dd7c86e73e96f07b36d7273.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b95c0c390b8d970bb20c386f3d140dc380f192f8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variantc4919500c50738bd4e96c6562dba5b5fd5ef4d8d8dd7c86e73e96f07b36d7273.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Lattice/Variantc4919500c50738bd4e96c6562dba5b5fd5ef4d8d8dd7c86e73e96f07b36d7273.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sup_univ_eq_iSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantc4919500c50738bd4e96c6562dba5b5fd5ef4d8d8dd7c86e73e96f07b36d7273.lean/declarations/sup-univ-eq-isup--b7456782f976200d8da0c6c6.md) | 34 | `result-track:b7456782f976200d8da0c6c6adf55f31f08150f84585467f9514213c7438e4a8` |
| 2 | `theorem` | [inf_univ_eq_iInf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantc4919500c50738bd4e96c6562dba5b5fd5ef4d8d8dd7c86e73e96f07b36d7273.lean/declarations/inf-univ-eq-iinf--f6d77041895404baaab237fb.md) | 38 | `result-track:f6d77041895404baaab237fb137d3eec69c25026075b183d44b65a6b19d6ac57` |
| 3 | `theorem` | [fold_inf_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantc4919500c50738bd4e96c6562dba5b5fd5ef4d8d8dd7c86e73e96f07b36d7273.lean/declarations/fold-inf-univ--ba2466b5db1c4ae80f513ff1.md) | 42 | `result-track:ba2466b5db1c4ae80f513ff115a5b4ceb385c240c07c1fb6b6463dfca876986c` |
| 4 | `theorem` | [fold_sup_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantc4919500c50738bd4e96c6562dba5b5fd5ef4d8d8dd7c86e73e96f07b36d7273.lean/declarations/fold-sup-univ--8346c0f776d488ed3537cbbb.md) | 48 | `result-track:8346c0f776d488ed3537cbbb8f12c98d601e53d18984a7616854e2e19eb7ab87` |
| 5 | `lemma` | [mem_inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantc4919500c50738bd4e96c6562dba5b5fd5ef4d8d8dd7c86e73e96f07b36d7273.lean/declarations/mem-inf--dc2f3f948955587b98884053.md) | 52 | `result-track:dc2f3f948955587b988840531f8a07e8e7e70b26ea94489b5afb8d3744e6f551` |
| 6 | `theorem` | [Finite.exists_max](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantc4919500c50738bd4e96c6562dba5b5fd5ef4d8d8dd7c86e73e96f07b36d7273.lean/declarations/finite-exists-max--d6a71b5aeac16fff153f4026.md) | 59 | `result-track:d6a71b5aeac16fff153f4026f82eb39c427b0ff5fa0e77cf51f1d18e9b9ff613` |
| 7 | `theorem` | [Finite.exists_min](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantc4919500c50738bd4e96c6562dba5b5fd5ef4d8d8dd7c86e73e96f07b36d7273.lean/declarations/finite-exists-min--d39e91b8eab594e0a55607eb.md) | 64 | `result-track:d39e91b8eab594e0a55607ebe03a5f2d351cb5fcdd67127811201f0511381a71` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
