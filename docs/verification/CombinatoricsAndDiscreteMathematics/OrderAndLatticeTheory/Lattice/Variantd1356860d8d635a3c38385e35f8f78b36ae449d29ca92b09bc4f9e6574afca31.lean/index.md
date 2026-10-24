# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattice.Variantd1356860d8d635a3c38385e35f8f78b36ae449d29ca92b09bc4f9e6574afca31

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5e7e7769af1f93f63ae7862f2428dbcb6edcede",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantd1356860d8d635a3c38385e35f8f78b36ae449d29ca92b09bc4f9e6574afca31.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantd1356860d8d635a3c38385e35f8f78b36ae449d29ca92b09bc4f9e6574afca31.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantd1356860d8d635a3c38385e35f8f78b36ae449d29ca92b09bc4f9e6574afca31.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5e7e7769af1f93f63ae7862f2428dbcb6edcede`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantd1356860d8d635a3c38385e35f8f78b36ae449d29ca92b09bc4f9e6574afca31.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantd1356860d8d635a3c38385e35f8f78b36ae449d29ca92b09bc4f9e6574afca31.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Algebra` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Ordered` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMulLeftMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantd1356860d8d635a3c38385e35f8f78b36ae449d29ca92b09bc4f9e6574afca31.lean/declarations/instmulleftmono--eba811223da461b550bc528a.md) | 39 | `declaration-track:eba811223da461b550bc528abee9b5f52404c2a55701003536a41e5bf2112a44` |
| 2 | `instance` | [instMulRightMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantd1356860d8d635a3c38385e35f8f78b36ae449d29ca92b09bc4f9e6574afca31.lean/declarations/instmulrightmono--36b62bea675850c6b55150b5.md) | 44 | `declaration-track:36b62bea675850c6b55150b5ba67d8bc289f93626ae53c13c8efbff78291fa62` |
| 3 | `lemma` | [coe_mabs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantd1356860d8d635a3c38385e35f8f78b36ae449d29ca92b09bc4f9e6574afca31.lean/declarations/coe-mabs--88dd2bdd932c59e13e07bda3.md) | 51 | `result-track:88dd2bdd932c59e13e07bda3bf88658fdc73899bacd25796d29b50803380d37e` |
| 4 | `lemma` | [mabs_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantd1356860d8d635a3c38385e35f8f78b36ae449d29ca92b09bc4f9e6574afca31.lean/declarations/mabs-apply--4ef0ca63d88f00289f3f3e40.md) | 54 | `result-track:4ef0ca63d88f00289f3f3e40e43344bf690e7a4a1a14c02cab178739169205eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
