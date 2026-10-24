# Verification target: GRWTSK.Algebra.Kleene.Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71ac5ed0527984a772a4e89b659be2dd15c9e046",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/index.md) · [Full source](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71ac5ed0527984a772a4e89b659be2dd15c9e046`.

Source path: `GRWTSK/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.InjSurj` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Pi` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Prod` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Monotonicity.Attr` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IdemSemiring](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/idemsemiring--5a485894cfc0d606f87c3d3f.md) | 68 | `declaration-track:5a485894cfc0d606f87c3d3fcf1dabf574d1707fe939a8ba47f134268ddeb85a` |
| 2 | `class` | [IdemCommSemiring](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/idemcommsemiring--51355a2f8116e33e804a0210.md) | 79 | `declaration-track:51355a2f8116e33e804a0210b0f11f00fa8755b92d2eae3c78db328d6cfa7583` |
| 3 | `class` | [KStar](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/kstar--e7baa518f820dbf6baa3ca62.md) | 82 | `declaration-track:e7baa518f820dbf6baa3ca622c038423c1dfd5bfb13502697ace142a4832f622` |
| 4 | `class` | [KleeneAlgebra](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/kleenealgebra--d8c307421a178cda97bb8b10.md) | 97 | `declaration-track:d8c307421a178cda97bb8b1066a45eeb8788583a1fea82338fa91afd29faaafd` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/instance--ba53a1e94275710303bc3adc.md) | 105 | `declaration-track:ba53a1e94275710303bc3adc06a8708a215024050f98d37ef362d68fa51358fe` |
| 6 | `abbrev` | [IdemSemiring.ofSemiring](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/idemsemiring-ofsemiring--377175bc6fe061025922e187.md) | 110 | `declaration-track:377175bc6fe061025922e1872c3c849a979715db0e548f3e5b37b50e0cf248c1` |
| 7 | `theorem` | [add_eq_sup](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/add-eq-sup--abb795650d2c6e2c4f0fbeff.md) | 131 | `result-track:abb795650d2c6e2c4f0fbeff895444b322de2155dbe4158bf365a1ddc76a27f6` |
| 8 | `theorem` | [add_idem](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/add-idem--2c355102afd1f1d8cb923e6a.md) | 136 | `result-track:2c355102afd1f1d8cb923e6a18ae92cf70c3b6e88a94ed83c6ffed13b681e822` |
| 9 | `lemma` | [natCast_eq_one](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/natcast-eq-one--6888180e9a2c0547f229a6ad.md) | 138 | `result-track:6888180e9a2c0547f229a6ada777e157f097f54b48687405317fa71efa100710` |
| 10 | `lemma` | [ofNat_eq_one](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/ofnat-eq-one--fdbee253e9ce679af035e894.md) | 144 | `result-track:fdbee253e9ce679af035e894e1e4c95b90f59b585226f6cc8ab4bcbe247c80f4` |
| 11 | `theorem` | [nsmul_eq_self](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/nsmul-eq-self--bc7c507bfa2e994aee6cb9ac.md) | 147 | `result-track:bc7c507bfa2e994aee6cb9ac23857339a251259b1c5945cb8a6405015f53fab8` |
| 12 | `theorem` | [add_eq_left_iff_le](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/add-eq-left-iff-le--b88147e7981a878efa310930.md) | 152 | `result-track:b88147e7981a878efa310930e500549f8089680b11068e7affb2c8b67d1f7a26` |
| 13 | `theorem` | [add_eq_right_iff_le](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/add-eq-right-iff-le--f4c476c53fff5bb70396bc12.md) | 154 | `result-track:f4c476c53fff5bb70396bc122b84f48f3b86c1bbbcceadeab474fec9079bbbc2` |
| 14 | `theorem` | [add_le_iff](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/add-le-iff--619bae4cf3bf8797e24e652d.md) | 160 | `result-track:619bae4cf3bf8797e24e652d9581d0a5c81f297707c1cbd76054825f4ce04376` |
| 15 | `theorem` | [add_le](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/add-le--bec45e650bf5bd8d5af770ed.md) | 162 | `result-track:bec45e650bf5bd8d5af770edf2eab8818cf3b5474a1f8de9de395fe7536f9f8e` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/instance--23e08334bb802391fefd7289.md) | 166 | `declaration-track:23e08334bb802391fefd72894359a0e5c9b65db6352d8ee7dcad7832e22b9987` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/instance--4256056056a7d20ee4d8408a.md) | 173 | `declaration-track:4256056056a7d20ee4d8408a3402c66fac49383e2f4ec6949cd2a0124b642e93` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/instance--b92eabf3ea40861828f33405.md) | 179 | `declaration-track:b92eabf3ea40861828f334052b42e835ef04cc58a2255baf5f77475dfb4cd817` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/instance--0729ca2e294657467d27dc40.md) | 183 | `declaration-track:0729ca2e294657467d27dc4010fd9e5749ca7098d7a2cf5c0b84e1baa4a56f7f` |
| 20 | `theorem` | [one_le_kstar](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/one-le-kstar--4d2101b89ff75883d6deaca0.md) | 193 | `result-track:4d2101b89ff75883d6deaca0c30f27fce8d22034e26ff695743ac6afc9a649ec` |
| 21 | `theorem` | [mul_kstar_le_kstar](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/mul-kstar-le-kstar--b5ca33cb44a364b01a05454e.md) | 196 | `result-track:b5ca33cb44a364b01a05454e8fbe3777b2fe55ff3d833e1adffc05813a41bc8f` |
| 22 | `theorem` | [kstar_mul_le_kstar](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/kstar-mul-le-kstar--ad5bfa2617f70062c4c7a75a.md) | 199 | `result-track:ad5bfa2617f70062c4c7a75a93961a8894fa2b2276110c0cb0c3fbf8b1e86197` |
| 23 | `theorem` | [mul_kstar_le_self](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/mul-kstar-le-self--0fa067dc123448e1b559962a.md) | 202 | `result-track:0fa067dc123448e1b559962a2c45e365354b7f2e4def326f6dcc78b2c3ddcd4c` |
| 24 | `theorem` | [kstar_mul_le_self](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/kstar-mul-le-self--481a43ea744366c401b951f8.md) | 205 | `result-track:481a43ea744366c401b951f8b2a54e0b150f2264452f1476e0571e066c010f7c` |
| 25 | `theorem` | [mul_kstar_le](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/mul-kstar-le--e5eedf0f732364847867359a.md) | 208 | `result-track:e5eedf0f732364847867359afede800c78d391f0c4a810310aee2084de69e41c` |
| 26 | `theorem` | [kstar_mul_le](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/kstar-mul-le--b93057b1399fb8f680751c71.md) | 211 | `result-track:b93057b1399fb8f680751c71624c3883bc69d73b70acbd16f5cdab01d91a17d9` |
| 27 | `theorem` | [kstar_le_of_mul_le_left](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/kstar-le-of-mul-le-left--9713cb9f40756079111b9726.md) | 214 | `result-track:9713cb9f40756079111b9726f243842df5997d8fc2b04017bf69d024a232e3f9` |
| 28 | `theorem` | [kstar_le_of_mul_le_right](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/kstar-le-of-mul-le-right--585754b9f3cc5d291adc16b7.md) | 217 | `result-track:585754b9f3cc5d291adc16b79c2bc7219fb2ab6b2ee357fb7f3670527dfc5bfe` |
| 29 | `theorem` | [le_kstar](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/le-kstar--f2dfbb7d810921a99b9675c9.md) | 221 | `result-track:f2dfbb7d810921a99b9675c982c241ea2c2ba759cd35d7534890240656fb6624` |
| 30 | `theorem` | [kstar_mono](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/kstar-mono--d53174c194ffcaa9ad96482c.md) | 225 | `result-track:d53174c194ffcaa9ad96482c23b256239902073bc668fc5a3850ed6d9a92d5f0` |
| 31 | `theorem` | [kstar_eq_one](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/kstar-eq-one--b883381ba48a03e1d381874b.md) | 230 | `result-track:b883381ba48a03e1d381874bf8576887cf9ad4f0cc436b3494ebf45783e0dce4` |
| 32 | `lemma` | [kstar_zero](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/kstar-zero--0c77a2d070efd0379b06615e.md) | 234 | `result-track:0c77a2d070efd0379b06615e799707098e6b176e64230dc3f59d13dda2fbd606` |
| 33 | `theorem` | [kstar_one](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/kstar-one--3b820dab38fd64fe1e9f6a21.md) | 237 | `result-track:3b820dab38fd64fe1e9f6a214ec735769e6bf2064cee6e602669434d1503ae5d` |
| 34 | `theorem` | [kstar_mul_kstar](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/kstar-mul-kstar--198ed5237f75228d0c981636.md) | 241 | `result-track:198ed5237f75228d0c981636d95b9c1ab8e8379a694f20bd233ea8e61f6f027e` |
| 35 | `theorem` | [kstar_eq_self](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/kstar-eq-self--0e41bd13a5a41987009767ba.md) | 245 | `result-track:0e41bd13a5a41987009767ba8356b529a4a3f4eeedf42eba6ee4a552efb021fe` |
| 36 | `theorem` | [kstar_idem](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/kstar-idem--3e7221d9fa59de7c95a4ff83.md) | 250 | `result-track:3e7221d9fa59de7c95a4ff8348dc92b22dc222c87749c46f392c8f5d49959944` |
| 37 | `theorem` | [pow_le_kstar](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/pow-le-kstar--82c3ed538da1f8e5b7e6caa5.md) | 254 | `result-track:82c3ed538da1f8e5b7e6caa5bd21d18ac8223f49b20399c402c3a81111cfe9c8` |
| 38 | `instance` | [instIdemSemiring](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/instidemsemiring--7c70430a6ab19276431ad7e1.md) | 264 | `declaration-track:7c70430a6ab19276431ad7e162dd1d654e1f7759177fcb4698cc62d04a889ad6` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/instance--ec1ab8ba55f977fddb0a0108.md) | 268 | `declaration-track:ec1ab8ba55f977fddb0a0108c6193f55c7c185b2dd727b36250d8441297f49d2` |
| 40 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/instance--050511d022e85c68b24ed240.md) | 273 | `declaration-track:050511d022e85c68b24ed2402e7c4ff6bfaaf5912fe246decd9768bb30d9ca9a` |
| 41 | `theorem` | [kstar_def](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/kstar-def--ed512a00bbcfa711a981196f.md) | 282 | `result-track:ed512a00bbcfa711a981196f66c1a9f63d1c7387344eb78d573434d068ce18b3` |
| 42 | `theorem` | [fst_kstar](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/fst-kstar--5f7619c6f572d8b6b61c493f.md) | 286 | `result-track:5f7619c6f572d8b6b61c493fd8a806ab45c150682b878ca9d598a6ba0421e9b6` |
| 43 | `theorem` | [snd_kstar](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/snd-kstar--5be28af6decf6d18ca9e524f.md) | 290 | `result-track:5be28af6decf6d18ca9e524f8c9a95b68b29b73418f1293f4949d980a0c153e5` |
| 44 | `instance` | [instIdemSemiring](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/instidemsemiring--c4171b6cbda5f96e8ccbf4a9.md) | 297 | `declaration-track:c4171b6cbda5f96e8ccbf4a9f9f3a15e4102d6c4905fee671ae14db1942ae256` |
| 45 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/instance--26de5d0689cf53ba5e2482e8.md) | 301 | `declaration-track:26de5d0689cf53ba5e2482e836e7ed9a30d6415204589ee9c67352f88211285f` |
| 46 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/instance--34066318e2ed324f2d4b0ab0.md) | 306 | `declaration-track:34066318e2ed324f2d4b0ab00a722582372f2a38c1c5f4d39b8e6208de21d7d4` |
| 47 | `theorem` | [kstar_def](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/kstar-def--b43cc21af7b66d21ceb5c8c5.md) | 315 | `result-track:b43cc21af7b66d21ceb5c8c577fa10f4e037f143cb89d3fb362617864e27fb65` |
| 48 | `theorem` | [kstar_apply](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/kstar-apply--5534b1af1f49e09a48452993.md) | 319 | `result-track:5534b1af1f49e09a48452993a55b713ea8618927f7dae7df2f32e33247a0ae14` |
| 49 | `abbrev` | [idemSemiring](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/idemsemiring--dd045b54309e808f36e4fced.md) | 328 | `declaration-track:dd045b54309e808f36e4fced81af675a10b1735eeeb061247641c36263576c68` |
| 50 | `abbrev` | [idemCommSemiring](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/idemcommsemiring--117cf5ff828a4cf66258e1b1.md) | 342 | `declaration-track:117cf5ff828a4cf66258e1b14460d36ab48a58cdce62869f564536c8c495457f` |
| 51 | `abbrev` | [kleeneAlgebra](../../../../mathematics/Algebra/Kleene/Variant0b3b4418a2a611e3090e7cde941f5a965cdac4dbd718130600bbb01c214dc884.lean/declarations/kleenealgebra--2812446a8a63500cc9833696.md) | 353 | `declaration-track:2812446a8a63500cc98336960ca25a21a692c31c41ed3f11c99cfcf2c9ebe4b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
