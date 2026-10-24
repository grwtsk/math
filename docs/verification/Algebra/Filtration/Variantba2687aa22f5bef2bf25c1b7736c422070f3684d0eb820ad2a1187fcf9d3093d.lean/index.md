# Verification target: GRWTSK.Algebra.Filtration.Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73a2acb2284415ab63ac77df256e277bcca3d8c0",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/index.md) · [Full source](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73a2acb2284415ab63ac77df256e277bcca3d8c0`.

Source path: `GRWTSK/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Module.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Nakayama` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.MaximalIdeal.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.ReesAlgebra` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Ideal.Filtration](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/ideal-filtration--9693df90efa589ed5fa044e3.md) | 56 | `declaration-track:9693df90efa589ed5fa044e33445dcded2e2a71ff405e42c462b9ef15642d811` |
| 2 | `theorem` | [pow_smul_le](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/pow-smul-le--dbd8efcd83752be3ae96682f.md) | 65 | `result-track:dbd8efcd83752be3ae96682f3359c4ce862bfcc6ab05f7ea7173c3f23c6db04b` |
| 3 | `theorem` | [pow_smul_le_pow_smul](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/pow-smul-le-pow-smul--3cbf8e16f41a55e695930716.md) | 71 | `result-track:3cbf8e16f41a55e69593071638b546402313cd17798d89eabc026f099d8a3c0b` |
| 4 | `theorem` | [antitone](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/antitone--785a793b7c22a83411c3571e.md) | 75 | `result-track:785a793b7c22a83411c3571e30d717f4c23368102a91dfb34d0df39a9065e9d3` |
| 5 | `def` | [_root_.GRWTSK.Algebra.IdealFiltration.Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.Ideal.trivialFiltration](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/root-grwtsk-algebra-idealfiltration-variant2861450772d6e34f7d968941a857b--b99387bb1c3f526b12418362.md) | 80 | `declaration-track:b99387bb1c3f526b124183628b9125b26184b654103d186ce457e23dc37dcf6a` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/instance--73d957c51f9af22d6eb2a9c1.md) | 86 | `declaration-track:73d957c51f9af22d6eb2a9c12fe91477a5c5d160ac612b21179310b99b393ef4` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/instance--1845ec5043a00016aee3abb9.md) | 92 | `declaration-track:1845ec5043a00016aee3abb938a17818c41857a46e3f87158221c7aac8825935` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/instance--6b525b505850e2d83e7dc713.md) | 106 | `declaration-track:6b525b505850e2d83e7dc713f0d8c48c9565eb65307aab70bb4e8b1a53ef09ae` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/instance--047bb8296a53e48217804a1b.md) | 112 | `declaration-track:047bb8296a53e48217804a1b438a0862333e5dbd48b8b0d3a319d933abdf9662` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/instance--6b92689c071972db8125247a.md) | 126 | `declaration-track:6b92689c071972db8125247a4c05e21f0b269b7b3e78a3c9d16c0aa92d4e8c5a` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/instance--9dcbd0866b90d0f161179abd.md) | 129 | `declaration-track:9dcbd0866b90d0f161179abd5a1c4c17297b10aeefd876033c740885f505b1fd` |
| 12 | `theorem` | [sup_N](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/sup-n--547f4f07513e4d3fa061fb29.md) | 133 | `result-track:547f4f07513e4d3fa061fb29088637e86aec0a6d5e936e39c8b61b62a070f57a` |
| 13 | `theorem` | [sSup_N](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/ssup-n--b2fb4483589be76f6b190232.md) | 137 | `result-track:b2fb4483589be76f6b190232323be0f8ea080595eb14380abb6d35946c7fb3c3` |
| 14 | `theorem` | [inf_N](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/inf-n--31896fab903e71b4f627eb80.md) | 141 | `result-track:31896fab903e71b4f627eb803979ebdc22728f0f62b9d992d965af12f58dbefd` |
| 15 | `theorem` | [sInf_N](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/sinf-n--7746d7602baf8d89481ef58f.md) | 145 | `result-track:7746d7602baf8d89481ef58fdac067b7f1e0d35eed79ffb8a2c75f28577cb014` |
| 16 | `theorem` | [top_N](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/top-n--5f623cea3886d77931794edb.md) | 149 | `result-track:5f623cea3886d77931794edb1628ca428576e82876288b54091d488921817323` |
| 17 | `theorem` | [bot_N](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/bot-n--8e57fc33a225e7ceb9f9ce46.md) | 153 | `result-track:8e57fc33a225e7ceb9f9ce464c4548b143e5cf5bafe57dc182671e7cd149f17f` |
| 18 | `theorem` | [iSup_N](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/isup-n--b5e8017dba9520d4b4df0e6a.md) | 157 | `result-track:b5e8017dba9520d4b4df0e6ae053aa9aabd91dc026defe687890b7dc04824050` |
| 19 | `theorem` | [iInf_N](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/iinf-n--c2edb304e8c24351450fa321.md) | 161 | `result-track:c2edb304e8c24351450fa321833f176fe575202c5fb1dcf561bc564cd0c63cf2` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/instance--f796de26f32837ca5b5f84e2.md) | 164 | `declaration-track:f796de26f32837ca5b5f84e2af8d22d43f5a4d3869acb9292b5d9dd8770351c9` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/instance--2ef25f4c4ea404348a341da2.md) | 169 | `declaration-track:2ef25f4c4ea404348a341da2d476a73a40383346825360924675088054225c4e` |
| 22 | `def` | [Stable](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/stable--ace5fdbaf848a80a3fabc68a.md) | 173 | `declaration-track:ace5fdbaf848a80a3fabc68a160cf4787cdeac260f8255b23cf88f9acd3dfb33` |
| 23 | `def` | [_root_.GRWTSK.Algebra.IdealFiltration.Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.Ideal.stableFiltration](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/root-grwtsk-algebra-idealfiltration-variant2861450772d6e34f7d968941a857b--e9a693477425302c62f1132c.md) | 178 | `declaration-track:e9a693477425302c62f1132cfc418ba8bd87365cabfb99e9ce73b279db424114` |
| 24 | `theorem` | [_root_.GRWTSK.Algebra.IdealFiltration.Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.Ideal.stableFiltration_stable](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/root-grwtsk-algebra-idealfiltration-variant2861450772d6e34f7d968941a857b--ebc381d48d4eaddac1947df5.md) | 183 | `result-track:ebc381d48d4eaddac1947df56c68b11f4d87f1db4c0d59f5c8ed323cb2819e0b` |
| 25 | `theorem` | [Stable.exists_pow_smul_eq](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/stable-exists-pow-smul-eq--0f53b5eb7f661519137b8952.md) | 192 | `result-track:0f53b5eb7f661519137b89528bd1f9a177645ab63ebc16640d7bf57155174fcb` |
| 26 | `theorem` | [Stable.exists_pow_smul_eq_of_ge](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/stable-exists-pow-smul-eq-of-ge--ba0547c5d06b22d7e3a7b018.md) | 201 | `result-track:ba0547c5d06b22d7e3a7b0185958a18bc751495e818ab4768070279947bec0b0` |
| 27 | `theorem` | [stable_iff_exists_pow_smul_eq_of_ge](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/stable-iff-exists-pow-smul-eq-of-ge--40dd1603ff661d7e09191059.md) | 209 | `result-track:40dd1603ff661d7e091910598ce50e4f4c5ec2223acd9c6955838ee7a07abde5` |
| 28 | `theorem` | [Stable.exists_forall_le](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/stable-exists-forall-le--cf7f4ba2a8de6cfa5d30a300.md) | 215 | `result-track:cf7f4ba2a8de6cfa5d30a300aeea62dbcb3663664fb7998e62a2e105c4a2af8d` |
| 29 | `theorem` | [Stable.bounded_difference](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/stable-bounded-difference--0418f595b710b8e2801ed810.md) | 226 | `result-track:0418f595b710b8e2801ed81049de247fb50dd61b0b726a794becfb2ade2d6e86` |
| 30 | `def` | [submodule](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/submodule--8b1ef613180d6b5808448b16.md) | 239 | `declaration-track:8b1ef613180d6b5808448b169757bacb58b1a9db92d90c4720d62ff90a95b8de` |
| 31 | `theorem` | [mem_submodule](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/mem-submodule--031033557dbaf6f656fae0ce.md) | 252 | `result-track:031033557dbaf6f656fae0cefb9e11e0496422dad8062df8006fa4b3ec52d95d` |
| 32 | `theorem` | [inf_submodule](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/inf-submodule--3aff2be07c3a551cb7dd0d6a.md) | 255 | `result-track:3aff2be07c3a551cb7dd0d6a6c2da3c8dfd6f1fb1036d5d90bb1e487b9a3c5ce` |
| 33 | `def` | [submoduleInfHom](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/submoduleinfhom--d524a02691652c0a3d274f27.md) | 262 | `declaration-track:d524a02691652c0a3d274f27f4250c15e11b3f1b3e95428da873bce3443b4323` |
| 34 | `theorem` | [submodule_closure_single](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/submodule-closure-single--3302b6080cf146b32a79346c.md) | 269 | `result-track:3302b6080cf146b32a79346c1d8da9fd51d776a4c3e1bd31a72976aed9d04420` |
| 35 | `theorem` | [submodule_span_single](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/submodule-span-single--59d38786cbf165a7e80730a6.md) | 284 | `result-track:59d38786cbf165a7e80730a63b776f3904cb07e62651e671b9d1a0e7a1ffa3e6` |
| 36 | `theorem` | [submodule_eq_span_le_iff_stable_ge](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/submodule-eq-span-le-iff-stable-ge--03c94cbaacf9075ebf53f103.md) | 289 | `result-track:03c94cbaacf9075ebf53f103d957f3db98fa2493e608cf48e27a8196189aaa69` |
| 37 | `theorem` | [submodule_fg_iff_stable](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/submodule-fg-iff-stable--0cf80d0a4f10f1d9894f5ee3.md) | 336 | `result-track:0cf80d0a4f10f1d9894f5ee3841052da3e12b8ef9a31fc8f92a0f8022097bc0a` |
| 38 | `theorem` | [Stable.of_le](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/stable-of-le--a79599fc27116504bf9c441e.md) | 372 | `result-track:a79599fc27116504bf9c441e9666541295c716292f512d520c7cf797fcb30ccb` |
| 39 | `theorem` | [Stable.inter_right](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/stable-inter-right--e5a38cbefd03ca7c9dbf95db.md) | 380 | `result-track:e5a38cbefd03ca7c9dbf95dba24867150b27861a01245c626218f71d5e86acb2` |
| 40 | `theorem` | [Stable.inter_left](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/stable-inter-left--3771b0d157b6a9c2678f2432.md) | 384 | `result-track:3771b0d157b6a9c2678f24325f121a4b91d1f50284bb9ceaec5b262b2f52b751` |
| 41 | `theorem` | [Ideal.exists_pow_inf_eq_pow_smul](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/ideal-exists-pow-inf-eq-pow-smul--53a2fc6cffca443112839f8b.md) | 393 | `result-track:53a2fc6cffca443112839f8b5d542b3b6c00c704033c46fd1a507819273fae60` |
| 42 | `theorem` | [Ideal.mem_iInf_smul_pow_eq_bot_iff](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/ideal-mem-iinf-smul-pow-eq-bot-iff--11a9fcac12c32d1547edfd31.md) | 397 | `result-track:11a9fcac12c32d1547edfd3109f7824a4f6952b889582e3efa22fbeb74d346ac` |
| 43 | `theorem` | [Ideal.iInf_pow_smul_eq_bot_of_le_jacobson](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/ideal-iinf-pow-smul-eq-bot-of-le-jacobson--3b1645b5188a83e16504316d.md) | 419 | `result-track:3b1645b5188a83e16504316df646cf27acb024ba444a82160f10011425db9b23` |
| 44 | `theorem` | [Ideal.iInf_pow_smul_eq_bot_of_isLocalRing](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/ideal-iinf-pow-smul-eq-bot-of-islocalring--9db9d2fb957cfcd9c2056f20.md) | 429 | `result-track:9db9d2fb957cfcd9c2056f202cdd51bd6c4deaecad7229700a5a62a8dc70576f` |
| 45 | `theorem` | [Ideal.iInf_pow_eq_bot_of_isLocalRing](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/ideal-iinf-pow-eq-bot-of-islocalring--8977fdc33dedd42ab65cda30.md) | 438 | `result-track:8977fdc33dedd42ab65cda309e6781fcf0a965766359513950d7213eedc604c1` |
| 46 | `theorem` | [Ideal.isIdempotentElem_iff_eq_bot_or_top_of_isLocalRing](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/ideal-isidempotentelem-iff-eq-bot-or-top-of-islocalring--5d4ece14d432f5c299f23fef.md) | 448 | `result-track:5d4ece14d432f5c299f23fefacc2cf55f74078f3037757155be1612a062198f0` |
| 47 | `theorem` | [Ideal.iInf_pow_smul_eq_bot_of_noZeroSMulDivisors](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/ideal-iinf-pow-smul-eq-bot-of-nozerosmuldivisors--3eae11c04368b700936e79be.md) | 465 | `result-track:3eae11c04368b700936e79bebfe45d23ed502d323236e4d2e580fd04bf0c3cca` |
| 48 | `theorem` | [Ideal.iInf_pow_eq_bot_of_isDomain](../../../../mathematics/Algebra/Filtration/Variantba2687aa22f5bef2bf25c1b7736c422070f3684d0eb820ad2a1187fcf9d3093d.lean/declarations/ideal-iinf-pow-eq-bot-of-isdomain--4f34f402c9c13cfd1a738f0c.md) | 477 | `result-track:4f34f402c9c13cfd1a738f0cdf0e6d4a948ab7f379b5f6e3047d26dbeb7718e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
