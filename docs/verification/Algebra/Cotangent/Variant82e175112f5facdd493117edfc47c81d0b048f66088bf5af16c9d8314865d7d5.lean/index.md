# Verification target: GRWTSK.Algebra.Cotangent.Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f58c6c416ecdc1c419eb14bf3534c4a297ef33f",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/index.md) · [Full source](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f58c6c416ecdc1c419eb14bf3534c4a297ef33f`.

Source path: `GRWTSK/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Torsion` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Idempotent` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Finite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.FreeAndStrongRankCondition` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Defs` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Filtration` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Operations` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.ResidueField.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nakayama` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Cotangent](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/cotangent--ee183719db36e54f4fbab634.md) | 45 | `declaration-track:ee183719db36e54f4fbab6348098740435d864dee7bfa3c7eaa876cc057550db` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/instance--0156e24678c0c3f75c5103d9.md) | 50 | `declaration-track:0156e24678c0c3f75c5103d96f3713c6f607f36223121d15de96879fe9bfee00` |
| 3 | `instance` | [cotangentModule](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/cotangentmodule--599c13e4dce980a57bf51d40.md) | 52 | `declaration-track:599c13e4dce980a57bf51d4080c3524a54080294f58abde388322305d8378121` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/instance--115b1add1f107cb4ebbabe22.md) | 54 | `declaration-track:115b1add1f107cb4ebbabe22769df6699b513467a339c6118c6ca84c29c5b169` |
| 5 | `instance` | [Cotangent.moduleOfTower](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/cotangent-moduleoftower--431d458f835504d98d380e24.md) | 56 | `declaration-track:431d458f835504d98d380e243d7f7cef08f3fe8ea629d81308fe5361adf1d9c3` |
| 6 | `instance` | [Cotangent.isScalarTower](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/cotangent-isscalartower--0847ef375939960676170663.md) | 59 | `declaration-track:0847ef37593996067617066335ea6c539cb16259c2601b6d007212241f14d522` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/instance--efb568fd0b721fb4f6eb9ecd.md) | 62 | `declaration-track:efb568fd0b721fb4f6eb9ecd5b6fd0164dab8f4025301bd51a92779d6c7125ce` |
| 8 | `def` | [toCotangent](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/tocotangent--56162cc0b27f933a9c6cc20a.md) | 67 | `declaration-track:56162cc0b27f933a9c6cc20a72bd549e0e0bb2c88d8f1d37fb970da01f227c8a` |
| 9 | `theorem` | [map_toCotangent_ker](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/map-tocotangent-ker--229e585603b61eff75e36f29.md) | 69 | `result-track:229e585603b61eff75e36f297dd106b942a7d387fb30e1707ea2cf68208230fb` |
| 10 | `theorem` | [mem_toCotangent_ker](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/mem-tocotangent-ker--0fe639aceedefb7e93d9af30.md) | 73 | `result-track:0fe639aceedefb7e93d9af30f339e37911946aa8480c8a7872257b2ddf98af73` |
| 11 | `theorem` | [toCotangent_eq](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/tocotangent-eq--2cc55061a779645b85948a85.md) | 77 | `result-track:2cc55061a779645b85948a850a67f387b17602697c743913dad5c0bf2f325911` |
| 12 | `theorem` | [toCotangent_eq_zero](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/tocotangent-eq-zero--219c4a3802487db3c2e2b65f.md) | 81 | `result-track:219c4a3802487db3c2e2b65fb64db02999ec1421029c5bf277018c1de235afdc` |
| 13 | `theorem` | [toCotangent_surjective](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/tocotangent-surjective--ea29ae0c96ed4097591a248f.md) | 83 | `result-track:ea29ae0c96ed4097591a248ff53063f83c9585a04249d6f23ec0362652e1dd65` |
| 14 | `theorem` | [toCotangent_range](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/tocotangent-range--11bff6072c8d399e1fa4a1ab.md) | 85 | `result-track:11bff6072c8d399e1fa4a1ab8ac39a84f8ae50c23faf3989ba591709b83db1a8` |
| 15 | `theorem` | [cotangent_subsingleton_iff](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/cotangent-subsingleton-iff--b78bfa509def879f7d0678ee.md) | 87 | `result-track:b78bfa509def879f7d0678eeb7e7704439411ec15407cee42e4a32095f5e3757` |
| 16 | `def` | [cotangentToQuotientSquare](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/cotangenttoquotientsquare--ce5025db237dcc5d1cd450f8.md) | 98 | `declaration-track:ce5025db237dcc5d1cd450f82d5d67e251f2d22a570c0d289e048aa3f6ce4dfb` |
| 17 | `theorem` | [to_quotient_square_comp_toCotangent](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/to-quotient-square-comp-tocotangent--f1c2b597de01d546b681fb16.md) | 104 | `result-track:f1c2b597de01d546b681fb164a0ec5da3916ea7aa1b4ebe68dbef6ae1c9a7953` |
| 18 | `theorem` | [toCotangent_to_quotient_square](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/tocotangent-to-quotient-square--50e87c27524897c4a38988c4.md) | 109 | `result-track:50e87c27524897c4a38988c408e1ff77d8f7b20f7d34573108dcc01c9a987099` |
| 19 | `lemma` | [Cotangent.smul_eq_zero_of_mem](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/cotangent-smul-eq-zero-of-mem--295cc33a7f50d56fc2a4561c.md) | 112 | `result-track:295cc33a7f50d56fc2a4561cfcee14f33d82b4137fa4234e75b7863ffe8ddbcd` |
| 20 | `lemma` | [isTorsionBySet_cotangent](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/istorsionbyset-cotangent--76979e39786a23fcba0a8726.md) | 118 | `result-track:76979e39786a23fcba0a8726cac67a028999918cf3f3f131a9ae8266ee77dc82` |
| 21 | `def` | [cotangentIdeal](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/cotangentideal--9b8ae1b4137242dc1e18a584.md) | 123 | `declaration-track:9b8ae1b4137242dc1e18a5849721bdebb71b3e423afd3303864cb733e0fc608f` |
| 22 | `theorem` | [cotangentIdeal_square](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/cotangentideal-square--f8d36d1ad2ea12387e9f1972.md) | 126 | `result-track:f8d36d1ad2ea12387e9f1972c0368722d79a8640bb62d2cb6d399f2ee5eef06c` |
| 23 | `lemma` | [mk_mem_cotangentIdeal](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/mk-mem-cotangentideal--3656b01dddbb22be47729206.md) | 134 | `result-track:3656b01dddbb22be47729206473b512467235a75bb226ac45d38012fbf636cfa` |
| 24 | `lemma` | [comap_cotangentIdeal](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/comap-cotangentideal--c4a45dc19c6834fdb1c29526.md) | 140 | `result-track:c4a45dc19c6834fdb1c2952637263682aa7af791a65560cc0b049ffc168a0569` |
| 25 | `theorem` | [range_cotangentToQuotientSquare](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/range-cotangenttoquotientsquare--efbe77c10b48307b5b75ff31.md) | 144 | `result-track:efbe77c10b48307b5b75ff31cd00357e08530ef188a75da1dcc740adbc3000a1` |
| 26 | `def` | [cotangentEquivIdeal](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/cotangentequivideal--168a23bea3bede2c1549dbd6.md) | 155 | `declaration-track:168a23bea3bede2c1549dbd6584e913a39f2693cfd4cd42d5a428b0e93498cd1` |
| 27 | `theorem` | [cotangentEquivIdeal_apply](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/cotangentequivideal-apply--57fa0abdda7abd8060f85671.md) | 171 | `result-track:57fa0abdda7abd8060f856717a116258ab930ce229bdd472a4be4935f4de57d4` |
| 28 | `theorem` | [cotangentEquivIdeal_symm_apply](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/cotangentequivideal-symm-apply--0007809480e32b9b913b5d41.md) | 174 | `result-track:0007809480e32b9b913b5d4182f20c8e641d4cf18c58af2b52ddc0f6556ebe12` |
| 29 | `def` | [_root_.GRWTSK.Algebra.Cotangent.Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.AlgHom.kerSquareLift](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/root-grwtsk-algebra-cotangent-variant84ea37012593b8c7f008dbf158997bd266b--9c1f0a768732fe5d26a518e4.md) | 188 | `declaration-track:9c1f0a768732fe5d26a518e40b8f14eee788a0dfe006d34522217ff31f84f5b5` |
| 30 | `theorem` | [_root_.GRWTSK.Algebra.Cotangent.Variant84ea37012593b8c7f008dbf158997bd266b07886d962cafc4a2dacd9d7da6cef.AlgHom.ker_kerSquareLift](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/root-grwtsk-algebra-cotangent-variant84ea37012593b8c7f008dbf158997bd266b--00eda281aa95ac7f15d02ceb.md) | 196 | `result-track:00eda281aa95ac7f15d02ceb127e1cabf0d3e35dcb636700de659fef98fd4452` |
| 31 | `instance` | [Algebra.kerSquareLift](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/algebra-kersquarelift--12a45fc46b372289183510ca.md) | 202 | `declaration-track:12a45fc46b372289183510ca28c9f5201646faf5cd4de4bd784904a923ca6127` |
| 32 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/instance--400af964b4779796e996f5be.md) | 205 | `declaration-track:400af964b4779796e996f5bea865bfefddfcbaeda8d95e3efec3d0292bdcdcba` |
| 33 | `def` | [quotCotangent](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/quotcotangent--1b61d9371b0fb0ffba404e99.md) | 211 | `declaration-track:1b61d9371b0fb0ffba404e999ff4df19418b5db795e5017f2e6917206c63306f` |
| 34 | `def` | [mapCotangent](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/mapcotangent--48937a81cc79a3dd564f3b9d.md) | 217 | `declaration-track:48937a81cc79a3dd564f3b9d5464b9b866b9ebf7d64be0154289b09aed396789` |
| 35 | `lemma` | [mapCotangent_toCotangent](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/mapcotangent-tocotangent--9405841784e94b4322ab2746.md) | 233 | `result-track:9405841784e94b4322ab274687e147029d1c2ef2008103a3316209ad81ee2dca` |
| 36 | `abbrev` | [CotangentSpace](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/cotangentspace--be08da8303608c3257fd8b5a.md) | 244 | `declaration-track:be08da8303608c3257fd8b5ac0bb56296a3259242c88606d3ec2f74b36106894` |
| 37 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/instance--d6219e2678ee4e5f054e3c3f.md) | 246 | `declaration-track:d6219e2678ee4e5f054e3c3f39a10684e34e3d7498ce9c68a47012c54937b219` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/instance--4cc9885ab916cafdbf6b043a.md) | 248 | `declaration-track:4cc9885ab916cafdbf6b043a03248cfd8daf3e88097ce3b0d39b257a5142d394` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/instance--11e48250526b7023d1741feb.md) | 251 | `declaration-track:11e48250526b7023d1741feb48afd05125d2f9340275ebaa91ee9393b3fac75c` |
| 40 | `lemma` | [subsingleton_cotangentSpace_iff](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/subsingleton-cotangentspace-iff--b1b2ebebb280a7c10bd53a1f.md) | 256 | `result-track:b1b2ebebb280a7c10bd53a1f3721477a9813f519227a252fc5eb95c568e20ccb` |
| 41 | `lemma` | [CotangentSpace.map_eq_top_iff](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/cotangentspace-map-eq-top-iff--f3126bbc000a2fbfc20aa6e1.md) | 263 | `result-track:f3126bbc000a2fbfc20aa6e1cfb62a042eae360b765a5b155c5482699afff98a` |
| 42 | `lemma` | [CotangentSpace.span_image_eq_top_iff](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/cotangentspace-span-image-eq-top-iff--f437132e64c00c786b00823d.md) | 273 | `result-track:f437132e64c00c786b00823d97452e6a231d00a553aac97de24c726f75e097a8` |
| 43 | `lemma` | [finrank_cotangentSpace_eq_zero_iff](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/finrank-cotangentspace-eq-zero-iff--ba3940b7976079df8a7b58d9.md) | 283 | `result-track:ba3940b7976079df8a7b58d95ff477670b8dc2b9ad7d49f91297e8a503b3d449` |
| 44 | `lemma` | [finrank_cotangentSpace_eq_zero](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/finrank-cotangentspace-eq-zero--2ceff14a037eba96555ce3bd.md) | 287 | `result-track:2ceff14a037eba96555ce3bd6302bc1650745e0546762701f7b1b15e8f6491bc` |
| 45 | `theorem` | [finrank_cotangentSpace_le_one_iff](../../../../mathematics/Algebra/Cotangent/Variant82e175112f5facdd493117edfc47c81d0b048f66088bf5af16c9d8314865d7d5.lean/declarations/finrank-cotangentspace-le-one-iff--688a7b53029a284ed0412979.md) | 292 | `result-track:688a7b53029a284ed041297919eabebe975f91b594a84a3bddda6144ed935bfb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
