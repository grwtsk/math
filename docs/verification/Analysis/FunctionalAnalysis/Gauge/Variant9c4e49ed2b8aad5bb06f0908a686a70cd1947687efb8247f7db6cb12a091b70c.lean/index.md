# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Gauge.Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fc9e7888a61101780115dcb6ddbde21e125e1bd",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fc9e7888a61101780115dcb6ddbde21e125e1bd`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Topology` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Pointwise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Seminorm` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.Bounded` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.IsROrC.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gauge](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge--dd6d96214c97998ccc39b4b3.md) | 57 | `declaration-track:dd6d96214c97998ccc39b4b3c95afc9fab508f59d098566113af95a79a4bd5a1` |
| 2 | `theorem` | [gauge_def](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-def--06e4754fb12f36ae5cb550d6.md) | 63 | `result-track:06e4754fb12f36ae5cb550d61c5fe3a15842b81bbd2defba824975bcd1f31798` |
| 3 | `theorem` | [gauge_def'](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-def--5cff045043d0c01a4e4e3675.md) | 69 | `result-track:5cff045043d0c01a4e4e3675822166ea7711e64e58d46cbb73bc70738228ac70` |
| 4 | `theorem` | [gauge_set_bddBelow](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-set-bddbelow--12a171d60176afe4800f0729.md) | 74 | `result-track:12a171d60176afe4800f0729cd4a93716b1121973138547ea047a70de510e12e` |
| 5 | `theorem` | [Absorbent.gauge_set_nonempty](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/absorbent-gauge-set-nonempty--372d4443a401bb3403c1b2a7.md) | 79 | `result-track:372d4443a401bb3403c1b2a7105eaecd9e2b1f63abb5106908a16c5dbcdb5e06` |
| 6 | `theorem` | [gauge_mono](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-mono--4190bdd170750df99e3d45a2.md) | 85 | `result-track:4190bdd170750df99e3d45a2dea7cec02fb43300cb933b6df8695902e9ad750f` |
| 7 | `theorem` | [exists_lt_of_gauge_lt](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/exists-lt-of-gauge-lt--b0e6b0fe84b0f995c2cc4f5b.md) | 89 | `result-track:b0e6b0fe84b0f995c2cc4f5b9bf2e2ab399989840fb3e891f73ebea7f03f5b01` |
| 8 | `theorem` | [gauge_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-zero--d44e8690b75650ecffac42f7.md) | 98 | `result-track:d44e8690b75650ecffac42f7c62bbea6f8f13a78006efed8e9e983b898749810` |
| 9 | `theorem` | [gauge_zero'](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-zero--3f7b72e6a80d30499b0a2346.md) | 106 | `result-track:3f7b72e6a80d30499b0a2346601ec15b9ba8f286924d0262e94b0b6339353ef5` |
| 10 | `theorem` | [gauge_empty](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-empty--76bcf70cde10894160378b17.md) | 117 | `result-track:76bcf70cde10894160378b170c0db6fe68a4b6e4b8ab9a57d576bf82c90ef651` |
| 11 | `theorem` | [gauge_of_subset_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-of-subset-zero--9c97ea26bf8a08dbffed8192.md) | 122 | `result-track:9c97ea26bf8a08dbffed81927f86a2eb9ea5f42456ea3f739612541e54152555` |
| 12 | `theorem` | [gauge_nonneg](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-nonneg--311a1defa870d87f5e910b29.md) | 128 | `result-track:311a1defa870d87f5e910b29fa48836b885125bcaffea61eaf8ecb1f6eb9c0fb` |
| 13 | `theorem` | [gauge_neg](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-neg--0a548c055cff6351d5ab1bd7.md) | 132 | `result-track:0a548c055cff6351d5ab1bd773569d0480e5d54b979ab25fe894c4b9d13ea75e` |
| 14 | `theorem` | [gauge_neg_set_neg](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-neg-set-neg--9d1506e74c35e346fb6639ad.md) | 137 | `result-track:9d1506e74c35e346fb6639ad537992a9e05e70896d6c227cb5c9895002058107` |
| 15 | `theorem` | [gauge_neg_set_eq_gauge_neg](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-neg-set-eq-gauge-neg--55aaf6a47ef54c72aef2e720.md) | 141 | `result-track:55aaf6a47ef54c72aef2e7205b7f128a3df69b80bcb3b1391ee980829a9c0612` |
| 16 | `theorem` | [gauge_le_of_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-le-of-mem--5b189bf7a0a4b80485c3eeb0.md) | 145 | `result-track:5b189bf7a0a4b80485c3eeb0c6ab96cf8251c5fbe654b9e5f7f31bc803895854` |
| 17 | `theorem` | [gauge_le_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-le-eq--ca99ebdbfbc0c5b8d7c3996a.md) | 151 | `result-track:ca99ebdbfbc0c5b8d7c3996acda5f122a14dea40c8584f3509b8c3aa40200c2e` |
| 18 | `theorem` | [gauge_lt_eq'](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-lt-eq--f079d9cf626c536fb4b2bd7b.md) | 169 | `result-track:f079d9cf626c536fb4b2bd7b47ad8c64e6c405fbd026fde6d2d08aaf15dcc830` |
| 19 | `theorem` | [gauge_lt_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-lt-eq--fc9f15a7d469f99ac115bef5.md) | 178 | `result-track:fc9f15a7d469f99ac115bef5bea72afe9535ab4fdb9189ef41d7a5b78d5c137e` |
| 20 | `theorem` | [mem_openSegment_of_gauge_lt_one](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/mem-opensegment-of-gauge-lt-one--6c59a07c5b45e12291fd4798.md) | 187 | `result-track:6c59a07c5b45e12291fd4798f86d3fb3bde6eea715cf46b604f03ae2765a606a` |
| 21 | `theorem` | [gauge_lt_one_subset_self](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-lt-one-subset-self--c866807f54b961ec7809f6b0.md) | 193 | `result-track:c866807f54b961ec7809f6b070e3fb39fec924e1ed08336deab09bc59c525907` |
| 22 | `theorem` | [gauge_le_one_of_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-le-one-of-mem--3b41e8fddb5be12dddf235be.md) | 199 | `result-track:3b41e8fddb5be12dddf235be0ac3b830afcd5d5a9537b78d7d8a70ac79ba1fd4` |
| 23 | `theorem` | [gauge_add_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-add-le--d7e6f0f0ce3bcce46356aa11.md) | 204 | `result-track:d7e6f0f0ce3bcce46356aa11ab231914ea045e458a0ab0d43d0e196fcf459b6c` |
| 24 | `theorem` | [self_subset_gauge_le_one](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/self-subset-gauge-le-one--817926fe042acf567e924369.md) | 218 | `result-track:817926fe042acf567e924369bb1bc0849d5abd7beb45ec27b8045283843e9ee0` |
| 25 | `theorem` | [Convex.gauge_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/convex-gauge-le--949cb0d1481b496f9d381bff.md) | 221 | `result-track:949cb0d1481b496f9d381bff3d009dd8b6a8da25ae6dacbf0bd75a3c3ac11b60` |
| 26 | `theorem` | [Balanced.starConvex](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/balanced-starconvex--09cbebd247f25e7b514baef2.md) | 231 | `result-track:09cbebd247f25e7b514baef2a6d90c393439f009e4df13f025bf5d34012a1d19` |
| 27 | `theorem` | [le_gauge_of_not_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/le-gauge-of-not-mem--56800bb5e8a45a957d174a9d.md) | 236 | `result-track:56800bb5e8a45a957d174a9d9e5562644b790476345c25cf1537bdd5865afed6` |
| 28 | `theorem` | [one_le_gauge_of_not_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/one-le-gauge-of-not-mem--5302f3312f0aaa0a9542977c.md) | 251 | `result-track:5302f3312f0aaa0a9542977c4c0af6becc845e5d95d47959c7bb12356b411614` |
| 29 | `theorem` | [gauge_smul_of_nonneg](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-smul-of-nonneg--bf9b64552c0925f763820c9e.md) | 260 | `result-track:bf9b64552c0925f763820c9e6b6aacc3b79c1254e2dba025e5bfdbbb03de5464` |
| 30 | `theorem` | [gauge_smul_left_of_nonneg](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-smul-left-of-nonneg--f84a539edfba3067bc57dc08.md) | 285 | `result-track:f84a539edfba3067bc57dc08c0e528215f5a97c77f1ed8d1dda9c8c91b26f229` |
| 31 | `theorem` | [gauge_smul_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-smul-left--d081afa2faf3511ae5ce7731.md) | 306 | `result-track:d081afa2faf3511ae5ce773124aec45dea2512255daec6bdb3218e4bcb382dd2` |
| 32 | `theorem` | [gauge_norm_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-norm-smul--d9659737f5e31c4705cffa32.md) | 328 | `result-track:d9659737f5e31c4705cffa32ff6f15a1b7bece9196202c10a6f9c9770487e192` |
| 33 | `theorem` | [gauge_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-smul--f4297b5c1fb5c54db60263d6.md) | 338 | `result-track:f4297b5c1fb5c54db60263d689ee4342407a1718f6f4feb3a774a4d39fc2bbcf` |
| 34 | `theorem` | [interior_subset_gauge_lt_one](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/interior-subset-gauge-lt-one--71630c00fad1ddf3729d0174.md) | 349 | `result-track:71630c00fad1ddf3729d017435b849d40a2102f061c9a7e654111bc22fc5bc14` |
| 35 | `theorem` | [gauge_lt_one_eq_self_of_open](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-lt-one-eq-self-of-open--45c3ec1ea342abf6070dfb43.md) | 362 | `result-track:45c3ec1ea342abf6070dfb432ede95f70fcb30fce8670b46e78306a881ca9ae9` |
| 36 | `theorem` | [gauge_lt_one_of_mem_of_open](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-lt-one-of-mem-of-open--303741a7617e0dc241604cbd.md) | 370 | `result-track:303741a7617e0dc241604cbd5b1c305ef4f4d4d397828fa963566f70a3a6049e` |
| 37 | `theorem` | [gauge_lt_of_mem_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-lt-of-mem-smul--8a3f968936b5940ccca309ae.md) | 376 | `result-track:8a3f968936b5940ccca309ae70fc6241ff8b891850d1848a323946a628596025` |
| 38 | `theorem` | [mem_closure_of_gauge_le_one](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/mem-closure-of-gauge-le-one--427788d85de6b95781dcbf21.md) | 384 | `result-track:427788d85de6b95781dcbf219a59e945462a90c9d3719782027db6ade2858c4e` |
| 39 | `theorem` | [mem_frontier_of_gauge_eq_one](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/mem-frontier-of-gauge-eq-one--1c602c025227eb0f3b6f7a55.md) | 395 | `result-track:1c602c025227eb0f3b6f7a550febad30996e12b6f57aa179e166a1f2d2fa37af` |
| 40 | `theorem` | [continuous_gauge](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/continuous-gauge--7897fac2f8121662bf498f40.md) | 411 | `result-track:7897fac2f8121662bf498f40ba56e699622f206da513c26e1abe2789b8b57541` |
| 41 | `theorem` | [gauge_lt_one_eq_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-lt-one-eq-interior--efca9cd4d8b76e03e697b0eb.md) | 430 | `result-track:efca9cd4d8b76e03e697b0eb8ac362c07b285be1652e0130d64ac42068010763` |
| 42 | `theorem` | [gauge_lt_one_iff_mem_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-lt-one-iff-mem-interior--2bf7d70a3821515b8f571e2b.md) | 436 | `result-track:2bf7d70a3821515b8f571e2b98ed9f1f1a7e29adea5e1bb159ac5b48610344b3` |
| 43 | `theorem` | [gauge_le_one_iff_mem_closure](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-le-one-iff-mem-closure--4f29c308720a34d96e6ded60.md) | 440 | `result-track:4f29c308720a34d96e6ded60d4e75949d523af3dd5f4084923be225a5499bf46` |
| 44 | `theorem` | [gauge_eq_one_iff_mem_frontier](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-eq-one-iff-mem-frontier--4fd50a16354ccd8c40c2a3c6.md) | 446 | `result-track:4fd50a16354ccd8c40c2a3c6577dfc0092957f5b383be16d935ca0af93355514` |
| 45 | `theorem` | [gauge_eq_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-eq-zero--ba270c742ef75f8c1a300ee5.md) | 451 | `result-track:ba270c742ef75f8c1a300ee5baf4b91c15fbf0f0d0a98a85a20ad46f2447f5a0` |
| 46 | `theorem` | [gauge_pos](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-pos--db2bd7b4ab9b40ed7bd95a9d.md) | 464 | `result-track:db2bd7b4ab9b40ed7bd95a9d2b979fa11b3257875bc949b22bae94623a4720a2` |
| 47 | `def` | [gaugeSeminorm](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gaugeseminorm--09638137b2533bb2c0897da0.md) | 476 | `declaration-track:09638137b2533bb2c0897da05cae0028c716d27abbaafb02098a4aef87997001` |
| 48 | `theorem` | [gaugeSeminorm_lt_one_of_open](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gaugeseminorm-lt-one-of-open--d7b419c4f7433635f25d22bf.md) | 483 | `result-track:d7b419c4f7433635f25d22bf8e833745c650835f906c81f24b36fabc35668a07` |
| 49 | `theorem` | [gaugeSeminorm_ball_one](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gaugeseminorm-ball-one--3d687666e704069372f0b251.md) | 488 | `result-track:3d687666e704069372f0b25169aa76817afee064c1d360efb88150792c6ee95c` |
| 50 | `theorem` | [Seminorm.gauge_ball](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/seminorm-gauge-ball--a549b6712a2583f8a10c6cd9.md) | 497 | `result-track:a549b6712a2583f8a10c6cd97f16d55858e89278041df9b47d6350cbb75cc009` |
| 51 | `theorem` | [Seminorm.gaugeSeminorm_ball](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/seminorm-gaugeseminorm-ball--cd0dc5213de38a3738869d33.md) | 522 | `result-track:cd0dc5213de38a3738869d337b1e75d1eccd00bf97fc9a59f14e9544e34e8e3a` |
| 52 | `theorem` | [gauge_unit_ball](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-unit-ball--e63f4a8ebd5593ab4df5efe7.md) | 535 | `result-track:e63f4a8ebd5593ab4df5efe7e5e81e0a8deefab09d01ba16bb4c458be3051bab` |
| 53 | `theorem` | [gauge_ball](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-ball--bc26e8effe8eee2911d9f6a5.md) | 539 | `result-track:bc26e8effe8eee2911d9f6a53d96701fa87831f1188631d7dc21828c42841dbc` |
| 54 | `theorem` | [gauge_ball'](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-ball--70256a18ed835b21094b49dc.md) | 548 | `result-track:70256a18ed835b21094b49dca4b105212e25ef8f8522eed41a1732445253d9f2` |
| 55 | `theorem` | [gauge_closure_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-closure-zero--1c36a4fa645cba530626692b.md) | 553 | `result-track:1c36a4fa645cba530626692b43b53b06678f3f6dc78d083205eb1b66c7522795` |
| 56 | `theorem` | [gauge_closedBall](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/gauge-closedball--df3428101df953030242753f.md) | 563 | `result-track:df3428101df953030242753fa96a194f9d1596e24cc561b6f7c02fd34488c07d` |
| 57 | `theorem` | [mul_gauge_le_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/mul-gauge-le-norm--1b5a6605e9d8dba930c3fe1f.md) | 577 | `result-track:1b5a6605e9d8dba930c3fe1f2d55e17d7663cfd4435d591224adc6819ddee99d` |
| 58 | `theorem` | [Convex.lipschitzWith_gauge](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/convex-lipschitzwith-gauge--8ae1b369f6dc55d66eff47e0.md) | 584 | `result-track:8ae1b369f6dc55d66eff47e0b6cee9beb201f7a0096888d120bb3c907548ecc8` |
| 59 | `theorem` | [Convex.lipschitz_gauge](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/convex-lipschitz-gauge--25ff96e01e5078c7a7e52801.md) | 596 | `result-track:25ff96e01e5078c7a7e52801cc520a945bbc3d83d2591dac725d77158de55f66` |
| 60 | `theorem` | [Convex.uniformContinuous_gauge](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/convex-uniformcontinuous-gauge--c7e7bfb817f51f929ef466a4.md) | 601 | `result-track:c7e7bfb817f51f929ef466a432e6195dc50479e19cd373038acead414c13f965` |
| 61 | `theorem` | [le_gauge_of_subset_closedBall](../../../../../mathematics/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/declarations/le-gauge-of-subset-closedball--6e3e6d90762a3459e760b291.md) | 613 | `result-track:6e3e6d90762a3459e760b2919cbdb185ff0a4736ccea55097f8b275bf91d5b5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
