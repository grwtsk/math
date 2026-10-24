# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Sobolev.Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d545fbd37f96b6348fccbf950ca96e1734f176b",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d545fbd37f96b6348fccbf950ca96e1734f176b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Distribution.SchwartzSpace.Deriv` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.ZeroAndBoundedAtFilter` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CS](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/cs--211797c536c55c2ddbba0778.md) | 10 | `declaration-track:211797c536c55c2ddbba0778cefef0e18ae800038f59f8a24c72d12c6be80297` |
| 2 | `structure` | [trunc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/trunc--6cbf8778bb973c77e3a7e21f.md) | 15 | `declaration-track:6cbf8778bb973c77e3a7e21fc49d27058b1182f2932beeaa4ed0048524170717` |
| 3 | `structure` | [W1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/w1--515ca980733a2714302801d5.md) | 19 | `declaration-track:515ca980733a2714302801d5cbc2e74e29e59363c2256009f097a26576fa419a` |
| 4 | `abbrev` | [W21](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/w21--33add342eaeed49cf9718e60.md) | 24 | `declaration-track:33add342eaeed49cf9718e6011f0b505b20f8c102927c4cc9717dc525959cc30` |
| 5 | `def` | [funscale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/funscale--7a0f2aafd2442a13c82c289c.md) | 28 | `declaration-track:7a0f2aafd2442a13c82c289ca61361eaccef593f4bada06489fb45181be5b4c4` |
| 6 | `lemma` | [contDiff_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/contdiff-ofreal--1df81e722fe80668315fd19a.md) | 30 | `result-track:1df81e722fe80668315fd19ad33f0d47431925331640c5aadf283cebfd135546` |
| 7 | `lemma` | [tendsto_funscale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/tendsto-funscale--92254cff0a10bbb84ad740eb.md) | 37 | `result-track:92254cff0a10bbb84ad740ebd6fbbb2539824e6a94e58ccbec01a621fa7e47b6` |
| 8 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/instance--e1e125de2425bad2260266a6.md) | 47 | `declaration-track:e1e125de2425bad2260266a6fa241c952cbffabfc9d572f3d077c6dfc9ea8df8` |
| 9 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/instance--c0ebb39a437c047961f2881c.md) | 49 | `declaration-track:c0ebb39a437c047961f2881c6182b37c4c84ff3a1df4e1deac9ba7d85854503b` |
| 10 | `def` | [neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/neg--688d1ccc5f0ad4c5650d36d2.md) | 52 | `declaration-track:688d1ccc5f0ad4c5650d36d21b388e87988d41fe0063af14d1ec16804152d1ad` |
| 11 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/instance--34182f5c9e030442e2088342.md) | 57 | `declaration-track:34182f5c9e030442e2088342b954528736a42df4e712e9f3e6a76f8a109b0bad` |
| 12 | `lemma` | [neg_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/neg-apply--e2623db2cc032295392dea18.md) | 59 | `result-track:e2623db2cc032295392dea1829a518f2487366288445bd58f22b4f27cdbe5059` |
| 13 | `def` | [smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/smul--4cab0ae1f66ced50b48f6911.md) | 61 | `declaration-track:4cab0ae1f66ced50b48f691143ac6a058abafd356ab89d122b510f451ad34a6b` |
| 14 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/instance--3fe74b26a9b4cdad3236bfd0.md) | 63 | `declaration-track:3fe74b26a9b4cdad3236bfd0d93868be576ff4a72af39023d9a6ed58e77aa28d` |
| 15 | `lemma` | [smul_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/smul-apply--5884d8d7f8dda1e21341d437.md) | 65 | `result-track:5884d8d7f8dda1e21341d4378744f8a0538860a7964b431d2ce8189224420e62` |
| 16 | `lemma` | [continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/continuous--0cc09913814992a1ffe7477a.md) | 67 | `result-track:0cc09913814992a1ffe7477a20db8d9f411bfc018dc718645d2e4b92b4c40274` |
| 17 | `def` | [deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/deriv--2ae557e2b43779bdbfa4cf0e.md) | 69 | `declaration-track:2ae557e2b43779bdbfa4cf0e64a23a9756bdbc3d019c30550cea5d6002ea7885` |
| 18 | `lemma` | [hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/hasderivat--f4a82b155de9dd03bcc7f11c.md) | 74 | `result-track:f4a82b155de9dd03bcc7f11c80d91a7be05e72e3974eb4ab6d596af6c08eaa7f` |
| 19 | `lemma` | [deriv_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/deriv-apply--1cb04508087c2afe5d851218.md) | 77 | `result-track:1cb04508087c2afe5d8512187725716d322612186fe82b74b45d08ec3844f56d` |
| 20 | `lemma` | [deriv_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/deriv-smul--397f58bb4828527b9eb72671.md) | 79 | `result-track:397f58bb4828527b9eb72671388a09aa8431db59bae0b77d568a4c35a42815b0` |
| 21 | `def` | [scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/scale--672fc232b1a05724f194c426.md) | 82 | `declaration-track:672fc232b1a05724f194c42603421daeba21364e31dacec4b3468409c93b7545` |
| 22 | `lemma` | [deriv_scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/deriv-scale--461f04686e5b74bf19b2bba3.md) | 89 | `result-track:461f04686e5b74bf19b2bba384e845cea023f30843e59fb83ef395962a858a83` |
| 23 | `lemma` | [deriv_scale'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/deriv-scale--41c7567e78a63521054dbe70.md) | 96 | `result-track:41c7567e78a63521054dbe70bfac351761cd415314de544185f69ad175ceb228` |
| 24 | `lemma` | [hasDerivAt_scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/hasderivat-scale--27a2b2fe0a8c40d8d4c8de95.md) | 101 | `result-track:27a2b2fe0a8c40d8d4c8de955fe84c1cc6713648f7bf95d3dda7f69477af93bd` |
| 25 | `lemma` | [tendsto_scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/tendsto-scale--8626e2b65cfb29e63262039d.md) | 105 | `result-track:8626e2b65cfb29e63262039dce4050e27a403dbbfb26eb0198fb5e011d6397b9` |
| 26 | `lemma` | [bounded](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/bounded--cda22d54b4cd5b05b25a87fd.md) | 109 | `result-track:cda22d54b4cd5b05b25a87fd02d691be14e365226fbb8712b34ac5111277780a` |
| 27 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/instance--b7c2b496d815aa530199eb77.md) | 118 | `declaration-track:b7c2b496d815aa530199eb7740f6b3707c396e1aeadb069df0d8752d45e48ced` |
| 28 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/instance--7b9332a0fac6a9beef5968b7.md) | 120 | `declaration-track:7b9332a0fac6a9beef5968b7e79adf7e39acc88191d90f25105fa4c3826de326` |
| 29 | `lemma` | [nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/nonneg--a918c70a148055415e19bf64.md) | 122 | `result-track:a918c70a148055415e19bf64e6867064f9ad02d1975bd0b104dd3a9effcd373f` |
| 30 | `lemma` | [le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/le-one--97b57c6fbafe5fc578d5ecdf.md) | 124 | `result-track:97b57c6fbafe5fc578d5ecdf83d20b63c30d42e843ba005929885c557730e621` |
| 31 | `lemma` | [zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/zero--2e90a9bb8480edaae8c0de3d.md) | 127 | `result-track:2e90a9bb8480edaae8c0de3dc1dbd7f5c5821512d987eca110d807098039cc82` |
| 32 | `lemma` | [zero_at](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/zero-at--b6f3550219e2e4264f79f733.md) | 131 | `result-track:b6f3550219e2e4264f79f733410bc476fc966071f18b5ac9926864b833b94260` |
| 33 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/instance--5e0c111e51c938df12d5c34f.md) | 137 | `declaration-track:5e0c111e51c938df12d5c34f12f5cd8245ec43fcc07607165ddece5a8c48dd0b` |
| 34 | `lemma` | [continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/continuous--6596a810d3c7974a72435938.md) | 139 | `result-track:6596a810d3c7974a72435938d0bf68d2d4330e789af9c0b181e6386b1a1562ff` |
| 35 | `lemma` | [differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/differentiable--bd88383052f40505e384e64b.md) | 141 | `result-track:bd88383052f40505e384e64bf3ce0171e8a79aa882183a68e8ea1f264988207b` |
| 36 | `lemma` | [iteratedDeriv_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/iteratedderiv-sub--37fa0b87282c082adcc31392.md) | 144 | `result-track:37fa0b87282c082adcc313923438aaf6b6adac1109f7a471476bf216def4b135` |
| 37 | `def` | [deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/deriv--675a77f8700dfd481adedf19.md) | 157 | `declaration-track:675a77f8700dfd481adedf196a0dce673c2d55c21ecf0d2a79d71e6b0a069377` |
| 38 | `lemma` | [hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/hasderivat--4bab172970fb1b0f966043d4.md) | 163 | `result-track:4bab172970fb1b0f966043d42529b3e5cd0ed099a8fecac690e9086c17070a6a` |
| 39 | `def` | [sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/sub--113cf2eadac0af75818782f0.md) | 166 | `declaration-track:113cf2eadac0af75818782f0e186d1d8874b6c2d98e3c58f6ab065057af56328` |
| 40 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/instance--2b224ec6b6931348da475cff.md) | 174 | `declaration-track:2b224ec6b6931348da475cff98f31c62dc547a113193be910e08dd3353b28d42` |
| 41 | `lemma` | [integrable_iteratedDeriv_Schwarz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/integrable-iteratedderiv-schwarz--762a585e64550d1d2fcf7558.md) | 176 | `result-track:762a585e64550d1d2fcf75587fd0eaaa6554aab7b4265f2791fa070934775fe7` |
| 42 | `def` | [of_Schwartz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/of-schwartz--e0dde2f4d003a9b763fbe4b1.md) | 181 | `declaration-track:e0dde2f4d003a9b763fbe4b1a0210a0cec48ab7629c249d52de0313748c6feda` |
| 43 | `def` | [norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/norm--91698e0da45d68b3efca5b6c.md) | 192 | `declaration-track:91698e0da45d68b3efca5b6c22359dbdb4c61933f04347dac8bb6c2e0907bffb` |
| 44 | `lemma` | [norm_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/norm-nonneg--9444d0716af46d6908006eb7.md) | 195 | `result-track:9444d0716af46d6908006eb7731d59e5c7de7e4ecb63a187d0ca2c391f62d708` |
| 45 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/instance--3d0c25a460a8aff81bf8180f.md) | 199 | `declaration-track:3d0c25a460a8aff81bf8180f3e48dab983f70ce3d125b7db0fbd985b20a4e5bb` |
| 46 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/instance--e68bd5e9359e5f5d0b24f689.md) | 201 | `declaration-track:e68bd5e9359e5f5d0b24f689592cd6df45ce75b857455cabde5e977cbcefa289` |
| 47 | `def` | [ofCS2](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/ofcs2--03a532f69bcbbc660c6d1275.md) | 203 | `declaration-track:03a532f69bcbbc660c6d127577234ecda6341a5b25106c08de06ba7610bf473a` |
| 48 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/instance--3b18b92e9a3aa65cb9634285.md) | 210 | `declaration-track:3b18b92e9a3aa65cb9634285b6d0abc864bece8d74780ce458bd22de3ed950a6` |
| 49 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/instance--a63f09682d90815b47cd6966.md) | 212 | `declaration-track:a63f09682d90815b47cd696696d5bbbb24679c27ac89e2150dcf8bfffd9c9a71` |
| 50 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/instance--d9301f721afe532581d18814.md) | 215 | `declaration-track:d9301f721afe532581d188141b21825335732b5133795ae164fcae02ca89cf84` |
| 51 | `lemma` | [hf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/hf--3f7f54b0a6f444f880daad96.md) | 217 | `result-track:3f7f54b0a6f444f880daad96b9484b30ae2ab994568c7e12954984481d761725` |
| 52 | `lemma` | [hf'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/hf--9b87d888d528fb112317971f.md) | 219 | `result-track:9b87d888d528fb112317971ff1ce160d08808bd088100c87781b680e11e9759f` |
| 53 | `lemma` | [hf''](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/hf--d597e9e207d694ee5cad0432.md) | 222 | `result-track:d597e9e207d694ee5cad043293dd5b5def7f4bf975f29b351b6d1550024e2f0f` |
| 54 | `theorem` | [W21_approximation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant60e7e53c002dccc110ce5f099b6298a7aadcd205d7aa0c01069bb5ecbcae3605.lean/declarations/w21-approximation--c90d46c454a4fec85bf07a15.md) | 227 | `result-track:c90d46c454a4fec85bf07a15cc1699d7abe166bd9db380ff00229f9da1f7af9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
