# Verification target: GRWTSK.Geometry.AlgebraicGeometry.AffineTransitionLimit.Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d722dad9181cfd6d7afa3fa039a957385fa07fe",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d722dad9181cfd6d7afa3fa039a957385fa07fe`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Scheme.nonempty_of_isLimit](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/scheme-nonempty-of-islimit--59e44b38915ca55888c74481.md) | 47 | `result-track:59e44b38915ca55888c744810fb19478c41d5ac5bb3b7dd98dc153ded78a3ae2` |
| 2 | `lemma` | [exists_mem_of_isClosed_of_nonempty](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/exists-mem-of-isclosed-of-nonempty--5add2938fca1a886b1082460.md) | 107 | `result-track:5add2938fca1a886b1082460089a89bac9505a80a5f6b156768dcfc3c7113653` |
| 3 | `lemma` | [exists_mem_of_isClosed_of_nonempty'](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/exists-mem-of-isclosed-of-nonempty--17e8be9bd0b7f682f5fcc510.md) | 157 | `result-track:17e8be9bd0b7f682f5fcc510617cc474e6c56af2e2f13e040e1204b3fa0ea4ba` |
| 4 | `lemma` | [exists_map_eq_top](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/exists-map-eq-top--e7794df0830faf9e8a051b3d.md) | 180 | `result-track:e7794df0830faf9e8a051b3d12964f816b4d7c517e8b7c05206c666f93967616` |
| 5 | `def` | [opensDiagram](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/opensdiagram--eaa50beecc7af27549fbe89f.md) | 201 | `declaration-track:eaa50beecc7af27549fbe89fc40d6566e2680c82d23d2db7d903ed61ba396321` |
| 6 | `def` | [opensDiagramι](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/opensdiagram--17ca07c874ed15dfad3884a7.md) | 209 | `declaration-track:17ca07c874ed15dfad3884a72f95084d52fb47de4bf610d45a9438c4c629e432` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/instance--781296a00b6916adc5f37721.md) | 213 | `declaration-track:781296a00b6916adc5f37721b69bba0cd2fdfb193a234d398f072549c295921b` |
| 8 | `def` | [opensCone](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/openscone--2979e33414941de3940c8e9b.md) | 222 | `declaration-track:2979e33414941de3940c8e9b7cb3ae74e0792116ea66b401941bfac7d0dcaf2e` |
| 9 | `def` | [isLimitOpensCone](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/islimitopenscone--b4b47688d94c59335be8c4c6.md) | 232 | `declaration-track:b4b47688d94c59335be8c4c629385fbad96b7f565f90bbdbb7b57cc651f43108` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/instance--6307475962d0f1447e9eed0e.md) | 241 | `declaration-track:6307475962d0f1447e9eed0e251c0ce0e1ccdc591927e18fc0a206410360c2dc` |
| 11 | `lemma` | [exists_map_preimage_le_map_preimage](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/exists-map-preimage-le-map-preimage--5ca5242b0434f5c925915abc.md) | 270 | `result-track:5ca5242b0434f5c925915abc1e19c6a02f568e34648fb84b4756da974dfea084` |
| 12 | `lemma` | [exists_map_preimage_eq_map_preimage](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/exists-map-preimage-eq-map-preimage--64ae94863ccb945771830579.md) | 292 | `result-track:64ae94863ccb945771830579e65870c4e5e1def990da65c64eb7bbf4b2158d0f` |
| 13 | `lemma` | [isBasis_preimage_isAffineOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/isbasis-preimage-isaffineopen--053c10dbf42e2d2dfb2f9574.md) | 310 | `result-track:053c10dbf42e2d2dfb2f957404a018303f8b3a14e6362c17f79d5a412c5cc8cd` |
| 14 | `lemma` | [exists_preimage_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/exists-preimage-eq--9c05cce00e3def72dfe29b0b.md) | 339 | `result-track:9c05cce00e3def72dfe29b0b8d4ce324314b9b6e30d2128aceaa10097d0e1546` |
| 15 | `lemma` | [isAffineHom_π_app](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/isaffinehom-app--67e90b40bf7134e32f56e98e.md) | 360 | `result-track:67e90b40bf7134e32f56e98e500b73e23dc51c136dc99db86d913e8d3088e3e1` |
| 16 | `lemma` | [Scheme.compactSpace_of_isLimit](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/scheme-compactspace-of-islimit--23f251eb869ea796da3e7408.md) | 366 | `result-track:23f251eb869ea796da3e740805c92437cf06079c4c218450ee5251e6c52701ba` |
| 17 | `lemma` | [Scheme.exists_hom_hom_comp_eq_comp_of_isAffine_of_locallyOfFiniteType](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/scheme-exists-hom-hom-comp-eq-comp-of-isaffine-of-locallyoffinitetype--d34e365e83e9aab4ce856ce2.md) | 409 | `result-track:d34e365e83e9aab4ce856ce263689cf050bb12b57231ed612ba2ea88eeb0babe` |
| 18 | `structure` | [ExistsHomHomCompEqCompAux](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/existshomhomcompeqcompaux--b34d80f4b7b69aaf89adf432.md) | 464 | `declaration-track:b34d80f4b7b69aaf89adf432c9d9c07526aef6324354ab15af4cd625776e0d2b` |
| 19 | `lemma` | [exists_index](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/exists-index--7de4b72f9f301ccd34d23c06.md) | 496 | `result-track:7de4b72f9f301ccd34d23c06d3370603ea23fd4fb1de95c84271ae16d606cfcf` |
| 20 | `def` | [i'](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/i--654b5d943c5b31c3bfe4933a.md) | 517 | `declaration-track:654b5d943c5b31c3bfe4933abb3673bb145c00ad641c75a5aab6dad24cf6a512` |
| 21 | `def` | [hii'](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/hii--72f18994b72dbb4ec95b8068.md) | 520 | `declaration-track:72f18994b72dbb4ec95b8068433ef054af7c25cd6ab88830af3cfe70107c478f` |
| 22 | `def` | [g](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/g--a1edf0e23f66226ce3bbf150.md) | 525 | `declaration-track:a1edf0e23f66226ce3bbf1502ddeb4aaa155c4e0cf88028f75427c8e25d13446` |
| 23 | `lemma` | [range_g_subset](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/range-g-subset--eecbe19ef44d3dc181cb6119.md) | 530 | `result-track:eecbe19ef44d3dc181cb6119e1a1eac8411a0452a3e99baedeaf8c6d561a7f57` |
| 24 | `def` | [𝒰D₀](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/d--f79584263d82d70f19b55c66.md) | 539 | `declaration-track:f79584263d82d70f19b55c66c5ac84ed55cd8e70bbcb99f3a0851138c9ba8ab6` |
| 25 | `def` | [𝒰D](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/d--b3431f30d1fa260e1e9376b0.md) | 546 | `declaration-track:b3431f30d1fa260e1e9376b0ee2fb2a981584129114960570a00591f7ea5b8e0` |
| 26 | `def` | [D'](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/d--70e3bb82f1359cc3fe842bae.md) | 552 | `declaration-track:70e3bb82f1359cc3fe842bae9349514fc099828934a24795f02cb5c7f58f47b8` |
| 27 | `def` | [c'](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/c--ba318e83b6f5ab8478451136.md) | 556 | `declaration-track:ba318e83b6f5ab847845113666fc07097b43bea9ca4266bcc9f796d7186d1c41` |
| 28 | `def` | [hc'](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/hc--811b934e704282439042eed7.md) | 564 | `declaration-track:811b934e704282439042eed7253e4473749650494d355fc18ba6de1cd5239250` |
| 29 | `lemma` | [exists_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/exists-eq--8e5362cfbfcd6f97c4fc6bac.md) | 571 | `result-track:8e5362cfbfcd6f97c4fc6bacfab98cba1f0a42b45904633fa01296ab6c47dc94` |
| 30 | `lemma` | [Scheme.exists_hom_comp_eq_comp_of_locallyOfFiniteType](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/scheme-exists-hom-comp-eq-comp-of-locallyoffinitetype--3b9bc6afb8aa4d436c140865.md) | 631 | `result-track:3b9bc6afb8aa4d436c14086597fb894a5da8ebfc025dc2327d93ddef57be2bd4` |
| 31 | `lemma` | [Scheme.exists_hom_hom_comp_eq_comp_of_locallyOfFiniteType](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/scheme-exists-hom-hom-comp-eq-comp-of-locallyoffinitetype--f668ae25b599d1c476af6310.md) | 685 | `result-track:f668ae25b599d1c476af63104f84ba8ab48535ce53baa8f510d54915138de85b` |
| 32 | `lemma` | [exists_appTop_map_eq_zero_of_isAffine_of_isLimit](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/exists-apptop-map-eq-zero-of-isaffine-of-islimit--209faf794327f969ff9017e3.md) | 725 | `result-track:209faf794327f969ff9017e33396f7a83dd4de38f871b31af7dce6fd28a51e43` |
| 33 | `lemma` | [exists_appTop_map_eq_zero_of_isLimit](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/exists-apptop-map-eq-zero-of-islimit--c758dadff0f3293a589b9a66.md) | 739 | `result-track:c758dadff0f3293a589b9a665a6d5974e3f8c7dc2474f76972c8a57bcb272f6f` |
| 34 | `lemma` | [exists_app_map_eq_zero_of_isLimit](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/exists-app-map-eq-zero-of-islimit--463368f9776e7b8cb2149575.md) | 789 | `result-track:463368f9776e7b8cb21495759c943140000ff708d1788044058290645a38ff78` |
| 35 | `lemma` | [exists_app_map_eq_map_of_isLimit](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/exists-app-map-eq-map-of-islimit--502bd1df0d7ae3e77ee2517a.md) | 818 | `result-track:502bd1df0d7ae3e77ee2517a246aa75517967adc51834469bbc8a21132b29cdd` |
| 36 | `lemma` | [exists_appTop_π_eq_of_isAffine_of_isLimit](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/exists-apptop-eq-of-isaffine-of-islimit--dd67eeef8398fba98ed4a7f0.md) | 827 | `result-track:dd67eeef8398fba98ed4a7f091d7fa8dccf6fab0447fc431f421b494e40fd040` |
| 37 | `lemma` | [exists_appTop_π_eq_of_isLimit](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/exists-apptop-eq-of-islimit--f903e59f9a2e33ddd4ec3dcb.md) | 837 | `result-track:f903e59f9a2e33ddd4ec3dcbbc06d295c82bf736a0da04ba85df75c0ca45fbe2` |
| 38 | `lemma` | [nonempty_isColimit_Γ_mapCocone](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/nonempty-iscolimit-mapcocone--91822a156a95da5aebb21f72.md) | 956 | `result-track:91822a156a95da5aebb21f72bd60b1ea07f0429da65735d5d892049968a868a1` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/instance--b44a0e1da59a46a589dae633.md) | 966 | `declaration-track:b44a0e1da59a46a589dae633b0b0b951815d96139d21215da33a2e7b3b5a33e8` |
| 40 | `lemma` | [Scheme.exists_isQuasiAffine_of_isLimit](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/scheme-exists-isquasiaffine-of-islimit--3e5b918f25bba81d3fe024d6.md) | 980 | `result-track:3e5b918f25bba81d3fe024d663139ff101075d8258f0bf16dcbdd62baa4299f5` |
| 41 | `lemma` | [Scheme.exists_isAffine_of_isLimit](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/scheme-exists-isaffine-of-islimit--cdfd4489c594dc6d182e0d1d.md) | 1034 | `result-track:cdfd4489c594dc6d182e0d1d6309d29a1f1ff4508ad4d462618e72faa4bc85c9` |
| 42 | `lemma` | [exists_isAffineOpen_preimage_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/exists-isaffineopen-preimage-eq--79f18492be5c9b1fbc5e2b9d.md) | 1056 | `result-track:79f18492be5c9b1fbc5e2b9dfc155623923c114e8e0b0d60200a232604879824` |
| 43 | `lemma` | [Scheme.exists_isOpenCover_and_isAffine_of_finite](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/scheme-exists-isopencover-and-isaffine-of-finite--404307362a35a757ef6d250b.md) | 1072 | `result-track:404307362a35a757ef6d250ba7b4df9e2da94197dcb97f4066aebe21f173e853` |
| 44 | `lemma` | [Scheme.exists_isOpenCover_and_isAffine](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/scheme-exists-isopencover-and-isaffine--033d72bd39037799781af1b0.md) | 1097 | `result-track:033d72bd39037799781af1b08c305303dd97564faa8ae881eed2943fd8dd5756` |
| 45 | `lemma` | [Scheme.OpenCover.exists_of_isCofiltered_of_finite](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/scheme-opencover-exists-of-iscofiltered-of-finite--54e0e349413b2b14b94a4f8b.md) | 1117 | `result-track:54e0e349413b2b14b94a4f8b79503fb971cd8631c4338ac8583f40ff8aa44cdf` |
| 46 | `lemma` | [Scheme.exists_π_app_comp_eq_of_locallyOfFinitePresentation_of_isAffine](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/scheme-exists-app-comp-eq-of-locallyoffinitepresentation-of-isaffine--1cd4552bda3a9576502a5d56.md) | 1156 | `result-track:1cd4552bda3a9576502a5d56aee9a97dea0bc040fad7b010613db1450b413ac9` |
| 47 | `lemma` | [Scheme.exists_π_app_comp_eq_of_locallyOfFinitePresentation](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/scheme-exists-app-comp-eq-of-locallyoffinitepresentation--d7964b0b45bd142b7e23714f.md) | 1224 | `result-track:d7964b0b45bd142b7e23714fe1d7c281c7a11283d0e3ee93bb86f3ff84a4b9d3` |
| 48 | `instance` | [Scheme.preservesColimit_yoneda](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/declarations/scheme-preservescolimit-yoneda--5da05f5ec82f5e97bcfb3d2a.md) | 1336 | `declaration-track:5da05f5ec82f5e97bcfb3d2a85c0a09aceb2a86fb74af39318cdfb47de015230` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
