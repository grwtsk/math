# Verification target: GRWTSK.Algebra.Basic.Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ed1801f1080a895155a326863bbcc599715c411",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ed1801f1080a895155a326863bbcc599715c411`.

Source path: `GRWTSK/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean.json)

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
| 1 | `class` | [QuasiFinite](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/quasifinite--6b5e0884e689edf193929d46.md) | 75 | `declaration-track:6b5e0884e689edf193929d462e51e3a407b68f7c6a6b3374adaefe2cb4d11acb` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/instance--e72c6e346e8c0c9743c0eb5d.md) | 85 | `declaration-track:e72c6e346e8c0c9743c0eb5d21927e760aae5d3280a3715e8bd8f99b66f68acc` |
| 3 | `lemma` | [finite_comap_preimage_singleton](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/finite-comap-preimage-singleton--fd192f8223172215f601e7f3.md) | 88 | `result-track:fd192f8223172215f601e7f3e5cd0a5ff342130f7adb6e37f87d6f8b7f5d0a75` |
| 4 | `lemma` | [finite_primesOver](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/finite-primesover--d3c704510e4d18b05de6f26c.md) | 92 | `result-track:d3c704510e4d18b05de6f26c0406537dcc96be4764884489b03069067cc2cb70` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/instance--84055ed84c48bd79e2897f4c.md) | 102 | `declaration-track:84055ed84c48bd79e2897f4cada6a95c604eaf39257fa7dcd9cecd175e6482a5` |
| 6 | `lemma` | [finite_comap_preimage](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/finite-comap-preimage--f414c0e7e89e0308e70b1019.md) | 112 | `result-track:f414c0e7e89e0308e70b1019ae164667cd2aecce40457ec9c7e6caaca9d546e7` |
| 7 | `lemma` | [isDiscrete_comap_preimage_singleton](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/isdiscrete-comap-preimage-singleton--8aa9a5cd9685db6b6c317a28.md) | 116 | `result-track:8aa9a5cd9685db6b6c317a28a6d02bf2e8fa1265daa628bc90e6ed46ba8ad6d3` |
| 8 | `lemma` | [isDiscrete_comap_preimage](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/isdiscrete-comap-preimage--a8f621f22530f723bdc4f4ff.md) | 120 | `result-track:a8f621f22530f723bdc4f4ff9dac5b6ccc612d75520f6ad2cffa164f0fd1932e` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/instance--2bbac48b001058908abb9e67.md) | 126 | `declaration-track:2bbac48b001058908abb9e6729d56453740b22f07c58cf163e0f93d26518e913` |
| 10 | `instance` | [baseChange](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/basechange--320468dc88e464c1afc5a799.md) | 129 | `declaration-track:320468dc88e464c1afc5a79966ba9971f254a9b6923d076eb6f6c37fdc8026a7` |
| 11 | `lemma` | [finite_of_isArtinianRing_of_isLocalRing](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/finite-of-isartinianring-of-islocalring--ce2c81de158cc963ff8a4c0e.md) | 141 | `result-track:ce2c81de158cc963ff8a4c0ecab34b043f7f35e7a37ba72f1add1f20fbbdd09e` |
| 12 | `lemma` | [_root_.GRWTSK.Algebra.QuasiFinite.Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.Module.Finite.of_quasiFinite](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/root-grwtsk-algebra-quasifinite-variant3640239b33fec2b8260da56ffc8e669df--31e58fb9b0a1f96c7402a18b.md) | 160 | `result-track:31e58fb9b0a1f96c7402a18b277121f47e78a8719b19277802afdcb6dc39d650` |
| 13 | `lemma` | [iff_of_isArtinianRing](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/iff-of-isartinianring--724cadc87385394d0f9f099b.md) | 180 | `result-track:724cadc87385394d0f9f099b5803c76ea2001eb9cafca89c5c65f4d461c6908a` |
| 14 | `lemma` | [trans](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/trans--62b6e8782048ea56a5c276ae.md) | 187 | `result-track:62b6e8782048ea56a5c276ae9d799ab13b257a0579589214c7b48136161eb8d8` |
| 15 | `lemma` | [of_surjective_algHom](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/of-surjective-alghom--eaf422a7d700baee3ba0da07.md) | 205 | `result-track:eaf422a7d700baee3ba0da0783e11a83d29cec4a23cd52491ed5d12e4188f383` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/instance--5b96f89cda966b98c41be996.md) | 212 | `declaration-track:5b96f89cda966b98c41be99679f762654ba510e352277d2327c48c233788fada` |
| 17 | `lemma` | [iff_of_algEquiv](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/iff-of-algequiv--c0e62cc5e7f17fbf8004840b.md) | 216 | `result-track:c0e62cc5e7f17fbf8004840b522097826871ead345bf6aa8f412f4fe87c58713` |
| 18 | `lemma` | [of_isLocalization](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/of-islocalization--231021bd600aef56fab2baa7.md) | 221 | `result-track:231021bd600aef56fab2baa77753e0080bd14e67f1bcb68f58849b283fd74abd` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/instance--28e34dea0cfb83fe136e0f02.md) | 239 | `declaration-track:28e34dea0cfb83fe136e0f0260865c12c4c5d2b06e40d78de371a87a07eb372f` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/instance--3c5e5b4fe69e867a88b3ff13.md) | 241 | `declaration-track:3c5e5b4fe69e867a88b3ff13e9017bb427d46038032ace748430fa69e03dd049` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/instance--3d414c7428d27f63288a6a85.md) | 244 | `declaration-track:3d414c7428d27f63288a6a857218737144a4fc7396ebcd9c31717e8a0afc5aa7` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/instance--c39a53b0e61c699de9c70850.md) | 248 | `declaration-track:c39a53b0e61c699de9c70850c5facbc162390c7b96afad47e565b6154320f8f4` |
| 23 | `lemma` | [of_restrictScalars](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/of-restrictscalars--fc699d456d3f76aa01b3ba5a.md) | 252 | `result-track:fc699d456d3f76aa01b3ba5a491657f0193e8bb0724562fb48b1ab3df141f0b6` |
| 24 | `lemma` | [discreteTopology_primeSpectrum](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/discretetopology-primespectrum--4e174ba987fc395d310bc8f5.md) | 266 | `result-track:4e174ba987fc395d310bc8f518d60ccb55bf835b12586c8958f9843d0c4e4a9e` |
| 25 | `lemma` | [finite_primeSpectrum](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/finite-primespectrum--7624f6954decda4ae873978b.md) | 272 | `result-track:7624f6954decda4ae873978b7d18ef8c6b9d3a92098740b641baeddaa378baf6` |
| 26 | `lemma` | [of_forall_exists_mul_mem_range](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/of-forall-exists-mul-mem-range--93f85faac2bd80e4e05a37c4.md) | 278 | `result-track:93f85faac2bd80e4e05a37c4a5cff7cd788ef64a8a54544f6b18bb8a9032bf0f` |
| 27 | `lemma` | [eq_of_le_of_under_eq](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/eq-of-le-of-under-eq--abacd4df3517e1ef75c53ac3.md) | 291 | `result-track:abacd4df3517e1ef75c53ac3e0f81bc87cb21db2371bdec22ad0d868c5fe2e89` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/instance--6823fddfb796bdcb365ef00f.md) | 297 | `declaration-track:6823fddfb796bdcb365ef00f73483f3c7e777503d80ac7361109b5d0e9dc84e3` |
| 29 | `lemma` | [iff_finite_comap_preimage_singleton](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/iff-finite-comap-preimage-singleton--d1ef6442912355fce10612c9.md) | 306 | `result-track:d1ef6442912355fce10612c93b25bf2306a98638151fd800a2037b92570df1d7` |
| 30 | `lemma` | [iff_finite_primesOver](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/iff-finite-primesover--93b40c2067f818848fcb7400.md) | 316 | `result-track:93b40c2067f818848fcb74001d6fca0e37be521453af4489355af82656d61941` |
| 31 | `lemma` | [of_isIntegral_of_finiteType](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/of-isintegral-of-finitetype--faf95d9963c3ff4610f6ccef.md) | 330 | `result-track:faf95d9963c3ff4610f6ccef13fb8294c0d940ff687c99df90ea16c9c2df88bb` |
| 32 | `abbrev` | [QuasiFiniteAt](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/quasifiniteat--9bf1560eb9a059b9eb55d27e.md) | 376 | `declaration-track:9bf1560eb9a059b9eb55d27edc0c9766af36e0cec594c922472dc46c5f8a7b22` |
| 33 | `lemma` | [QuasiFiniteAt.baseChange](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/quasifiniteat-basechange--b1fed770c0aad385f4965379.md) | 379 | `result-track:b1fed770c0aad385f49653796f3d90529c7ee08fb7af9b6dc1673d8815ed7c71` |
| 34 | `lemma` | [QuasiFiniteAt.of_surjectiveOnStalks](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/quasifiniteat-of-surjectiveonstalks--11deab1da43d0d114e6663f7.md) | 399 | `result-track:11deab1da43d0d114e6663f7392bd0550bd899308c4d42d8f3025f97f58b9d88` |
| 35 | `lemma` | [QuasiFiniteAt.of_surjectiveOnStalks_of_liesOver](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/quasifiniteat-of-surjectiveonstalks-of-liesover--d57c73e4763a0773fc4070f9.md) | 408 | `result-track:d57c73e4763a0773fc4070f9128b84ef099bfbc34b51100eaf078e00c7161486` |
| 36 | `instance` | [QuasiFiniteAt.comap_algEquiv](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/quasifiniteat-comap-algequiv--cac24563e4e90893e27af634.md) | 413 | `declaration-track:cac24563e4e90893e27af6349bd8f6113f10bd03db31b8a4a7ae6cda3fe2cc96` |
| 37 | `lemma` | [QuasiFiniteAt.of_le](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/quasifiniteat-of-le--41a9e94a85325e8a14c42f2e.md) | 419 | `result-track:41a9e94a85325e8a14c42f2ead1d51c6f2fdb8dad587b5437deaf18681c3b9fe` |
| 38 | `lemma` | [QuasiFiniteAt.eq_of_le_of_under_eq](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/quasifiniteat-eq-of-le-of-under-eq--3e9d0d75262760970f63e964.md) | 432 | `result-track:3e9d0d75262760970f63e96497ea8c29521531e17da00dc5d4d3b0de089697a1` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/instance--2470c8b32f275e2f3607516e.md) | 445 | `declaration-track:2470c8b32f275e2f3607516ee320d20be2fce4fa1d43cb129c9f5956c8a9fd3e` |
| 40 | `lemma` | [QuasiFiniteAt.exists_basicOpen_eq_singleton](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/quasifiniteat-exists-basicopen-eq-singleton--03cc901193d624d296231f04.md) | 459 | `result-track:03cc901193d624d296231f040bce4fc68d3096f9260aa1545bcf78200c98fd22` |
| 41 | `lemma` | [QuasiFiniteAt.isClopen_singleton](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/quasifiniteat-isclopen-singleton--79a225645bf7ab77a0d6b461.md) | 490 | `result-track:79a225645bf7ab77a0d6b461e5ed1f86f6f51437c23f702b6ae3b894f9c309a8` |
| 42 | `lemma` | [QuasiFiniteAt.of_isOpen_singleton](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/quasifiniteat-of-isopen-singleton--ff0c93e54e3be5a08bf2ac5f.md) | 499 | `result-track:ff0c93e54e3be5a08bf2ac5f6ab302f0b4b853f6c1d701a37f7d848306a54f09` |
| 43 | `lemma` | [_root_.GRWTSK.Algebra.QuasiFinite.Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.Ideal.exists_not_mem_forall_mem_of_ne_of_liesOver](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/root-grwtsk-algebra-quasifinite-variant3640239b33fec2b8260da56ffc8e669df--02b066533a929ce3d6bf8e06.md) | 537 | `result-track:02b066533a929ce3d6bf8e065fe65e50de93446149ea209a73b316eea8d526ce` |
| 44 | `lemma` | [_root_.GRWTSK.Algebra.QuasiFinite.Variant3640239b33fec2b8260da56ffc8e669dfed04877c97d8979ecc0adf3892c4ebf.Ideal.Fiber.lift_residueField_surjective](../../../../mathematics/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/declarations/root-grwtsk-algebra-quasifinite-variant3640239b33fec2b8260da56ffc8e669df--f890f321cfb790bb2ab5621a.md) | 567 | `result-track:f890f321cfb790bb2ab5621aabfcae8bf6f6212cc8af0e7ef216e18ef9cb4fbe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
