# Verification target: GRWTSK.Algebra.Filtration.Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd00b9939ea9017af86e913b656b695ded979226",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/index.md) · [Full source](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd00b9939ea9017af86e913b656b695ded979226`.

Source path: `GRWTSK/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Module.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Nakayama` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.MaximalIdeal.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.ReesAlgebra` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Ideal.Filtration](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/ideal-filtration--9712f062f397e9b48778a5de.md) | 48 | `declaration-track:9712f062f397e9b48778a5de8b71e51f3be2b602be676fc9a5bfc04c8f981b3b` |
| 2 | `theorem` | [pow_smul_le](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/pow-smul-le--9e75eb85602a2b785cd0fe1a.md) | 57 | `result-track:9e75eb85602a2b785cd0fe1af9c240dca80c3526c35c11ae680e3f08c74b3150` |
| 3 | `theorem` | [pow_smul_le_pow_smul](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/pow-smul-le-pow-smul--4bbd5e5d9c077fd5437dd9c7.md) | 63 | `result-track:4bbd5e5d9c077fd5437dd9c70db0055caea3afbbea570cefe10bf647f0bb67d0` |
| 4 | `theorem` | [antitone](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/antitone--451820d8878aae9426fc1532.md) | 67 | `result-track:451820d8878aae9426fc1532484b4bb443df3dc369ee9469dff586b2478a5c9d` |
| 5 | `def` | [_root_.Ideal.trivialFiltration](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/root-ideal-trivialfiltration--7d7ea6f677722a90cae37b22.md) | 72 | `declaration-track:7d7ea6f677722a90cae37b220ddbc6b27a2dda88da0eba615f2e3322b4f606dd` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/instance--913a59dd3d5f9be0f5252c3b.md) | 78 | `declaration-track:913a59dd3d5f9be0f5252c3bb90b016a3b802a1f038f7d8b04e0f15cc2f54311` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/instance--040b09e8ff9aa486778ce703.md) | 84 | `declaration-track:040b09e8ff9aa486778ce703760212bd7a8090de2cd641fd1fd3c1fc28628ae6` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/instance--72903222f7bfea57ebcc985c.md) | 98 | `declaration-track:72903222f7bfea57ebcc985cb9809ee9beead1befc69db64ca1d07613ec21e44` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/instance--0937d409af579d3bf2983b87.md) | 104 | `declaration-track:0937d409af579d3bf2983b87b6fdd2046687da6e1e13f1fcd153337ec0f2f983` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/instance--b4789f6d817e67319ac0cbd7.md) | 118 | `declaration-track:b4789f6d817e67319ac0cbd746406ed513e94202158171b71bb3ffb7bfe6cbf1` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/instance--3ffd3599168ed267b080bc95.md) | 121 | `declaration-track:3ffd3599168ed267b080bc9549ded1e208f788f7c1060d941b8beda1f38ca3cb` |
| 12 | `theorem` | [sup_N](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/sup-n--f197409116b39da3f7a97a3c.md) | 125 | `result-track:f197409116b39da3f7a97a3cd3bb460a2957cbfe0f8e17aa3aeff64e2918d03c` |
| 13 | `theorem` | [sSup_N](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/ssup-n--55069f547916ab8881d7ba41.md) | 129 | `result-track:55069f547916ab8881d7ba41d17d896f61297df4cdc13781a8c074a1eb119adf` |
| 14 | `theorem` | [inf_N](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/inf-n--53b4890bb54447bba410abd8.md) | 133 | `result-track:53b4890bb54447bba410abd827ae86d219163472352ad06e65ead58a18c1fc10` |
| 15 | `theorem` | [sInf_N](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/sinf-n--c86678412da586b1b27976cb.md) | 137 | `result-track:c86678412da586b1b27976cbcf391e5b2c79151e7c4ffef0bc238ce52193123e` |
| 16 | `theorem` | [top_N](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/top-n--8dde8d796d5d7486c8f9f25a.md) | 141 | `result-track:8dde8d796d5d7486c8f9f25aa4fb6f903b921b7c32edc5b9c2c0fd776fa922eb` |
| 17 | `theorem` | [bot_N](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/bot-n--46b6fe908e713e77db8863b2.md) | 145 | `result-track:46b6fe908e713e77db8863b29ea7c3bce1871b1d38eca2f79feca40288720298` |
| 18 | `theorem` | [iSup_N](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/isup-n--173c8f60ab0f123cbf99769e.md) | 149 | `result-track:173c8f60ab0f123cbf99769ed6e705f981f8a9dbf543d9a1200b220b92cb0860` |
| 19 | `theorem` | [iInf_N](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/iinf-n--c8cc3ae3888a4e31c150d3e0.md) | 153 | `result-track:c8cc3ae3888a4e31c150d3e0af5901013fab42ef20569d72308c908675340581` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/instance--5d236abcfa452c2de45c08c2.md) | 156 | `declaration-track:5d236abcfa452c2de45c08c28dee607ad7fcbb086fa17c53d48de93f7b4b0741` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/instance--89582c41044cf5f2a4bfaa0a.md) | 161 | `declaration-track:89582c41044cf5f2a4bfaa0a0cefcd2b14734dcd6b8ddabd4073e807d8ee081c` |
| 22 | `def` | [Stable](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/stable--944a0693cfad94bd60136a94.md) | 165 | `declaration-track:944a0693cfad94bd60136a94ed42d1d2773b49e09112ce57bfc1ad5064d98fcc` |
| 23 | `def` | [_root_.Ideal.stableFiltration](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/root-ideal-stablefiltration--f291fae969193639c11836bf.md) | 170 | `declaration-track:f291fae969193639c11836bfc4659a395db7fd93dfaafe3a6f7de156afdc6da7` |
| 24 | `theorem` | [_root_.Ideal.stableFiltration_stable](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/root-ideal-stablefiltration-stable--57c0e6e0fbc81b79d8a3cd24.md) | 175 | `result-track:57c0e6e0fbc81b79d8a3cd24d3fa93f47bc45de756d61abf5ac8cc9cd8bf4e23` |
| 25 | `theorem` | [Stable.exists_pow_smul_eq](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/stable-exists-pow-smul-eq--ddbcc900bb6ef8a5adb3dd52.md) | 184 | `result-track:ddbcc900bb6ef8a5adb3dd525fe8c8543dfee9f272fe9a19e80458529526f95f` |
| 26 | `theorem` | [Stable.exists_pow_smul_eq_of_ge](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/stable-exists-pow-smul-eq-of-ge--65f832001943ae4cfee49fd5.md) | 193 | `result-track:65f832001943ae4cfee49fd5daed0466962a15c3a0e4d04c6d6a67a18255144b` |
| 27 | `theorem` | [stable_iff_exists_pow_smul_eq_of_ge](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/stable-iff-exists-pow-smul-eq-of-ge--8952e07eac05c484a8a297cc.md) | 201 | `result-track:8952e07eac05c484a8a297cca6500783388cb08a5d3909376fc3d88986cbe2fd` |
| 28 | `theorem` | [Stable.exists_forall_le](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/stable-exists-forall-le--ac2f67315bf72093e71e7f8c.md) | 207 | `result-track:ac2f67315bf72093e71e7f8caa8a6d13661252b3550dd985c4b8537893f779d3` |
| 29 | `theorem` | [Stable.bounded_difference](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/stable-bounded-difference--e785ea9bca8291a956823579.md) | 218 | `result-track:e785ea9bca8291a95682357931f781af81094f7f1b87d72b35e1464abea80b7f` |
| 30 | `def` | [submodule](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/submodule--353fad34f0d6e1e5836234dd.md) | 231 | `declaration-track:353fad34f0d6e1e5836234ddf84bb0cf22ebbbae4e476fff64e02811fde82fc6` |
| 31 | `theorem` | [mem_submodule](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/mem-submodule--0b05a9325f15da2d9f8183fd.md) | 244 | `result-track:0b05a9325f15da2d9f8183fdaaab982912c5803d24d4786bb14843f719f1fc29` |
| 32 | `theorem` | [inf_submodule](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/inf-submodule--b1e60f761d1ea2ce811a2db4.md) | 247 | `result-track:b1e60f761d1ea2ce811a2db4d3a2ed0b72f76f5a7040c510fe4893ecae6ebcf5` |
| 33 | `def` | [submoduleInfHom](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/submoduleinfhom--75678e3eab2d5d8394a4f23e.md) | 254 | `declaration-track:75678e3eab2d5d8394a4f23ed761cb4a0b169f1d25ec5c3511da2d08f47ad044` |
| 34 | `theorem` | [submodule_closure_single](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/submodule-closure-single--2ce7e63e383cbe5bfccd50c8.md) | 261 | `result-track:2ce7e63e383cbe5bfccd50c8f63f6ac463b9fe32decc615b1723a732f0f22344` |
| 35 | `theorem` | [submodule_span_single](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/submodule-span-single--9ca5ced3d62edb8809ef53aa.md) | 276 | `result-track:9ca5ced3d62edb8809ef53aad7c9889581803af17f27c8ef98f0d62709078e12` |
| 36 | `theorem` | [submodule_eq_span_le_iff_stable_ge](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/submodule-eq-span-le-iff-stable-ge--83705741e073bdaac836f1c0.md) | 281 | `result-track:83705741e073bdaac836f1c0b8741eceedf6ea5d58b20d73d036719e5835ed9f` |
| 37 | `theorem` | [submodule_fg_iff_stable](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/submodule-fg-iff-stable--46bdbaa18989d4af05a82178.md) | 328 | `result-track:46bdbaa18989d4af05a82178f6a6b0366feeb4fb22e230104006cc3a5764476e` |
| 38 | `theorem` | [Stable.of_le](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/stable-of-le--8197d29da419d71a9dacedfa.md) | 364 | `result-track:8197d29da419d71a9dacedfabb6a4295a0f0a5daeb6e2b01772e6b06587660de` |
| 39 | `theorem` | [Stable.inter_right](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/stable-inter-right--4a8af68be76c8907cd9fa3d9.md) | 372 | `result-track:4a8af68be76c8907cd9fa3d924c6eabe7ca97f001a2d97ebf72cb6d892cb6ef4` |
| 40 | `theorem` | [Stable.inter_left](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/stable-inter-left--005b84bde3b6c47481ef2d50.md) | 376 | `result-track:005b84bde3b6c47481ef2d50e5ce0e95fd1b96338b635f16ae16961297ebac8e` |
| 41 | `theorem` | [Ideal.exists_pow_inf_eq_pow_smul](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/ideal-exists-pow-inf-eq-pow-smul--19d0ab98716c84838328ce79.md) | 385 | `result-track:19d0ab98716c84838328ce79b00d858d17c7711c3836f3b24c9dc25a27070a35` |
| 42 | `theorem` | [Ideal.mem_iInf_smul_pow_eq_bot_iff](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/ideal-mem-iinf-smul-pow-eq-bot-iff--b772e24c0e47043f6b7cdbb7.md) | 389 | `result-track:b772e24c0e47043f6b7cdbb798519a58534eb82cc74394878bd019d6c6eeb914` |
| 43 | `theorem` | [Ideal.iInf_pow_smul_eq_bot_of_le_jacobson](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/ideal-iinf-pow-smul-eq-bot-of-le-jacobson--2dcf58eb8743bb52b0348caf.md) | 411 | `result-track:2dcf58eb8743bb52b0348cafb2c646696c234b90e063cc168e89eb8063ff4b71` |
| 44 | `theorem` | [Ideal.iInf_pow_smul_eq_bot_of_isLocalRing](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/ideal-iinf-pow-smul-eq-bot-of-islocalring--5081824104f40a2ac0830a42.md) | 421 | `result-track:5081824104f40a2ac0830a425e3cb5addf599fee2f3ec20e4eb15e3ec594e1d1` |
| 45 | `theorem` | [Ideal.iInf_pow_eq_bot_of_isLocalRing](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/ideal-iinf-pow-eq-bot-of-islocalring--f4132a1b1bf273dd91089bbd.md) | 430 | `result-track:f4132a1b1bf273dd91089bbd4019fd1e82fb5e54dcdc9fd1eecfb4221532483b` |
| 46 | `theorem` | [Ideal.isIdempotentElem_iff_eq_bot_or_top_of_isLocalRing](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/ideal-isidempotentelem-iff-eq-bot-or-top-of-islocalring--a3b73b6ae15d16d3a79e7b6e.md) | 440 | `result-track:a3b73b6ae15d16d3a79e7b6e736dde8ba3b9b919cca9bac3a446ffc0a95dc873` |
| 47 | `theorem` | [Ideal.iInf_pow_smul_eq_bot_of_noZeroSMulDivisors](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/ideal-iinf-pow-smul-eq-bot-of-nozerosmuldivisors--7b02eae96342d73329df3b41.md) | 457 | `result-track:7b02eae96342d73329df3b419ebcd7a835a692adc5f94b35f5e780f7c898cf35` |
| 48 | `theorem` | [Ideal.iInf_pow_eq_bot_of_isDomain](../../../../mathematics/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/declarations/ideal-iinf-pow-eq-bot-of-isdomain--d21e90b48d0e30814e627cf4.md) | 469 | `result-track:d21e90b48d0e30814e627cf485efd539236e8ecfc0966d079f00171f253d9fee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
