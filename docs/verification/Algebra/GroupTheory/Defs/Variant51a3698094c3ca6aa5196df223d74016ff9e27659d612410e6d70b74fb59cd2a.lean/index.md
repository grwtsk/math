# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f64057d795abe8456e0ab34ba7b7b4bb3334271",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f64057d795abe8456e0ab34ba7b7b4bb3334271`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.GroupAction.ConjAct` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.SemidirectProduct` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AddGroupExtension](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/addgroupextension--e299e28a07c77d32d877f5d0.md) | 56 | `declaration-track:e299e28a07c77d32d877f5d071c085357c9c13604c8b1a1d5bac361d19e72d61` |
| 2 | `structure` | [GroupExtension](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/groupextension--c2a2ddbca0cb117c8f73cd14.md) | 70 | `declaration-track:c2a2ddbca0cb117c8f73cd142e68ac794b2f1ddbf3c0f7cbcfe29923d5ab3b2d` |
| 3 | `structure` | [Equiv](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/equiv--87dd73427593e70d9e633fd4.md) | 91 | `declaration-track:87dd73427593e70d9e633fd4af2a4a2c61c836a43d4700f42266a49f597154f5` |
| 4 | `structure` | [Section](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/section--af4dd3cd617237a1703992d9.md) | 98 | `declaration-track:af4dd3cd617237a1703992d9214c9ca73e4f5152544a32cfed68a78423c29782` |
| 5 | `structure` | [Splitting](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/splitting--790f72d10bb24af7ee76a231.md) | 105 | `declaration-track:790f72d10bb24af7ee76a231d321c43e174b652dfbbf01f53d62ab4f8b24f370` |
| 6 | `instance` | [normal_inl_range](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/normal-inl-range--d48e3a3f8cb663200574d0c0.md) | 118 | `declaration-track:d48e3a3f8cb663200574d0c06dc922ef2c7c8f4fa6033bfe6b9af640c5de9e36` |
| 7 | `theorem` | [rightHom_inl](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/righthom-inl--98237c111fe036699a99dd9e.md) | 122 | `result-track:98237c111fe036699a99dd9e043a030a59f80d0e4c050c908218090dd1633ab8` |
| 8 | `theorem` | [rightHom_comp_inl](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/righthom-comp-inl--955a8cb2c12e03986ecda738.md) | 127 | `result-track:955a8cb2c12e03986ecda73867cc8ef9f91c7aa1a6343c2c1f836f34730fcfbf` |
| 9 | `def` | [conjAct](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/conjact--f037875a3bf086737568ed45.md) | 133 | `declaration-track:f037875a3bf086737568ed459c5e0ba8c214d181c33181adea83e6ec11d6ffe3` |
| 10 | `theorem` | [inl_conjAct_comm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/inl-conjact-comm--3ceced746d0be0cf11f38435.md) | 144 | `result-track:3ceced746d0be0cf11f38435afebf6b18e958c53ac63322f0139c6bbb99f946c` |
| 11 | `structure` | [Equiv](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/equiv--86e3f29fbcb01cb23ead839e.md) | 152 | `declaration-track:86e3f29fbcb01cb23ead839e9d9de109e0fe3bf53506b5565e371f98a1086f03` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/instance--460451d8c851800ffe704b7d.md) | 164 | `declaration-track:460451d8c851800ffe704b7d2e6228f5266341bfe72b12019d02e92e84ab8d51` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/instance--a459f6072302aa068680c60e.md) | 175 | `declaration-track:a459f6072302aa068680c60e23930a0edc1fdb8632a3593499b9d9626447396c` |
| 14 | `theorem` | [toMulEquiv_eq_coe](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/tomulequiv-eq-coe--1d34217a938bee066ba900e4.md) | 181 | `result-track:1d34217a938bee066ba900e4eff6924c30f73ae926babdec5898d66d36cb4bd5` |
| 15 | `theorem` | [coe_toMulEquiv](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/coe-tomulequiv--1359267923d4f13c2e1eb594.md) | 184 | `result-track:1359267923d4f13c2e1eb594473481e581060bc0406d5b81f89727f490cf84b7` |
| 16 | `theorem` | [map_inl](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/map-inl--9fda7f43e6e3d6a72f4c1e49.md) | 187 | `result-track:9fda7f43e6e3d6a72f4c1e490cd64d9d456afe7a178cdac8f94d4258e1fad558` |
| 17 | `theorem` | [rightHom_map](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/righthom-map--fe414b9c7a450bdf93f9e7fe.md) | 190 | `result-track:fe414b9c7a450bdf93f9e7fe2eae71c404dc9eed5d39d729e896565a6619e00e` |
| 18 | `def` | [symm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/symm--07edeafa720b5135281a7bd0.md) | 195 | `declaration-track:07edeafa720b5135281a7bd0aa6d56b711cb387db7337780021fc41d3ebe4a5a` |
| 19 | `def` | [Simps.symm_apply](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/simps-symm-apply--47a0b9eb591ec4c512984de0.md) | 202 | `declaration-track:47a0b9eb591ec4c512984de08887a6a4314d3c12291ae80aef5d44e41a02a569` |
| 20 | `theorem` | [coe_symm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/coe-symm--29f42db214b0d384b58fc853.md) | 205 | `result-track:29f42db214b0d384b58fc8535475117e044b1ed5466c788675ece6e1d3756b43` |
| 21 | `def` | [trans](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/trans--69dbb37b67d669bb5c78e77b.md) | 218 | `declaration-track:69dbb37b67d669bb5c78e77b3d7c2423662eb038e871c1f385661a2ae212bb67` |
| 22 | `def` | [refl](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/refl--a7b8aaa26d21b668d2fc233c.md) | 228 | `declaration-track:a7b8aaa26d21b668d2fc233c0abda11bf982afaeba8ffbeed9b996c4f087cc2f` |
| 23 | `structure` | [Section](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/section--c055a27e3cf6bf350409e678.md) | 237 | `declaration-track:c055a27e3cf6bf350409e67819755d2f6aedfed10a7f35ad5900a8c39a1a533e` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/instance--6303bb1b575563aecda3a07e.md) | 246 | `declaration-track:6303bb1b575563aecda3a07e15ddf0930cdd6ed7b7163034a3729a3b2e436972` |
| 25 | `theorem` | [coe_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/coe-mk--1f929ac9d8278994348aed8f.md) | 253 | `result-track:1f929ac9d8278994348aed8f0147ce08f730d72f641e5815f3ca3e4ff214b130` |
| 26 | `theorem` | [rightHom_section](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/righthom-section--23362df6970c230e5085d550.md) | 258 | `result-track:23362df6970c230e5085d550f2ae70bdb8144326194a9d9f7b42e0c86eba641c` |
| 27 | `theorem` | [rightHom_comp_section](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/righthom-comp-section--1abe796d060adde8b2da83e7.md) | 261 | `result-track:1abe796d060adde8b2da83e729a43a52bc88a11757015e072a74dd8915964ade` |
| 28 | `structure` | [Splitting](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/splitting--2964a9ab6c7ee60e74438dc2.md) | 267 | `declaration-track:2964a9ab6c7ee60e74438dc20ffe99b822dba31a535da8eb53258de0a35bb3cc` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/instance--8402b914545e570b7706f088.md) | 275 | `declaration-track:8402b914545e570b7706f08878a3c869b070279e4b9f2c1712236f1b384527cb` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/instance--dc806570f5f08d31e180a701.md) | 283 | `declaration-track:dc806570f5f08d31e180a701999ab63b2d297690b29a8b17e5758d9e6aec5a89` |
| 31 | `theorem` | [coe_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/coe-mk--be52220abaf0305f8c1f5695.md) | 290 | `result-track:be52220abaf0305f8c1f5695ba087c753bcceb1e11c3d6323e9e8c6464a76944` |
| 32 | `theorem` | [coe_monoidHom_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/coe-monoidhom-mk--9b997725e68cd5c1d75447a6.md) | 293 | `result-track:9b997725e68cd5c1d75447a6b27d36155801aec297e292d2344384628d189712` |
| 33 | `theorem` | [rightHom_splitting](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/righthom-splitting--6556b4502cd1a65b12a178d5.md) | 299 | `result-track:6556b4502cd1a65b12a178d59bd05812b9b46eb60001208f2d88fe6d9d1d0bee` |
| 34 | `theorem` | [rightHom_comp_splitting](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/righthom-comp-splitting--30e7f8cad7dd39aea3e1f01d.md) | 302 | `result-track:30e7f8cad7dd39aea3e1f01df0e940c3f16b1dff84027dc2f357344ee1403688` |
| 35 | `def` | [IsConj](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/isconj--62e77d7d9530c7719c71904f.md) | 313 | `declaration-track:62e77d7d9530c7719c71904ff3fb4e5da46cf46e95a768fd5e19637dfd7f22f3` |
| 36 | `def` | [toGroupExtension](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/togroupextension--3c7084d49e0d550863c6f53d.md) | 322 | `declaration-track:3c7084d49e0d550863c6f53d29785d70d6a5ddedc3c591ef51d257978a536392` |
| 37 | `theorem` | [toGroupExtension_inl](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/togroupextension-inl--cc8070203d0e61f8cf6c89c0.md) | 329 | `result-track:cc8070203d0e61f8cf6c89c0a20d1ab86d9ac5eb0ec2d08589d260790b697928` |
| 38 | `theorem` | [toGroupExtension_rightHom](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/togroupextension-righthom--3445273045023ac8c555d9c5.md) | 331 | `result-track:3445273045023ac8c555d9c5619a9d759d87d3b3dd5f68f32bdb80c3d1025f6f` |
| 39 | `def` | [inr_splitting](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant51a3698094c3ca6aa5196df223d74016ff9e27659d612410e6d70b74fb59cd2a.lean/declarations/inr-splitting--b8f313779d49057869a6ba86.md) | 335 | `declaration-track:b8f313779d49057869a6ba86e4dafddef61cd081100626ff208e0a0b39c97187` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
