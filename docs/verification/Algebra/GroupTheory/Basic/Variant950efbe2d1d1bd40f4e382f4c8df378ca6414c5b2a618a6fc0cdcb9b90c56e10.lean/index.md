# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ebb00481e913abf998e0e41e46cab81f848e5b6",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ebb00481e913abf998e0e41e46cab81f848e5b6`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.End` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Pointwise.Set.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Map` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Defs` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NoZeroSMulDivisors.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Sigma` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Range` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [fst_mem_orbit_of_mem_orbit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/fst-mem-orbit-of-mem-orbit--7ecac4327e94d3cbef559c87.md) | 49 | `result-track:7ecac4327e94d3cbef559c871700b9948948c6f702e12498d37b54dc11c52ee8` |
| 2 | `lemma` | [snd_mem_orbit_of_mem_orbit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/snd-mem-orbit-of-mem-orbit--1667fa1f52451f07c7841ea9.md) | 55 | `result-track:1667fa1f52451f07c7841ea9f4600a9cce3a165342514221d6bdce25510924e6` |
| 3 | `lemma` | [_root_.Finite.finite_mulAction_orbit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/root-finite-finite-mulaction-orbit--68ce5cc890450eb2ab88e9c1.md) | 61 | `result-track:68ce5cc890450eb2ab88e9c12f0286e3ae4d0a153957db59723902d0605c32b5` |
| 4 | `theorem` | [orbit_eq_univ](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/orbit-eq-univ--9ec3d3350d2b52d035949cde.md) | 67 | `result-track:9ec3d3350d2b52d035949cdec42be8dbc6e902f4be29848bc25fd2688d248e4d` |
| 5 | `theorem` | [subsingleton_orbit_iff_mem_fixedPoints](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/subsingleton-orbit-iff-mem-fixedpoints--3701c0aa959577c8a6b969cd.md) | 77 | `result-track:3701c0aa959577c8a6b969cd5b6518d27ccfa040b589ede636eb3454c3d89f83` |
| 6 | `theorem` | [mem_fixedPoints_iff_card_orbit_eq_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/mem-fixedpoints-iff-card-orbit-eq-one--3c785582129a68b886436d66.md) | 86 | `result-track:3c785582129a68b886436d66f9744c462262119323c36ce0c4b4b21cce7f4427` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/instance--2a85d881bdb123c59125cbe9.md) | 93 | `declaration-track:2a85d881bdb123c59125cbe980fa5d5171356b5b4a7cc54216652515d5dbe2b2` |
| 8 | `theorem` | [smul_cancel_of_non_zero_divisor](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/smul-cancel-of-non-zero-divisor--df0fd407e27c9c6f08b0bff6.md) | 105 | `result-track:df0fd407e27c9c6f08b0bff6e7d30da76824198ffa23d5db555301e58241721a` |
| 9 | `theorem` | [fixedPoints_of_subsingleton](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/fixedpoints-of-subsingleton--ba8309efe4a06b6baa18067c.md) | 115 | `result-track:ba8309efe4a06b6baa18067cf190eabed89e8cced56b07b9934720d2f823165c` |
| 10 | `theorem` | [nontrivial_of_fixedPoints_ne_univ](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/nontrivial-of-fixedpoints-ne-univ--04034d83cbb4209d07ad64ae.md) | 124 | `result-track:04034d83cbb4209d07ad64ae1588d6246da0a94edc5a3021d54e20bb661f3cae` |
| 11 | `theorem` | [smul_orbit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/smul-orbit--e100df4c1889b1575ffc49e4.md) | 133 | `result-track:e100df4c1889b1575ffc49e47d3270482ca1e0baeb54b48835cef31ed369a81d` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/instance--33155d60e1d773b9ed023533.md) | 141 | `declaration-track:33155d60e1d773b9ed0235332349ae0e0ebdbd019fefb7e885ff373da6a57065` |
| 13 | `lemma` | [orbitRel_subgroup_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/orbitrel-subgroup-le--83308800de7b5f6dfa5a0fe4.md) | 149 | `result-track:83308800de7b5f6dfa5a0fe4caaed59edadaf0e38de2a6860f516593d92a8329` |
| 14 | `lemma` | [orbitRel_subgroupOf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/orbitrel-subgroupof--19030dc21d668b83c79da866.md) | 153 | `result-track:19030dc21d668b83c79da866f5244ead7fb4019592d4ef481145e5f0736ee849` |
| 15 | `theorem` | [pretransitive_iff_subsingleton_quotient](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/pretransitive-iff-subsingleton-quotient--2a8d5e5f7efd85cadaaee360.md) | 177 | `result-track:2a8d5e5f7efd85cadaaee3603d3cc7a6e37c0216d6f944e616a200ff128b9d2b` |
| 16 | `theorem` | [pretransitive_iff_unique_quotient_of_nonempty](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/pretransitive-iff-unique-quotient-of-nonempty--7c70d291f91fa8d06af68093.md) | 189 | `result-track:7c70d291f91fa8d06af680935bb222adcef13815dc32c09be53b5ed6632a769c` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/instance--73eeabedcbeb29114a3e6612.md) | 197 | `declaration-track:73eeabedcbeb29114a3e66120c434e5b973482eebbbff037737babec39b14a7b` |
| 18 | `lemma` | [_root_.Finite.of_finite_mulAction_orbitRel_quotient](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/root-finite-of-finite-mulaction-orbitrel-quotient--4faee7a8d6c8040c13bb9b98.md) | 213 | `result-track:4faee7a8d6c8040c13bb9b98cc1ea1c7212a72fa7a3d7638da8025a2886593a8` |
| 19 | `lemma` | [orbitRel_le_fst](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/orbitrel-le-fst--cfb2ec876f4e812c95135d08.md) | 224 | `result-track:cfb2ec876f4e812c95135d08ee43b7236b1923ec70a8eae059d0b9c2cf0ba973` |
| 20 | `lemma` | [orbitRel_le_snd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/orbitrel-le-snd--474129a6552b509dad05327c.md) | 229 | `result-track:474129a6552b509dad05327c9fffe113f41e26941842c89272bb8b32ea1ed1c7` |
| 21 | `theorem` | [stabilizer_smul_eq_stabilizer_map_conj](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/stabilizer-smul-eq-stabilizer-map-conj--d15a48165fbf1e86695d4ffe.md) | 241 | `result-track:d15a48165fbf1e86695d4ffe2a2000a573822997fef4440b0c0ff19bc2a20f34` |
| 22 | `def` | [stabilizerEquivStabilizer](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/stabilizerequivstabilizer--169f385a3666476682a4f3b6.md) | 250 | `declaration-track:169f385a3666476682a4f3b672dcbcdf01d48557cc59f183feea3c76dcdc857b` |
| 23 | `theorem` | [stabilizerEquivStabilizer_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/stabilizerequivstabilizer-apply--79d636f39c45c6019fa288c1.md) | 255 | `result-track:79d636f39c45c6019fa288c12d2cdf8e75601b2a49faf95c58f2af192f31d4c1` |
| 24 | `theorem` | [stabilizerEquivStabilizer_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/stabilizerequivstabilizer-symm-apply--0037114aa49d3cc61ab081ee.md) | 259 | `result-track:0037114aa49d3cc61ab081ee998779632f5490a062c982eed22186e2c55e7642` |
| 25 | `theorem` | [stabilizerEquivStabilizer_trans](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/stabilizerequivstabilizer-trans--dadb97ce6c53ff612bc194d2.md) | 263 | `result-track:dadb97ce6c53ff612bc194d23b24de6c7d0b96f09630a698532479b28787486e` |
| 26 | `theorem` | [stabilizerEquivStabilizer_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/stabilizerequivstabilizer-one--144e4628560d844a8ccbc771.md) | 269 | `result-track:144e4628560d844a8ccbc771d3e54329f07c0d860af3ed662d65e53f774a1518` |
| 27 | `theorem` | [stabilizerEquivStabilizer_symm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/stabilizerequivstabilizer-symm--d6b0eba9529f13fe0f50ce8f.md) | 273 | `result-track:d6b0eba9529f13fe0f50ce8f73390e9c2888feb7f195af2bf89f91455055d080` |
| 28 | `theorem` | [stabilizerEquivStabilizer_inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/stabilizerequivstabilizer-inv--b060866fe0aca8e1c73370c2.md) | 278 | `result-track:b060866fe0aca8e1c73370c21229b522e8f70a1a49b51f702507e569460931ca` |
| 29 | `def` | [stabilizerEquivStabilizerOfOrbitRel](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/stabilizerequivstabilizeroforbitrel--0ee2f0e7b02ec2d697a1ac60.md) | 284 | `declaration-track:0ee2f0e7b02ec2d697a1ac6078ccca2034359dc8512e7ce22d0dfe2f6806f1b3` |
| 30 | `theorem` | [stabilizer_vadd_eq_stabilizer_map_conj](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/stabilizer-vadd-eq-stabilizer-map-conj--75040eb9e5f3c6c345da79f2.md) | 297 | `result-track:75040eb9e5f3c6c345da79f2eb0f5c54640e84ad4a2da310c61ed1527758be36` |
| 31 | `def` | [stabilizerEquivStabilizer](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/stabilizerequivstabilizer--195262f6f48788a610dc8fd2.md) | 307 | `declaration-track:195262f6f48788a610dc8fd2e2a0decf64f8a8d181de30597bc40119b41c97cc` |
| 32 | `theorem` | [stabilizerEquivStabilizer_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/stabilizerequivstabilizer-apply--a9160f518e47361a04e7ba5a.md) | 312 | `result-track:a9160f518e47361a04e7ba5a792b75f06d3660a59a57e1f414de7491b6e3df8b` |
| 33 | `theorem` | [stabilizerEquivStabilizer_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/stabilizerequivstabilizer-symm-apply--a71fbf436ce1553686f073d4.md) | 316 | `result-track:a71fbf436ce1553686f073d400fba2d2d6126307cd58c37c428d96caa21607b7` |
| 34 | `theorem` | [stabilizerEquivStabilizer_trans](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/stabilizerequivstabilizer-trans--3a45b75787cf8cdd38575554.md) | 320 | `result-track:3a45b75787cf8cdd38575554a5d3fb436bc1786262d754090e6f53c7eaf08fbd` |
| 35 | `theorem` | [stabilizerEquivStabilizer_zero](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/stabilizerequivstabilizer-zero--4857e8c1b1b35d65ddf8da76.md) | 326 | `result-track:4857e8c1b1b35d65ddf8da76f0fd7c44039b9aa808972fa903a0fadbf6b4cbde` |
| 36 | `theorem` | [stabilizerEquivStabilizer_symm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/stabilizerequivstabilizer-symm--c11c24d89dc1bf46601a195f.md) | 330 | `result-track:c11c24d89dc1bf46601a195fb479adfc46175fc238e18e123176c123e66c987c` |
| 37 | `theorem` | [stabilizerEquivStabilizer_neg](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/stabilizerequivstabilizer-neg--652bbf4ee83d2ae57b49342b.md) | 335 | `result-track:652bbf4ee83d2ae57b49342bd286d0143b85dc2611e4d29857f321935a1bb890` |
| 38 | `def` | [stabilizerEquivStabilizerOfOrbitRel](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/stabilizerequivstabilizeroforbitrel--fd8d35b43450214cbc5c3a8a.md) | 341 | `declaration-track:fd8d35b43450214cbc5c3a8a5384c4d8d6c3bc290ffde879eb40e7a641ff1d58` |
| 39 | `theorem` | [Equiv.swap_mem_stabilizer](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/equiv-swap-mem-stabilizer--b3f183bb86e5c255f96c0449.md) | 353 | `result-track:b3f183bb86e5c255f96c04491880ee9cafd88b0e52aa06fa858de8aa337c8699` |
| 40 | `theorem` | [le_stabilizer_iff_smul_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/le-stabilizer-iff-smul-le--d43b49fa370fad75ab375aba.md) | 366 | `result-track:d43b49fa370fad75ab375abafebbc5ef055e6969bf6a68459c1aa643ead6f524` |
| 41 | `lemma` | [Module.stabilizer_units_eq_bot_of_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/declarations/module-stabilizer-units-eq-bot-of-ne-zero--1a59df2e01f8a415893c1d3e.md) | 390 | `result-track:1a59df2e01f8a415893c1d3e8c13b5d3c6182a56b1f618405ffa0a7ae658d6c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
