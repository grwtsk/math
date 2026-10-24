# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsConnected.Variant4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bf090980ae4ad4678be3ccf99a96fb2226cc0f4",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bf090980ae4ad4678be3ccf99a96fb2226cc0f4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Types.Colimits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.IsConnected` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Final` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.HomCongr` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [constPUnitFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean/declarations/constpunitfunctor--f291de92aed2c8e23da427bf.md) | 49 | `declaration-track:f291de92aed2c8e23da427bf08e0e541a8e66c490f83958a70f5f403d51075c6` |
| 2 | `def` | [pUnitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean/declarations/punitcocone--80d06473b5522ccf9b7f07be.md) | 53 | `declaration-track:80d06473b5522ccf9b7f07be4c00a14e7aa989fdc109a0f8f36e57ddd5808a9e` |
| 3 | `def` | [isColimitPUnitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean/declarations/iscolimitpunitcocone--37e6404cd6c2d5e0f1ba0e5d.md) | 59 | `declaration-track:37e6404cd6c2d5e0f1ba0e5dbc522729ed2e65c23772538140fc6581ad27b528` |
| 4 | `instance` | [instHasColimitConstPUnitFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean/declarations/insthascolimitconstpunitfunctor--3bffc4e134d4fc83f4d3d55d.md) | 70 | `declaration-track:3bffc4e134d4fc83f4d3d55daecf852d1867ac7971d0c0171bac8bb11ea12d8d` |
| 5 | `instance` | [instSubsingletonColimitPUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean/declarations/instsubsingletoncolimitpunit--261a3f7b466912a73a657433.md) | 73 | `declaration-track:261a3f7b466912a73a65743349c0d91d8c344db3f3afd16e13bbf8c99f336e50` |
| 6 | `def` | [colimitConstPUnitIsoPUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean/declarations/colimitconstpunitisopunit--c22ee2e315d78769f04c7b70.md) | 83 | `declaration-track:c22ee2e315d78769f04c7b707d59f548df72fecab30fef897b9c028fa05dfe67` |
| 7 | `theorem` | [zigzag_of_eqvGen_quot_rel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean/declarations/zigzag-of-eqvgen-quot-rel--4972bc37f25ee81461af5919.md) | 89 | `result-track:4972bc37f25ee81461af5919308c6295ab1d11881fae5aac2d95d1c0c989529b` |
| 8 | `theorem` | [isConnected_iff_colimit_constPUnitFunctor_iso_pUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean/declarations/isconnected-iff-colimit-constpunitfunctor-iso-punit--ddcef14b226e310d042256a0.md) | 99 | `result-track:ddcef14b226e310d042256a0c7c862fc4f754e613dfeaf3b64a07e3c0ea2d2f8` |
| 9 | `theorem` | [isConnected_iff_isColimit_pUnitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean/declarations/isconnected-iff-iscolimit-punitcocone--52fb5f24c1d6e76cabcbf5b2.md) | 108 | `result-track:52fb5f24c1d6e76cabcbf5b2bbf8f792d147c0451242a01e319cab77086597a8` |
| 10 | `theorem` | [isConnected_iff_of_final](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean/declarations/isconnected-iff-of-final--d591beae7d74e953ebf60d87.md) | 127 | `result-track:d591beae7d74e953ebf60d87c494e5894a2216f70e880c9e5d3cba0bf5f482f6` |
| 11 | `theorem` | [isConnected_iff_of_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean/declarations/isconnected-iff-of-initial--88dee892ef2814a7627a0d91.md) | 134 | `result-track:88dee892ef2814a7627a0d91d4babc049d958e58021487388ee633b4ad06234b` |
| 12 | `lemma` | [isConnected_of_isInitial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean/declarations/isconnected-of-isinitial--fda4e98de8288caaed09f82e.md) | 145 | `result-track:fda4e98de8288caaed09f82eae460b66c429e4bd7e392bd326a7d431dbe3af75` |
| 13 | `lemma` | [isConnected_of_isTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean/declarations/isconnected-of-isterminal--a2a3dcc967915b4997c9802e.md) | 155 | `result-track:a2a3dcc967915b4997c9802ee140f42991e685ddeb4648156c7bc1058e405c43` |
| 14 | `lemma` | [isConnected_of_hasInitial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean/declarations/isconnected-of-hasinitial--ddcdebb2c7e6e8211848ff83.md) | 165 | `result-track:ddcdebb2c7e6e8211848ff838fedaf7349dd61d25239d14585ad2f205bbc1c6c` |
| 15 | `lemma` | [isConnected_of_hasTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean/declarations/isconnected-of-hasterminal--9c999880c029fabfc5fbbadd.md) | 168 | `result-track:9c999880c029fabfc5fbbadd677da9abde38af29c9c5742e02ddeb8a5dafb1b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
