# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "690135d5107e1bc66454d2338ea05f8909217fe0",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `690135d5107e1bc66454d2338ea05f8909217fe0`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.InjSurj` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.SetLike.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FastInstance` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MulMemClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/mulmemclass--24042caafd1cb5c012b97693.md) | 66 | `declaration-track:24042caafd1cb5c012b97693143f016817c14f89f8cfcac9b75cc976e4888825` |
| 2 | `class` | [AddMemClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/addmemclass--91d3f89e30420c1d2ff1939a.md) | 73 | `declaration-track:91d3f89e30420c1d2ff1939a23c3c50db6640aaf1727617141d645f6037e0c91` |
| 3 | `structure` | [Subsemigroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/subsemigroup--12b19a574b6c35c6071f7e26.md) | 84 | `declaration-track:12b19a574b6c35c6071f7e26333f6ec1d845777a806e437b47168e9ce126d949` |
| 4 | `structure` | [AddSubsemigroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/addsubsemigroup--d7c5c8a8be642579b08f4258.md) | 91 | `declaration-track:d7c5c8a8be642579b08f4258798b18f273450ed07e227ca7c1705cf39cb280a8` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/instance--6ae12c790b7812fda10d02c5.md) | 102 | `declaration-track:6ae12c790b7812fda10d02c54f0162dbc31cdfccc237e1cde558cb2ba5adfb1c` |
| 6 | `def` | [ofClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/ofclass--9ea84e6698381fea4e8abe26.md) | 111 | `declaration-track:9ea84e6698381fea4e8abe26c7cbf53e4b3a59289315882f5adf2fea21ce5b3f` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/instance--00dd0c5e3c03847c74863b32.md) | 115 | `declaration-track:00dd0c5e3c03847c74863b32aaddbe3c9a859b18ba27abb61b8898ddbf709bb5` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/instance--03cd951c9a153a5635743846.md) | 120 | `declaration-track:03cd951c9a153a5635743846cf8a1a300a0913901ef51e6f639dfa03421165de` |
| 9 | `theorem` | [mem_carrier](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/mem-carrier--4358e9f09220c4d4c1897593.md) | 123 | `result-track:4358e9f09220c4d4c189759365824b09c32da2ffccb4efa9e949e59b83658c43` |
| 10 | `theorem` | [mem_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/mem-mk--571f49a0363f4c77fe927882.md) | 127 | `result-track:571f49a0363f4c77fe927882fdc2cbd573eb5d16b949de85b4f4eb9b1e9f7b1b` |
| 11 | `theorem` | [coe_set_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/coe-set-mk--c81225a905ffe5e0a3c6b869.md) | 131 | `result-track:c81225a905ffe5e0a3c6b869a17a46299eccabc81c2a4324a0fa261b7feb3502` |
| 12 | `theorem` | [mk_le_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/mk-le-mk--3adb30bc260fb558a4073310.md) | 135 | `result-track:3adb30bc260fb558a4073310f52281066882b32b275dd7d59ba7edd63ae54825` |
| 13 | `theorem` | [ext](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/ext--4f783e0eb526e079e685bc29.md) | 140 | `result-track:4f783e0eb526e079e685bc296a6aa0b46ac28aa07c4426ff47b28ffa4975a8d4` |
| 14 | `def` | [copy](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/copy--6af39a389d3e186b153a9e8f.md) | 145 | `declaration-track:6af39a389d3e186b153a9e8fc682290bb0bbe3808da931415fdd1d90a0067599` |
| 15 | `theorem` | [coe_copy](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/coe-copy--9191551d18844d6dd8e39cc1.md) | 153 | `result-track:9191551d18844d6dd8e39cc14fb8bc07d1debf3e67da5613fe458f207ad3d9a5` |
| 16 | `theorem` | [copy_eq](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/copy-eq--d11a0e1f6cb6e2bbb850c78d.md) | 157 | `result-track:d11a0e1f6cb6e2bbb850c78d01f6460add2bd3711159dd4dbae9d234cbd25060` |
| 17 | `theorem` | [mul_mem](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/mul-mem--2433a02d79fd33f03e41905e.md) | 164 | `result-track:2433a02d79fd33f03e41905e98c484f8881e2ff005a651498351fb61993fc04b` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/instance--4fba6eb03367d5e2c9b50e7c.md) | 169 | `declaration-track:4fba6eb03367d5e2c9b50e7c320c622710ae416cf638edf4d16c31510a126c4c` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/instance--d9f9b8803c6103bab656aa92.md) | 175 | `declaration-track:d9f9b8803c6103bab656aa928bfac7f76ac10f8fc6878673626b928ef7a4d66b` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/instance--d8051d499f4671b954717805.md) | 180 | `declaration-track:d8051d499f4671b954717805fdb9f4645bebc6339068629c35f213df83282630` |
| 21 | `theorem` | [notMem_bot](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/notmem-bot--783154c66c94131e7859492f.md) | 184 | `result-track:783154c66c94131e7859492f815524c65140010fb81fc71ef933838f964bb239` |
| 22 | `theorem` | [mem_top](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/mem-top--fb860ef174c28557a4bbe791.md) | 193 | `result-track:fb860ef174c28557a4bbe7911873fdd632712daf6e6676f981953b89fd446f8f` |
| 23 | `theorem` | [coe_top](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/coe-top--05c037dbe58bd49b597ba013.md) | 197 | `result-track:05c037dbe58bd49b597ba01344dcb7f7989d5c45b47256dfaaa33082a6f704e1` |
| 24 | `theorem` | [coe_bot](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/coe-bot--c2df933f1e47a7c2eba6b2a8.md) | 201 | `result-track:c2df933f1e47a7c2eba6b2a8cf775a32ad3702cdbe69d5a7f83f6c022d0d0ce4` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/instance--c6f3768a0f0eadac195f85e8.md) | 206 | `declaration-track:c6f3768a0f0eadac195f85e8c32cd10c316d16254aa87a23fe408d0607413150` |
| 26 | `theorem` | [coe_inf](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/coe-inf--7470c27fcfaccc9f938101e9.md) | 212 | `result-track:7470c27fcfaccc9f938101e9da4785a7557ec4ac41cb01dad65bbaca79565f2a` |
| 27 | `theorem` | [mem_inf](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/mem-inf--b98b5868d497cafc9b301445.md) | 216 | `result-track:b98b5868d497cafc9b301445d297b2628995d1e2b714aaf11184a0174997153b` |
| 28 | `theorem` | [subsingleton_of_subsingleton](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/subsingleton-of-subsingleton--f1b855d11d762773c106247e.md) | 220 | `result-track:f1b855d11d762773c106247e8bf01fc6d8b6d65b9fd8e023943df6e64a57e37a` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/instance--ecd2202fdf38fe01541ebf7b.md) | 226 | `declaration-track:ecd2202fdf38fe01541ebf7ba03909295950567d1fdefda0500690af918dfc1b` |
| 30 | `def` | [eqLocus](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/eqlocus--5db3d65d2202b9e216029d98.md) | 242 | `declaration-track:5db3d65d2202b9e216029d9837b2c6efccccbee88bd64faf8edfb90c76f2e833` |
| 31 | `theorem` | [eq_of_eqOn_top](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/eq-of-eqon-top--ff892991ebeccc2ca31ef5b3.md) | 247 | `result-track:ff892991ebeccc2ca31ef5b3dda2b882175972d501b0148111c12581fda753f3` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/instance--5952063c511c289f7e7aafc6.md) | 261 | `declaration-track:5952063c511c289f7e7aafc6918d5b7e8afb8af9b8219ac84bdd68c18ed93ade` |
| 33 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/coe-mul--6ae316cf01ca803d415b3864.md) | 266 | `result-track:6ae316cf01ca803d415b38640a4baf5722ceef31b77ec1d3dedbc00140c5969e` |
| 34 | `theorem` | [mk_mul_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/mk-mul-mk--229e9219fa0eaeb1e50d3b71.md) | 271 | `result-track:229e9219fa0eaeb1e50d3b71aaf11d4c82cd0efc608b44e3438dce99e0732f9d` |
| 35 | `theorem` | [mul_def](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/mul-def--9bd37439ba483e7636a5379c.md) | 276 | `result-track:9bd37439ba483e7636a5379cc7f8bf15c4b52d09af07ca28ca891f50bd12bf8d` |
| 36 | `instance` | [toSemigroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/tosemigroup--5909ac1fbf8aaa1f5b88feff.md) | 281 | `declaration-track:5909ac1fbf8aaa1f5b88feff425c1c9a6609dfb9dc0fb59d0a9098975d7dfeab` |
| 37 | `instance` | [toCommSemigroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/tocommsemigroup--70dbe52fe8c685c993a452f2.md) | 287 | `declaration-track:70dbe52fe8c685c993a452f2c393fa2f551fd552d6c811140af2c6cec0e413df` |
| 38 | `def` | [subtype](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/subtype--02b0fe1a2438788831d28d66.md) | 294 | `declaration-track:02b0fe1a2438788831d28d667cfdbd3453746fec1ca112d94b53e22b5fd2da26` |
| 39 | `lemma` | [subtype_apply](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/subtype-apply--79518697a77edc02bd25be7d.md) | 299 | `result-track:79518697a77edc02bd25be7d156746f05862aab7613075f1b501c5274795df1e` |
| 40 | `lemma` | [subtype_injective](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/subtype-injective--1fc0c2495456383fcef2ee6e.md) | 303 | `result-track:1fc0c2495456383fcef2ee6ed2f65461c8ae4b950c5400899c25cbeff2957cce` |
| 41 | `theorem` | [coe_subtype](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant5fe5d99bf3247b762d0c3cdff7576240ca6472a10f9233af3fced4866d76af94.lean/declarations/coe-subtype--4ed60b31c346681b51ffbb58.md) | 308 | `result-track:4ed60b31c346681b51ffbb58ecfc8f7ce4046da2cb787ac125abfd8839609c4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
