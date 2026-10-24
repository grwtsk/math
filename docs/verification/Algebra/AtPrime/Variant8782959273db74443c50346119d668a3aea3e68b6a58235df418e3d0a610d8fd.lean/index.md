# Verification target: GRWTSK.Algebra.AtPrime.Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3169c6cc8c08926425ef8e8133332988c64d0ad2",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/index.md) · [Full source](../../../../mathematics/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3169c6cc8c08926425ef8e8133332988c64d0ad2`.

Source path: `GRWTSK/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Ideal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.MaximalIdeal.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Hom` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.MinimalPrime.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Over` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Defs` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsLocalization.AtPrime](../../../../mathematics/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/declarations/islocalization-atprime--9b06d9fc80e999ffbe26f289.md) | 55 | `declaration-track:9b06d9fc80e999ffbe26f289be0ca4ee701ed2de310dcba1b78abd19bd15de76` |
| 2 | `abbrev` | [Localization.AtPrime](../../../../mathematics/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/declarations/localization-atprime--7ba271b2bd1b6684f3df05cd.md) | 60 | `declaration-track:7ba271b2bd1b6684f3df05cd1f5832c226a786bfe9cfe1b7fe3035d378c7a323` |
| 3 | `theorem` | [AtPrime.Nontrivial](../../../../mathematics/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/declarations/atprime-nontrivial--a2d31bc32524a2d42f1b153a.md) | 65 | `result-track:a2d31bc32524a2d42f1b153a24c63310b6327bd86af8f387f6d0d79d72c4495a` |
| 4 | `theorem` | [AtPrime.isLocalRing](../../../../mathematics/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/declarations/atprime-islocalring--86019dc490025272e65b8500.md) | 72 | `result-track:86019dc490025272e65b8500790d02799301a042c69ee8fed01e85acd49d1475` |
| 5 | `instance` | [AtPrime.isLocalRing](../../../../mathematics/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/declarations/atprime-islocalring--47c58c4a81d29fa13d1a2e87.md) | 105 | `declaration-track:47c58c4a81d29fa13d1a2e87dd8219729ddda2d4d8b5416f109c8f0f440e650c` |
| 6 | `instance` | [isDomain_of_local_atPrime](../../../../mathematics/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/declarations/isdomain-of-local-atprime--b2b7c422e280ced256ae8352.md) | 118 | `declaration-track:b2b7c422e280ced256ae835292befe9b1938311438f1fa03cd0e49d3eb41eaa0` |
| 7 | `def` | [orderIsoOfPrime](../../../../mathematics/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/declarations/orderisoofprime--1f6383c807ec98d5258c8ce7.md) | 128 | `declaration-track:1f6383c807ec98d5258c8ce7359c95b9df61249bfdc7ba6b15095d6c92b0001d` |
| 8 | `theorem` | [isUnit_to_map_iff](../../../../mathematics/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/declarations/isunit-to-map-iff--16ee24e5e2e8fa376d6181d5.md) | 132 | `result-track:16ee24e5e2e8fa376d6181d539f705bc135e7b6e79060604654fbd01609c5c77` |
| 9 | `theorem` | [to_map_mem_maximal_iff](../../../../mathematics/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/declarations/to-map-mem-maximal-iff--6909d2d7ae10dc455cc75307.md) | 140 | `result-track:6909d2d7ae10dc455cc753070e216f2540d8c411b0bd5fb1a178c563670375d1` |
| 10 | `theorem` | [comap_maximalIdeal](../../../../mathematics/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/declarations/comap-maximalideal--8e07b046e6ad0baf9c6595c2.md) | 146 | `result-track:8e07b046e6ad0baf9c6595c2b149e4a9307c4abbbd0235ada9f3c5dcf292b076` |
| 11 | `theorem` | [isUnit_mk'_iff](../../../../mathematics/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/declarations/isunit-mk-iff--118ba8c4aa26280128007086.md) | 150 | `result-track:118ba8c4aa26280128007086e71556ed5a475afe3706fc5d31fe43d5929729e8` |
| 12 | `theorem` | [mk'_mem_maximal_iff](../../../../mathematics/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/declarations/mk-mem-maximal-iff--58601b3db078ec8f2cf2effb.md) | 154 | `result-track:58601b3db078ec8f2cf2effb4231090f5a4f8cf5fc5f8ec023f496cb4691b9d3` |
| 13 | `theorem` | [AtPrime.comap_maximalIdeal](../../../../mathematics/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/declarations/atprime-comap-maximalideal--745f8438aafa46a9437d7e6f.md) | 172 | `result-track:745f8438aafa46a9437d7e6f45f86a81928e0d4b2e427abf3a109a2215d491b4` |
| 14 | `theorem` | [AtPrime.map_eq_maximalIdeal](../../../../mathematics/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/declarations/atprime-map-eq-maximalideal--39dc529661c81e3ba4ed0059.md) | 181 | `result-track:39dc529661c81e3ba4ed005922b6c85d13d76c542c5f4165d26c3e121f0a44d2` |
| 15 | `theorem` | [le_comap_primeCompl_iff](../../../../mathematics/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/declarations/le-comap-primecompl-iff--c66bdfefa9cd1ec92db76aed.md) | 190 | `result-track:c66bdfefa9cd1ec92db76aed35b3a7d01bddd2083e11900fa2b7f53ac8bc2e5f` |
| 16 | `def` | [localRingHom](../../../../mathematics/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/declarations/localringhom--845ca9e69566d96299b78d52.md) | 205 | `declaration-track:845ca9e69566d96299b78d525819a0fde77cafeb43df3248c58f63c5bf87b06e` |
| 17 | `theorem` | [localRingHom_to_map](../../../../mathematics/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/declarations/localringhom-to-map--d8bcfea9cbf102afeb226576.md) | 209 | `result-track:d8bcfea9cbf102afeb2265762d8b98c0167ee6b4bf2f2392e9e7c867f932c0b0` |
| 18 | `theorem` | [localRingHom_mk'](../../../../mathematics/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/declarations/localringhom-mk--030475cad31b0d4f4604dbc4.md) | 213 | `result-track:030475cad31b0d4f4604dbc48837b73c4eda5276a47e17d01cb6ae7231b29a68` |
| 19 | `theorem` | [isLocalHom_localRingHom](../../../../mathematics/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/declarations/islocalhom-localringhom--7746c27289e99125dad77a5c.md) | 221 | `result-track:7746c27289e99125dad77a5ceceebd0475efc7c5f98f9907e725fa03d451ac19` |
| 20 | `theorem` | [localRingHom_unique](../../../../mathematics/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/declarations/localringhom-unique--e374cc243771c4ca1256d30c.md) | 229 | `result-track:e374cc243771c4ca1256d30c98908be47c14e393ab72347360fc6bce6413bf30` |
| 21 | `theorem` | [localRingHom_id](../../../../mathematics/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/declarations/localringhom-id--36a7a07307755634623597e0.md) | 235 | `result-track:36a7a07307755634623597e09f4a4d24adbd3d1890d12f1ad226f89b6a17a5d5` |
| 22 | `theorem` | [localRingHom_comp](../../../../mathematics/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/declarations/localringhom-comp--0f2763c4caca700760df1cca.md) | 239 | `result-track:0f2763c4caca700760df1ccae5ed7014c787b024753d3c0531db0f33823c365e` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/declarations/instance--d5e86789df35060d8035afd2.md) | 252 | `declaration-track:d5e86789df35060d8035afd23ad2b9af146bad7ec720f91849f1f75a4ca7fc21` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/declarations/instance--7758ad64ac162093b9f673ae.md) | 256 | `declaration-track:7758ad64ac162093b9f673ae694c488f0a81e9a433c0e4c39bd63af4be98fe2c` |
| 25 | `abbrev` | [mapPiEvalRingHom](../../../../mathematics/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/declarations/mappievalringhom--1a66413d5daeaa92533141e7.md) | 268 | `declaration-track:1a66413d5daeaa92533141e7294830be931d1ff8fb90af4ba7232088e1317649` |
| 26 | `theorem` | [mapPiEvalRingHom_bijective](../../../../mathematics/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/declarations/mappievalringhom-bijective--c24a82dc98311f37dfa26a7d.md) | 272 | `result-track:c24a82dc98311f37dfa26a7d5f6acf14d48c9f65dc7a1f74d038750574889871` |
| 27 | `theorem` | [mapPiEvalRingHom_comp_algebraMap](../../../../mathematics/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/declarations/mappievalringhom-comp-algebramap--4a5f4faac25f2b78fba657e8.md) | 275 | `result-track:4a5f4faac25f2b78fba657e84760da7cee929ae150c7adc1af09ccf90fc1e34e` |
| 28 | `theorem` | [mapPiEvalRingHom_algebraMap_apply](../../../../mathematics/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/declarations/mappievalringhom-algebramap-apply--6d4e8c5f566db6baf31df9e7.md) | 279 | `result-track:6d4e8c5f566db6baf31df9e7679a3437f92c81248098ffe48d656601f9e29f18` |
| 29 | `lemma` | [Ideal.isPrime_map_of_isLocalizationAtPrime](../../../../mathematics/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/declarations/ideal-isprime-map-of-islocalizationatprime--c72662c965817eb784e5d350.md) | 290 | `result-track:c72662c965817eb784e5d35034c00eb0ba2cf82a0a75699261fee5cd231fd80a` |
| 30 | `lemma` | [Ideal.under_map_of_isLocalizationAtPrime](../../../../mathematics/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/declarations/ideal-under-map-of-islocalizationatprime--189f29dc2f2e50268c459cba.md) | 296 | `result-track:189f29dc2f2e50268c459cba35dd839ad61850358ead7a0c0768e74d1bd14928` |
| 31 | `lemma` | [IsLocalization.subsingleton_primeSpectrum_of_mem_minimalPrimes](../../../../mathematics/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/declarations/islocalization-subsingleton-primespectrum-of-mem-minimalprimes--93849574e62d5fc7a9df9ef5.md) | 302 | `result-track:93849574e62d5fc7a9df9ef59f346b7d86802c7ae0459afb3b012e2cf93f30d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
