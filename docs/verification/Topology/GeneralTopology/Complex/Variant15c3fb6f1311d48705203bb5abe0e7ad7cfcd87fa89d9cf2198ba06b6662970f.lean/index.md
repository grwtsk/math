# Verification target: GRWTSK.Topology.GeneralTopology.Complex.Variant15c3fb6f1311d48705203bb5abe0e7ad7cfcd87fa89d9cf2198ba06b6662970f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a7c7cba33ea84031d25e50fbdb773f30a988a37",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Complex/Variant15c3fb6f1311d48705203bb5abe0e7ad7cfcd87fa89d9cf2198ba06b6662970f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant15c3fb6f1311d48705203bb5abe0e7ad7cfcd87fa89d9cf2198ba06b6662970f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant15c3fb6f1311d48705203bb5abe0e7ad7cfcd87fa89d9cf2198ba06b6662970f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a7c7cba33ea84031d25e50fbdb773f30a988a37`.

Source path: `GRWTSK/Topology/GeneralTopology/Complex/Variant15c3fb6f1311d48705203bb5abe0e7ad7cfcd87fa89d9cf2198ba06b6662970f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Complex/Variant15c3fb6f1311d48705203bb5abe0e7ad7cfcd87fa89d9cf2198ba06b6662970f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.Notation` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.MFDeriv.SpecificFunctions` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Complex.norm_eventually_eq_of_mdifferentiableAt_of_isLocalMax](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant15c3fb6f1311d48705203bb5abe0e7ad7cfcd87fa89d9cf2198ba06b6662970f.lean/declarations/complex-norm-eventually-eq-of-mdifferentiableat-of-islocalmax--04689af5ac44a55003b34ff9.md) | 57 | `result-track:04689af5ac44a55003b34ff99d013f1004d86154681c23be7c6b938a24fa3ccc` |
| 2 | `theorem` | [norm_eqOn_of_isPreconnected_of_isMaxOn](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant15c3fb6f1311d48705203bb5abe0e7ad7cfcd87fa89d9cf2198ba06b6662970f.lean/declarations/norm-eqon-of-ispreconnected-of-ismaxon--6e48a4a697e9ef3137c72dc6.md) | 89 | `result-track:6e48a4a697e9ef3137c72dc62c14587a1a1f43bde05bf27207f962c8c876a294` |
| 3 | `theorem` | [eqOn_of_isPreconnected_of_isMaxOn_norm](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant15c3fb6f1311d48705203bb5abe0e7ad7cfcd87fa89d9cf2198ba06b6662970f.lean/declarations/eqon-of-ispreconnected-of-ismaxon-norm--171c45f5ab7030bc2e88aa61.md) | 114 | `result-track:171c45f5ab7030bc2e88aa61a8023a30e98a23da46a5bda555494fb2d8810866` |
| 4 | `theorem` | [apply_eq_of_isPreconnected_isCompact_isOpen](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant15c3fb6f1311d48705203bb5abe0e7ad7cfcd87fa89d9cf2198ba06b6662970f.lean/declarations/apply-eq-of-ispreconnected-iscompact-isopen--ce83273387d39bf9704198f8.md) | 125 | `result-track:ce83273387d39bf9704198f8381f7e009a0413f80f96a20dded23ad8e8676b94` |
| 5 | `theorem` | [isLocallyConstant](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant15c3fb6f1311d48705203bb5abe0e7ad7cfcd87fa89d9cf2198ba06b6662970f.lean/declarations/islocallyconstant--03e77c05d84ddaf6c370ed0b.md) | 156 | `result-track:03e77c05d84ddaf6c370ed0b728b8b9d9441ca2bb20e5546882fd578949c003b` |
| 6 | `theorem` | [apply_eq_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant15c3fb6f1311d48705203bb5abe0e7ad7cfcd87fa89d9cf2198ba06b6662970f.lean/declarations/apply-eq-of-compactspace--563b7a32b8adefb00af381eb.md) | 165 | `result-track:563b7a32b8adefb00af381eb604a4fac13aa4532291c622914c3e33c8dd9b867` |
| 7 | `theorem` | [exists_eq_const_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant15c3fb6f1311d48705203bb5abe0e7ad7cfcd87fa89d9cf2198ba06b6662970f.lean/declarations/exists-eq-const-of-compactspace--08b46f54b0ff8e66cef239f3.md) | 171 | `result-track:08b46f54b0ff8e66cef239f39e2d3a9a1337ef534029b8d841b8e64e22e2415b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
