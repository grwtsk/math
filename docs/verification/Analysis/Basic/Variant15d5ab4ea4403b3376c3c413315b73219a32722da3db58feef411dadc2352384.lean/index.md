# Verification target: GRWTSK.Analysis.Basic.Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87ff5b83abdf3cd7ed7a17ad4ff03f6e868bc3be",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/index.md) · [Full source](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87ff5b83abdf3cd7ed7a17ad4ff03f6e868bc3be`.

Source path: `GRWTSK/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Hom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.LinearIsometry` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.SelfAdjoint` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Subalgebra` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Unitary` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Star` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Star` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NormedStarGroup](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/normedstargroup--98e243931673b5f13f177561.md) | 47 | `declaration-track:98e243931673b5f13f177561c6775a969848c2977b561302f86d0387d73071f7` |
| 2 | `lemma` | [norm_star](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/norm-star--4f13b93f7df00349159556cd.md) | 57 | `result-track:4f13b93f7df00349159556cd14b210f70185ce9c2a7144cbc66e8f65d40ca69c` |
| 3 | `theorem` | [nnnorm_star](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/nnnorm-star--2993c52f8acece8d097edb49.md) | 61 | `result-track:2993c52f8acece8d097edb49b52f5abc86ed45da1d9a45b1004d7dcc879411b8` |
| 4 | `def` | [starNormedAddGroupHom](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/starnormedaddgrouphom--122b9f3d7afb80b2ccf43f0e.md) | 65 | `declaration-track:122b9f3d7afb80b2ccf43f0e3c637e7355057358f09904ccd5a4b129b043a611` |
| 5 | `theorem` | [star_isometry](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/star-isometry--7766b808c6cd6b8b9c1f43f2.md) | 69 | `result-track:7766b808c6cd6b8b9c1f43f219b6076da181cbd7a9c6624d55750b1dcc538132` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/instance--017b9ab77713ee6e56e0fcb3.md) | 73 | `declaration-track:017b9ab77713ee6e56e0fcb39d8bcd0e2d10c9c0c8b6855c7d30b8841c0a21ea` |
| 7 | `instance` | [RingHomIsometric.starRingEnd](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/ringhomisometric-starringend--00950d8fea948022b88b5420.md) | 78 | `declaration-track:00950d8fea948022b88b542038ec7c0de812041bf75655a806bc08524acc3ab5` |
| 8 | `class` | [CStarRing](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/cstarring--776be001a75279777161ca49.md) | 85 | `declaration-track:776be001a75279777161ca49c4199a85f86ef591ac46d598eadf125ea020f152` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/instance--a3b23782708e36eaf6d5119c.md) | 88 | `declaration-track:a3b23782708e36eaf6d5119cbb5b48d1efb1ccec22ddb6b0c8a052bd8893dbda` |
| 10 | `lemma` | [of_le_norm_mul_star_self](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/of-le-norm-mul-star-self--537d916954d1e861bcd000d8.md) | 96 | `result-track:537d916954d1e861bcd000d8cdcf3093284ba550332d9bbc8a2fc28ec0548f21` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/instance--d886e86f59ee3ea5ed593c8e.md) | 111 | `declaration-track:d886e86f59ee3ea5ed593c8ef20903e1861995c3199d94adafe2e14ac054ddbd` |
| 12 | `theorem` | [norm_star_mul_self](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/norm-star-mul-self--5e7c5db2da41a94534f077da.md) | 118 | `result-track:5e7c5db2da41a94534f077da7decc5461dbc9b20dd1cee40695dec2c4286102b` |
| 13 | `theorem` | [norm_self_mul_star](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/norm-self-mul-star--18304330261556437c295261.md) | 121 | `result-track:18304330261556437c2952619f95f3adeb79fe05d5084ac108ce64443e398fb1` |
| 14 | `theorem` | [norm_star_mul_self'](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/norm-star-mul-self--515ba7aae303482f5d1bf40f.md) | 125 | `result-track:515ba7aae303482f5d1bf40f900463bf3d985843b9c8082488f363996a6ae840` |
| 15 | `theorem` | [nnnorm_self_mul_star](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/nnnorm-self-mul-star--976b02c15da5471468588b31.md) | 127 | `result-track:976b02c15da5471468588b31439ca23c2d599a3f0957ed59d8756029f770d9ce` |
| 16 | `theorem` | [nnnorm_star_mul_self](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/nnnorm-star-mul-self--d2558c930cacefe9f2ef85a3.md) | 130 | `result-track:d2558c930cacefe9f2ef85a339cbacd8d17c19bc256aca3c292930a9028feecb` |
| 17 | `theorem` | [star_mul_self_eq_zero_iff](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/star-mul-self-eq-zero-iff--c2346521a5ab83817382119e.md) | 134 | `result-track:c2346521a5ab83817382119e13eb7c72af5b74fb9ec740309425f4fc705577b5` |
| 18 | `theorem` | [star_mul_self_ne_zero_iff](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/star-mul-self-ne-zero-iff--bb9e62635a44f30f5cf2ad11.md) | 138 | `result-track:bb9e62635a44f30f5cf2ad11f13a735be6188f6f710f1221f35b5f9b34af267e` |
| 19 | `theorem` | [mul_star_self_eq_zero_iff](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/mul-star-self-eq-zero-iff--51c2e538d7ca2b89ddc25e0e.md) | 142 | `result-track:51c2e538d7ca2b89ddc25e0e2e986e5cb3fef1ae7181612004eec7bae6a9030c` |
| 20 | `theorem` | [mul_star_self_ne_zero_iff](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/mul-star-self-ne-zero-iff--5e066e3c1c8d2d942e6ba703.md) | 145 | `result-track:5e066e3c1c8d2d942e6ba703e26f4a4c94fffea666f2bd7eefc2cb98fea878d3` |
| 21 | `instance` | [_root_.GRWTSK.Analysis.NormedStarGroup.Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.Pi.starRing'](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/root-grwtsk-analysis-normedstargroup-variantbf4c4ca2f045cf3cf100f85042ef--1dfdb1bf6c728adaa0c86031.md) | 159 | `declaration-track:1dfdb1bf6c728adaa0c86031ece12c45def87d7be3d9aa0ed70ecb7e76405ce8` |
| 22 | `instance` | [_root_.GRWTSK.Analysis.NormedStarGroup.Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.Prod.cstarRing](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/root-grwtsk-analysis-normedstargroup-variantbf4c4ca2f045cf3cf100f85042ef--9db02065c49ce88592c87671.md) | 164 | `declaration-track:9db02065c49ce88592c87671be6973fbb098a4020677514c117881e27de97ce1` |
| 23 | `instance` | [_root_.GRWTSK.Analysis.NormedStarGroup.Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.Pi.cstarRing](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/root-grwtsk-analysis-normedstargroup-variantbf4c4ca2f045cf3cf100f85042ef--01847cbb11aebfad93006a58.md) | 171 | `declaration-track:01847cbb11aebfad93006a58d8e0c8fa1fe75d0f5cd31b00f588723ceb9f648e` |
| 24 | `instance` | [_root_.GRWTSK.Analysis.NormedStarGroup.Variantbf4c4ca2f045cf3cf100f85042efe938549de31e5b6e17bc5005849f0aaf83a5.Pi.cstarRing'](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/root-grwtsk-analysis-normedstargroup-variantbf4c4ca2f045cf3cf100f85042ef--e66ee112f1e316455e168c32.md) | 180 | `declaration-track:e66ee112f1e316455e168c327b7b1e5c7179386a8507cb790ae73ba7694a2699` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/instance--9e49d78b93ab4da4705e0667.md) | 187 | `declaration-track:9e49d78b93ab4da4705e0667a042f5ef97b47f487847678437b1fa92cddd962c` |
| 26 | `theorem` | [norm_one](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/norm-one--65e5c30c0e99ad6613971156.md) | 197 | `result-track:65e5c30c0e99ad6613971156b4927d811c15c973ad10ef404e8148a845d1f767` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/instance--c4ad72973b0e71ae32b7254c.md) | 202 | `declaration-track:c4ad72973b0e71ae32b7254ce1dc0cc126815b8eca2f055cf6ba68917bbfb334` |
| 28 | `theorem` | [norm_coe_unitary](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/norm-coe-unitary--d746901f6af668520eb15ab3.md) | 205 | `result-track:d746901f6af668520eb15ab320c9d014da4a29797e8bc7b5958739645d341403` |
| 29 | `theorem` | [norm_of_mem_unitary](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/norm-of-mem-unitary--1ea37422960f0d039a55a186.md) | 210 | `result-track:1ea37422960f0d039a55a1869e3ac90513ae09cbc2d5ad13ecef86a557c0cb19` |
| 30 | `theorem` | [norm_coe_unitary_mul](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/norm-coe-unitary-mul--0f63c2725756d0f698532a07.md) | 214 | `result-track:0f63c2725756d0f698532a07641c5c01daa9bda000c6ca20a2e296a831981768` |
| 31 | `theorem` | [norm_unitary_smul](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/norm-unitary-smul--9c4fcf922b64ca46cfb6394c.md) | 228 | `result-track:9c4fcf922b64ca46cfb6394c6f5c065bbb88c31f7e8aa941fa21d78a8b5cc0ea` |
| 32 | `theorem` | [norm_mem_unitary_mul](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/norm-mem-unitary-mul--fe931107b5f881844e745db4.md) | 231 | `result-track:fe931107b5f881844e745db46ddcc8ab6e34bca939fb6b3c1d02d3f267cf651e` |
| 33 | `theorem` | [norm_mul_coe_unitary](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/norm-mul-coe-unitary--ef5990e7467238deeaf20707.md) | 235 | `result-track:ef5990e7467238deeaf2070771d122d831cbb86174f605d70f6f7dbd70aa8910` |
| 34 | `theorem` | [norm_mul_mem_unitary](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/norm-mul-mem-unitary--d186a42c1ec210ceaa137f6b.md) | 242 | `result-track:d186a42c1ec210ceaa137f6b7de789fb41a08ce99e870982578c3416b7d1879f` |
| 35 | `theorem` | [IsSelfAdjoint.nnnorm_pow_two_pow](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/isselfadjoint-nnnorm-pow-two-pow--42e3a72bfa33cd732aa61283.md) | 249 | `result-track:42e3a72bfa33cd732aa6128302e0b3bbc4be2528d28d782d7c8cf6a234c65bcc` |
| 36 | `theorem` | [selfAdjoint.nnnorm_pow_two_pow](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/selfadjoint-nnnorm-pow-two-pow--62664962b1cb2c5c58c26231.md) | 257 | `result-track:62664962b1cb2c5c58c26231fea7a7d8382fde8d17908f82e9e5a7aed2a7a318` |
| 37 | `def` | [starₗᵢ](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/star--5a3ee014575e5d4194e9eaf4.md) | 269 | `declaration-track:5a3ee014575e5d4194e9eaf4d6ae3ac90a97cb800bc5d0f80f3353d9f9f78277` |
| 38 | `theorem` | [coe_starₗᵢ](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/coe-star--ded547f446980783a1738934.md) | 275 | `result-track:ded547f446980783a1738934a462c91e57c34ec90a889e071704a6505ec79638` |
| 39 | `theorem` | [starₗᵢ_apply](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/star-apply--b1a5dbc2ead3c465bbc10416.md) | 278 | `result-track:b1a5dbc2ead3c465bbc10416800c87a1ccea9cf147c1228e6afcf44dc348ed5f` |
| 40 | `theorem` | [starₗᵢ_toContinuousLinearEquiv](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/star-tocontinuouslinearequiv--5881083bde46adde30607d76.md) | 282 | `result-track:5881083bde46adde30607d76d7a9458ddb60086d4c40638e3f7a10319d290176` |
| 41 | `instance` | [toNormedAlgebra](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/tonormedalgebra--ae32eeac966931c9e9cc4a71.md) | 290 | `declaration-track:ae32eeac966931c9e9cc4a71ca14fe7741f83b97f96fa783a9d7f6e4a911284a` |
| 42 | `instance` | [to_cstarRing](../../../../mathematics/Analysis/Basic/Variant15d5ab4ea4403b3376c3c413315b73219a32722da3db58feef411dadc2352384.lean/declarations/to-cstarring--c7805321c84258789a8c6e41.md) | 294 | `declaration-track:c7805321c84258789a8c6e4133fb0eaa17511c8dce8882327d1e3552d7549f64` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
