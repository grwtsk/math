# Verification target: GRWTSK.Topology.GeneralTopology.MulAction.Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85e2b72049f1eae080a9a5fe857ee15e22b60241",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MulAction/Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85e2b72049f1eae080a9a5fe857ee15e22b60241`.

Source path: `GRWTSK/Topology/GeneralTopology/MulAction/Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MulAction/Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.AddTorsor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Constructions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.ConstMulAction` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ContinuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean/declarations/continuoussmul--699efdec3ddd5ace1555e659.md) | 47 | `declaration-track:699efdec3ddd5ace1555e65934c682757713d56a693bbd9bee8efa137ba7145b` |
| 2 | `class` | [ContinuousVAdd](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean/declarations/continuousvadd--5b8004347cb94f656a1dc1df.md) | 58 | `declaration-track:5b8004347cb94f656a1dc1df6207d1718d63e1620821341c74808347ffe99cd9` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean/declarations/instance--d2bb75331c897e9cbe313387.md) | 77 | `declaration-track:d2bb75331c897e9cbe313387f57a5eb020290654168fda7b0ea0647521fe3b60` |
| 4 | `theorem` | [Filter.Tendsto.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean/declarations/filter-tendsto-smul--6c1a624b61d2b63bebf7c688.md) | 83 | `result-track:6c1a624b61d2b63bebf7c6881f29a4818005d22009d8885924c91e08ca6e0222` |
| 5 | `theorem` | [Filter.Tendsto.smul_const](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean/declarations/filter-tendsto-smul-const--eb3e0b05168c94b3377c9713.md) | 91 | `result-track:eb3e0b05168c94b3377c9713de10add9c57e8349d4c0a69fc64a19faf8a0c0b0` |
| 6 | `theorem` | [ContinuousWithinAt.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean/declarations/continuouswithinat-smul--654f05c82cab80932cf47a40.md) | 100 | `result-track:654f05c82cab80932cf47a4078d23ace4a3cbd0b25e01def2d738307459dafa0` |
| 7 | `theorem` | [ContinuousAt.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean/declarations/continuousat-smul--059608186b95b039106573fe.md) | 107 | `result-track:059608186b95b039106573fec217408629ca9a69c08694f90f7074c68eea2bd3` |
| 8 | `theorem` | [ContinuousOn.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean/declarations/continuouson-smul--8d727a9e5f09ab0ca264679c.md) | 114 | `result-track:8d727a9e5f09ab0ca264679c6312b5e87c18a0d5df10242f86062f284485a43c` |
| 9 | `theorem` | [Continuous.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean/declarations/continuous-smul--d37b02df85a8b3f0d594d941.md) | 120 | `result-track:d37b02df85a8b3f0d594d941f243e10c35b0ff213a3aa85bbb53e6acfc3d4f78` |
| 10 | `instance` | [ContinuousSMul.op](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean/declarations/continuoussmul-op--33ff15b4cebfa4451bfe8dfb.md) | 128 | `declaration-track:33ff15b4cebfa4451bfe8dfb176974268d28926fb2128777d8a359178e533e0c` |
| 11 | `instance` | [MulOpposite.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean/declarations/mulopposite-continuoussmul--d4555de84b224e5b48a60ec4.md) | 137 | `declaration-track:d4555de84b224e5b48a60ec4c8e1d94fad35a65e9bfdb9a43d4e23ef3147db2d` |
| 12 | `instance` | [Units.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean/declarations/units-continuoussmul--09d1da1330d31aa3228abb6e.md) | 150 | `declaration-track:09d1da1330d31aa3228abb6e4b64edd7454604f4bcf2bd0507d168ed700b0fdc` |
| 13 | `instance` | [Submonoid.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean/declarations/submonoid-continuoussmul--71552cda8813d41f044b6997.md) | 164 | `declaration-track:71552cda8813d41f044b6997b3bf714cb0ca37579f8032b99fe5877614a43054` |
| 14 | `instance` | [Subgroup.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean/declarations/subgroup-continuoussmul--5bc29cbc48420415e1d18cbf.md) | 168 | `declaration-track:5bc29cbc48420415e1d18cbf6aa36aba109e9d1d623ff1c2fa3260738b940222` |
| 15 | `instance` | [Prod.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean/declarations/prod-continuoussmul--b3d428376665165c512655e3.md) | 174 | `declaration-track:b3d428376665165c512655e36552dffae9c1e5c16c0edcaaa87b4fcf6279c757` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean/declarations/instance--2c5be679c0cf22d0aad8a694.md) | 180 | `declaration-track:2c5be679c0cf22d0aad8a69464addacddea869466009bf7c3af28348703d5192` |
| 17 | `theorem` | [continuousSMul_sInf](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean/declarations/continuoussmul-sinf--51ba4c93c8ebe8cf6d0ae5b8.md) | 193 | `result-track:51ba4c93c8ebe8cf6d0ae5b8e638d3cf9be61a70d12cbc97851aee761ee6d088` |
| 18 | `theorem` | [continuousSMul_iInf](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean/declarations/continuoussmul-iinf--475a042471f1993d08f870b7.md) | 208 | `result-track:475a042471f1993d08f870b71704cbbb625c383695c9848ee219c571aa475a92` |
| 19 | `theorem` | [continuousSMul_inf](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean/declarations/continuoussmul-inf--f6e5a6a6bf8fad1efeeb314c.md) | 215 | `result-track:f6e5a6a6bf8fad1efeeb314cb5588e4368808842a8a267e84dc7ad41bbc3b1af` |
| 20 | `theorem` | [AddTorsor.connectedSpace](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean/declarations/addtorsor-connectedspace--eb324c80c6acdaf5155367a3.md) | 233 | `result-track:eb324c80c6acdaf5155367a3974316bbb3f3a0a75b2e61373ca51901afcdad80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
