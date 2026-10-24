# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.BrunTitchmarsh.Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a09a10fcf49da99210c3489b775fc36a274b40a",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a09a10fcf49da99210c3489b775fc36a274b40a`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Floor.Semifield` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Base` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Primorial` — import line 16; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Mathlib.Analysis.Asymptotics.Asymptotics` — import line 17; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Mathlib.NumberTheory.Sieve.Selberg` — import line 18; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Mathlib.NumberTheory.Sieve.SelbergBounds` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeInterSieve](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/primeintersieve--2740cd3f1575860426fb5fec.md) | 32 | `declaration-track:2740cd3f1575860426fb5fecb749012baba61d876e6a38b9106ed17c854d0abf` |
| 2 | `def` | [primesBetween](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/primesbetween--4b48334c67a1def28ff32a99.md) | 53 | `declaration-track:4b48334c67a1def28ff32a99414151cf3918920d7b4dd52ba9260e51504c3ad3` |
| 3 | `theorem` | [siftedSum_eq_card](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/siftedsum-eq-card--4746f5cc82d000873eae144c.md) | 59 | `result-track:4746f5cc82d000873eae144c11fe58b522c4fa082f7171fedd4f2050ef0cbd86` |
| 4 | `theorem` | [primesBetween_subset](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/primesbetween-subset--7cca49ceacf3a14dfcd9387f.md) | 69 | `result-track:7cca49ceacf3a14dfcd9387f678221090182725b7caf0c253265d292e3bdbb48` |
| 5 | `theorem` | [primesBetween_le_siftedSum_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/primesbetween-le-siftedsum-add--412ba31b5f13e33147c5191c.md) | 87 | `result-track:412ba31b5f13e33147c5191c4b07fd90820964a689240ad6725141bd3b3c5221` |
| 6 | `theorem` | [Ioc_filter_dvd_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/ioc-filter-dvd-eq--dadb904e3e324e99e8fb17ee.md) | 109 | `result-track:dadb904e3e324e99e8fb17eef158e3521718461f208aa7f1f8b8d327aaef123f` |
| 7 | `theorem` | [card_Ioc_filter_dvd](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/card-ioc-filter-dvd--6ea4bdd4dedd17c659be1b9c.md) | 123 | `result-track:6ea4bdd4dedd17c659be1b9c7bac363a2bda08f533b8189d7994923debad50d6` |
| 8 | `theorem` | [multSum_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/multsum-eq--4df418f9ec23280411c63289.md) | 130 | `result-track:4df418f9ec23280411c632890344f54cf1fabff95f331f30b4775d9e6050dd55` |
| 9 | `theorem` | [rem_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/rem-eq--0dee3df797788af9dd0cdccd.md) | 141 | `result-track:0dee3df797788af9dd0cdccd6303fa68f558a19c760bd7cb9282992804feffd7` |
| 10 | `theorem` | [Nat.ceil_le_self_add_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/nat-ceil-le-self-add-one--914708e9b0766cb79f58c8f8.md) | 148 | `result-track:914708e9b0766cb79f58c8f8ffcd9a795356347b401c00d004b5ac8db03ffd30` |
| 11 | `theorem` | [floor_approx](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/floor-approx--43d86b04587d249df5ce676c.md) | 154 | `result-track:43d86b04587d249df5ce676c64b60506e924c38d3eebfe110834107a43179b99` |
| 12 | `theorem` | [ceil_approx](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/ceil-approx--2af40d268d6eff396a5a60fa.md) | 161 | `result-track:2af40d268d6eff396a5a60faf53b00ce3897c75290253779d6ab926894724991` |
| 13 | `theorem` | [nat_div_approx](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/nat-div-approx--9532c84dc622b2348aca503e.md) | 168 | `result-track:9532c84dc622b2348aca503e591fef0261b3ce1e383ce1f675a777a0b77ead14` |
| 14 | `theorem` | [floor_div_approx](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/floor-div-approx--807a4cefbd477057a7918a51.md) | 172 | `result-track:807a4cefbd477057a7918a516b9e515060a65f7a346b721b0cb436b8bc3864b1` |
| 15 | `theorem` | [abs_rem_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/abs-rem-le--083c4c8c2425aef7e9e2d905.md) | 189 | `result-track:083c4c8c2425aef7e9e2d905e3dae07c1af0a5efafdb1a7c9403c9dbf1f8ae04` |
| 16 | `theorem` | [boudingSum_ge](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/boudingsum-ge--3a1278787efa5efe7dcaaf57.md) | 225 | `result-track:3a1278787efa5efe7dcaaf5771824734e5cbe31a66cbfce795e8d7dfc0ff13d7` |
| 17 | `theorem` | [primeSieve_rem_sum_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/primesieve-rem-sum-le--0e60a0b0f654342be6c36a92.md) | 234 | `result-track:0e60a0b0f654342be6c36a92eb3e878994e20b05ed071cdcec32431b4acc2add` |
| 18 | `theorem` | [siftedSum_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/siftedsum-le--cc7c21b84965459b8b384d2f.md) | 243 | `result-track:cc7c21b84965459b8b384d2fdd52f320be66db04a9f0ac724b038a9b5a4594af` |
| 19 | `theorem` | [primesBetween_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/primesbetween-le--4b5adb6dc47b4f502adc807f.md) | 256 | `result-track:4b5adb6dc47b4f502adc807f8715676e1c91f0316eea7527a84340efc253a25b` |
| 20 | `theorem` | [primesBetween_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/primesbetween-one--7b6ae966fbd539dbe5b5394e.md) | 265 | `result-track:7b6ae966fbd539dbe5b5394e68cc6ce7f4c278335fe32db4dcb2ec02b147e38b` |
| 21 | `theorem` | [primesBetween_mono_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/primesbetween-mono-right--7045555a61ddb0d580ea45a6.md) | 275 | `result-track:7045555a61ddb0d580ea45a64952a672a5d34c44522cff9f31c38d6da6d68f87` |
| 22 | `theorem` | [tmp](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/tmp--c7b14bc299c581a9803be32c.md) | 282 | `result-track:c7b14bc299c581a9803be32cc448846a98d5b432dfe9ad7e5cb1eacef021e862` |
| 23 | `theorem` | [rpow_mul_rpow_log_isBigO_id_div_log](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/rpow-mul-rpow-log-isbigo-id-div-log--1393b277932eb63cc3e88818.md) | 312 | `result-track:1393b277932eb63cc3e888185fb1657b5b935f3231fc9690ba4cd0380056bc98` |
| 24 | `theorem` | [err_isBigO](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/err-isbigo--37260322d23bd95c5309d16e.md) | 336 | `result-track:37260322d23bd95c5309d16e635fadfad594eb9e2ee563da97aecedd5f813e75` |
| 25 | `theorem` | [card_range_filter_prime_isBigO](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/card-range-filter-prime-isbigo--e7433beb8342b0926e16a178.md) | 347 | `result-track:e7433beb8342b0926e16a178414605e473ec761bff056e0a373107b95472ccfe` |
| 26 | `theorem` | [prime_or_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/prime-or-pow--7b2672eae98d6504efb06bbc.md) | 362 | `result-track:7b2672eae98d6504efb06bbc4a8daef0bde8f5bcef94ddce38e4a56db6296c31` |
| 27 | `theorem` | [range_filter_isPrimePow_subset_union](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/range-filter-isprimepow-subset-union--4c9a550a0910bbf3d4b1543e.md) | 385 | `result-track:4c9a550a0910bbf3d4b1543e3bed447b09ad4dd9c27e86cd21687baf5a032b81` |
| 28 | `theorem` | [IsBigO.nat_Top_of_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/isbigo-nat-top-of-attop--5d78c88fcdee500b4770d9ce.md) | 408 | `result-track:5d78c88fcdee500b4770d9ceb2c084a9912e52ae903db90824919d5e793388cb` |
| 29 | `theorem` | [pows_small_primes_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/pows-small-primes-le--f6793bce52968bf734c7ee1c.md) | 432 | `result-track:f6793bce52968bf734c7ee1cee1c857ccc87b97999fc824d4ea6a6fcb69416b8` |
| 30 | `theorem` | [one_add_log_div_log_two_isBigO](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/one-add-log-div-log-two-isbigo--24db133dd8c79a90f9ff1562.md) | 458 | `result-track:24db133dd8c79a90f9ff15627abdbbfd318451a142c7abd34eeddb7611b47fd2` |
| 31 | `theorem` | [pow_half_mul_one_add_log_div_isBigO](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/pow-half-mul-one-add-log-div-isbigo--d8964267cfbe8f2efdf39a83.md) | 465 | `result-track:d8964267cfbe8f2efdf39a836852ea9027e19fc8fa2fb1a586d86ac31cb421a5` |
| 32 | `theorem` | [card_pows_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/card-pows-aux--5e50f732685cd8a1f1313f27.md) | 477 | `result-track:5e50f732685cd8a1f1313f279493fdaedd37480d68aec7bd28783dba1b1b0bae` |
| 33 | `theorem` | [card_isPrimePow_isBigO](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/card-isprimepow-isbigo--5d112e46009b83aee633aee1.md) | 494 | `result-track:5d112e46009b83aee633aee11983cd22561bbb36be70c07c5e75378b26bef5e8` |
| 34 | `theorem` | [card_range_filter_isPrimePow_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/declarations/card-range-filter-isprimepow-le--9877d1b92394a4470462b766.md) | 515 | `result-track:9877d1b92394a4470462b766ef8df4936771dd02cb8739f63cf99f087b124ba8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
