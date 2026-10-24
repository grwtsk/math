# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.ConvexBody.Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b476eb4ed08625e70f96597062f535e968c201d3",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b476eb4ed08625e70f96597062f535e968c201d3`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Group.GeometryOfNumbers` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.VolumeOfBalls` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.CanonicalEmbedding.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.BohrMollerup` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [convexBodyLT](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/convexbodylt--f614e36764d787c26fafc9b0.md) | 54 | `declaration-track:f614e36764d787c26fafc9b05736e2499cf7927c34263dbd15bd0cee7442762c` |
| 2 | `theorem` | [convexBodyLT_mem](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/convexbodylt-mem--e0ca6e8f8ce85c40131b9caf.md) | 58 | `result-track:e0ca6e8f8ce85c40131b9cafded67cb73fa911737e2291d56c617cc5ead65394` |
| 3 | `theorem` | [convexBodyLT_neg_mem](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/convexbodylt-neg-mem--e2c252d99ffd3be65eec607a.md) | 65 | `result-track:e2c252d99ffd3be65eec607a03acadc77264db6b15df658063a9875e6f418761` |
| 4 | `theorem` | [convexBodyLT_convex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/convexbodylt-convex--d82974a993889fe449b902c4.md) | 72 | `result-track:d82974a993889fe449b902c4d4c35b0a708713353dee2b655a54b9a70ee7b061` |
| 5 | `abbrev` | [convexBodyLTFactor](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/convexbodyltfactor--fd410050fd3fbc0ae996c987.md) | 80 | `declaration-track:fd410050fd3fbc0ae996c9870752879a72a185e93ec716d1a7009a267cbe4a6b` |
| 6 | `theorem` | [convexBodyLTFactor_ne_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/convexbodyltfactor-ne-zero--4e160358b7f46fa7f3090983.md) | 83 | `result-track:4e160358b7f46fa7f30909839732829b315ccdb25384dcdc09e39666a0336601` |
| 7 | `theorem` | [one_le_convexBodyLTFactor](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/one-le-convexbodyltfactor--174d168305a09d9b12935603.md) | 86 | `result-track:174d168305a09d9b129356035f97586acbc5240e1f334bbf9e7d1346e15027d4` |
| 8 | `theorem` | [convexBodyLT_volume](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/convexbodylt-volume--9049c5a05167c8fda370bf7c.md) | 92 | `result-track:9049c5a05167c8fda370bf7c86c071b16eb7a96fe988220bf18f7626aadd7a4e` |
| 9 | `theorem` | [adjust_f](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/adjust-f--2013b20a2fb06736ff7b78d3.md) | 117 | `result-track:2013b20a2fb06736ff7b78d3840ac2fcaea824745ffbce35b44ad6621f20cbdb` |
| 10 | `abbrev` | [convexBodyLT'](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/convexbodylt--35380861fe6a136a7fcb9b36.md) | 144 | `declaration-track:35380861fe6a136a7fcb9b36569d83e9b17d0ed7079ef5b082d114246c4840f1` |
| 11 | `theorem` | [convexBodyLT'_mem](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/convexbodylt-mem--93e299c84951852c9027e471.md) | 149 | `result-track:93e299c84951852c9027e4712cda918451aa4333e400f217baefa85f7697b0e1` |
| 12 | `theorem` | [convexBodyLT'_neg_mem](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/convexbodylt-neg-mem--05ac84cb847241c67be2ed95.md) | 171 | `result-track:05ac84cb847241c67be2ed9573af89f07e5ce2526b5ae43477b3da6769adfb8f` |
| 13 | `theorem` | [convexBodyLT'_convex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/convexbodylt-convex--6579a8310bc64adbbac9330a.md) | 178 | `result-track:6579a8310bc64adbbac9330a0bacf98d2c81124fe90e6f3be5bf97abdc1a8fa8` |
| 14 | `abbrev` | [convexBodyLT'Factor](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/convexbodylt-factor--a92ac7ad6e74ed933c7c28e6.md) | 191 | `declaration-track:a92ac7ad6e74ed933c7c28e6a4357b17b065e2f0eeb78d3e20be14c2ddd89764` |
| 15 | `theorem` | [convexBodyLT'Factor_ne_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/convexbodylt-factor-ne-zero--ee6fb2d33be7f81b53971bbc.md) | 194 | `result-track:ee6fb2d33be7f81b53971bbc52c94d069e3c70e447bbb4728a6fb3554fc7367a` |
| 16 | `theorem` | [one_le_convexBodyLT'Factor](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/one-le-convexbodylt-factor--c59bc5538ae5cdca0c77ef9c.md) | 197 | `result-track:c59bc5538ae5cdca0c77ef9c167d464a62bd1ba3b94b567fbb8e2e4ed412eb34` |
| 17 | `theorem` | [convexBodyLT'_volume](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/convexbodylt-volume--eaa7fff8324b82aeabe24352.md) | 201 | `result-track:eaa7fff8324b82aeabe243522d9cfe782c252044f3e388376d40225d780b2444` |
| 18 | `abbrev` | [convexBodySumFun](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/convexbodysumfun--405df42ac9213b3e125a483a.md) | 256 | `declaration-track:405df42ac9213b3e125a483aecff0192c490e552f25ac336baa9ba9708693ec6` |
| 19 | `theorem` | [convexBodySumFun_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/convexbodysumfun-apply--0d34c66fca0cc4fd034f2e04.md) | 258 | `result-track:0d34c66fca0cc4fd034f2e045f4ed82ec05184f9f0c17c62faf36fa86f2b1d77` |
| 20 | `theorem` | [convexBodySumFun_apply'](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/convexbodysumfun-apply--cf72c5a7d9d32bc536dcdcbd.md) | 262 | `result-track:cf72c5a7d9d32bc536dcdcbd0289bc0da725949033d6fb3acee822cb5ff8d44f` |
| 21 | `theorem` | [convexBodySumFun_nonneg](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/convexbodysumfun-nonneg--151bb42da831a7221facaee1.md) | 268 | `result-track:151bb42da831a7221facaee1db28f053b6f84ec506545515e71a09f2355bb7bf` |
| 22 | `theorem` | [convexBodySumFun_neg](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/convexbodysumfun-neg--db2f6e02ffab7ef443deba64.md) | 272 | `result-track:db2f6e02ffab7ef443deba6464abc4ae8850435b8615f69575045817a38a6e29` |
| 23 | `theorem` | [convexBodySumFun_add_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/convexbodysumfun-add-le--a184639f993b68211f9fc81e.md) | 276 | `result-track:a184639f993b68211f9fc81ecf41f7ecb6d538dffe4a5cc54b5195b9737c981a` |
| 24 | `theorem` | [convexBodySumFun_smul](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/convexbodysumfun-smul--691e1b7b05e4db9835cf2cff.md) | 282 | `result-track:691e1b7b05e4db9835cf2cff659304d9cffd0a35c070cb76689c36f30a5345a3` |
| 25 | `theorem` | [convexBodySumFun_eq_zero_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/convexbodysumfun-eq-zero-iff--3b9281a9fc094735115eca10.md) | 286 | `result-track:3b9281a9fc094735115eca10dd373922755ebb8dac7dfdd9dc10d5b13dc0fecf` |
| 26 | `theorem` | [norm_le_convexBodySumFun](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/norm-le-convexbodysumfun--d71470fe6049402e046344a2.md) | 297 | `result-track:d71470fe6049402e046344a25cd10aad4964c4a9f3858a24b1aba688b8a7c599` |
| 27 | `theorem` | [convexBodySumFun_continuous](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/convexbodysumfun-continuous--58fbac1073135ca5006c4e57.md) | 308 | `result-track:58fbac1073135ca5006c4e57845a858f6cd10e2883450b3ef161f0d18cf7ebb6` |
| 28 | `abbrev` | [convexBodySum](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/convexbodysum--d8411d0081b5b65308dfef50.md) | 318 | `declaration-track:d8411d0081b5b65308dfef50859d60760d30f5e333badad1fd2b57f7e26ce158` |
| 29 | `theorem` | [convexBodySum_volume_eq_zero_of_le_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/convexbodysum-volume-eq-zero-of-le-zero--c162b64348a0ca0e71594732.md) | 321 | `result-track:c162b64348a0ca0e7159473294b28c47f8a2da135295428dd9533e7ef9778f7f` |
| 30 | `theorem` | [convexBodySum_mem](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/convexbodysum-mem--c0cf505acb6a67faea8ee3c6.md) | 334 | `result-track:c0cf505acb6a67faea8ee3c6d13463b5b146e66473e9026d383c40ed207dcd61` |
| 31 | `theorem` | [convexBodySum_neg_mem](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/convexbodysum-neg-mem--0be59cd78756198dfc605ff3.md) | 340 | `result-track:0be59cd78756198dfc605ff38dbd255756f414da9ecd4e87746dae8a0cc3985a` |
| 32 | `theorem` | [convexBodySum_convex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/convexbodysum-convex--fc196ac355e0f98795bc4245.md) | 345 | `result-track:fc196ac355e0f98795bc424516a407448dfbb8d9e84d61a864c266e595e83199` |
| 33 | `theorem` | [convexBodySum_isBounded](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/convexbodysum-isbounded--22a88ad84e082e00884c20fc.md) | 350 | `result-track:22a88ad84e082e00884c20fcc68535e3b6d2e1e003bdfdcccd18109c50278d7a` |
| 34 | `theorem` | [convexBodySum_compact](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/convexbodysum-compact--51214fdf1e0ce50373bc7897.md) | 357 | `result-track:51214fdf1e0ce50373bc789724b0fc884950b5f05e0cf22da736edfc07a24914` |
| 35 | `abbrev` | [convexBodySumFactor](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/convexbodysumfactor--c16ca4cb10a733643c26a25e.md) | 366 | `declaration-track:c16ca4cb10a733643c26a25e30e44495e5c63a688a432f98724b94fb4b9f14a8` |
| 36 | `theorem` | [convexBodySumFactor_ne_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/convexbodysumfactor-ne-zero--f91ce9981c83106cde5a408b.md) | 369 | `result-track:f91ce9981c83106cde5a408b7735dc22f08740a17a0a2e62082967790986cf32` |
| 37 | `theorem` | [convexBodySum_volume](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/convexbodysum-volume--8f48c35573da2c2d9ad524fa.md) | 376 | `result-track:8f48c35573da2c2d9ad524fa0bf07ee8a1aa4fd0e50aeda00ad77a385e842cee` |
| 38 | `def` | [minkowskiBound](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/minkowskibound--13744e25c0eb5785fe2a5f1e.md) | 443 | `declaration-track:13744e25c0eb5785fe2a5f1ee32d48ebf3bdcaff3609409e0b0441c2426011bf` |
| 39 | `theorem` | [volume_fundamentalDomain_fractionalIdealLatticeBasis](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/volume-fundamentaldomain-fractionalideallatticebasis--ddd48a56708e8e325c9527dc.md) | 448 | `result-track:ddd48a56708e8e325c9527dc0bd9e428fc50a847319972c6f34bc09584e7752a` |
| 40 | `theorem` | [minkowskiBound_lt_top](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/minkowskibound-lt-top--faaeb58613cca70891a9cb77.md) | 462 | `result-track:faaeb58613cca70891a9cb77049576197332b8d1d35ad406363cca1a5681aae8` |
| 41 | `theorem` | [minkowskiBound_pos](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/minkowskibound-pos--b1fa376083a8bcc8ee737d93.md) | 468 | `result-track:b1fa376083a8bcc8ee737d9388c1b55b506bb355fe8b3cacaa36c6fdc21c9ffa` |
| 42 | `theorem` | [exists_ne_zero_mem_ideal_lt](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/exists-ne-zero-mem-ideal-lt--4df83d929c54f765894bba0a.md) | 482 | `result-track:4df83d929c54f765894bba0acf8c62f8ce8601c0c1af3db2ab1e79c13be153c1` |
| 43 | `theorem` | [exists_ne_zero_mem_ideal_lt'](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/exists-ne-zero-mem-ideal-lt--4bdfa48d9beaa2e6c634c137.md) | 497 | `result-track:4bdfa48d9beaa2e6c634c137080299534fa8047c767e5d8036339e619542cdb5` |
| 44 | `theorem` | [exists_ne_zero_mem_ringOfIntegers_lt](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/exists-ne-zero-mem-ringofintegers-lt--51e7f74af6cb8d092ac42633.md) | 513 | `result-track:51e7f74af6cb8d092ac42633f8234582fc13294ed1701ebb767776a49e70c800` |
| 45 | `theorem` | [exists_ne_zero_mem_ringOfIntegers_lt'](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/exists-ne-zero-mem-ringofintegers-lt--2e659d6d3780b8c47144d9a8.md) | 521 | `result-track:2e659d6d3780b8c47144d9a85ef0f808f4e79e71d8e045732ed7f1e8579f697b` |
| 46 | `theorem` | [exists_primitive_element_lt_of_isReal](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/exists-primitive-element-lt-of-isreal--695e93b471b485e271713b2d.md) | 529 | `result-track:695e93b471b485e271713b2d1f2dcf2ac45a4e72890f5542ef7ddd9d248e1002` |
| 47 | `theorem` | [exists_primitive_element_lt_of_isComplex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/exists-primitive-element-lt-of-iscomplex--96dc1583fe6f5ef7916295fa.md) | 546 | `result-track:96dc1583fe6f5ef7916295faef7ae8ac0c6f865dac074f93ff628b18cf641e27` |
| 48 | `theorem` | [exists_ne_zero_mem_ideal_of_norm_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/exists-ne-zero-mem-ideal-of-norm-le--b7bb7245da8eb03604058d59.md) | 583 | `result-track:b7bb7245da8eb03604058d59b85a5405e90d8df90e10b213ead1a764f017550b` |
| 49 | `theorem` | [exists_ne_zero_mem_ringOfIntegers_of_norm_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/declarations/exists-ne-zero-mem-ringofintegers-of-norm-le--cc23c0c987e3d7b2ba124796.md) | 617 | `result-track:cc23c0c987e3d7b2ba124796ba96d0aecab57dbb97308c3df4fab769b152eee1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
