# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LpNorm.Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54c2683f0b3e0613206faa219f2b20000dce3f60",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54c2683f0b3e0613206faa219f2b20000dce3f60`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.RCLike.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Finset` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [toReal_eLpNorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/toreal-elpnorm--919d67c8f4552564ac5591cb.md) | 37 | `result-track:919d67c8f4552564ac5591cb81866c37d84e222b41a52ae4f8884ec48d45f29d` |
| 2 | `lemma` | [ofReal_lpNorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/ofreal-lpnorm--86e412997fd56b659d2576af.md) | 39 | `result-track:86e412997fd56b659d2576af91f3836cd48452b15bdc7bb5e22e0e575cc8c5fe` |
| 3 | `lemma` | [lpNorm_of_not_aestronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-of-not-aestronglymeasurable--7e1e0b1c143e1e88a514ef93.md) | 43 | `result-track:7e1e0b1c143e1e88a514ef934ef3975493709017fec6a2c64774a933b7463467` |
| 4 | `lemma` | [lpNorm_of_not_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-of-not-memlp--fc03dac23a559b653d053407.md) | 47 | `result-track:fc03dac23a559b653d05340780d47cc8a6f3b9fb8570b1c7a371c89430ca451d` |
| 5 | `lemma` | [lpNorm_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-nonneg--6718eb021455326f750763e8.md) | 49 | `result-track:6718eb021455326f750763e863101eee94dc43f915f8a75676b0e93c6086a23b` |
| 6 | `lemma` | [lpNorm_eq_integral_norm_rpow_toReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-eq-integral-norm-rpow-toreal--c1719c87297101bf6ec711db.md) | 51 | `result-track:c1719c87297101bf6ec711db44e382a8a7984028badccb03cb2453a2d08a5949` |
| 7 | `lemma` | [lpNorm_nnreal_eq_integral_norm_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-nnreal-eq-integral-norm-rpow--1515d6295f16381bf871cfa8.md) | 62 | `result-track:1515d6295f16381bf871cfa84c823a9d45eedd66d9911f963f8d1b2d07c8a5c0` |
| 8 | `lemma` | [lpNorm_one_eq_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-one-eq-integral-norm--da370a839b997828a6ec1014.md) | 66 | `result-track:da370a839b997828a6ec101425284b262701360540797c5b897003c0342279da` |
| 9 | `lemma` | [lpNorm_exponent_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-exponent-zero--5d7e5e5bbb079833caad65dd.md) | 70 | `result-track:5d7e5e5bbb079833caad65dd700ea562a24687ae8a2a2eac6ec97a1a5b596f24` |
| 10 | `lemma` | [lpNorm_measure_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-measure-zero--d4f0b2be899a3ca319548b46.md) | 75 | `result-track:d4f0b2be899a3ca319548b4647bb0910f3df4a6faef26c5eed89159e14b773db` |
| 11 | `lemma` | [ae_le_lpNorm_exponent_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/ae-le-lpnorm-exponent-top--b4b95eee26ece77be009dddb.md) | 77 | `result-track:b4b95eee26ece77be009dddb4e7f5def337889f327894344c621762fd3e9d07d` |
| 12 | `lemma` | [lpNorm_exponent_top_eq_essSup](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-exponent-top-eq-esssup--850633c1c5f056348c9ceef6.md) | 85 | `result-track:850633c1c5f056348c9ceef62d9b4f1fd9843c5ffc3bce36e7d9c524820fcfac` |
| 13 | `lemma` | [lpNorm_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-zero--f051616154a7fc4eba2266e0.md) | 92 | `result-track:f051616154a7fc4eba2266e00af79090fe25a6c0f0a58aacb91b251a3459de81` |
| 14 | `lemma` | [lpNorm_fun_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-fun-zero--badc7c725268e5f200ae0fdf.md) | 95 | `result-track:badc7c725268e5f200ae0fdf89ddec6c2b52d4d50436d2a225f48dffb6e9c7f5` |
| 15 | `lemma` | [lpNorm_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-eq-zero--98e1397fc822d7031993c518.md) | 99 | `result-track:98e1397fc822d7031993c5189645d68dc36127c8d25a121c905fd3c565807fc1` |
| 16 | `lemma` | [lpNorm_of_isEmpty](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-of-isempty--4a52c8fd56e1ed047bb4342c.md) | 103 | `result-track:4a52c8fd56e1ed047bb4342cdcc475fe35ed066565452d330a7e9dbcc00b4688` |
| 17 | `lemma` | [lpNorm_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-neg--d8a4c183e54b5724c3b0915e.md) | 106 | `result-track:d8a4c183e54b5724c3b0915eec66c23568ee2d0daa1b0eee434d0a6b80bf644a` |
| 18 | `lemma` | [lpNorm_sub_comm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-sub-comm--ea78b5d5d05040b7c4074d8e.md) | 110 | `result-track:ea78b5d5d05040b7c4074d8ee80c51db8d0089e7152742558eba5b0a8d79f922` |
| 19 | `lemma` | [lpNorm_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-norm--1c8939193077a1a13eb383e5.md) | 113 | `result-track:1c8939193077a1a13eb383e54218068f7af4b5f6a0bdb456fb5473f8fe884742` |
| 20 | `lemma` | [lpNorm_abs](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-abs--7614f2ed16b8dcf1ccadf783.md) | 118 | `result-track:7614f2ed16b8dcf1ccadf78368e14e1b997b09b67603f89f02e6d4f6e64579cd` |
| 21 | `lemma` | [lpNorm_fun_abs](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-fun-abs--c1728d81036ace8cb836bd66.md) | 121 | `result-track:c1728d81036ace8cb836bd66ca3d48b5f4037e31121743b10106526985e53eff` |
| 22 | `lemma` | [lpNorm_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-const--514d77806e7455796002fdfc.md) | 124 | `result-track:514d77806e7455796002fdfc288e33b39fb82659e4fb03e63f68c1e351b98872` |
| 23 | `lemma` | [lpNorm_const'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-const--7824e905da251b0d0e1d5f0f.md) | 128 | `result-track:7824e905da251b0d0e1d5f0f10c96020b9173336d054f03eae49d386b141ddad` |
| 24 | `lemma` | [lpNorm_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-one--043c2d53d9dd717b1b62ade7.md) | 135 | `result-track:043c2d53d9dd717b1b62ade7ffa0e0bcd073cfe4e668a3b6798273f80972bfc1` |
| 25 | `lemma` | [lpNorm_one'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-one--5deb560a08e0798d5a850d02.md) | 139 | `result-track:5deb560a08e0798d5a850d02fd1cf931b9895d86a2197dd50e0187b1e2d29c78` |
| 26 | `lemma` | [lpNorm_const_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-const-smul--8fec63a30157a6fe008cf573.md) | 143 | `result-track:8fec63a30157a6fe008cf5738e5bb7aac063064438952f531db97ab083031349` |
| 27 | `lemma` | [lpNorm_nsmul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-nsmul--82b693f62a210e096cbc425a.md) | 147 | `result-track:82b693f62a210e096cbc425aea35a68a2c6f812b3e57f06be6d24d1199357dd3` |
| 28 | `lemma` | [lpNorm_natCast_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-natcast-mul--d4e08ac740dbd5f21cd3ca02.md) | 153 | `result-track:d4e08ac740dbd5f21cd3ca02a1ef99545b749ecee8c6851a99e7187f2b478a86` |
| 29 | `lemma` | [lpNorm_fun_natCast_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-fun-natcast-mul--edd07bfea1d0451d2ce804da.md) | 157 | `result-track:edd07bfea1d0451d2ce804da7d8c5dd895ff21c6bf395b8bd3fec4793db41572` |
| 30 | `lemma` | [lpNorm_mul_natCast](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-mul-natcast--59c235bb7cce8b7a1eadd78f.md) | 160 | `result-track:59c235bb7cce8b7a1eadd78f2f9de96547f9cd80dcab065a0d41c35529683e38` |
| 31 | `lemma` | [lpNorm_fun_mul_natCast](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-fun-mul-natcast--404534f5bd6eea5e5b9035ea.md) | 164 | `result-track:404534f5bd6eea5e5b9035ea3c70d84335c99bdff4e72f07ffea0c20780b62b9` |
| 32 | `lemma` | [lpNorm_div_natCast](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-div-natcast--4835bb46bea75cc2d51e8c04.md) | 167 | `result-track:4835bb46bea75cc2d51e8c04d943a05e678007144f299ad1cb6be636c753c218` |
| 33 | `lemma` | [lpNorm_fun_div_natCast](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-fun-div-natcast--30c3b580caefd82ce95c5e3a.md) | 171 | `result-track:30c3b580caefd82ce95c5e3a45e2ea63038b58b41c4d87fe229dbdf3147b8780` |
| 34 | `lemma` | [lpNorm_add_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-add-le--2ca275d8168656fd93238258.md) | 176 | `result-track:2ca275d8168656fd932382582d7afd11145f2a7fe10cd6cd4dd8f5a476218777` |
| 35 | `lemma` | [lpNorm_add_le'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-add-le--4c400e2fbf0466b87f8c3936.md) | 187 | `result-track:4c400e2fbf0466b87f8c39362b9646d93656c3859e5d6cae2d0c7893ff5b24b9` |
| 36 | `lemma` | [lpNorm_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-sub-le--31bb0929cef11afc09055998.md) | 191 | `result-track:31bb0929cef11afc090559987e5b746137c9add8c4357e585a003973dc49aaf3` |
| 37 | `lemma` | [lpNorm_le_lpNorm_add_lpNorm_sub'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-le-lpnorm-add-lpnorm-sub--6b1257fc321cbeefa398c7fe.md) | 195 | `result-track:6b1257fc321cbeefa398c7fe53678bf7ad944af2397f81ef3e505552e8411b53` |
| 38 | `lemma` | [lpNorm_le_lpNorm_add_lpNorm_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-le-lpnorm-add-lpnorm-sub--554652e8dd4abc2124c2df77.md) | 199 | `result-track:554652e8dd4abc2124c2df7753b15368c664dce014d7476a29f3f7d92a6ed371` |
| 39 | `lemma` | [lpNorm_le_add_lpNorm_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-le-add-lpnorm-add--46bffaad0d06d62be8129da5.md) | 203 | `result-track:46bffaad0d06d62be8129da50ce0b89301a3c92e8b809ffd1f7d95ac27c5fca3` |
| 40 | `lemma` | [lpNorm_sub_le_lpNorm_sub_add_lpNorm_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-sub-le-lpnorm-sub-add-lpnorm-sub--12894b3e06f434bab6186289.md) | 207 | `result-track:12894b3e06f434bab6186289db972cfcb3e317415ca74e78771f79bf37d6c074` |
| 41 | `lemma` | [lpNorm_sum_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-sum-le--785cf3b10c0d131301d8d5d8.md) | 211 | `result-track:785cf3b10c0d131301d8d5d84dc499a8ee5dbfe3fd3bdaf1b052fba8f17c1389` |
| 42 | `lemma` | [lpNorm_expect_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-expect-le--40f47abf257a8cd4b96c3645.md) | 219 | `result-track:40f47abf257a8cd4b96c36453ce7292a4827e07db2da286ee3956c2b0dcfd02f` |
| 43 | `lemma` | [lpNorm_mono_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-mono-real--d11a8086c98307a03448a154.md) | 228 | `result-track:d11a8086c98307a03448a154193004324b4b71d9f07d73de841ff4ea728b4f00` |
| 44 | `lemma` | [lpNorm_smul_measure_of_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-smul-measure-of-ne-zero--d49c637c8874b5c5c263701b.md) | 235 | `result-track:d49c637c8874b5c5c263701b10edaddf92726eace3309bdd97b0bf858d696345` |
| 45 | `lemma` | [lpNorm_smul_measure_of_ne_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-smul-measure-of-ne-top--5db58cb0b7636afa82176e71.md) | 240 | `result-track:5db58cb0b7636afa82176e7118725cf29a65e0d4248cdc2910af1eef72fe45a5` |
| 46 | `lemma` | [lpNorm_conj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/declarations/lpnorm-conj--a6d346f4958952db24aea584.md) | 254 | `result-track:a6d346f4958952db24aea58493c0f2d955a856e4f49adb60c4a4a09810a4129d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
