# Verification target: GRWTSK.Topology.GeneralTopology.MulAction.Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "517de63ef204a2db408e4bf2356e8f96c3479e7e",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `517de63ef204a2db408e4bf2356e8f96c3479e7e`.

Source path: `GRWTSK/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.AddTorsor.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.SubMulAction` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Constructions` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.ConstMulAction` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ContinuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/declarations/continuoussmul--517370707b961ceea33817f5.md) | 48 | `declaration-track:517370707b961ceea33817f5806be2fbfce6b13205386e1100cf66b7d80e93a2` |
| 2 | `class` | [ContinuousVAdd](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/declarations/continuousvadd--abcbf2d37d52c975e5d49254.md) | 58 | `declaration-track:abcbf2d37d52c975e5d49254fc639be120b3484a192a9eda6b7fa48577718d04` |
| 3 | `lemma` | [IsScalarTower.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/declarations/isscalartower-continuoussmul--436c637416a128aef8700566.md) | 77 | `result-track:436c637416a128aef8700566afc3a1a7d1de3628e8f3b3b85566053e31fd7bf3` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/declarations/instance--532ea068c07e624ea23403d2.md) | 85 | `declaration-track:532ea068c07e624ea23403d2d48080b1821bfd0f69e9ca0f3497b83d4445ad5f` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/declarations/instance--3d0c408aa823f01401ef92f1.md) | 89 | `declaration-track:3d0c408aa823f01401ef92f118f27aeba894890d7faf3c608f9d57540b153107` |
| 6 | `theorem` | [ContinuousSMul.induced](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/declarations/continuoussmul-induced--3e75aa97ac695abfa560d465.md) | 92 | `result-track:3e75aa97ac695abfa560d465090520eab8e5fc512008ebe7d0fab40074a67d6f` |
| 7 | `theorem` | [Filter.Tendsto.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/declarations/filter-tendsto-smul--8ef367e1ae4b34f626701fdf.md) | 102 | `result-track:8ef367e1ae4b34f626701fdfa958ae7ab2c45bc42383d2862bb34be8df484317` |
| 8 | `theorem` | [Filter.Tendsto.smul_const](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/declarations/filter-tendsto-smul-const--c119b4c5d11a1ef57a5c7761.md) | 108 | `result-track:c119b4c5d11a1ef57a5c7761ac9d2b1be602a113a3e42186661bf763843fb25c` |
| 9 | `theorem` | [ContinuousWithinAt.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/declarations/continuouswithinat-smul--6450672afae3b3fe2408a6a7.md) | 115 | `result-track:6450672afae3b3fe2408a6a799222be8a12f1f1d1138be77914a03f6bb08d047` |
| 10 | `theorem` | [ContinuousAt.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/declarations/continuousat-smul--c5b2276e93ea6217c34a7b85.md) | 120 | `result-track:c5b2276e93ea6217c34a7b85f40855811be29fdfb0253e76d784e6eb8496dd72` |
| 11 | `theorem` | [ContinuousOn.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/declarations/continuouson-smul--a68072c5b05c9cdadab28319.md) | 125 | `result-track:a68072c5b05c9cdadab283199f90a9c55e678bcf105bfb472614d7f53361546a` |
| 12 | `theorem` | [Continuous.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/declarations/continuous-smul--c00312f92461600310916e71.md) | 129 | `result-track:c00312f92461600310916e7155d01ce2e9e30bdb8f942aaaab61db7c93a93c00` |
| 13 | `instance` | [ContinuousSMul.op](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/declarations/continuoussmul-op--081fecd68014842df4ace00e.md) | 135 | `declaration-track:081fecd68014842df4ace00e77260fe928cdd44fb221976aec38a79b8882999e` |
| 14 | `instance` | [MulOpposite.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/declarations/mulopposite-continuoussmul--88f3671791c7e01d574316e8.md) | 142 | `declaration-track:88f3671791c7e01d574316e8b156c170b020204b0645dfa0e68d43fd0cf26f7c` |
| 15 | `theorem` | [Specializes.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/declarations/specializes-smul--25de7cc19e8eaadf09baabf4.md) | 147 | `result-track:25de7cc19e8eaadf09baabf45dfd453f622fdbbcd02b4cb6cf4485daa540c60b` |
| 16 | `theorem` | [Inseparable.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/declarations/inseparable-smul--ce9c3e9c324fc80c89e09755.md) | 152 | `result-track:ce9c3e9c324fc80c89e097555b9377c71fa542e861fd1c275139cf31ec57306a` |
| 17 | `lemma` | [IsCompact.smul_set](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/declarations/iscompact-smul-set--05bba30f2f4754de4a3a3751.md) | 157 | `result-track:05bba30f2f4754de4a3a375145565b0f10ce942d7d5656435fc03ad5945b41a6` |
| 18 | `lemma` | [smul_set_closure_subset](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/declarations/smul-set-closure-subset--674b209ed8b56e040ebf76a2.md) | 163 | `result-track:674b209ed8b56e040ebf76a210c7fb8a09fae2c19128cd496a31fc07d84468a4` |
| 19 | `lemma` | [Topology.IsInducing.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/declarations/topology-isinducing-continuoussmul--994473b492d992676d0d0c2f.md) | 183 | `result-track:994473b492d992676d0d0c2f673f26c23a8e1b2343ae157a2e4c2b8f4382f30a` |
| 20 | `instance` | [SMulMemClass.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/declarations/smulmemclass-continuoussmul--13eb974f9d965dbbf3b89187.md) | 193 | `declaration-track:13eb974f9d965dbbf3b891876a5dfa06370ed5cbdfdc9be9db11dbe7ee423cca` |
| 21 | `instance` | [Units.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/declarations/units-continuoussmul--3e3ccb5ba3f4ca1a2e8909f6.md) | 204 | `declaration-track:3e3ccb5ba3f4ca1a2e8909f69aad7caa74b0ea620d51c50e94811c800da22e91` |
| 22 | `theorem` | [MulAction.continuousSMul_compHom](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/declarations/mulaction-continuoussmul-comphom--a054bdaffee699d9e55d1ed8.md) | 210 | `result-track:a054bdaffee699d9e55d1ed8b591f4c4e21a2555e5f1b5ba5e2edaa9347d36d7` |
| 23 | `instance` | [Submonoid.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/declarations/submonoid-continuoussmul--00a6779c2255df24af21e4b8.md) | 218 | `declaration-track:00a6779c2255df24af21e4b8b9a343528ca505ee2a0b1ad840f0748438d16592` |
| 24 | `instance` | [Subgroup.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/declarations/subgroup-continuoussmul--c2bfde7e8b5107bb2e79c4d7.md) | 228 | `declaration-track:c2bfde7e8b5107bb2e79c4d7313bc15701ad02af5628b183d4260b23b5b8c126` |
| 25 | `lemma` | [stabilizer_isOpen](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/declarations/stabilizer-isopen--28ed946deb1ce790a4b7d2b2.md) | 234 | `result-track:28ed946deb1ce790a4b7d2b242ebe4f598f331832ef251207c168a737bff6aef` |
| 26 | `instance` | [Prod.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/declarations/prod-continuoussmul--40d86924070a907bd300d124.md) | 240 | `declaration-track:40d86924070a907bd300d1246f63c6bed72bc2b852f3f43580726c2db3a87213` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/declarations/instance--0a8b8d2023ca9d6957f01d15.md) | 246 | `declaration-track:0a8b8d2023ca9d6957f01d155dda7516b199e7a73ebfd7e66aa370df56f3f0be` |
| 28 | `theorem` | [continuousSMul_sInf](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/declarations/continuoussmul-sinf--7bc8320635fa5a164dc8d846.md) | 259 | `result-track:7bc8320635fa5a164dc8d846f05dd0339590caff0f5302ca4c1673a33bbb48dc` |
| 29 | `theorem` | [continuousSMul_iInf](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/declarations/continuoussmul-iinf--08069bec4310fa5d63541a20.md) | 272 | `result-track:08069bec4310fa5d63541a209036842afd5471ff850c4d41191fd4d7989178d1` |
| 30 | `theorem` | [continuousSMul_inf](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/declarations/continuoussmul-inf--888eebf6c4b4c5a687b3d993.md) | 277 | `result-track:888eebf6c4b4c5a687b3d9936facd21bbd1660c224679b89c30d2eb116e7ab06` |
| 31 | `theorem` | [AddTorsor.connectedSpace](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/declarations/addtorsor-connectedspace--7188fe2ba8ae0726d688aace.md) | 293 | `result-track:7188fe2ba8ae0726d688aacead8a7bf9f777f51aa18eed4dd3e10da465fcbf13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
