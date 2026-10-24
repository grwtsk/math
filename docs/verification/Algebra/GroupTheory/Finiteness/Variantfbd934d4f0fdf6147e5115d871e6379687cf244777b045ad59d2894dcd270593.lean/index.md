# Verification target: GRWTSK.Algebra.GroupTheory.Finiteness.Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d68bccb21392b9b45bec632d8967377e941a231b",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d68bccb21392b9b45bec632d8967377e941a231b`.

Source path: `GRWTSK/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pointwise.Set.Finite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Pointwise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Submonoid.FG](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/submonoid-fg--46980da852625121d426fb9c.md) | 41 | `declaration-track:46980da852625121d426fb9ccca895b3f42f1b9280b10189ce6c27b842276abd` |
| 2 | `theorem` | [Submonoid.fg_iff](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/submonoid-fg-iff--7d6b15f8d4cafd9503ca4c0b.md) | 51 | `result-track:7d6b15f8d4cafd9503ca4c0b4220224db316bb009141f69318dbb427c263dee7` |
| 3 | `lemma` | [Submonoid.FG.exists_minimal_closure_eq](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/submonoid-fg-exists-minimal-closure-eq--13c32cbba77acbc135e7bd3f.md) | 58 | `result-track:13c32cbba77acbc135e7bd3ff4f0574f9473809bb5a5661f35b6b077d5b4b1f4` |
| 4 | `theorem` | [Submonoid.fg_iff_add_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/submonoid-fg-iff-add-fg--4221ec91099b112a2aa3c900.md) | 61 | `result-track:4221ec91099b112a2aa3c900cf04141f1d912475160be0ccc05d0a5e23e916d3` |
| 5 | `theorem` | [AddSubmonoid.fg_iff_mul_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/addsubmonoid-fg-iff-mul-fg--0b89d810ce8f20ac02f8a1fe.md) | 71 | `result-track:0b89d810ce8f20ac02f8a1fef6bc784b0b8e4493898c1bf1e4183b13ba5c0a54` |
| 6 | `lemma` | [Submonoid.FG.prod](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/submonoid-fg-prod--376d9c2c56c88e65871d8be7.md) | 77 | `result-track:376d9c2c56c88e65871d8be7ceb0e83ba646a9aed0e7cdf3801d87972e5792ab` |
| 7 | `class` | [AddMonoid.FG](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/addmonoid-fg--dbb801b3eb1bc0c1d737a9ed.md) | 92 | `declaration-track:dbb801b3eb1bc0c1d737a9ed5929e42d3166fd00b56496336d84ab2cd574957a` |
| 8 | `class` | [Monoid.FG](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/monoid-fg--471af4a562db9926cce51579.md) | 98 | `declaration-track:471af4a562db9926cce51579ae97c499b5d8b41e45921ee739409d8bbb506e57` |
| 9 | `theorem` | [Monoid.fg_def](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/monoid-fg-def--f5383bdfc60c828d37092b68.md) | 102 | `result-track:f5383bdfc60c828d37092b6858e511f9c1a229a63deb3ba487ef467072973821` |
| 10 | `theorem` | [Monoid.fg_iff](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/monoid-fg-iff--bc9307fd217685b3c96c452b.md) | 108 | `result-track:bc9307fd217685b3c96c452bd65f021b0ca11da9e94f78c1d8445b10eafdc223` |
| 11 | `lemma` | [Submonoid.exists_minimal_closure_eq_top](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/submonoid-exists-minimal-closure-eq-top--5b2b7dd34dab1a826b6faecd.md) | 115 | `result-track:5b2b7dd34dab1a826b6faecd50d7b67c381bd4166641d943f559ac6a04b40008` |
| 12 | `theorem` | [Monoid.fg_iff_add_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/monoid-fg-iff-add-fg--6c8f985aed899fd52ed46856.md) | 119 | `result-track:6c8f985aed899fd52ed46856c97f6731ab82e6579e6e030b06577702ffafb017` |
| 13 | `theorem` | [AddMonoid.fg_iff_mul_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/addmonoid-fg-iff-mul-fg--ad3bd11a2c8aa74038df1c13.md) | 123 | `result-track:ad3bd11a2c8aa74038df1c13faa38561be5985f34c6b686837a7239996ab6b61` |
| 14 | `instance` | [AddMonoid.fg_of_monoid_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/addmonoid-fg-of-monoid-fg--a7b345c299635ef1529ab103.md) | 128 | `declaration-track:a7b345c299635ef1529ab103997473324627d669d468675e22cfa6ffa04eba70` |
| 15 | `instance` | [Monoid.fg_of_addMonoid_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/monoid-fg-of-addmonoid-fg--0ff9b1405ac7e99c7acc3f91.md) | 131 | `declaration-track:0ff9b1405ac7e99c7acc3f91313ac3afb0d9ecab31ad0a045850df07e3aafbe9` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/instance--a37d858db2b033b8ad7d2d18.md) | 136 | `declaration-track:a37d858db2b033b8ad7d2d18a656ea51ea091288c9353ead45cc5dc5a20e391f` |
| 17 | `theorem` | [Submonoid.FG.map](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/submonoid-fg-map--11f7c3976180310412ffd68c.md) | 143 | `result-track:11f7c3976180310412ffd68c4fa501afacead8ff3f67f0e1753c367f2a7da93d` |
| 18 | `theorem` | [Submonoid.FG.map_injective](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/submonoid-fg-map-injective--bfab1abd86e20f497d48cf01.md) | 150 | `result-track:bfab1abd86e20f497d48cf01da746c3fce5918a2e0dc3035d6545c760c1fb84b` |
| 19 | `theorem` | [Monoid.fg_iff_submonoid_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/monoid-fg-iff-submonoid-fg--c5ff096cd0e3883d741f54ec.md) | 162 | `result-track:c5ff096cd0e3883d741f54ecea47c51478f5f175215404d9ef18bcdadd4963e1` |
| 20 | `theorem` | [Monoid.fg_of_surjective](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/monoid-fg-of-surjective--b50f6869618e3a1b0a17362e.md) | 167 | `result-track:b50f6869618e3a1b0a17362ec3f0313555cdd03a89123c21fc5b793adf30c82d` |
| 21 | `instance` | [Monoid.fg_range](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/monoid-fg-range--147952e73232721e77507eb3.md) | 176 | `declaration-track:147952e73232721e77507eb3df09c7d830123b98d06dac05d0ec9fc7a30c6a97` |
| 22 | `theorem` | [Submonoid.powers_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/submonoid-powers-fg--05cfde906529fad77205fad2.md) | 181 | `result-track:05cfde906529fad77205fad2206329c9f1c931a9bde5882815b38c012b5890d1` |
| 23 | `instance` | [Monoid.powers_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/monoid-powers-fg--df0693d537961f5091c06bb3.md) | 185 | `declaration-track:df0693d537961f5091c06bb39ddb80c67486bd8d4edd7b8b7428e3ac1bd208e4` |
| 24 | `instance` | [Monoid.closure_finset_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/monoid-closure-finset-fg--f1af79cdea2ed49b86ef8a36.md) | 189 | `declaration-track:f1af79cdea2ed49b86ef8a3687f948c599f6b3b5d456a9a00fbc684d4360356a` |
| 25 | `instance` | [Monoid.closure_finite_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/monoid-closure-finite-fg--3f1f785c17d85805fbf8d1a9.md) | 194 | `declaration-track:3f1f785c17d85805fbf8d1a981e6f3951917f0da1794da6ef400bf2809ca9b2a` |
| 26 | `def` | [Subgroup.FG](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/subgroup-fg--bb094d18871cce2af583ced8.md) | 207 | `declaration-track:bb094d18871cce2af583ced8c721dcb6f4047586ea3eb42fe7a838f33d60ebc1` |
| 27 | `theorem` | [Subgroup.fg_iff](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/subgroup-fg-iff--ba3d914bb905ea6952a2b7c4.md) | 217 | `result-track:ba3d914bb905ea6952a2b7c4d25748820906f66401f2c2f76a8e7166a0c81dba` |
| 28 | `theorem` | [Subgroup.fg_iff_submonoid_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/subgroup-fg-iff-submonoid-fg--711ebc57595fe22e006dfada.md) | 225 | `result-track:711ebc57595fe22e006dfadaed409ec8e321b2afb794b676fee68f5226ce9d24` |
| 29 | `theorem` | [Subgroup.fg_iff_add_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/subgroup-fg-iff-add-fg--416919ef729cfab3ef229af0.md) | 238 | `result-track:416919ef729cfab3ef229af094dcf422f4fca1c39c15d80f5ea0dd4c2399460a` |
| 30 | `theorem` | [AddSubgroup.fg_iff_mul_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/addsubgroup-fg-iff-mul-fg--f12d4bbd73c59250319de50f.md) | 242 | `result-track:f12d4bbd73c59250319de50f51408fbfe62531a5581dadec5e1dd5a6317233d0` |
| 31 | `class` | [Group.FG](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/group-fg--36f4574195ff9d31a875aa22.md) | 253 | `declaration-track:36f4574195ff9d31a875aa221734a5fe6976bae22bc28131cb2ded8f312acdf3` |
| 32 | `class` | [AddGroup.FG](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/addgroup-fg--83d766aa0c46dcbff7bd3279.md) | 258 | `declaration-track:83d766aa0c46dcbff7bd3279564a38768ab5a40b274fcce134408f6e22b32833` |
| 33 | `theorem` | [Group.fg_def](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/group-fg-def--63c50500df8025fe64cc9a82.md) | 265 | `result-track:63c50500df8025fe64cc9a82e32b7253a5e9f4f594a649100684f93a6cc6edca` |
| 34 | `theorem` | [AddGroup.fg_def](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/addgroup-fg-def--e0c1baf8b5994dab14b89952.md) | 268 | `result-track:e0c1baf8b5994dab14b899523a3005aee2b9b2e54b07c72da4f985f1a634fa4a` |
| 35 | `theorem` | [Group.fg_iff](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/group-fg-iff--2f7bb215d1cd999b1ac21e26.md) | 274 | `result-track:2f7bb215d1cd999b1ac21e2618b2fbdac2fd8466b3d50cd99329b44151794b3c` |
| 36 | `theorem` | [Group.fg_iff'](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/group-fg-iff--fb60a20158a652372aca2b63.md) | 278 | `result-track:fb60a20158a652372aca2b63953fbb19f62cf8400ef8a6d5ae559be57283ce4b` |
| 37 | `theorem` | [Group.fg_iff_monoid_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/group-fg-iff-monoid-fg--17311ac4a64b8c5f3eddfb60.md) | 285 | `result-track:17311ac4a64b8c5f3eddfb606a135aa9326309ff09238a974cd53841f8937db2` |
| 38 | `theorem` | [Group.fg_iff_subgroup_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/group-fg-iff-subgroup-fg--836d2c6ccca01224c970bb6c.md) | 290 | `result-track:836d2c6ccca01224c970bb6ca73e78f1ae53a52e697ef0bd8585965d625f24f2` |
| 39 | `theorem` | [GroupFG.iff_add_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/groupfg-iff-add-fg--1f3bc63b3252e2201ce8ce2e.md) | 294 | `result-track:1f3bc63b3252e2201ce8ce2e88c2ca96171161029a5a14fb5ac0d3b4382c213c` |
| 40 | `theorem` | [AddGroup.fg_iff_mul_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/addgroup-fg-iff-mul-fg--413890462122443020640292.md) | 297 | `result-track:413890462122443020640292329dba6f3dc757263f3fe3f357aed5d55eeeef9c` |
| 41 | `instance` | [AddGroup.fg_of_group_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/addgroup-fg-of-group-fg--ee6183b6b47bab42b2c79850.md) | 301 | `declaration-track:ee6183b6b47bab42b2c79850295ba7ee38786ab0126f6551f25d98469fb1725e` |
| 42 | `instance` | [Group.fg_of_mul_group_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/group-fg-of-mul-group-fg--1445506e656d60dcc94eb531.md) | 304 | `declaration-track:1445506e656d60dcc94eb53101c72593bac7327966d6ea2a1b9c56fb4ac761c3` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/instance--4306e408c3e3f5b334ee9369.md) | 308 | `declaration-track:4306e408c3e3f5b334ee9369815323d0764fe2ddc3e5fc9dce5385befc5f7187` |
| 44 | `theorem` | [Group.fg_of_surjective](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/group-fg-of-surjective--72528c564b7722f283c695ca.md) | 313 | `result-track:72528c564b7722f283c695ca19d95482ea57874d108e20810fb29627b6e128bb` |
| 45 | `instance` | [Group.fg_range](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/group-fg-range--a04a582b3799ec3f4970aa11.md) | 319 | `declaration-track:a04a582b3799ec3f4970aa113baa252a01a92231c96ff011e42b4925c39cfbeb` |
| 46 | `instance` | [Group.closure_finset_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/group-closure-finset-fg--6b68fd99f2f9e4ad92354ff7.md) | 323 | `declaration-track:6b68fd99f2f9e4ad92354ff7d3ece4c0c31e978c643e5602f4f285e7443e6186` |
| 47 | `instance` | [Group.closure_finite_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/group-closure-finite-fg--6d4b96261aa1390ccccaf6b2.md) | 328 | `declaration-track:6d4b96261aa1390ccccaf6b287285fa3c81af51769aab91c9e3324923899c260` |
| 48 | `instance` | [QuotientGroup.fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/quotientgroup-fg--7532b82dd62dd61084c4f76a.md) | 337 | `declaration-track:7532b82dd62dd61084c4f76a5f43e766f25fa2d9413d0fdd24de894cd177b0df` |
| 49 | `instance` | [instMonoidFG](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantfbd934d4f0fdf6147e5115d871e6379687cf244777b045ad59d2894dcd270593.lean/declarations/instmonoidfg--87420e1766b0b23661ae36d3.md) | 348 | `declaration-track:87420e1766b0b23661ae36d3628e2f1004dec90e7c6b241814bbc26247559240` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
