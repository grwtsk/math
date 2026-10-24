# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45a245cf5a9ca61c1961b7d9febaa959ca0aa21f",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45a245cf5a9ca61c1961b7d9febaa959ca0aa21f`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.End` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Pointwise.Set.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Map` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Defs` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NoZeroSMulDivisors.Defs` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Sigma` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Range` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [fst_mem_orbit_of_mem_orbit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/fst-mem-orbit-of-mem-orbit--7f01d9b30c6407b79dd9c010.md) | 57 | `result-track:7f01d9b30c6407b79dd9c010203cdb7400ac97344074f29c77ed026c5bd7c18c` |
| 2 | `lemma` | [snd_mem_orbit_of_mem_orbit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/snd-mem-orbit-of-mem-orbit--df5ba0d03bca3f4993db8c5e.md) | 63 | `result-track:df5ba0d03bca3f4993db8c5e9603a20e6cd9ed3fe16f0046e54c7f47aca9b084` |
| 3 | `lemma` | [_root_.GRWTSK.Algebra.GroupTheory.FstMemOrbitOfMemOrbit.Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.Finite.finite_mulAction_orbit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/root-grwtsk-algebra-grouptheory-fstmemorbitofmemorbit-variant950efbe2d1d--447271c926ebb270dfbbb5d4.md) | 69 | `result-track:447271c926ebb270dfbbb5d4a1232757755a7100cb560e882341c16455bbe60a` |
| 4 | `theorem` | [orbit_eq_univ](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/orbit-eq-univ--5e872fbcce8a5d5cc380e202.md) | 75 | `result-track:5e872fbcce8a5d5cc380e202e76c3b44c1d52c4bae497b5b229b246c89e36292` |
| 5 | `theorem` | [subsingleton_orbit_iff_mem_fixedPoints](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/subsingleton-orbit-iff-mem-fixedpoints--0ac5f4d2540a0c829346d1c8.md) | 85 | `result-track:0ac5f4d2540a0c829346d1c892f11cf06051c129faea40a3684ddcfa9c26b50e` |
| 6 | `theorem` | [mem_fixedPoints_iff_card_orbit_eq_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/mem-fixedpoints-iff-card-orbit-eq-one--862b811290ced1f7e6f26a1d.md) | 94 | `result-track:862b811290ced1f7e6f26a1d1a97449345479a78c704c83de979dad103bb8960` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/instance--6d3b5a16260c0f5f2491069f.md) | 101 | `declaration-track:6d3b5a16260c0f5f2491069f40da792049078bda3e6c802027a8ec2f242da483` |
| 8 | `theorem` | [smul_cancel_of_non_zero_divisor](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/smul-cancel-of-non-zero-divisor--1b6678820000af9923dff6b5.md) | 113 | `result-track:1b6678820000af9923dff6b57f0bde339e5af3e79ea0653d71f02b5136f0ac64` |
| 9 | `theorem` | [fixedPoints_of_subsingleton](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/fixedpoints-of-subsingleton--7d4cd911ee67582277491c4a.md) | 123 | `result-track:7d4cd911ee67582277491c4a4e53f0f8422faf9551d1bf11020fdbc3ae59c8b7` |
| 10 | `theorem` | [nontrivial_of_fixedPoints_ne_univ](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/nontrivial-of-fixedpoints-ne-univ--2984f20d25cf03e9b3f21aca.md) | 132 | `result-track:2984f20d25cf03e9b3f21aca45764d997d001e19196c2829224781e8c4bdfa6d` |
| 11 | `theorem` | [smul_orbit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/smul-orbit--c874aed1652d836d7d8e6ce7.md) | 141 | `result-track:c874aed1652d836d7d8e6ce74995d422d461fcd0ff8e82d7eb93a5d723f11e1e` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/instance--6a0d6e3ad687c98cfa631604.md) | 149 | `declaration-track:6a0d6e3ad687c98cfa6316045d6f04ffc4e02dd44a728fdd1a69c98aba8c49c2` |
| 13 | `lemma` | [orbitRel_subgroup_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/orbitrel-subgroup-le--4671497b24a7bcb9b6405197.md) | 157 | `result-track:4671497b24a7bcb9b6405197f22a84b1493cc0b0b81238963f125c649d3e14b1` |
| 14 | `lemma` | [orbitRel_subgroupOf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/orbitrel-subgroupof--112a5fffa236b2fe0d7d4a6e.md) | 161 | `result-track:112a5fffa236b2fe0d7d4a6e7859a30e4d1ea019d6f2c6d25029ea01cc4290cb` |
| 15 | `theorem` | [pretransitive_iff_subsingleton_quotient](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/pretransitive-iff-subsingleton-quotient--26f2356210aba3fa2c779e01.md) | 185 | `result-track:26f2356210aba3fa2c779e01dccdb1dc03afeacf884596afed0e1df31725cab2` |
| 16 | `theorem` | [pretransitive_iff_unique_quotient_of_nonempty](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/pretransitive-iff-unique-quotient-of-nonempty--d33ec251b957ac1007fadc3e.md) | 197 | `result-track:d33ec251b957ac1007fadc3e6fc5c69f4a73b551b78237119f33e99eee0d12aa` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/instance--c1b144d8f5deb353e45ebda1.md) | 205 | `declaration-track:c1b144d8f5deb353e45ebda1fce4fe6f5235f71a12682d5d87e7e07a851b549c` |
| 18 | `lemma` | [_root_.GRWTSK.Algebra.GroupTheory.FstMemOrbitOfMemOrbit.Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.Finite.of_finite_mulAction_orbitRel_quotient](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/root-grwtsk-algebra-grouptheory-fstmemorbitofmemorbit-variant950efbe2d1d--ce1592cd0b70b73e89b7c26f.md) | 221 | `result-track:ce1592cd0b70b73e89b7c26f0912bebd927606550b1fd9519f250f05e011f348` |
| 19 | `lemma` | [orbitRel_le_fst](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/orbitrel-le-fst--9386cd1af0faacf52ed642bc.md) | 232 | `result-track:9386cd1af0faacf52ed642bc3924d9623877af58ba82ca82fa9dc0cc5f4da9ca` |
| 20 | `lemma` | [orbitRel_le_snd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/orbitrel-le-snd--5e26a3b80178e81f514c39d4.md) | 237 | `result-track:5e26a3b80178e81f514c39d4a4ec0de0ef3d6cd21e32ffbd1736052b4555b926` |
| 21 | `theorem` | [stabilizer_smul_eq_stabilizer_map_conj](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/stabilizer-smul-eq-stabilizer-map-conj--49f250dcdbe684be51825833.md) | 249 | `result-track:49f250dcdbe684be51825833397438eace15e285de373ddb2775cf6ca82baeac` |
| 22 | `def` | [stabilizerEquivStabilizer](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/stabilizerequivstabilizer--1655524cc10b3ebdd2b759d0.md) | 258 | `declaration-track:1655524cc10b3ebdd2b759d02409c30abd689400479158f175aee5d35008798f` |
| 23 | `theorem` | [stabilizerEquivStabilizer_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/stabilizerequivstabilizer-apply--de27fe7d43f3b10375ce36cb.md) | 263 | `result-track:de27fe7d43f3b10375ce36cb96c35bb83d5959c40ad64543b3ac5f21c02a3753` |
| 24 | `theorem` | [stabilizerEquivStabilizer_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/stabilizerequivstabilizer-symm-apply--cd7da476e61b966077961a2e.md) | 267 | `result-track:cd7da476e61b966077961a2ef6bc43343a96a6fd0a7bad863d2ae0eefa919303` |
| 25 | `theorem` | [stabilizerEquivStabilizer_trans](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/stabilizerequivstabilizer-trans--1c702e55689d6cb21506d73a.md) | 271 | `result-track:1c702e55689d6cb21506d73acce052fb6db4c1639db696ce74eadcc6d755a0c5` |
| 26 | `theorem` | [stabilizerEquivStabilizer_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/stabilizerequivstabilizer-one--1cbd3444b55d32136343580f.md) | 277 | `result-track:1cbd3444b55d32136343580f823814828e6b4cb95dc884d9828d39bb5787ee58` |
| 27 | `theorem` | [stabilizerEquivStabilizer_symm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/stabilizerequivstabilizer-symm--d4f1a4cdd3bcf963e373c9cd.md) | 281 | `result-track:d4f1a4cdd3bcf963e373c9cdd5d2b20170cc64829e22308f9d76cda3f8095a92` |
| 28 | `theorem` | [stabilizerEquivStabilizer_inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/stabilizerequivstabilizer-inv--6cfe787beb70492a0b80bd02.md) | 286 | `result-track:6cfe787beb70492a0b80bd025393da8f09fb77ac935e61ef2417904f6dfda879` |
| 29 | `def` | [stabilizerEquivStabilizerOfOrbitRel](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/stabilizerequivstabilizeroforbitrel--4116f8d25af32f6fc4bfdb06.md) | 292 | `declaration-track:4116f8d25af32f6fc4bfdb0667836fe39dd02731b5bdea41786dc5b78460bc44` |
| 30 | `theorem` | [stabilizer_vadd_eq_stabilizer_map_conj](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/stabilizer-vadd-eq-stabilizer-map-conj--cdcea7a421f5839095176229.md) | 305 | `result-track:cdcea7a421f5839095176229b2b52a359361e3b2cd70e9107c1c0bd5030f6b27` |
| 31 | `def` | [stabilizerEquivStabilizer](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/stabilizerequivstabilizer--e3b2c5d3f6fcf55d4339c5cd.md) | 315 | `declaration-track:e3b2c5d3f6fcf55d4339c5cde6f498fdb5b1dd8a03ccf8d72b7dca160925c143` |
| 32 | `theorem` | [stabilizerEquivStabilizer_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/stabilizerequivstabilizer-apply--6a6853710c4411ccafcc5ad4.md) | 320 | `result-track:6a6853710c4411ccafcc5ad400b224a4c5cf65a827a55296f60e3b434b504553` |
| 33 | `theorem` | [stabilizerEquivStabilizer_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/stabilizerequivstabilizer-symm-apply--de26cc7c499b64552cb9298a.md) | 324 | `result-track:de26cc7c499b64552cb9298a9ba69b4a423544774c755542ba928aa4d5e9b86c` |
| 34 | `theorem` | [stabilizerEquivStabilizer_trans](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/stabilizerequivstabilizer-trans--4f262932f36ef36f77e13d03.md) | 328 | `result-track:4f262932f36ef36f77e13d0323da543a066ca58b2ac20c972d82ae727579c012` |
| 35 | `theorem` | [stabilizerEquivStabilizer_zero](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/stabilizerequivstabilizer-zero--b1756189844b4a6cbb2a1016.md) | 334 | `result-track:b1756189844b4a6cbb2a1016b9774ca5d525899665c077072efbead8f7d444d5` |
| 36 | `theorem` | [stabilizerEquivStabilizer_symm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/stabilizerequivstabilizer-symm--cf6cc1658ee25f44fc85cb5f.md) | 338 | `result-track:cf6cc1658ee25f44fc85cb5fb9f4d414c2354cd17ac7dbf2464a9540cc9062ec` |
| 37 | `theorem` | [stabilizerEquivStabilizer_neg](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/stabilizerequivstabilizer-neg--c8cb4b85dfc647929b5230a5.md) | 343 | `result-track:c8cb4b85dfc647929b5230a5665737df3b382f829a525bab1276fa14afe913c3` |
| 38 | `def` | [stabilizerEquivStabilizerOfOrbitRel](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/stabilizerequivstabilizeroforbitrel--dd0d105d60723122d94b583d.md) | 349 | `declaration-track:dd0d105d60723122d94b583dac5a4eb3dcba691606b8ca0003ea21ea7994dc6f` |
| 39 | `theorem` | [Equiv.swap_mem_stabilizer](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/equiv-swap-mem-stabilizer--2e1e88b2a35e8f43cabb5fd9.md) | 361 | `result-track:2e1e88b2a35e8f43cabb5fd9cd5a49f0c945d73268a413028a2ea87f48e1088d` |
| 40 | `theorem` | [le_stabilizer_iff_smul_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/le-stabilizer-iff-smul-le--64e455f5707e2943dbafd6dc.md) | 374 | `result-track:64e455f5707e2943dbafd6dcbb5c60eedf1b26b1aeef6a20fdc268184cbd3e8d` |
| 41 | `lemma` | [Module.stabilizer_units_eq_bot_of_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf9c6512d00f8b4d9383ae1a79ac9ca4a50358854eadd8a7284c62b63531ea981.lean/declarations/module-stabilizer-units-eq-bot-of-ne-zero--179949ae10c0894b4494d088.md) | 398 | `result-track:179949ae10c0894b4494d088a154b922ff30f026f07fb5330e6054b858fe3e95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
