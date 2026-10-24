# Verification target: GRWTSK.Topology.GeneralTopology.Complex.Variant5c53b8fe78c1e5cc510743a3aee61bda6a46ced1666e68ee3a12a7508d82b2ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7eae7c83ee47c6ea67b4331aa0c11daa12c71ac1",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Complex/Variant5c53b8fe78c1e5cc510743a3aee61bda6a46ced1666e68ee3a12a7508d82b2ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant5c53b8fe78c1e5cc510743a3aee61bda6a46ced1666e68ee3a12a7508d82b2ee.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant5c53b8fe78c1e5cc510743a3aee61bda6a46ced1666e68ee3a12a7508d82b2ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7eae7c83ee47c6ea67b4331aa0c11daa12c71ac1`.

Source path: `GRWTSK/Topology/GeneralTopology/Complex/Variant5c53b8fe78c1e5cc510743a3aee61bda6a46ced1666e68ee3a12a7508d82b2ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Complex/Variant5c53b8fe78c1e5cc510743a3aee61bda6a46ced1666e68ee3a12a7508d82b2ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.Notation` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.MFDeriv.SpecificFunctions` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Complex.norm_eventually_eq_of_mdifferentiableAt_of_isLocalMax](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant5c53b8fe78c1e5cc510743a3aee61bda6a46ced1666e68ee3a12a7508d82b2ee.lean/declarations/complex-norm-eventually-eq-of-mdifferentiableat-of-islocalmax--4dee0e7f10bef6dbb50aeb9e.md) | 65 | `result-track:4dee0e7f10bef6dbb50aeb9e8893c9a69d3763b6ad18a7d82136250020b47251` |
| 2 | `theorem` | [norm_eqOn_of_isPreconnected_of_isMaxOn](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant5c53b8fe78c1e5cc510743a3aee61bda6a46ced1666e68ee3a12a7508d82b2ee.lean/declarations/norm-eqon-of-ispreconnected-of-ismaxon--674e54eaac3e7a08aaf8efec.md) | 97 | `result-track:674e54eaac3e7a08aaf8efecf684702f439736f780a83a42b5484001427f7563` |
| 3 | `theorem` | [eqOn_of_isPreconnected_of_isMaxOn_norm](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant5c53b8fe78c1e5cc510743a3aee61bda6a46ced1666e68ee3a12a7508d82b2ee.lean/declarations/eqon-of-ispreconnected-of-ismaxon-norm--98bf7636f21aa540b66bc93f.md) | 122 | `result-track:98bf7636f21aa540b66bc93f21a47b61739ba6bf574843467adf6647bd0f2c5d` |
| 4 | `theorem` | [apply_eq_of_isPreconnected_isCompact_isOpen](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant5c53b8fe78c1e5cc510743a3aee61bda6a46ced1666e68ee3a12a7508d82b2ee.lean/declarations/apply-eq-of-ispreconnected-iscompact-isopen--cc5817326a816cfee364732e.md) | 133 | `result-track:cc5817326a816cfee364732e0ebef76e75812451e2afa8880111fefc4d29a59f` |
| 5 | `theorem` | [isLocallyConstant](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant5c53b8fe78c1e5cc510743a3aee61bda6a46ced1666e68ee3a12a7508d82b2ee.lean/declarations/islocallyconstant--518709cd7f9f8ca4e7c2a524.md) | 164 | `result-track:518709cd7f9f8ca4e7c2a5240b6ad21be29d1aaee32fcfcd44ef147a7012c58a` |
| 6 | `theorem` | [apply_eq_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant5c53b8fe78c1e5cc510743a3aee61bda6a46ced1666e68ee3a12a7508d82b2ee.lean/declarations/apply-eq-of-compactspace--dd1cc1c35fc3673729f61c63.md) | 173 | `result-track:dd1cc1c35fc3673729f61c63af6e58aeb3ce62bb035521b69c8ff319a1e36db8` |
| 7 | `theorem` | [exists_eq_const_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant5c53b8fe78c1e5cc510743a3aee61bda6a46ced1666e68ee3a12a7508d82b2ee.lean/declarations/exists-eq-const-of-compactspace--d743a4de49d32bb5d45725b3.md) | 179 | `result-track:d743a4de49d32bb5d45725b38c483488204885796dc7997605eefd6d9bbfe1de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
