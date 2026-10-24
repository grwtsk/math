# Verification target: GRWTSK.Algebra.LinearAlgebra.End.Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "120c75ece685498e2840d81bc5fb78fc8323eaac",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `120c75ece685498e2840d81bc5fb78fc8323eaac`.

Source path: `GRWTSK/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Equiv.Opposite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NoZeroSMulDivisors.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Module.End](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/module-end--18f50f81d59ca589935ff81c.md) | 35 | `declaration-track:18f50f81d59ca589935ff81c2b6481c6f9c4ba6d4e542fdcea1907189d8a1c6e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/instance--191976a95d09779e90ba25f6.md) | 50 | `declaration-track:191976a95d09779e90ba25f616536e66e8eb49453ed17dca75ccc6f603922dd3` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/instance--6b81c83eca1655222b74547d.md) | 52 | `declaration-track:6b81c83eca1655222b74547db3bbd9a28028ee3452807aef996cc62394fd5622` |
| 4 | `theorem` | [one_eq_id](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/one-eq-id--716bc3d1ce122c5f9737a49e.md) | 54 | `result-track:716bc3d1ce122c5f9737a49e82abe3833b71cf76df72539973ca669c760a96fc` |
| 5 | `theorem` | [mul_eq_comp](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/mul-eq-comp--560818b82fabd1e74e43d2c5.md) | 56 | `result-track:560818b82fabd1e74e43d2c5395235e13c641d6f4cdf62fa5eacd7585285ca4d` |
| 6 | `theorem` | [one_apply](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/one-apply--1a55e4dc9a6cac88e7dc2765.md) | 59 | `result-track:1a55e4dc9a6cac88e7dc27658af9fce731fa938958378f37cc4b4238feec84a7` |
| 7 | `theorem` | [mul_apply](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/mul-apply--27f8357cae87680f77eab32b.md) | 62 | `result-track:27f8357cae87680f77eab32bd9189674401dd58f405e2ca7c4905a2a7cad5f10` |
| 8 | `theorem` | [coe_one](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/coe-one--817871f0c2596059854bbeb3.md) | 64 | `result-track:817871f0c2596059854bbeb3c3ac4fc13f71d3a0c0bd25a6c6d57687c10bf8f3` |
| 9 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/coe-mul--88afd6ab2e910ca83d8daa98.md) | 66 | `result-track:88afd6ab2e910ca83d8daa982cc542cb5d2cef768c198b3b086d4c8d81983429` |
| 10 | `instance` | [instNontrivial](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/instnontrivial--c92469226e2cedea67fa25e9.md) | 68 | `declaration-track:c92469226e2cedea67fa25e9596c23571f0919fffa76a8f747a6d0fe5f5c22f6` |
| 11 | `instance` | [instMonoid](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/instmonoid--49b46b28583981d8d9d829fe.md) | 72 | `declaration-track:49b46b28583981d8d9d829fe3c72aa25b51d48deb32c221886e064324caf990a` |
| 12 | `instance` | [instSemiring](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/instsemiring--ffa39dc8cd55fd0a4fa8d91f.md) | 77 | `declaration-track:ffa39dc8cd55fd0a4fa8d91f588741001acd74b3b6a3b53a89132fd50876e75e` |
| 13 | `theorem` | [natCast_apply](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/natcast-apply--802e449ce628b6e16a144a55.md) | 91 | `result-track:802e449ce628b6e16a144a552109b9bc0982036e1280fe05f1d5d93b330c0e26` |
| 14 | `theorem` | [ofNat_apply](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/ofnat-apply--853da30c23feb966bd5fc9a3.md) | 94 | `result-track:853da30c23feb966bd5fc9a3506179a77e9a8c0ec98b2ed61ac50aab39dfe1d2` |
| 15 | `instance` | [instRing](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/instring--8f13ea09338c253493424268.md) | 97 | `declaration-track:8f13ea09338c253493424268ab6cd820bc7a6bed200ab20782dba51b6c2e2539` |
| 16 | `theorem` | [intCast_apply](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/intcast-apply--6781a256a632b17713f34873.md) | 104 | `result-track:6781a256a632b17713f34873c1da8a3bdad3d5d6898c9573cf6f177414c62ec2` |
| 17 | `instance` | [instIsScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/instisscalartower--6bf3ce34fdef82acd89c6d46.md) | 111 | `declaration-track:6bf3ce34fdef82acd89c6d4643ac7c20bc02a22a9367267d265fecc633bf713f` |
| 18 | `instance` | [instSMulCommClass](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/instsmulcommclass--8b770732db47df1c72e19e3c.md) | 115 | `declaration-track:8b770732db47df1c72e19e3c7dd58bb46c6cea91538f2d4f67e9af4ba32eece7` |
| 19 | `instance` | [instSMulCommClass'](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/instsmulcommclass--3e3a8fd977b0e3b8cea93130.md) | 119 | `declaration-track:3e3a8fd977b0e3b8cea9313051a52df80ad895b96132b15af0ca0917e500c942` |
| 20 | `theorem` | [isUnit_apply_inv_apply_of_isUnit](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/isunit-apply-inv-apply-of-isunit--f61b7e40820d4f6804370771.md) | 123 | `result-track:f61b7e40820d4f680437077163f91acf8259de6b34bce27f5bdc8cffd011876b` |
| 21 | `theorem` | [isUnit_inv_apply_apply_of_isUnit](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/isunit-inv-apply-apply-of-isunit--26745ed19c829e8888a4a26e.md) | 130 | `result-track:26745ed19c829e8888a4a26e50f986c0abf0de9a68a75a84e4e646cc18767761` |
| 22 | `theorem` | [coe_pow](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/coe-pow--4045e446a0723fdcccd4dd32.md) | 137 | `result-track:4045e446a0723fdcccd4dd32887736de58ccbc175b4bed3c0df9701a4f647f5a` |
| 23 | `theorem` | [pow_apply](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/pow-apply--f94e53d7c388d1762e968ade.md) | 139 | `result-track:f94e53d7c388d1762e968ade5abe4be0a832e8d209418f933e3f21723f2c8bf8` |
| 24 | `theorem` | [pow_map_zero_of_le](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/pow-map-zero-of-le--846a2540597f212db000547b.md) | 141 | `result-track:846a2540597f212db000547b173bdc4aab1b9402d20a74c29fa8a890c9970689` |
| 25 | `theorem` | [commute_pow_left_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/commute-pow-left-of-commute--22473ccbc8f0a098255df83c.md) | 145 | `result-track:22473ccbc8f0a098255df83c07a0676f4214e4cb3ee0c80678ed9336c7a55435` |
| 26 | `theorem` | [id_pow](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/id-pow--8716ee7233913ec9f88a0110.md) | 155 | `result-track:8716ee7233913ec9f88a01107fecd229883c81088fb8f789b63543d83a1915d8` |
| 27 | `theorem` | [iterate_succ](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/iterate-succ--84f50e01a33356bcc3fca37b.md) | 160 | `result-track:84f50e01a33356bcc3fca37b49e54a01f755b7c33850eaecca53c5c2517b52a6` |
| 28 | `theorem` | [iterate_surjective](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/iterate-surjective--39852c99ede63de506e015c3.md) | 162 | `result-track:39852c99ede63de506e015c32949aac84b09dd590ec78e56462ce2c3bf184efd` |
| 29 | `theorem` | [iterate_injective](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/iterate-injective--f08f79440dc5b72ff13effdf.md) | 168 | `result-track:f08f79440dc5b72ff13effdf693ebf09126dbf2869217412049a52d773efcffb` |
| 30 | `theorem` | [iterate_bijective](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/iterate-bijective--1197a0d03f47f7cd0d37adfc.md) | 174 | `result-track:1197a0d03f47f7cd0d37adfc1e97ef4515ef2c911b030f3669ecaa8ed3d9169f` |
| 31 | `theorem` | [injective_of_iterate_injective](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/injective-of-iterate-injective--f86395836ab6f374073fcb8a.md) | 180 | `result-track:f86395836ab6f374073fcb8a3da7bf5bd869cac0dd4d996eebb5a059bf446fe9` |
| 32 | `theorem` | [surjective_of_iterate_surjective](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/surjective-of-iterate-surjective--b236817b052168503c8175cd.md) | 185 | `result-track:b236817b052168503c8175cd1227d0dfa609f07b9ea69b368c3eb77340b99d4b` |
| 33 | `instance` | [applyModule](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/applymodule--a52270378f77a9aef6c16a84.md) | 198 | `declaration-track:a52270378f77a9aef6c16a841965f09eaa392e45033fc5f9754a98507701218c` |
| 34 | `theorem` | [smul_def](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/smul-def--d5e7a2069d6bb000f70c8a49.md) | 208 | `result-track:d5e7a2069d6bb000f70c8a499356a10961bf21617c9b25b85c604f3b3a4e9670` |
| 35 | `instance` | [apply_faithfulSMul](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/apply-faithfulsmul--6cfaef4881e3aacba4692131.md) | 212 | `declaration-track:6cfaef4881e3aacba46921310ac0919cffd250434c278e25e979cacc99ee05f4` |
| 36 | `instance` | [apply_smulCommClass](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/apply-smulcommclass--ccddde3cf4bc4bad8c97ef77.md) | 215 | `declaration-track:ccddde3cf4bc4bad8c97ef7707b6b4cc35966c5d9489e526e1e465c3dff175a0` |
| 37 | `instance` | [apply_smulCommClass'](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/apply-smulcommclass--68abf346a92c348bee8bff54.md) | 219 | `declaration-track:68abf346a92c348bee8bff54768a2fd241a44ab2e2531057fae96746a21959d3` |
| 38 | `instance` | [apply_isScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/apply-isscalartower--2703d87643dad126639b6c49.md) | 223 | `declaration-track:2703d87643dad126639b6c49d554a5a96dd3a832b481b908cb1d893e8628995b` |
| 39 | `def` | [toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/tolinearmap--9f1e3e90a2ef21560cee5d1d.md) | 241 | `declaration-track:9f1e3e90a2ef21560cee5d1d7c566563f7b194e7dac339b7dc93d03c4ee346f3` |
| 40 | `def` | [toModuleEnd](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/tomoduleend--72befdee8470399af01e6a74.md) | 250 | `declaration-track:72befdee8470399af01e6a746d1f15c15e17f26b576f8a16e86a322984c86865` |
| 41 | `def` | [Module.toModuleEnd](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/module-tomoduleend--68b2f9c0b00608f95279d3a5.md) | 266 | `declaration-track:68b2f9c0b00608f95279d3a5170f73098db5a5d335b434e0b4ce7ce0c40e85b3` |
| 42 | `def` | [RingEquiv.moduleEndSelf](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/ringequiv-moduleendself--8f6d08a0a296152cf7d4c788.md) | 275 | `declaration-track:8f6d08a0a296152cf7d4c788d6e60964c0ce288bc466797da720a11866d14daa` |
| 43 | `def` | [RingEquiv.moduleEndSelfOp](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/ringequiv-moduleendselfop--c7fb60b81f44428ed1b29a02.md) | 285 | `declaration-track:c7fb60b81f44428ed1b29a02bf2b8701527ea03af5af218dcdcbdd22a270246d` |
| 44 | `theorem` | [Module.End.natCast_def](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/module-end-natcast-def--5f7ebbf54f7ce378c03f568f.md) | 295 | `result-track:5f7ebbf54f7ce378c03f568fa77f1e411247a8e68b46859b85a1190f482234af` |
| 45 | `theorem` | [Module.End.intCast_def](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/module-end-intcast-def--ff93d454d0eedb960dce52aa.md) | 299 | `result-track:ff93d454d0eedb960dce52aa051c876486ffbeb8ba9095b863f3f88248c5a27b` |
| 46 | `def` | [smulRight](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/smulright--c29d5f64584dbf1e3b7e76de.md) | 316 | `declaration-track:c29d5f64584dbf1e3b7e76de12fb1599dbd1251e05d3fdcb0c77c8cd696c9b8a` |
| 47 | `theorem` | [coe_smulRight](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/coe-smulright--29ec60f91f12b4efdb0efe83.md) | 322 | `result-track:29ec60f91f12b4efdb0efe83a511359818bf60899c9d467af5aa6ff5a5d44e77` |
| 48 | `theorem` | [smulRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/smulright-apply--405a98bec24b3063858cbd5d.md) | 325 | `result-track:405a98bec24b3063858cbd5dfd4dd836f46a2103c9d2dae4348a72d2c000ddfe` |
| 49 | `lemma` | [smulRight_zero](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/smulright-zero--2bc15810290c7d73e4f4f94b.md) | 329 | `result-track:2bc15810290c7d73e4f4f94b196d8266887a50da324e23679d80243b32842537` |
| 50 | `lemma` | [zero_smulRight](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/zero-smulright--8a0632385c5e77a575bdacce.md) | 332 | `result-track:8a0632385c5e77a575bdacce4839b2744df99431073a606b1095e552bfa6b77b` |
| 51 | `lemma` | [smulRight_apply_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/smulright-apply-eq-zero-iff--631eb061aa52d8dd666eea1d.md) | 335 | `result-track:631eb061aa52d8dd666eea1deba529dc5e2762b16e79815762034f0bc070aca5` |
| 52 | `def` | [applyₗ'](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/apply--698f462d6d6dfe2ed9c9841c.md) | 359 | `declaration-track:698f462d6d6dfe2ed9c9841cc9df2bebdd6c11785949abee4ee0333ce217f977` |
| 53 | `def` | [compRight](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/compright--80a17c1f051296b4a94ea93c.md) | 377 | `declaration-track:80a17c1f051296b4a94ea93c584a157166ae823055b625929025ab675e04aa01` |
| 54 | `theorem` | [compRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/compright-apply--b279bb2b2ec28d7e712a131b.md) | 383 | `result-track:b279bb2b2ec28d7e712a131bb4d01a7090889bd79141b58cde79f6723496811e` |
| 55 | `def` | [applyₗ](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/apply--ff84ac6a54873aff925b5e2c.md) | 391 | `declaration-track:ff84ac6a54873aff925b5e2ccfcde95d81ec67ca8df35ca54570b36e5713d988` |
| 56 | `def` | [smulRightₗ](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/smulright--c0f2f49564e26673822d129e.md) | 399 | `declaration-track:c0f2f49564e26673822d129ea0bc421c67d8ab68058bfa7fd780667267b22fee` |
| 57 | `theorem` | [smulRightₗ_apply](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/smulright-apply--6b62888448547f0a3874eb2c.md) | 416 | `result-track:6b62888448547f0a3874eb2cf4ac6d20f30853acf343e724ee8355f4dadc7412` |
| 58 | `lemma` | [commute_id_left](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/commute-id-left--6418dbd1a91c32fe28f76a0b.md) | 428 | `result-track:6418dbd1a91c32fe28f76a0b0d6fc8817613730424829f6c357d23d10803bcd3` |
| 59 | `lemma` | [commute_id_right](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantfe8a1bd7405eccb4cd3f37918e4cd8caa2e02fa36ade434f7e50ff56d34f665d.lean/declarations/commute-id-right--7ae0a05186074a594c4f3ca0.md) | 430 | `result-track:7ae0a05186074a594c4f3ca0bb5732c80a62d17a04dfd744638ca9b1284518a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
