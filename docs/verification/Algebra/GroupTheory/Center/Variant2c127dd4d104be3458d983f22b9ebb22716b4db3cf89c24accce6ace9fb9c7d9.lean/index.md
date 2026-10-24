# Verification target: GRWTSK.Algebra.GroupTheory.Center.Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "addceff42489071ce8a71480f67b6006dfbd4e60",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Center/Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `addceff42489071ce8a71480f67b6006dfbd4e60`.

Source path: `GRWTSK/Algebra/GroupTheory/Center/Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Center/Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subsemigroup.Center` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9.lean/declarations/center--68b550d20196a9c640797dc4.md) | 35 | `declaration-track:68b550d20196a9c640797dc47fc3e76c087c652f7d6b1eb1fab7e742d73eaadd` |
| 2 | `theorem` | [coe_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9.lean/declarations/coe-center--be40d8e0aad6fb2b87bce518.md) | 41 | `result-track:be40d8e0aad6fb2b87bce518d8ecae0e47e2c1fbabd94c519ee40efddd328525` |
| 3 | `theorem` | [center_toSubsemigroup](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9.lean/declarations/center-tosubsemigroup--0cdb348ed8461983b2af83c6.md) | 45 | `result-track:0cdb348ed8461983b2af83c644cb8984451f199be329e325066958447f1bbcee` |
| 4 | `abbrev` | [center.commMonoid'](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9.lean/declarations/center-commmonoid--1546dcf3d2bf7e7f60242c8e.md) | 55 | `declaration-track:1546dcf3d2bf7e7f60242c8ea80a26ef96924a27d3812e2c56064404a002f500` |
| 5 | `instance` | [center.commMonoid](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9.lean/declarations/center-commmonoid--bf9136cdcb8d6cce1af988b2.md) | 66 | `declaration-track:bf9136cdcb8d6cce1af988b21b0252c4deaea77dc65294edaf550faec66bb8b4` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9.lean/declarations/example--25f6844074b795c58033ce46.md) | 70 | `declaration-track:25f6844074b795c58033ce4655cb4e07d5d870c49cec030fc52acb87cc3a8372` |
| 7 | `theorem` | [mem_center_iff](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9.lean/declarations/mem-center-iff--5f800059641ca46b448b17ca.md) | 74 | `result-track:5f800059641ca46b448b17ca7dc550af22777690a75304ef01ca02f912bf5f30` |
| 8 | `instance` | [decidableMemCenter](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9.lean/declarations/decidablememcenter--1251b0153f90eeac84203cdf.md) | 79 | `declaration-track:1251b0153f90eeac84203cdf05ce4d8a6ac329fd16f0d84722361e65100acab9` |
| 9 | `instance` | [center.smulCommClass_left](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9.lean/declarations/center-smulcommclass-left--5c4a5e3dc87beba9b6c4141a.md) | 85 | `declaration-track:5c4a5e3dc87beba9b6c4141ac64b4f7ce9c278137b76e9ec0d57ca45f94bddbc` |
| 10 | `instance` | [center.smulCommClass_right](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9.lean/declarations/center-smulcommclass-right--c07e82c068fb5affeee2c0fd.md) | 89 | `declaration-track:c07e82c068fb5affeee2c0fd38605671b5bca8b25b381254e7b65f74e6efa47d` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9.lean/declarations/example--638b2c177896f6af62de47bc.md) | 95 | `declaration-track:638b2c177896f6af62de47bcc58897f90850f5435cc91dae1a28a0cffc1d8df9` |
| 12 | `theorem` | [center_eq_top](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9.lean/declarations/center-eq-top--cf5d75852c0b264307bf8905.md) | 104 | `result-track:cf5d75852c0b264307bf8905b60ea6e560cfae814e73d48a9db78d012c54add8` |
| 13 | `def` | [unitsCenterToCenterUnits](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9.lean/declarations/unitscentertocenterunits--a0498ba1f5f87b8b66557750.md) | 118 | `declaration-track:a0498ba1f5f87b8b665577506e14039f467502b58c009262328ef48c252283e4` |
| 14 | `theorem` | [unitsCenterToCenterUnits_injective](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9.lean/declarations/unitscentertocenterunits-injective--33e10bef638d8e98368ee82e.md) | 126 | `result-track:33e10bef638d8e98368ee82ee2c972533e1ed5917b8f0b2add49fbe1ae32fd7a` |
| 15 | `theorem` | [_root_.MulEquivClass.apply_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9.lean/declarations/root-mulequivclass-apply-mem-center--0e42108f6ababa641af0688f.md) | 134 | `result-track:0e42108f6ababa641af0688f8809571caebc67dc2703367e8883b68d0a54447c` |
| 16 | `theorem` | [_root_.MulEquivClass.apply_mem_center_iff](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9.lean/declarations/root-mulequivclass-apply-mem-center-iff--f2456ced6c3f5514db247af6.md) | 142 | `result-track:f2456ced6c3f5514db247af6e1f01e50ae9a461caff1e9fc445771f4c4fbaad1` |
| 17 | `def` | [Subsemigroup.centerCongr](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9.lean/declarations/subsemigroup-centercongr--50a7f505b59978e51aa491f5.md) | 150 | `declaration-track:50a7f505b59978e51aa491f5f5306584a9e2c2d8ca1f5325c1c7c0aedd90ee5e` |
| 18 | `def` | [Submonoid.centerCongr](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9.lean/declarations/submonoid-centercongr--30989291fcfb8fe77af89293.md) | 159 | `declaration-track:30989291fcfb8fe77af892934a9adcf5ae8d2d42ae05d968cbd112387399d73d` |
| 19 | `theorem` | [MulOpposite.op_mem_center_iff](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9.lean/declarations/mulopposite-op-mem-center-iff--a04bedd205507262765d0afa.md) | 162 | `result-track:a04bedd205507262765d0afa25a673f3082bbaed7801a4c40a24748a835b6350` |
| 20 | `theorem` | [MulOpposite.unop_mem_center_iff](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9.lean/declarations/mulopposite-unop-mem-center-iff--500f482c39086950bf62e5fe.md) | 166 | `result-track:500f482c39086950bf62e5fea6ec76a68c48262f713dcff5e3885c5aeda59b4e` |
| 21 | `def` | [Subsemigroup.centerToMulOpposite](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9.lean/declarations/subsemigroup-centertomulopposite--86dbc8a32904dd30f52f42a3.md) | 173 | `declaration-track:86dbc8a32904dd30f52f42a3f2c4413846cf1cae2194ff2ef0368f085e08a511` |
| 22 | `def` | [Submonoid.centerToMulOpposite](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2c127dd4d104be3458d983f22b9ebb22716b4db3cf89c24accce6ace9fb9c7d9.lean/declarations/submonoid-centertomulopposite--aecca3131f91edad779be460.md) | 183 | `declaration-track:aecca3131f91edad779be460695a7bf9058be1082119b28303e7fd155234870c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
