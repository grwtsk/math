# Verification target: GRWTSK.Algebra.Basic.Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05073ce268ad00727a3dedb886d61819cc704109",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05073ce268ad00727a3dedb886d61819cc704109`.

Source path: `GRWTSK/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [QuasiFinite](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/quasifinite--d37931eda5b88e114a6f2ee3.md) | 67 | `declaration-track:d37931eda5b88e114a6f2ee381ba77dd3d1c113c71c494141fc337a9512723c8` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/instance--a432e7cc2929ac523e5bdabb.md) | 77 | `declaration-track:a432e7cc2929ac523e5bdabbf4618dcdb45f27756e9445d1844c709fee26fb8e` |
| 3 | `lemma` | [finite_comap_preimage_singleton](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/finite-comap-preimage-singleton--6aef2abaf7639e17cc11c0cc.md) | 80 | `result-track:6aef2abaf7639e17cc11c0cc3351e9b2c1b88f71947505c9721d44c70e34148f` |
| 4 | `lemma` | [finite_primesOver](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/finite-primesover--79573efd5c735451bd1c031b.md) | 84 | `result-track:79573efd5c735451bd1c031bfbf3279d5559e9092d4aadc1c58f8d5b1f10c727` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/instance--2696842719bb7fb8dabf8309.md) | 94 | `declaration-track:2696842719bb7fb8dabf8309b19fb866d4b625dbc5aa4447b07b87024a454be0` |
| 6 | `lemma` | [finite_comap_preimage](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/finite-comap-preimage--55d63912aded28e29c07892c.md) | 104 | `result-track:55d63912aded28e29c07892cc20091ae22139eeb2f68dd72ff8dfd9b01efa894` |
| 7 | `lemma` | [isDiscrete_comap_preimage_singleton](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/isdiscrete-comap-preimage-singleton--319af53a49c7711b28c79378.md) | 108 | `result-track:319af53a49c7711b28c79378f67335edd382a0415037599201131961c30f97e4` |
| 8 | `lemma` | [isDiscrete_comap_preimage](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/isdiscrete-comap-preimage--9ec17a58c535038d3d34cb1e.md) | 112 | `result-track:9ec17a58c535038d3d34cb1ed15236c0c0c3d1f17789ca153b89e2418ff7cf2a` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/instance--9c50aa094b3c40dd98e0555b.md) | 118 | `declaration-track:9c50aa094b3c40dd98e0555beebbdf503a553d60dc690e26604931904968bbfd` |
| 10 | `instance` | [baseChange](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/basechange--20f2bfe76d8892a07deaa82e.md) | 121 | `declaration-track:20f2bfe76d8892a07deaa82e7c0ff6354a4a0606182d48ade5b959b3a9b230a3` |
| 11 | `lemma` | [finite_of_isArtinianRing_of_isLocalRing](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/finite-of-isartinianring-of-islocalring--9f49973a05f89ad4f437ed63.md) | 133 | `result-track:9f49973a05f89ad4f437ed637fee14dba23c3003c1b4fef73866d04d09cd6e57` |
| 12 | `lemma` | [_root_.Module.Finite.of_quasiFinite](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/root-module-finite-of-quasifinite--3e0dec80875649eff2104a7c.md) | 152 | `result-track:3e0dec80875649eff2104a7c60c0da09707c14dcc0c392ce84ddc1c785c99edb` |
| 13 | `lemma` | [iff_of_isArtinianRing](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/iff-of-isartinianring--93fe7ab6ba3bb958af82f691.md) | 172 | `result-track:93fe7ab6ba3bb958af82f69104558d44f88280743a59ac67787e3be93f24665e` |
| 14 | `lemma` | [trans](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/trans--8051076e8cad5f44b6960fc9.md) | 179 | `result-track:8051076e8cad5f44b6960fc931fe0d3c25ee4c2fb188154681c580f539019bac` |
| 15 | `lemma` | [of_surjective_algHom](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/of-surjective-alghom--b85498de05a1fcc99852991b.md) | 197 | `result-track:b85498de05a1fcc99852991b4446addf5c3a55b83566399973ff52cccc6e2732` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/instance--7558824f996f0a71f61ff8a3.md) | 204 | `declaration-track:7558824f996f0a71f61ff8a30897e84b6d9aa4d353665f8dcc73a1d64d924560` |
| 17 | `lemma` | [iff_of_algEquiv](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/iff-of-algequiv--aaacf59fa3bd893de5a84536.md) | 208 | `result-track:aaacf59fa3bd893de5a8453696003481c85e8ff9dd7d9fe052c57111839af2d1` |
| 18 | `lemma` | [of_isLocalization](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/of-islocalization--3a35f44a71d7d161f348705b.md) | 213 | `result-track:3a35f44a71d7d161f348705bdf8172afaad4e1ecbc774166e4b48ae19803d8e7` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/instance--fa65b082440cb2f43c128204.md) | 231 | `declaration-track:fa65b082440cb2f43c1282045714c128189d6c028a06881883de6da325300f20` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/instance--6f38a159b6ff523d3adc97a9.md) | 233 | `declaration-track:6f38a159b6ff523d3adc97a99bd867e6d6be924904b2d2f3dc825201b3d366f4` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/instance--264f0ba2904951f67d616b58.md) | 236 | `declaration-track:264f0ba2904951f67d616b5879f8610533abed54a1494bd6059a4b69969ce4ce` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/instance--62cf7d33dba553daf03c883f.md) | 240 | `declaration-track:62cf7d33dba553daf03c883f19460a4ab480f54a188a2408586659c45807da80` |
| 23 | `lemma` | [of_restrictScalars](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/of-restrictscalars--5a0fb06f1bb968a5ac7481d1.md) | 244 | `result-track:5a0fb06f1bb968a5ac7481d1a3127f11a027638c60bd0ec205663eae8c4ccbc1` |
| 24 | `lemma` | [discreteTopology_primeSpectrum](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/discretetopology-primespectrum--fd9cb254b1b0d6b4e041ad84.md) | 258 | `result-track:fd9cb254b1b0d6b4e041ad845c03f034aa134e7a0f7e72350c8f73cbde1e3a37` |
| 25 | `lemma` | [finite_primeSpectrum](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/finite-primespectrum--a8e223517df27143ca10df9a.md) | 264 | `result-track:a8e223517df27143ca10df9a5286bfb8591329bf95bf33b52881e25e5c749ef7` |
| 26 | `lemma` | [of_forall_exists_mul_mem_range](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/of-forall-exists-mul-mem-range--d6c428c386eb491991d915cf.md) | 270 | `result-track:d6c428c386eb491991d915cf48f4e2024959cf97efa96bce7217134213ed178d` |
| 27 | `lemma` | [eq_of_le_of_under_eq](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/eq-of-le-of-under-eq--bde029c7425f377bf537b909.md) | 283 | `result-track:bde029c7425f377bf537b909accd8a4d9560fdc61ae209ce00a6f76ae4c6442c` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/instance--5744656de6a6bc1f504f8338.md) | 289 | `declaration-track:5744656de6a6bc1f504f833810ed8f430b44589888e835dd79f2dd29cdefa951` |
| 29 | `lemma` | [iff_finite_comap_preimage_singleton](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/iff-finite-comap-preimage-singleton--806278490876b6812010c29f.md) | 298 | `result-track:806278490876b6812010c29f282655392cbc3eeb32ff4a37fdcd0b18aa8a2a55` |
| 30 | `lemma` | [iff_finite_primesOver](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/iff-finite-primesover--83ae5432452f14d7790c7a47.md) | 308 | `result-track:83ae5432452f14d7790c7a472756bc1cb952833ffcbd6b48e00d5fc9b8cd42a8` |
| 31 | `lemma` | [of_isIntegral_of_finiteType](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/of-isintegral-of-finitetype--7263a6c180b24f2bb2652472.md) | 322 | `result-track:7263a6c180b24f2bb2652472e85126779026fce1a1a89ebfbc7e49d197a9915a` |
| 32 | `abbrev` | [QuasiFiniteAt](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/quasifiniteat--bd113e120717f6fa20285c91.md) | 368 | `declaration-track:bd113e120717f6fa20285c91e95b5c02eb7feaef5fa0f0c3173abff3391b0508` |
| 33 | `lemma` | [QuasiFiniteAt.baseChange](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/quasifiniteat-basechange--010844689e0566e5ffc66b38.md) | 371 | `result-track:010844689e0566e5ffc66b3834c9b9dc16c4771003652aaa30e683caeb765472` |
| 34 | `lemma` | [QuasiFiniteAt.of_surjectiveOnStalks](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/quasifiniteat-of-surjectiveonstalks--bc72ae47c43ad08d574c05b8.md) | 391 | `result-track:bc72ae47c43ad08d574c05b89f1546a0272dc3e12211dd6ba6d3c89c26a0fb6f` |
| 35 | `lemma` | [QuasiFiniteAt.of_surjectiveOnStalks_of_liesOver](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/quasifiniteat-of-surjectiveonstalks-of-liesover--f1799da8f67eb7277a6f19a7.md) | 400 | `result-track:f1799da8f67eb7277a6f19a7866f2eb412393c6e0a0423d8bb2ef1cc3395c9b1` |
| 36 | `instance` | [QuasiFiniteAt.comap_algEquiv](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/quasifiniteat-comap-algequiv--3f10d0692d3a6fcd1a680bf0.md) | 405 | `declaration-track:3f10d0692d3a6fcd1a680bf00078e48a6708695461a9135bca1a791d0e4b1f11` |
| 37 | `lemma` | [QuasiFiniteAt.of_le](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/quasifiniteat-of-le--92109d22c3aa7e4a8dd0de58.md) | 411 | `result-track:92109d22c3aa7e4a8dd0de58c290ba2bbdede587959a6b01dda6c7f7ba6e6582` |
| 38 | `lemma` | [QuasiFiniteAt.eq_of_le_of_under_eq](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/quasifiniteat-eq-of-le-of-under-eq--217f6058bad2ca4a118c7e80.md) | 424 | `result-track:217f6058bad2ca4a118c7e804268a42d62a83d8a7693dce9792239833de3522e` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/instance--45feae2fe52561e6be1c32c6.md) | 437 | `declaration-track:45feae2fe52561e6be1c32c6ba8feff4af9fc54e8772a5d83a78b7e6670d42df` |
| 40 | `lemma` | [QuasiFiniteAt.exists_basicOpen_eq_singleton](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/quasifiniteat-exists-basicopen-eq-singleton--9b4f0ddc8215765c6ad593f5.md) | 451 | `result-track:9b4f0ddc8215765c6ad593f5d17fe4e70b99fa2257dd0edd0516b5054bdac436` |
| 41 | `lemma` | [QuasiFiniteAt.isClopen_singleton](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/quasifiniteat-isclopen-singleton--9841af705113c97048c7c3ab.md) | 482 | `result-track:9841af705113c97048c7c3abcead281292fd492e69e3d0701a8de57578068a46` |
| 42 | `lemma` | [QuasiFiniteAt.of_isOpen_singleton](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/quasifiniteat-of-isopen-singleton--675403cd9616fe81d9cae532.md) | 491 | `result-track:675403cd9616fe81d9cae532a2de54db91a099d2f6985f16bdde7b1c9ac2b8bc` |
| 43 | `lemma` | [_root_.Ideal.exists_not_mem_forall_mem_of_ne_of_liesOver](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/root-ideal-exists-not-mem-forall-mem-of-ne-of-liesover--a2cd649e38e6a27497bf4401.md) | 529 | `result-track:a2cd649e38e6a27497bf44016abdd2c1f6a30a20ece03e78748621d830155019` |
| 44 | `lemma` | [_root_.Ideal.Fiber.lift_residueField_surjective](../../../../mathematics/Algebra/Basic/Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.lean/declarations/root-ideal-fiber-lift-residuefield-surjective--9b969a5090bac05b9727ed1d.md) | 559 | `result-track:9b969a5090bac05b9727ed1da96fab77958196ba2692bfcb448213568f7a401f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
