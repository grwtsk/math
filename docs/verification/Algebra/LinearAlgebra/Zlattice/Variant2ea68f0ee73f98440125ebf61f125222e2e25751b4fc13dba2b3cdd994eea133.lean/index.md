# Verification target: GRWTSK.Algebra.LinearAlgebra.Zlattice.Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "690a294caa9cbc3b7d59aa8d6edc6ba1334a27e8",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `690a294caa9cbc3b7d59aa8d6edc6ba1334a27e8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.FundamentalDomain` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Module` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fundamentalDomain](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/fundamentaldomain--0a2b5eaa71f1991fd5df5b81.md) | 67 | `declaration-track:0a2b5eaa71f1991fd5df5b81b25c64296ef3a3bb5f6a020447e56c855e834791` |
| 2 | `theorem` | [mem_fundamentalDomain](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/mem-fundamentaldomain--f0bad1f8e482593fd468c9c9.md) | 71 | `result-track:f0bad1f8e482593fd468c9c9b1119684af666361e5db5afe2dcd347177e4cf09` |
| 3 | `def` | [floor](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/floor--936dae52715c29beefe21932.md) | 83 | `declaration-track:936dae52715c29beefe21932abe1c0db93e44a65f3854c489b5deac7300eebcd` |
| 4 | `def` | [ceil](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/ceil--596bb3c8da4351007e7fb98d.md) | 88 | `declaration-track:596bb3c8da4351007e7fb98d2236f2f72cf6b0c6aaa36256d87abc70d09891cc` |
| 5 | `theorem` | [repr_floor_apply](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/repr-floor-apply--3bf8201d26e5390fc6289b56.md) | 92 | `result-track:3bf8201d26e5390fc6289b5681c45694455764df17f52d9ce5c8373e74ed6764` |
| 6 | `theorem` | [repr_ceil_apply](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/repr-ceil-apply--9e198d28e67346176e98466c.md) | 99 | `result-track:9e198d28e67346176e98466c053d94819e5b4237e64e89601f84fd9aff1f0679` |
| 7 | `theorem` | [floor_eq_self_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/floor-eq-self-of-mem--bf71521b039a4053f43a8b36.md) | 106 | `result-track:bf71521b039a4053f43a8b36952176fc3ad1580485159caec5d374ffd0e9d704` |
| 8 | `theorem` | [ceil_eq_self_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/ceil-eq-self-of-mem--67812075aa2532705d639c37.md) | 116 | `result-track:67812075aa2532705d639c3710c5328df6e03f05c2fd7ae4a62621ffe9bb881a` |
| 9 | `def` | [fract](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/fract--720f2bcd250e02dc5b1db135.md) | 128 | `declaration-track:720f2bcd250e02dc5b1db135e68b6f7f16598e07cb6f776c58b42ec2e416460f` |
| 10 | `theorem` | [fract_apply](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/fract-apply--74587b5d66f1efc69f90f7e8.md) | 131 | `result-track:74587b5d66f1efc69f90f7e843227557953f1e15eecdf8f82f8607de960880d5` |
| 11 | `theorem` | [repr_fract_apply](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/repr-fract-apply--8324fd29764c0e7ee29ef7b5.md) | 135 | `result-track:8324fd29764c0e7ee29ef7b56032a5587ad34e418b6f33ccb250b1b474f34ff7` |
| 12 | `theorem` | [fract_fract](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/fract-fract--08ece6e42f045bee8244157c.md) | 140 | `result-track:08ece6e42f045bee8244157ca9e2ef77a738555ba7b1a96cb896898426eaa2cf` |
| 13 | `theorem` | [fract_zspan_add](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/fract-zspan-add--acdb1300720eaa6ca282242e.md) | 145 | `result-track:acdb1300720eaa6ca282242e92d92f5e39140341982b253c808ac2a75c4e1bc7` |
| 14 | `theorem` | [fract_add_zspan](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/fract-add-zspan--9d61eb128c9ed24f65663d90.md) | 156 | `result-track:9d61eb128c9ed24f65663d90fb7bc798e7cf44eea4a419627b010c542fd5948f` |
| 15 | `theorem` | [fract_eq_self](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/fract-eq-self--db72c2c18e5d48b9f2ee64d8.md) | 162 | `result-track:db72c2c18e5d48b9f2ee64d8cbe51c5a526070bc0d20cd3b26142f86d5636542` |
| 16 | `theorem` | [fract_mem_fundamentalDomain](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/fract-mem-fundamentaldomain--131742c337e2584991771e3d.md) | 169 | `result-track:131742c337e2584991771e3de16b47ff6af5e0372fc73d9fd80ed701459146d1` |
| 17 | `def` | [fract_restrict](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/fract-restrict--49fb8c92d4d65e6be2ab9b3b.md) | 174 | `declaration-track:49fb8c92d4d65e6be2ab9b3bf6d4bb8f7f5009ab438de4e0f5ddd2afb4d006f8` |
| 18 | `theorem` | [fract_restrict_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/fract-restrict-surjective--3853c5dd1034948d127f7029.md) | 176 | `result-track:3853c5dd1034948d127f7029e6e1a3668cd104e1421f8296230d98b61ac21a02` |
| 19 | `theorem` | [fract_restrict_apply](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/fract-restrict-apply--62eba3245d4a1e40a36bc36f.md) | 180 | `result-track:62eba3245d4a1e40a36bc36f82fff0e9739a487cac1ed0bbf63f8ddebb749a5f` |
| 20 | `theorem` | [fract_eq_fract](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/fract-eq-fract--7ac8c60c3243c8c41c5eab8a.md) | 182 | `result-track:7ac8c60c3243c8c41c5eab8ae7865bc45e421fa84ee6a40ba6ef3f4632a6df6e` |
| 21 | `theorem` | [norm_fract_le](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/norm-fract-le--b6f840f9535a8b4b97dcd8d0.md) | 190 | `result-track:b6f840f9535a8b4b97dcd8d098c26e9cb50d7294212fbdee7eb4c589cc488f62` |
| 22 | `theorem` | [coe_floor_self](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/coe-floor-self--9165b5512d5c773d9ba5630a.md) | 212 | `result-track:9165b5512d5c773d9ba5630a8fed6dfcdf95c71bcf9927df1c5c0b298f856b01` |
| 23 | `theorem` | [coe_fract_self](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/coe-fract-self--66b1ecc93548818d02ab0f7a.md) | 217 | `result-track:66b1ecc93548818d02ab0f7a22e5e29dcdad41837487db1e008e410c5411de8d` |
| 24 | `theorem` | [fundamentalDomain_bounded](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/fundamentaldomain-bounded--3c82c9be3be3a53e9bede0cb.md) | 225 | `result-track:3c82c9be3be3a53e9bede0cbdeb01a2d43c45ca76daba674385c9f4f4f80aac4` |
| 25 | `theorem` | [vadd_mem_fundamentalDomain](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/vadd-mem-fundamentaldomain--7166cc9c7a3eeef2455d96b7.md) | 236 | `result-track:7166cc9c7a3eeef2455d96b72fbeea68ad9c6252a051b6d83fc992465e66d237` |
| 26 | `theorem` | [exist_unique_vadd_mem_fundamentalDomain](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/exist-unique-vadd-mem-fundamentaldomain--7fecbd2957b6dff9d0c208a5.md) | 243 | `result-track:7fecbd2957b6dff9d0c208a5ea05de33c47be6ed1d6a6532dc45daece9fd410f` |
| 27 | `def` | [QuotientEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/quotientequiv--ab5abb3f028f810075aab556.md) | 253 | `declaration-track:ab5abb3f028f810075aab556241c2e24bc7e3efd4d4c0dfe23bad83090f97a45` |
| 28 | `theorem` | [quotientEquiv_apply_mk](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/quotientequiv-apply-mk--8ec4365ecd37fd1f7096b071.md) | 269 | `result-track:8ec4365ecd37fd1f7096b0719770b046f1251429041edfbffac8795cca2ee8c5` |
| 29 | `theorem` | [quotientEquiv.symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/quotientequiv-symm-apply--609d2222c047a37651776f48.md) | 273 | `result-track:609d2222c047a37651776f480be9312f79aff8d8150286f2cf2f3b575f420300` |
| 30 | `theorem` | [fundamentalDomain_measurableSet](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/fundamentaldomain-measurableset--10d6a6e4bc7c579bedee73af.md) | 287 | `result-track:10d6a6e4bc7c579bedee73aff3a45880a57b6820bfebf05f9668c89992efa038` |
| 31 | `theorem` | [isAddFundamentalDomain](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/isaddfundamentaldomain--b5ea745143ccbd39c1ccd4c4.md) | 303 | `result-track:b5ea745143ccbd39c1ccd4c4dbcf6f781559504470721924c3f480507c4144ea` |
| 32 | `theorem` | [Zlattice.FG](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/zlattice-fg--7e43a5da4f954aa10dd71bfb.md) | 324 | `result-track:7e43a5da4f954aa10dd71bfb3e2f16baf81a150705f2766530a518b5352a3f8a` |
| 33 | `theorem` | [Zlattice.module_finite](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/zlattice-module-finite--bb93d0a56e9c147b712c09ef.md) | 359 | `result-track:bb93d0a56e9c147b712c09ef534fdfe1e121b45a310d2b963896fbe2c7e1db09` |
| 34 | `theorem` | [Zlattice.module_free](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/zlattice-module-free--3087fc483e1e35b61f5a4a8b.md) | 362 | `result-track:3087fc483e1e35b61f5a4a8bd54556c515dadde17b72a12f3c9e310226c3968f` |
| 35 | `theorem` | [Zlattice.rank](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/declarations/zlattice-rank--0c32f04a6eb91962c619f4ed.md) | 373 | `result-track:0c32f04a6eb91962c619f4edd67434fab8a67447d23080e420a25a37521761e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
