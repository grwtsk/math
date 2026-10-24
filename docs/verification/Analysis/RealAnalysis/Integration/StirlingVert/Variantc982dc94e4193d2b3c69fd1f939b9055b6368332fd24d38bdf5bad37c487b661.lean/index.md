# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.StirlingVert.Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21a325dbb2d6adf4ffe058ef03674bd9c1b03cc5",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21a325dbb2d6adf4ffe058ef03674bd9c1b03cc5`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.GammaFacts.Mu` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [intervalIntegral_mul_const_C](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/intervalintegral-mul-const-c--437fcddb0a752d49c2c126e9.md) | 32 | `result-track:437fcddb0a752d49c2c126e960abd5015573cec1fbadf71ad9137b31af14349c` |
| 2 | `theorem` | [intervalIntegral_const_mul_C](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/intervalintegral-const-mul-c--eeb4d78ce85298a6abff37bd.md) | 36 | `result-track:eeb4d78ce85298a6abff37bd1f7ced23f306ca0acdfc3e733999b2d3ba283f0d` |
| 3 | `theorem` | [abs_im_le_norm_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/abs-im-le-norm-add--3f864f70105c11cc19c51a3f.md) | 43 | `result-track:3f864f70105c11cc19c51a3fa01e3b701a6e7fa8d3afee4139842aa52471c0f9` |
| 4 | `theorem` | [re_add_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/re-add-pos--a8f3ed03f9ee415942d51ade.md) | 47 | `result-track:a8f3ed03f9ee415942d51ade0d490a9e6597ce8a89e08ad8a64f880ee7e8a667` |
| 5 | `theorem` | [add_mem_slitPlane](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/add-mem-slitplane--986c2a2d66fa067042b0a311.md) | 50 | `result-track:986c2a2d66fa067042b0a3110d4ba77da77e4c34a9ede924536d974bfab4c142` |
| 6 | `theorem` | [add_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/add-ne-zero--e79d33fc6aec40c67da2210a.md) | 54 | `result-track:e79d33fc6aec40c67da2210a257c3d4f0c10f99d424f12a33a8f2074c72fc2a8` |
| 7 | `theorem` | [hasDerivAt_log_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/hasderivat-log-add--cc4b795bd34fd0a394ce8607.md) | 59 | `result-track:cc4b795bd34fd0a394ce8607676066767eeccb5fdba708513084fe6c44c73ca7` |
| 8 | `theorem` | [integral_inv_add_eq_log_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/integral-inv-add-eq-log-sub--33779fffbd55f14aa592af33.md) | 68 | `result-track:33779fffbd55f14aa592af33a24d675bd942e1bc229ffc0f25a3d6b653f7d472` |
| 9 | `theorem` | [inv_add_expand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/inv-add-expand--8abec410060bd1aed84576bb.md) | 85 | `result-track:8abec410060bd1aed84576bba01229173aa386a19e6bc0a244d4e33b51cc63b3` |
| 10 | `def` | [eps](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/eps--bed1c109822e6eb0bc0d0e18.md) | 94 | `declaration-track:bed1c109822e6eb0bc0d0e180843fd2fd928ac6c3d810b64e533e610f05bebea` |
| 11 | `theorem` | [integral_inv_add_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/integral-inv-add-eq--3bef12189037a6e97dd80bd8.md) | 98 | `result-track:3bef12189037a6e97dd80bd815e5c89a19f4a6f706d4062c40eaf94aecb6ccd8` |
| 12 | `theorem` | [norm_eps_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/norm-eps-le--bb17b513dafdff28cd53aa49.md) | 136 | `result-track:bb17b513dafdff28cd53aa491084e50f1f7734027165c16e489d713abd192902` |
| 13 | `theorem` | [natp1_re_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/natp1-re-pos--66e0f9623a67d98cc325620f.md) | 172 | `result-track:66e0f9623a67d98cc325620fa8e0c2a51bf1f8596bce0b009bad331a027efd53` |
| 14 | `theorem` | [natp1_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/natp1-ne-zero--b92a103614a1a198745ca0e7.md) | 175 | `result-track:b92a103614a1a198745ca0e7b1ec99f4a3dce2d39efddc7fe9adaed68c4a25bb` |
| 15 | `theorem` | [abs_im_le_norm_natp1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/abs-im-le-norm-natp1--a3ca16c47769b8a7e1dc488c.md) | 178 | `result-track:a3ca16c47769b8a7e1dc488c2671e17b058c0ec78152d40d3852149c0aca19d9` |
| 16 | `theorem` | [natp1_le_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/natp1-le-norm--7beb4ea7dddf40450f12761e.md) | 181 | `result-track:7beb4ea7dddf40450f12761edd6529ac702c88b7cff7e1fa171491899155585c` |
| 17 | `theorem` | [natp1_cast](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/natp1-cast--2c1aec1a067e387c3ad39351.md) | 186 | `result-track:2c1aec1a067e387c3ad3935128bd25870591ede92110af2ac2a6ec60ea138205` |
| 18 | `theorem` | [inv_natp1_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/inv-natp1-eq--248154ac34803c3ba7fdf132.md) | 190 | `result-track:248154ac34803c3ba7fdf1322ddb442be19d0e062f155829dbf32167e198b22e` |
| 19 | `def` | [rho](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/rho--47fa6920fb827602f1279144.md) | 204 | `declaration-track:47fa6920fb827602f127914438894fca379f1980ab1fe8058030fe06eb2e9720` |
| 20 | `theorem` | [inv_natp1_sq_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/inv-natp1-sq-eq--b8d5d441dab5917e115f956e.md) | 207 | `result-track:b8d5d441dab5917e115f956e75bd3e1667464a38305dbefac2b00a67f760d1de` |
| 21 | `theorem` | [norm_rho_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/norm-rho-le--ad9f64e629326726a7e67096.md) | 218 | `result-track:ad9f64e629326726a7e67096f914c8c22aacc6b9ddb44fff3f8db1f7bf740b05` |
| 22 | `theorem` | [norm_eps_natp1_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/norm-eps-natp1-le--8e27be8b59df29acfa21d817.md) | 229 | `result-track:8e27be8b59df29acfa21d81743a28030006aec9d64f0317786fd8cce35f81360` |
| 23 | `theorem` | [partial_sum_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/partial-sum-eq--b68135cb3b3af5666436a135.md) | 236 | `result-track:b68135cb3b3af5666436a135f300ea6a93415ab62b4733ad0f6819eead4ccb5f` |
| 24 | `theorem` | [norm_sq_natp1_ge](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/norm-sq-natp1-ge--96a31bd6e5e5422b79d05281.md) | 261 | `result-track:96a31bd6e5e5422b79d05281c08a86eddfc9d0e964f17c63c881cce25046f634` |
| 25 | `theorem` | [inv_norm_sq_le_telescope](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/inv-norm-sq-le-telescope--6034d698567e5bb0bc10ce80.md) | 269 | `result-track:6034d698567e5bb0bc10ce801637ecbe20e94826872c334b11b87b1916ab7a30` |
| 26 | `theorem` | [sum_inv_norm_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/sum-inv-norm-sq-le--f9a8c8553bb0dd86e69be728.md) | 285 | `result-track:f9a8c8553bb0dd86e69be728faf9e42a632b31f4be1611d20f9cb25c9fa1c99e` |
| 27 | `theorem` | [summable_inv_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/summable-inv-norm-sq--5286f085ae23627988e78646.md) | 304 | `result-track:5286f085ae23627988e786461aafbd0f624e76d9f16fc25bdea6b4aa012889ba` |
| 28 | `theorem` | [summable_rho](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/summable-rho--ababbfc7942f39101d1e9208.md) | 313 | `result-track:ababbfc7942f39101d1e92082dcf5d4221805d51de9dd757f3b9be8d1d0e66a7` |
| 29 | `theorem` | [summable_eps](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/summable-eps--c147bca74c2a9b88c81248d3.md) | 318 | `result-track:c147bca74c2a9b88c81248d361afe217498a48903f8c7ac24ee922558a010494` |
| 30 | `theorem` | [summable_norm_rho](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/summable-norm-rho--effea54bb69e7ffe8a14f546.md) | 325 | `result-track:effea54bb69e7ffe8a14f5464a09fa53f8a07ce9b454e525bb9bbc61217f0994` |
| 31 | `theorem` | [summable_norm_eps](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/summable-norm-eps--bca4e3fca4dc3c14cbbfc445.md) | 331 | `result-track:bca4e3fca4dc3c14cbbfc445265db7beffb4eb609f595d5f6c4d2830ec133f44` |
| 32 | `theorem` | [tsum_inv_norm_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/tsum-inv-norm-sq-le--3f93c0e54bc3162f36691f09.md) | 338 | `result-track:3f93c0e54bc3162f36691f09d6e113631e91e37a0e945d62dff88fb61f7dd5ae` |
| 33 | `theorem` | [norm_tsum_rho_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/norm-tsum-rho-le--94ec4f4ab296a1d03e5b4d72.md) | 342 | `result-track:94ec4f4ab296a1d03e5b4d723b375b06ba4c1382f1ae53b1370d46cd960ac204` |
| 34 | `theorem` | [norm_tsum_eps_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/norm-tsum-eps-le--0b77e3c60e6205afe08d963b.md) | 356 | `result-track:0b77e3c60e6205afe08d963b1ed60bca4e76866991e9644f72edf291786c6b49` |
| 35 | `theorem` | [tendsto_harmonic_sub_clog](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/tendsto-harmonic-sub-clog--e4bdec3b0d242f3948959aac.md) | 374 | `result-track:e4bdec3b0d242f3948959aac8f3982a7199e48f61c1f57044c25cedb94ee05d3` |
| 36 | `theorem` | [tendsto_inv_natp1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/tendsto-inv-natp1--9c6d86e6e993730c04ea01b2.md) | 417 | `result-track:9c6d86e6e993730c04ea01b2c6dc960b3aec9474c291c155951e3f01b9568cf7` |
| 37 | `theorem` | [digamma_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/digamma-eq--7e93133994320e2dd79d1dd2.md) | 431 | `result-track:7e93133994320e2dd79d1dd26d9300110e838aab66622838fc650cc481c44aa4` |
| 38 | `theorem` | [log_one_add_sub_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/log-one-add-sub-log--983fef3f06a5298268b356b8.md) | 463 | `result-track:983fef3f06a5298268b356b811b1081043b7e24a414e269d9d3f5b6faf8db4e6` |
| 39 | `theorem` | [norm_eps_zero_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/norm-eps-zero-le--3ebde1e4005e7370e1971c3a.md) | 470 | `result-track:3ebde1e4005e7370e1971c3a864ab949117629ea1145ad81d6420f1c82fbe20a` |
| 40 | `theorem` | [digamma_stirling](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/digamma-stirling--da2695ea80ba1120cb46b896.md) | 483 | `result-track:da2695ea80ba1120cb46b896a0cba688a198b2317d0f9c7711e494b15bce99d3` |
| 41 | `theorem` | [re_digamma_stirling](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/re-digamma-stirling--c243ae13cb5a25fd438b384d.md) | 550 | `result-track:c243ae13cb5a25fd438b384d8efa808234cfdf98cd26ea938b7336ed0d4af9b1` |
| 42 | `theorem` | [re_digamma_stirling'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/re-digamma-stirling--09a32798826fa623527076c7.md) | 588 | `result-track:09a32798826fa623527076c7a886296cdba5c232841c2b88680e957f994f304f` |
| 43 | `theorem` | [mu_stirling](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/declarations/mu-stirling--748a309149ad87372645714d.md) | 616 | `result-track:748a309149ad87372645714def402ceefe9b71d22d77170dea628466085c7671` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
