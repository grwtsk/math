# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattice.Variant66d86c70dba68e5c1bd21e84c28bc575a82d4745c6cdf3dbdea916a550de3540

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6b4183956e120ec196bf34c8efff00dad7b9031",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant66d86c70dba68e5c1bd21e84c28bc575a82d4745c6cdf3dbdea916a550de3540.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant66d86c70dba68e5c1bd21e84c28bc575a82d4745c6cdf3dbdea916a550de3540.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant66d86c70dba68e5c1bd21e84c28bc575a82d4745c6cdf3dbdea916a550de3540.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6b4183956e120ec196bf34c8efff00dad7b9031`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant66d86c70dba68e5c1bd21e84c28bc575a82d4745c6cdf3dbdea916a550de3540.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant66d86c70dba68e5c1bd21e84c28bc575a82d4745c6cdf3dbdea916a550de3540.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instSemilatticeSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant66d86c70dba68e5c1bd21e84c28bc575a82d4745c6cdf3dbdea916a550de3540.lean/declarations/instsemilatticesup--96f44ca2d6b9d465101b2fb7.md) | 36 | `declaration-track:96f44ca2d6b9d465101b2fb72be25e6c40a684fa7f7a3df6ffcb9f0ad2389a4a` |
| 2 | `lemma` | [inl_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant66d86c70dba68e5c1bd21e84c28bc575a82d4745c6cdf3dbdea916a550de3540.lean/declarations/inl-sup--2fff7bf8f66154b19eb7d33c.md) | 59 | `result-track:2fff7bf8f66154b19eb7d33c8b4a367c1441d41430863e14a960b2dca836e729` |
| 3 | `lemma` | [inr_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant66d86c70dba68e5c1bd21e84c28bc575a82d4745c6cdf3dbdea916a550de3540.lean/declarations/inr-sup--9ed9188a665af20a3aebda9c.md) | 60 | `result-track:9ed9188a665af20a3aebda9c5d29d54c8d4f2c772d8e4b09fab385dda4ff6e6f` |
| 4 | `instance` | [instSemilatticeInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant66d86c70dba68e5c1bd21e84c28bc575a82d4745c6cdf3dbdea916a550de3540.lean/declarations/instsemilatticeinf--aeb48c558bccd35054f7798e.md) | 69 | `declaration-track:aeb48c558bccd35054f7798e53fdbfca084abed76ddcc39497110ad131ce72c5` |
| 5 | `lemma` | [inl_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant66d86c70dba68e5c1bd21e84c28bc575a82d4745c6cdf3dbdea916a550de3540.lean/declarations/inl-inf--a8222106463ec40ece59e434.md) | 92 | `result-track:a8222106463ec40ece59e434cffbe5f6c263ce17e8507ac9117555c38e9b35b5` |
| 6 | `lemma` | [inr_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant66d86c70dba68e5c1bd21e84c28bc575a82d4745c6cdf3dbdea916a550de3540.lean/declarations/inr-inf--6f9dbae1e9d0e5b1a77a6444.md) | 93 | `result-track:6f9dbae1e9d0e5b1a77a64441c736b89c24d4d8476c2c1ec1b22b95f6f7cf135` |
| 7 | `instance` | [instLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant66d86c70dba68e5c1bd21e84c28bc575a82d4745c6cdf3dbdea916a550de3540.lean/declarations/instlattice--17b0f80879875d67cce97703.md) | 100 | `declaration-track:17b0f80879875d67cce9770303cf2f495471ec6d1163b8da291302a94f2affa7` |
| 8 | `def` | [inlLatticeHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant66d86c70dba68e5c1bd21e84c28bc575a82d4745c6cdf3dbdea916a550de3540.lean/declarations/inllatticehom--20d26b7b2a44af84cc19c397.md) | 103 | `declaration-track:20d26b7b2a44af84cc19c397bf9a8977956b0124eeca79c68e9ccaa99e469ebc` |
| 9 | `def` | [inrLatticeHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant66d86c70dba68e5c1bd21e84c28bc575a82d4745c6cdf3dbdea916a550de3540.lean/declarations/inrlatticehom--a80fd5f8be140e7a5e98ff17.md) | 109 | `declaration-track:a80fd5f8be140e7a5e98ff1710f4d12c54265959fe733ee8e2968d5b2e5ec0c3` |
| 10 | `instance` | [instDistribLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant66d86c70dba68e5c1bd21e84c28bc575a82d4745c6cdf3dbdea916a550de3540.lean/declarations/instdistriblattice--f259403c471d3797449dcd74.md) | 116 | `declaration-track:f259403c471d3797449dcd74c37f4e7a211a0009424c6bc1ee81cd8b4ede0451` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
