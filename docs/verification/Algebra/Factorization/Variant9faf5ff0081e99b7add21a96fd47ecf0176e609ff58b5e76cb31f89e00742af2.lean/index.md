# Verification target: GRWTSK.Algebra.Factorization.Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3a9ee5a542777bca0bb506eaab017f304d0e6a4",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/index.md) · [Full source](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3a9ee5a542777bca0bb506eaab017f304d0e6a4`.

Source path: `GRWTSK/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Cofinite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.Ideal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.Finite` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsDedekindDomain.HeightOneSpectrum.maxPowDividing](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/isdedekinddomain-heightonespectrum-maxpowdividing--72229d1cae58159aa96ec9e7.md) | 71 | `declaration-track:72229d1cae58159aa96ec9e7f62b6df2e6cad5379a325d3837778574919a6cbd` |
| 2 | `theorem` | [Ideal.finite_factors](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/ideal-finite-factors--f111ec9d4cd091151d97455f.md) | 75 | `result-track:f111ec9d4cd091151d97455f3d60ca0d9f84e883c8ab6260081d45315dcb1cf2` |
| 3 | `theorem` | [Associates.finite_factors](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/associates-finite-factors--e39053e8bfb8e14c68bcff0a.md) | 88 | `result-track:e39053e8bfb8e14c68bcff0adb0ece3af63c09ada9ac08a18d3617fd7dcb3c0a` |
| 4 | `theorem` | [finite_mulSupport](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/finite-mulsupport--f45b87c644da3a8328a84340.md) | 104 | `result-track:f45b87c644da3a8328a843405b157263a5930f590f10e3395f14918f248b2a46` |
| 5 | `theorem` | [finite_mulSupport_coe](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/finite-mulsupport-coe--88b4e6ad35fb9e44f83baf03.md) | 119 | `result-track:88b4e6ad35fb9e44f83baf03e1bfa25f83956a6e1356d670bf40d4279d31a3d8` |
| 6 | `theorem` | [finite_mulSupport_inv](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/finite-mulsupport-inv--c5bd337070f66a668b815282.md) | 129 | `result-track:c5bd337070f66a668b815282be40bf82ebc60c79076be2d574ef32b4bc152671` |
| 7 | `theorem` | [finprod_not_dvd](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/finprod-not-dvd--edc205b8788743e72ad0d866.md) | 138 | `result-track:edc205b8788743e72ad0d866269afa4fb143f06c3a2746599c4a7cc843b04b8e` |
| 8 | `theorem` | [Associates.finprod_ne_zero](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/associates-finprod-ne-zero--c44bd00d17b1285247c866d7.md) | 155 | `result-track:c44bd00d17b1285247c866d7a8728db1e409cbab2a51923360f7eb773161dd1d` |
| 9 | `theorem` | [finprod_count](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/finprod-count--2b5d16af9728efe49213df63.md) | 169 | `result-track:2b5d16af9728efe49213df63c6f375e915f9b6af4c06811991428ab2dfcc3b02` |
| 10 | `theorem` | [finprod_heightOneSpectrum_factorization](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/finprod-heightonespectrum-factorization--79dba4a30ce10a056d37de95.md) | 184 | `result-track:79dba4a30ce10a056d37de95935810637f01a7c63fca489465fd97e5eeb03603` |
| 11 | `theorem` | [finprod_heightOneSpectrum_factorization_coe](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/finprod-heightonespectrum-factorization-coe--d6a020f9d20260f1022dedba.md) | 203 | `result-track:d6a020f9d20260f1022dedba970c08af2411f75fd1c79676d54b9d8a080c2706` |
| 12 | `theorem` | [finprod_heightOneSpectrum_factorization](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/finprod-heightonespectrum-factorization--e3688107c1cca12204c5202c.md) | 222 | `result-track:e3688107c1cca12204c5202c6f85e0d5f78ec97146e448ed3ffdbbde9d8d22bd` |
| 13 | `theorem` | [finprod_heightOneSpectrum_factorization_principal_fraction](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/finprod-heightonespectrum-factorization-principal-fraction--69980b34eafebcce3af91993.md) | 243 | `result-track:69980b34eafebcce3af9199306d73b209301a656c0f221f79bd601d9296990b6` |
| 14 | `theorem` | [finprod_heightOneSpectrum_factorization_principal](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/finprod-heightonespectrum-factorization-principal--206f72ff9597d7fb6664d258.md) | 263 | `result-track:206f72ff9597d7fb6664d25885fc6275486213e16b99b5a683b05cf2c23aba29` |
| 15 | `def` | [count](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/count--f4d939c7a094f12dcfe880d5.md) | 284 | `declaration-track:f4d939c7a094f12dcfe880d54a154abdea2b1c9359dddce51ed0d4a26c7ce4aa` |
| 16 | `lemma` | [count_zero](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/count-zero--8ff4b6bd1e0d0ac4fdb32594.md) | 292 | `result-track:8ff4b6bd1e0d0ac4fdb32594d0fa12f70de7e3026a8cc5688dfa46833856c36f` |
| 17 | `lemma` | [count_ne_zero](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/count-ne-zero--faefdd9a5fe52a65ba418cd2.md) | 295 | `result-track:faefdd9a5fe52a65ba418cd23902b043171e731b67009ec4874d442db9258b24` |
| 18 | `theorem` | [count_well_defined](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/count-well-defined--a54acb944ca7e0dbb969f26d.md) | 304 | `result-track:a54acb944ca7e0dbb969f26d1f87d901efb7ee6db538c676e7efac947ca7cf35` |
| 19 | `theorem` | [count_mul](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/count-mul--78de2f0b027c11fd9b3ee948.md) | 339 | `result-track:78de2f0b027c11fd9b3ee9482a106bc436480c38fce1451c80f44b2f20407a8d` |
| 20 | `theorem` | [count_mul'](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/count-mul--1687e07cc620a15803af1d74.md) | 365 | `result-track:1687e07cc620a15803af1d740d09b5c98f8b7b91ffc15d4fe2d9947522ebda05` |
| 21 | `theorem` | [count_one](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/count-one--542b740e907731902bbf9012.md) | 375 | `result-track:542b740e907731902bbf9012c3f48133d7de4090aae3c88f1cfd6db6ccc4b454` |
| 22 | `theorem` | [count_prod](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/count-prod--0c718b0ccecc1efec92ca100.md) | 382 | `result-track:0c718b0ccecc1efec92ca100c8932dcf4e726d14289415e72eea568c0085440c` |
| 23 | `theorem` | [count_pow](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/count-pow--9779d5d2271707a0659b0fbf.md) | 393 | `result-track:9779d5d2271707a0659b0fbf1eb17c737b7936fb198b9a0467454f5cb3a92da5` |
| 24 | `theorem` | [count_self](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/count-self--5fd72e83ba4983d20891d68c.md) | 409 | `result-track:5fd72e83ba4983d20891d68c55bb11c131afce0432ca026c5ee8494025bded26` |
| 25 | `theorem` | [count_pow_self](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/count-pow-self--73e313481424a23cf3c1cf98.md) | 420 | `result-track:73e313481424a23cf3c1cf9863171c126c0b45d62487af7c8e3e567802ba6beb` |
| 26 | `theorem` | [count_neg_zpow](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/count-neg-zpow--9778eee4bf157fc7a6c814dd.md) | 425 | `result-track:9778eee4bf157fc7a6c814dd694f08f44ac4794397f812e08f2f5711ebb7189d` |
| 27 | `theorem` | [count_inv](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/count-inv--fd8fbf7aec5c455400984720.md) | 435 | `result-track:fd8fbf7aec5c4554009847206acb00368e6b4c0d2182c8eaf80391425e1f3e28` |
| 28 | `theorem` | [count_zpow](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/count-zpow--07e6206ca0889b895f67894b.md) | 440 | `result-track:07e6206ca0889b895f67894b65d6cc21c0e6e94c03087f9d95130db2c144ea28` |
| 29 | `theorem` | [count_zpow_self](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/count-zpow-self--34391ee568d2c8601d746a0c.md) | 449 | `result-track:34391ee568d2c8601d746a0cd39f966cb44e8e47d6a33d06b701683dacdf216c` |
| 30 | `theorem` | [count_maximal_coprime](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/count-maximal-coprime--923b98b675615d036aa9f7bc.md) | 454 | `result-track:923b98b675615d036aa9f7bc43c80817a0cde4dbb3f23fda599825feeb5fe122` |
| 31 | `theorem` | [count_maximal](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/count-maximal--7ab39687cdca652927739ef0.md) | 473 | `result-track:7ab39687cdca652927739ef053730d71fd2e05e6d93515e37490b78fd5b82aae` |
| 32 | `theorem` | [count_finprod_coprime](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/count-finprod-coprime--50fc072d4bf715333082f854.md) | 480 | `result-track:50fc072d4bf715333082f85427b9d4b12124c79b0661308b2b178e4201f4a48e` |
| 33 | `theorem` | [count_finsuppProd](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/count-finsuppprod--0c5fed6c5ee4217d37a658d8.md) | 493 | `result-track:0c5fed6c5ee4217d37a658d8ff3aae191233f85e5461cf1d4579fa09247e011b` |
| 34 | `theorem` | [count_finprod](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/count-finprod--c321ee9f4edf91a095c6128e.md) | 503 | `result-track:c321ee9f4edf91a095c6128e3d58f9be61fa194a88117235ce1a407da8889045` |
| 35 | `theorem` | [count_coe](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/count-coe--53ed5f49acc6a38de49951b1.md) | 516 | `result-track:53ed5f49acc6a38de49951b1bef43adc877315374bdb4ab91accc2de591133a7` |
| 36 | `theorem` | [count_coe_nonneg](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/count-coe-nonneg--51c3ac116fb4f261876bbc30.md) | 524 | `result-track:51c3ac116fb4f261876bbc306d0388351bff2c89cfd8e4cdcf1e9452de826682` |
| 37 | `theorem` | [count_mono](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/count-mono--ff86d01636c46172a8a19f6c.md) | 529 | `result-track:ff86d01636c46172a8a19f6c6373f9f947f48c33a4c6ad34105c2456a6df45ea` |
| 38 | `theorem` | [finprod_heightOneSpectrum_factorization'](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/finprod-heightonespectrum-factorization--8c310955d74290f571651cfc.md) | 540 | `result-track:8c310955d74290f571651cfc28631bcd0018640d8531323e0e01180bb9044252` |
| 39 | `theorem` | [finite_factors'](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/finite-factors--57798decfa33502b9ffec115.md) | 553 | `result-track:57798decfa33502b9ffec115a8d451babcbe16e9e0a3e14fc6f7238f9739e8b3` |
| 40 | `theorem` | [finite_factors](../../../../mathematics/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/declarations/finite-factors--66b76311f5734bc35c516899.md) | 579 | `result-track:66b76311f5734bc35c51689912992fe9ba70cab7408ccf171c74ff27f6eaf20b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
