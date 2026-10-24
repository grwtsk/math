# Verification target: GRWTSK.Algebra.LinearAlgebra.Pi.Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e56f8797c4d02d2628df1235b93d2e367aefac78",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e56f8797c4d02d2628df1235b93d2e367aefac78`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean.json)

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
| 1 | `def` | [uniqueLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/uniquelinearequiv--12819b3eed0e2949eb1fe813.md) | 50 | `declaration-track:12819b3eed0e2949eb1fe81384e6bd4c7709294a3ad36ca03292628a37ddea91` |
| 2 | `lemma` | [uniqueLinearEquiv_symm_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/uniquelinearequiv-symm-apply-apply--4faeb23e527053484aaa6a5c.md) | 55 | `result-track:4faeb23e527053484aaa6a5c9eb731dbd4f7a7d01721206c9612bcd06e3f5fb7` |
| 3 | `def` | [LinearEquiv.finsuppUnique](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/linearequiv-finsuppunique--30a5277017a2ce27645dfdcc.md) | 61 | `declaration-track:30a5277017a2ce27645dfdcca9ef44441fa4a3048ca0adcb2a0cae04e5df31f2` |
| 4 | `theorem` | [LinearEquiv.finsuppUnique_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/linearequiv-finsuppunique-apply--9c5bb00ea66f652fc156be64.md) | 69 | `result-track:9c5bb00ea66f652fc156be6423df06bfbc67dc9b4478c0b4dfab4331c0a614cc` |
| 5 | `theorem` | [LinearEquiv.finsuppUnique_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/linearequiv-finsuppunique-symm-apply--02fbf8365bb81524afe9b3cf.md) | 75 | `result-track:02fbf8365bb81524afe9b3cf73a19f7b5c2f8f01e242640e75599d8c131e9b9c` |
| 6 | `def` | [lcoeFun](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/lcoefun--e185a196310e8b466ab1f018.md) | 88 | `declaration-track:e185a196310e8b466ab1f018243186e49bd390190bb9b8325467206c34b66fd0` |
| 7 | `theorem` | [lcoeFun_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/lcoefun-apply--0c096099da629bf1b1d80d42.md) | 97 | `result-track:0c096099da629bf1b1d80d424254d67cae31480c2d457f69fa102218a2bdeb9e` |
| 8 | `theorem` | [lcoeFun_comp_lsingle](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/lcoefun-comp-lsingle--c137518f192ffcecddf0e02d.md) | 99 | `result-track:c137518f192ffcecddf0e02d5685da01e1a3a633305ebeb4e2e506471c73dc3a` |
| 9 | `def` | [prodOfFinsuppNat](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/prodoffinsuppnat--adad9fc681759060d85fe65e.md) | 122 | `declaration-track:adad9fc681759060d85fe65e96cbdd4e00f39ec963ccab424f1c2d614e3fd31e` |
| 10 | `theorem` | [fst_prodOfFinsuppNat](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/fst-prodoffinsuppnat--c927d7ab624aab69a152d752.md) | 125 | `result-track:c927d7ab624aab69a152d7522ec987400a3f64cf9e220ee85324c44f0f9a8776` |
| 11 | `theorem` | [snd_prodOfFinsuppNat](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/snd-prodoffinsuppnat--e10e728b16e3479434383798.md) | 132 | `result-track:e10e728b16e3479434383798761df3a313592d533ca9bb834d8830c5c4c75b76` |
| 12 | `theorem` | [prodOfFinsuppNat_injective](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/prodoffinsuppnat-injective--71a215a36a512243ffdfbd2b.md) | 141 | `result-track:71a215a36a512243ffdfbd2b66a1bcab227eac2bd5bdb57712236c7ef4796c89` |
| 13 | `theorem` | [exists_finsupp_nat_of_prod_injective](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/exists-finsupp-nat-of-prod-injective--767cb1cc4c4ed0b3b9d5e33d.md) | 159 | `result-track:767cb1cc4c4ed0b3b9d5e33dfe28781957f09462e4fd6c6d9bd000f5782f2898` |
| 14 | `theorem` | [exists_finsupp_nat_of_fin_fun_injective](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/exists-finsupp-nat-of-fin-fun-injective--f40d9672497fa6e9786fea3e.md) | 163 | `result-track:f40d9672497fa6e9786fea3e730890eec59be496a824cd283c0d5ab974a857a7` |
| 15 | `def` | [splittingOfFunOnFintypeSurjective](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/splittingoffunonfintypesurjective--298b544a0758351c7b81d50a.md) | 177 | `declaration-track:298b544a0758351c7b81d50aca0d45530c1f2a765d8afb3e88d19d7f5218d3a6` |
| 16 | `theorem` | [splittingOfFunOnFintypeSurjective_splits](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/splittingoffunonfintypesurjective-splits--bbba48ef13a026f01da6da97.md) | 182 | `result-track:bbba48ef13a026f01da6da97d07ddae9c828752ace7aaf9e3ca358d9a3cabc17` |
| 17 | `theorem` | [leftInverse_splittingOfFunOnFintypeSurjective](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/leftinverse-splittingoffunonfintypesurjective--9cf123be31d9ebbe28894270.md) | 191 | `result-track:9cf123be31d9ebbe2889427007758f0a0e415169923aaefd422fa12959b9ce2e` |
| 18 | `theorem` | [splittingOfFunOnFintypeSurjective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/splittingoffunonfintypesurjective-injective--676142119edae305eb933f42.md) | 195 | `result-track:676142119edae305eb933f426829eda6e72f556945a1a1535999b7705b27e5af` |
| 19 | `def` | [submodule](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/submodule--6e3a5e62c005e1a09a610c3a.md) | 207 | `declaration-track:6e3a5e62c005e1a09a610c3a86e54fa8418ad12f4a32af6f1afc5914ee9eff1a` |
| 20 | `lemma` | [mem_submodule_iff](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/mem-submodule-iff--ff6cc704bd14b266f16a7417.md) | 214 | `result-track:ff6cc704bd14b266f16a741750017e71706e29aea446c76ff2d3dfc769ad663d` |
| 21 | `lemma` | [comap_lsingle_submodule](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/comap-lsingle-submodule--4ec24e86d804bf94298ca73a.md) | 219 | `result-track:4ec24e86d804bf94298ca73ac1071045f354c305a0e68e25ca36ca1dc5168b41` |
| 22 | `lemma` | [submodule_eq_iSup](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/submodule-eq-isup--52b97b287a651adae54b6187.md) | 225 | `result-track:52b97b287a651adae54b6187b75ea329bff47a19d3bf5db8e1b26a5680020e68` |
| 23 | `lemma` | [submodule_top](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/submodule-top--d3a4466758cfecdc85c750b9.md) | 235 | `result-track:d3a4466758cfecdc85c750b9044781687d12024e88728c8f438765c12c8c56f0` |
| 24 | `theorem` | [ker_mapRange](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/ker-maprange--f3f9df34c131f49fe62f20b3.md) | 239 | `result-track:f3f9df34c131f49fe62f20b32116566bb03aaf5c9fc8515e10167b6f7409918d` |
| 25 | `theorem` | [range_mapRange_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/range-maprange-linearmap--79ef18159015ad14072c7c33.md) | 244 | `result-track:79ef18159015ad14072c7c33745e6c5f387fbb12e158963765ce6a1bcb9920d2` |
| 26 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/map--0529a64afbfb19feec5c6b8b.md) | 266 | `declaration-track:0529a64afbfb19feec5c6b8bbe65c159fd30ab5afe58e109926f9f671da261f6` |
| 27 | `lemma` | [map_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/map-apply-apply--2482730241b0228a509ccfde.md) | 269 | `result-track:2482730241b0228a509ccfde6fb992180fb8817b62188f89f9ebd1d1b8155cb2` |
| 28 | `lemma` | [map_piSingle](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/map-pisingle--68a8806a29c6d7750bb2a960.md) | 281 | `result-track:68a8806a29c6d7750bb2a960cea7155f8fa9fba7fca53b7c1fcfb64f69a1ad66` |
| 29 | `lemma` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/map-id--13090d1c36b2687594309651.md) | 287 | `result-track:13090d1c36b2687594309651ff9984c0f311accf273d5bc38b3c5b5c249e9071` |
| 30 | `lemma` | [map_comp](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/map-comp--23bc53a231b29d9dec6e03cd.md) | 291 | `result-track:23bc53a231b29d9dec6e03cd32abe453dfe439c40cde846dc647fb45c994112d` |
| 31 | `def` | [linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/linearmap--af627c8043b8b049502ba19c.md) | 303 | `declaration-track:af627c8043b8b049502ba19cc43d637e74558c72a7de7cb031ef12971aaa5bd1` |
| 32 | `lemma` | [linearMap_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/linearmap-apply-apply--1b425f4c78010cdf760d6800.md) | 308 | `result-track:1b425f4c78010cdf760d680037cdaea873771d24cd92a5c0ee2ae938ca3a6229` |
| 33 | `lemma` | [linearMap_piSingle](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/linearmap-pisingle--52ad2abb84a5f78e9fb5a699.md) | 314 | `result-track:52ad2abb84a5f78e9fb5a699e83111a7cd8353108143a7ddbff5ab22439560f6` |
| 34 | `lemma` | [linearMap_id](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/linearmap-id--045e768b54fd9e2e9b2fb53e.md) | 321 | `result-track:045e768b54fd9e2e9b2fb53e2b8654555c62757d569b2bb8e5e35881ce2e0e05` |
| 35 | `lemma` | [linearMap_comp](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant8d96f51d782068b8b7833b93443924279adcd47b7d067ad2e0e72560359a89f3.lean/declarations/linearmap-comp--10a7855de3f7267e972ed6fd.md) | 325 | `result-track:10a7855de3f7267e972ed6fda19e4d4d6bebb058c22c997698c807186e246795` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
