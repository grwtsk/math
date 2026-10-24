# Verification target: GRWTSK.Algebra.GroupTheory.ULift.Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbb72ebf8fc8289679ed0a2dc671ca50d1411643",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbb72ebf8fc8289679ed0a2dc671ca50d1411643`.

Source path: `GRWTSK/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Cast.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Equiv.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.InjSurj` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [one](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/one--5732864a3d20f8f70ff6fccd.md) | 30 | `declaration-track:5732864a3d20f8f70ff6fccd6a21fda78e3c717f857e691a7ab3ed7fd0575871` |
| 2 | `theorem` | [one_down](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/one-down--bc89842b95edade6bc362531.md) | 36 | `result-track:bc89842b95edade6bc3625311349c4e3186e4a060ca6e68363f27996ae64c594` |
| 3 | `instance` | [mul](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/mul--e308c7542edf5145d22d109b.md) | 42 | `declaration-track:e308c7542edf5145d22d109b6b1d4cee3f6eaf9b40f4d47a32dba6dfb1d51084` |
| 4 | `theorem` | [mul_down](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/mul-down--c63a4d1b3c169d4340059e95.md) | 48 | `result-track:c63a4d1b3c169d4340059e95d530a5f99ec37f0539e24611aab72fee923eb776` |
| 5 | `instance` | [div](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/div--c651804564ca5b46559d02b2.md) | 54 | `declaration-track:c651804564ca5b46559d02b2d09731ba81cdb578fbd367341216cf0348d6d772` |
| 6 | `theorem` | [div_down](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/div-down--227cd2043aa696d82fc47f7f.md) | 60 | `result-track:227cd2043aa696d82fc47f7f469239897f08635e44e1c65b8383b909a74255c3` |
| 7 | `instance` | [inv](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/inv--763fb13149f01a02d9ec4376.md) | 66 | `declaration-track:763fb13149f01a02d9ec43762a6cca7f196e8ef47c5de9a8cb8f13fad4ec6232` |
| 8 | `theorem` | [inv_down](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/inv-down--46dac78cda18cf1086be2fe5.md) | 72 | `result-track:46dac78cda18cf1086be2fe566139c92499f70f8a14e5dfe55f1ebbd058afea6` |
| 9 | `instance` | [smul](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/smul--27ce7d877962d7f42b4dc6cb.md) | 78 | `declaration-track:27ce7d877962d7f42b4dc6cbba1118d724d50323bb1cff5e926e1c2b55a82d85` |
| 10 | `theorem` | [smul_down](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/smul-down--b254af7e9e0ab814b715c959.md) | 84 | `result-track:b254af7e9e0ab814b715c95977411a0b682684fbccca6b47c11f5ac48e8e6208` |
| 11 | `instance` | [pow](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/pow--6a643ebfb1b2d647d994784b.md) | 90 | `declaration-track:6a643ebfb1b2d647d994784bde12e64c1b235484357095d5a1b37ff9ae874b24` |
| 12 | `theorem` | [pow_down](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/pow-down--1fbfb28057c6566a01a45508.md) | 95 | `result-track:1fbfb28057c6566a01a45508aee36a5b91d4d1bbc960827c919fbe77f02a455c` |
| 13 | `def` | [_root_.MulEquiv.ulift](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/root-mulequiv-ulift--7001a62e10a79f3e9581b5df.md) | 102 | `declaration-track:7001a62e10a79f3e9581b5dfa545e968a6923c42c17710135f0abe16b18336a7` |
| 14 | `instance` | [semigroup](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/semigroup--534eebf40eb11e21d25201c0.md) | 108 | `declaration-track:534eebf40eb11e21d25201c0385704f56e5f6cbf0a8d48a5027421926f63c239` |
| 15 | `instance` | [addSemigroup](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/addsemigroup--2d32a47a9b623a3dc69af72c.md) | 112 | `declaration-track:2d32a47a9b623a3dc69af72c7ef43c6691080bae702bc566185a966f61303fc4` |
| 16 | `instance` | [commSemigroup](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/commsemigroup--e8d6b98a620e775467d2ea5f.md) | 118 | `declaration-track:e8d6b98a620e775467d2ea5faed14f273c9a3bc17209432d3e106ab82f76f9c9` |
| 17 | `instance` | [mulOneClass](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/muloneclass--f8034586be8c6b1e6450060f.md) | 124 | `declaration-track:f8034586be8c6b1e6450060f7f84d0dbdba660a7333c3ddd4be5d370a4631804` |
| 18 | `instance` | [mulZeroOneClass](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/mulzerooneclass--d81c3b5e3383ac11f4a74fbf.md) | 129 | `declaration-track:d81c3b5e3383ac11f4a74fbfe969af55edc51eb3950fde755d2f531d14c9fbc5` |
| 19 | `instance` | [monoid](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/monoid--5fe39b2a370580707d6da21a.md) | 134 | `declaration-track:5fe39b2a370580707d6da21a4ff001cbbbacdb98689f22197080c779533837a8` |
| 20 | `instance` | [commMonoid](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/commmonoid--44526b5277a31e732c89bf0a.md) | 140 | `declaration-track:44526b5277a31e732c89bf0a1448b4609639e3283178cf9b0cab5a23e420c855` |
| 21 | `instance` | [natCast](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/natcast--9219fc354ab0f056a071c3e9.md) | 145 | `declaration-track:9219fc354ab0f056a071c3e91d540fd9f238ab42662860dd6de0a5c9cc06286c` |
| 22 | `instance` | [intCast](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/intcast--7a06e71dde8578c4d020cbe6.md) | 147 | `declaration-track:7a06e71dde8578c4d020cbe6a8e2a1a717489b75163df770f1e08369846dd548` |
| 23 | `theorem` | [up_natCast](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/up-natcast--f2e348cefc407e707f64f503.md) | 151 | `result-track:f2e348cefc407e707f64f503b17279c04330d8d05409741f6114b24fb4d06d32` |
| 24 | `theorem` | [up_intCast](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/up-intcast--98ac5235be80ce7330ef5d2d.md) | 156 | `result-track:98ac5235be80ce7330ef5d2d85c15be6fda01a5a94b0679c0447b69612ffb0a5` |
| 25 | `theorem` | [down_natCast](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/down-natcast--2b3ea6ee5f3ef8afc102d6ae.md) | 161 | `result-track:2b3ea6ee5f3ef8afc102d6aef6f1b5c9b85a5aa81cab95e991b1fb7054b4ea68` |
| 26 | `theorem` | [down_intCast](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/down-intcast--5e066f6e56690778dfc56e2d.md) | 166 | `result-track:5e066f6e56690778dfc56e2d2b99cb3b6c902575a4ab76281bde52710272d4e4` |
| 27 | `instance` | [addMonoidWithOne](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/addmonoidwithone--4efcf787b953868b4e167a6f.md) | 170 | `declaration-track:4efcf787b953868b4e167a6f70299147e456a836d7a426c29c6810c3d5435750` |
| 28 | `instance` | [addCommMonoidWithOne](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/addcommmonoidwithone--c1c17824ba5d114171420ab3.md) | 177 | `declaration-track:c1c17824ba5d114171420ab31d68c8d0e263f180eae18271b649f5976aeade5d` |
| 29 | `instance` | [monoidWithZero](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/monoidwithzero--d30b44d49da23df1079b2d47.md) | 181 | `declaration-track:d30b44d49da23df1079b2d475a2145f3b94779b01bfb8af83b0a66ccc11536a1` |
| 30 | `instance` | [commMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/commmonoidwithzero--f994725a6d45cb664fb9869d.md) | 185 | `declaration-track:f994725a6d45cb664fb9869d6d8ab26ef21117806213de40b5109e9c132746ce` |
| 31 | `instance` | [divInvMonoid](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/divinvmonoid--310e82d5d9c763a46274241b.md) | 190 | `declaration-track:310e82d5d9c763a46274241bc9e28b4fe64acd3ddd7beb411071641aba4dc2b1` |
| 32 | `instance` | [group](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/group--81c7ff9ef7f3b061a3ac8c4d.md) | 197 | `declaration-track:81c7ff9ef7f3b061a3ac8c4d0fce4e8fb00dba072dbe2e20fc554752bdd82634` |
| 33 | `instance` | [commGroup](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/commgroup--6767298a5b10d50436f93842.md) | 204 | `declaration-track:6767298a5b10d50436f938422476950760ea6a66a9e941d394bdd195e40831c4` |
| 34 | `instance` | [addGroupWithOne](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/addgroupwithone--d15607451f6048d95ac5ef65.md) | 210 | `declaration-track:d15607451f6048d95ac5ef65f47dc83896c2775b6d17df2e2252ba4db25cb37a` |
| 35 | `instance` | [addCommGroupWithOne](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/addcommgroupwithone--da908efa66fd8e2b3448592e.md) | 217 | `declaration-track:da908efa66fd8e2b3448592ee6be1e6cfdf9a511d80a0b6e42d5cc661a833325` |
| 36 | `instance` | [groupWithZero](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/groupwithzero--5ccb47ff023f25bb1ec98c35.md) | 221 | `declaration-track:5ccb47ff023f25bb1ec98c35bcab0e2c9889eee5d6fa1cde27ebe755dde52b60` |
| 37 | `instance` | [commGroupWithZero](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/commgroupwithzero--a26e3335bdfddad72ec5cd7b.md) | 226 | `declaration-track:a26e3335bdfddad72ec5cd7b8eed2271c855ad3072faa7d990cf7b6522143bc0` |
| 38 | `instance` | [leftCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/leftcancelsemigroup--4750c36fe5d02e80efa4b4c9.md) | 232 | `declaration-track:4750c36fe5d02e80efa4b4c981e0b6b09829797c5e9022213613d624a22649f7` |
| 39 | `instance` | [rightCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/rightcancelsemigroup--793693b5f74f84f3e383c739.md) | 238 | `declaration-track:793693b5f74f84f3e383c739df47e03a324fb7cf63ccb1adcec21f634f2957fa` |
| 40 | `instance` | [leftCancelMonoid](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/leftcancelmonoid--9a92a4b774c970bef57d145f.md) | 244 | `declaration-track:9a92a4b774c970bef57d145f09353abadb1eec3574f3f7a419404e465fed2df9` |
| 41 | `instance` | [rightCancelMonoid](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/rightcancelmonoid--e8e4f7cedac714a177c03864.md) | 250 | `declaration-track:e8e4f7cedac714a177c03864a6bb01680820cafcf07711175c8f424c7484400b` |
| 42 | `instance` | [cancelMonoid](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/cancelmonoid--43415423830f892785d074c4.md) | 256 | `declaration-track:43415423830f892785d074c4c0bf785adbec226db6f17d28ade6bb6e76c93d26` |
| 43 | `instance` | [cancelCommMonoid](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/cancelcommmonoid--d87bb66e02b0eebe20b63074.md) | 262 | `declaration-track:d87bb66e02b0eebe20b630745a8bd914b900077ee2e84afebf1cf82e3815ad9a` |
| 44 | `instance` | [nontrivial](../../../../../mathematics/Algebra/GroupTheory/ULift/Variant409475013b1db6550562991f0715410bfc0bcca7d79473aea9a033df7111b3da.lean/declarations/nontrivial--5ed1e44b73cd763812c92e92.md) | 267 | `declaration-track:5ed1e44b73cd763812c92e92aaeb8e00fdcd0597798b968a4e8367bc14d1c708` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
