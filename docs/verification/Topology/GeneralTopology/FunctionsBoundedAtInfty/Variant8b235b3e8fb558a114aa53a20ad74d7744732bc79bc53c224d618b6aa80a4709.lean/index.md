# Verification target: GRWTSK.Topology.GeneralTopology.FunctionsBoundedAtInfty.Variant8b235b3e8fb558a114aa53a20ad74d7744732bc79bc53c224d618b6aa80a4709

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2137c69568038c6a6e9368569c5efc473c387f4f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variant8b235b3e8fb558a114aa53a20ad74d7744732bc79bc53c224d618b6aa80a4709.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variant8b235b3e8fb558a114aa53a20ad74d7744732bc79bc53c224d618b6aa80a4709.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variant8b235b3e8fb558a114aa53a20ad74d7744732bc79bc53c224d618b6aa80a4709.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2137c69568038c6a6e9368569c5efc473c387f4f`.

Source path: `GRWTSK/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variant8b235b3e8fb558a114aa53a20ad74d7744732bc79bc53c224d618b6aa80a4709.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variant8b235b3e8fb558a114aa53a20ad74d7744732bc79bc53c224d618b6aa80a4709.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.UpperHalfPlane.Topology` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.ZeroAndBoundedAtFilter` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [atImInfty](../../../../../mathematics/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variant8b235b3e8fb558a114aa53a20ad74d7744732bc79bc53c224d618b6aa80a4709.lean/declarations/atiminfty--70cedf11b9db8b5ea0c4cf00.md) | 27 | `declaration-track:70cedf11b9db8b5ea0c4cf00f708d9b5bb1ab33efcff9e59a1036e560a23fa89` |
| 2 | `theorem` | [atImInfty_basis](../../../../../mathematics/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variant8b235b3e8fb558a114aa53a20ad74d7744732bc79bc53c224d618b6aa80a4709.lean/declarations/atiminfty-basis--cfc2775cdb534546d27543d5.md) | 30 | `result-track:cfc2775cdb534546d27543d562bf827a701fe8ffea6695c6121a32849391aa46` |
| 3 | `theorem` | [atImInfty_mem](../../../../../mathematics/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variant8b235b3e8fb558a114aa53a20ad74d7744732bc79bc53c224d618b6aa80a4709.lean/declarations/atiminfty-mem--5dfdfeb2cec00c0ebb52d913.md) | 33 | `result-track:5dfdfeb2cec00c0ebb52d9135e923797305d9c780bbbe937e829956675dacbee` |
| 4 | `def` | [IsBoundedAtImInfty](../../../../../mathematics/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variant8b235b3e8fb558a114aa53a20ad74d7744732bc79bc53c224d618b6aa80a4709.lean/declarations/isboundedatiminfty--2681809e86e9f6b942d47ddb.md) | 37 | `declaration-track:2681809e86e9f6b942d47ddb8dcaa2677646728e2621f6cb82a29303ae92a623` |
| 5 | `def` | [IsZeroAtImInfty](../../../../../mathematics/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variant8b235b3e8fb558a114aa53a20ad74d7744732bc79bc53c224d618b6aa80a4709.lean/declarations/iszeroatiminfty--8de577f1618742a961f123c2.md) | 41 | `declaration-track:8de577f1618742a961f123c2c3dea80cf83097b25444d751ccb3ff6891a72fb4` |
| 6 | `theorem` | [zero_form_isBoundedAtImInfty](../../../../../mathematics/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variant8b235b3e8fb558a114aa53a20ad74d7744732bc79bc53c224d618b6aa80a4709.lean/declarations/zero-form-isboundedatiminfty--73c8999441493f712fb9775e.md) | 44 | `result-track:73c8999441493f712fb9775ee193b267c707549a879381d44eb69c4dcfb575d2` |
| 7 | `def` | [zeroAtImInftySubmodule](../../../../../mathematics/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variant8b235b3e8fb558a114aa53a20ad74d7744732bc79bc53c224d618b6aa80a4709.lean/declarations/zeroatiminftysubmodule--a5a584e37e3b7867e3df9096.md) | 49 | `declaration-track:a5a584e37e3b7867e3df9096129ea5f31d40cad0caf93b677e6d026ea86bb9df` |
| 8 | `def` | [boundedAtImInftySubalgebra](../../../../../mathematics/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variant8b235b3e8fb558a114aa53a20ad74d7744732bc79bc53c224d618b6aa80a4709.lean/declarations/boundedatiminftysubalgebra--63efab13dfae1838a8153355.md) | 53 | `declaration-track:63efab13dfae1838a815335531c29e43b08ef32581d683db0e84f5c00a0b1464` |
| 9 | `theorem` | [isBoundedAtImInfty_iff](../../../../../mathematics/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variant8b235b3e8fb558a114aa53a20ad74d7744732bc79bc53c224d618b6aa80a4709.lean/declarations/isboundedatiminfty-iff--c1736b755059eac54d828f8a.md) | 56 | `result-track:c1736b755059eac54d828f8a967cdc5ec394f40bb047fd238f91d86faa52913f` |
| 10 | `theorem` | [isZeroAtImInfty_iff](../../../../../mathematics/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variant8b235b3e8fb558a114aa53a20ad74d7744732bc79bc53c224d618b6aa80a4709.lean/declarations/iszeroatiminfty-iff--b30b9d18b59f95c210bd0967.md) | 61 | `result-track:b30b9d18b59f95c210bd096763c4ab75ff3ae79a498d42cf81c9b2dc36e50547` |
| 11 | `theorem` | [IsZeroAtImInfty.isBoundedAtImInfty](../../../../../mathematics/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variant8b235b3e8fb558a114aa53a20ad74d7744732bc79bc53c224d618b6aa80a4709.lean/declarations/iszeroatiminfty-isboundedatiminfty--a3f3e6ed0af58c1c30121368.md) | 65 | `result-track:a3f3e6ed0af58c1c30121368d2a0ae176ac123be852b6e76090494465d45b0df` |
| 12 | `lemma` | [tendsto_comap_im_ofComplex](../../../../../mathematics/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variant8b235b3e8fb558a114aa53a20ad74d7744732bc79bc53c224d618b6aa80a4709.lean/declarations/tendsto-comap-im-ofcomplex--078f623e54907a939a7fc6d4.md) | 69 | `result-track:078f623e54907a939a7fc6d49542ca5351b4aa87c2bf72867c4d4869ff7abeba` |
| 13 | `lemma` | [tendsto_coe_atImInfty](../../../../../mathematics/Topology/GeneralTopology/FunctionsBoundedAtInfty/Variant8b235b3e8fb558a114aa53a20ad74d7744732bc79bc53c224d618b6aa80a4709.lean/declarations/tendsto-coe-atiminfty--2de1662047ebae7d8a2cea7a.md) | 76 | `result-track:2de1662047ebae7d8a2cea7a69ceea21beb6b5249eb3ed10f628cf6dfd6a0eeb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
