# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CompleteLattice.Variant35a87897bbed664dec3d24dc0ed05a5df97f0459a21078904e9c493e32d77388

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69e9649b537defb3b9a0e163f3020d714b4631b6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant35a87897bbed664dec3d24dc0ed05a5df97f0459a21078904e9c493e32d77388.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant35a87897bbed664dec3d24dc0ed05a5df97f0459a21078904e9c493e32d77388.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant35a87897bbed664dec3d24dc0ed05a5df97f0459a21078904e9c493e32d77388.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69e9649b537defb3b9a0e163f3020d714b4631b6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant35a87897bbed664dec3d24dc0ed05a5df97f0459a21078904e9c493e32d77388.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant35a87897bbed664dec3d24dc0ed05a5df97f0459a21078904e9c493e32d77388.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.OrderIso` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Indexed` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ciSup_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant35a87897bbed664dec3d24dc0ed05a5df97f0459a21078904e9c493e32d77388.lean/declarations/cisup-mul--4d3284f211c00e26ec2bb50b.md) | 21 | `result-track:4d3284f211c00e26ec2bb50b92c80248209b481275acce32661719fdd6819ab4` |
| 2 | `lemma` | [ciSup_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant35a87897bbed664dec3d24dc0ed05a5df97f0459a21078904e9c493e32d77388.lean/declarations/cisup-div--02dfb04c739694b065a93174.md) | 25 | `result-track:02dfb04c739694b065a9317471c2592aaf5f4835a2a7be6798fb6b673fdf98e9` |
| 3 | `lemma` | [ciInf_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant35a87897bbed664dec3d24dc0ed05a5df97f0459a21078904e9c493e32d77388.lean/declarations/ciinf-mul--5fc25c15e9383f2f073c07f6.md) | 29 | `result-track:5fc25c15e9383f2f073c07f699873b4c48a5ac22c1aa3af6d33b8685928a6d2a` |
| 4 | `lemma` | [ciInf_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant35a87897bbed664dec3d24dc0ed05a5df97f0459a21078904e9c493e32d77388.lean/declarations/ciinf-div--77a8e8c60f8a03194b6acae0.md) | 33 | `result-track:77a8e8c60f8a03194b6acae0827cff9e60c644abb785a0e01bfb9e806f73b01e` |
| 5 | `lemma` | [mul_ciSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant35a87897bbed664dec3d24dc0ed05a5df97f0459a21078904e9c493e32d77388.lean/declarations/mul-cisup--86fb9719257b05ed54ac35cb.md) | 42 | `result-track:86fb9719257b05ed54ac35cbb06a32f4d85c4d646c1df20d827ad52a96132d0d` |
| 6 | `lemma` | [mul_ciInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant35a87897bbed664dec3d24dc0ed05a5df97f0459a21078904e9c493e32d77388.lean/declarations/mul-ciinf--c112f7dbc99fc04bd5068d67.md) | 46 | `result-track:c112f7dbc99fc04bd5068d67042e5c6a3b9b4fb33beddb6e28a92bdc71025687` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
