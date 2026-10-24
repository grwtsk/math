# Verification target: GRWTSK.Algebra.LaurentSeries.Variant5fcd70352990afdbdea5a875b87b0fc8b9a623f52f50d1fd707bb49ab499d2ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8cb30845374cc9899fb9a1e3be6845093a5337ed",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LaurentSeries/Variant5fcd70352990afdbdea5a875b87b0fc8b9a623f52f50d1fd707bb49ab499d2ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LaurentSeries/Variant5fcd70352990afdbdea5a875b87b0fc8b9a623f52f50d1fd707bb49ab499d2ab.lean/index.md) · [Full source](../../../../mathematics/Algebra/LaurentSeries/Variant5fcd70352990afdbdea5a875b87b0fc8b9a623f52f50d1fd707bb49ab499d2ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8cb30845374cc9899fb9a1e3be6845093a5337ed`.

Source path: `GRWTSK/Algebra/LaurentSeries/Variant5fcd70352990afdbdea5a875b87b0fc8b9a623f52f50d1fd707bb49ab499d2ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LaurentSeries/Variant5fcd70352990afdbdea5a875b87b0fc8b9a623f52f50d1fd707bb49ab499d2ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.HahnSeries` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LaurentSeries](../../../../mathematics/Algebra/LaurentSeries/Variant5fcd70352990afdbdea5a875b87b0fc8b9a623f52f50d1fd707bb49ab499d2ab.lean/declarations/laurentseries--0c39a6f31d02122f2519c84d.md) | 32 | `declaration-track:0c39a6f31d02122f2519c84d4b01b9289f72dc07ba68ca7b1ccab5034d60ee5d` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LaurentSeries/Variant5fcd70352990afdbdea5a875b87b0fc8b9a623f52f50d1fd707bb49ab499d2ab.lean/declarations/instance--ba236396ca8de9d142507554.md) | 44 | `declaration-track:ba236396ca8de9d142507554cb0fbfa053a4b6190111aa889783386ce15314f4` |
| 3 | `theorem` | [coeff_coe_powerSeries](../../../../mathematics/Algebra/LaurentSeries/Variant5fcd70352990afdbdea5a875b87b0fc8b9a623f52f50d1fd707bb49ab499d2ab.lean/declarations/coeff-coe-powerseries--92a57de9fc81569687926d82.md) | 54 | `result-track:92a57de9fc81569687926d828f58a4edd255b8a223198078c61471870babd4af` |
| 4 | `def` | [powerSeriesPart](../../../../mathematics/Algebra/LaurentSeries/Variant5fcd70352990afdbdea5a875b87b0fc8b9a623f52f50d1fd707bb49ab499d2ab.lean/declarations/powerseriespart--15632dc42bb8ee0359c17647.md) | 62 | `declaration-track:15632dc42bb8ee0359c1764748e78bde5faca74faa90af9f4d5b22b8b279248b` |
| 5 | `theorem` | [powerSeriesPart_coeff](../../../../mathematics/Algebra/LaurentSeries/Variant5fcd70352990afdbdea5a875b87b0fc8b9a623f52f50d1fd707bb49ab499d2ab.lean/declarations/powerseriespart-coeff--adaf48c27c2e2819f5c8d26d.md) | 67 | `result-track:adaf48c27c2e2819f5c8d26da26c7bf4152ad0cd9b01f9e01bb6f3f618d980b0` |
| 6 | `theorem` | [powerSeriesPart_zero](../../../../mathematics/Algebra/LaurentSeries/Variant5fcd70352990afdbdea5a875b87b0fc8b9a623f52f50d1fd707bb49ab499d2ab.lean/declarations/powerseriespart-zero--ce8a109f38bbbc3b000198f5.md) | 73 | `result-track:ce8a109f38bbbc3b000198f5ed6be5c6d63439cb94ca871dbe8bfc47f0d0c2d4` |
| 7 | `theorem` | [powerSeriesPart_eq_zero](../../../../mathematics/Algebra/LaurentSeries/Variant5fcd70352990afdbdea5a875b87b0fc8b9a623f52f50d1fd707bb49ab499d2ab.lean/declarations/powerseriespart-eq-zero--c2d7df2baff4997e020d5caf.md) | 79 | `result-track:c2d7df2baff4997e020d5cafae7f2c779f53a1690bd70cf0c72d6ee38a3d6b0a` |
| 8 | `theorem` | [single_order_mul_powerSeriesPart](../../../../mathematics/Algebra/LaurentSeries/Variant5fcd70352990afdbdea5a875b87b0fc8b9a623f52f50d1fd707bb49ab499d2ab.lean/declarations/single-order-mul-powerseriespart--58f44427d54b798472869f82.md) | 92 | `result-track:58f44427d54b798472869f82e28c88d4dfa014118deada29136a10bce3b77c3a` |
| 9 | `theorem` | [ofPowerSeries_powerSeriesPart](../../../../mathematics/Algebra/LaurentSeries/Variant5fcd70352990afdbdea5a875b87b0fc8b9a623f52f50d1fd707bb49ab499d2ab.lean/declarations/ofpowerseries-powerseriespart--6b29299e796aae29fa2dc995.md) | 110 | `result-track:6b29299e796aae29fa2dc995ef208e3373944e166fedf77f253e58d64803c47c` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LaurentSeries/Variant5fcd70352990afdbdea5a875b87b0fc8b9a623f52f50d1fd707bb49ab499d2ab.lean/declarations/instance--f0ceacf00ff024427209a695.md) | 118 | `declaration-track:f0ceacf00ff024427209a695e5bc1446e91f768feb50a791b4c0a8a8b7407785` |
| 11 | `theorem` | [coe_algebraMap](../../../../mathematics/Algebra/LaurentSeries/Variant5fcd70352990afdbdea5a875b87b0fc8b9a623f52f50d1fd707bb49ab499d2ab.lean/declarations/coe-algebramap--83a169d5baf0c24401942c73.md) | 122 | `result-track:83a169d5baf0c24401942c732c69b024816532151e122570cd5d828fe89ee2c0` |
| 12 | `instance` | [of_powerSeries_localization](../../../../mathematics/Algebra/LaurentSeries/Variant5fcd70352990afdbdea5a875b87b0fc8b9a623f52f50d1fd707bb49ab499d2ab.lean/declarations/of-powerseries-localization--3d0201a6f9b4233d900c430d.md) | 129 | `declaration-track:3d0201a6f9b4233d900c430dc07addfc4c972845657c89d73a8c155ce3a79935` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LaurentSeries/Variant5fcd70352990afdbdea5a875b87b0fc8b9a623f52f50d1fd707bb49ab499d2ab.lean/declarations/instance--33ce748323691645c1448748.md) | 170 | `declaration-track:33ce748323691645c144874894e3e4b8dac9e963da084e933de5c789b7de39fc` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LaurentSeries/Variant5fcd70352990afdbdea5a875b87b0fc8b9a623f52f50d1fd707bb49ab499d2ab.lean/declarations/instance--2441ba7eb94f4e4d76f072a9.md) | 171 | `declaration-track:2441ba7eb94f4e4d76f072a9fc3fb3392f173f657d3a6db791ab3b274c9cb653` |
| 15 | `theorem` | [coe_zero](../../../../mathematics/Algebra/LaurentSeries/Variant5fcd70352990afdbdea5a875b87b0fc8b9a623f52f50d1fd707bb49ab499d2ab.lean/declarations/coe-zero--af217ff19142ac20a1dbb5c7.md) | 185 | `result-track:af217ff19142ac20a1dbb5c7916b3875f5e4131cfb8cfad1635761181d132477` |
| 16 | `theorem` | [coe_one](../../../../mathematics/Algebra/LaurentSeries/Variant5fcd70352990afdbdea5a875b87b0fc8b9a623f52f50d1fd707bb49ab499d2ab.lean/declarations/coe-one--039478d8d0f790b59e6834d2.md) | 190 | `result-track:039478d8d0f790b59e6834d20f2796ca4cd77f5806b862a9e0a3d99ba3c1721b` |
| 17 | `theorem` | [coe_add](../../../../mathematics/Algebra/LaurentSeries/Variant5fcd70352990afdbdea5a875b87b0fc8b9a623f52f50d1fd707bb49ab499d2ab.lean/declarations/coe-add--3dcdc295fc4282454720f65a.md) | 195 | `result-track:3dcdc295fc4282454720f65a785b11a283df3cde535b5beda71d6d1478ac0621` |
| 18 | `theorem` | [coe_sub](../../../../mathematics/Algebra/LaurentSeries/Variant5fcd70352990afdbdea5a875b87b0fc8b9a623f52f50d1fd707bb49ab499d2ab.lean/declarations/coe-sub--f1d8fe686bf037e85cc162cf.md) | 200 | `result-track:f1d8fe686bf037e85cc162cfb6b82b596d40e0c250d5c910350042965e7888d5` |
| 19 | `theorem` | [coe_neg](../../../../mathematics/Algebra/LaurentSeries/Variant5fcd70352990afdbdea5a875b87b0fc8b9a623f52f50d1fd707bb49ab499d2ab.lean/declarations/coe-neg--a27c900b793795397a53bd02.md) | 205 | `result-track:a27c900b793795397a53bd02de19df099523fc61b3f2cff195b572c0c8898ab7` |
| 20 | `theorem` | [coe_mul](../../../../mathematics/Algebra/LaurentSeries/Variant5fcd70352990afdbdea5a875b87b0fc8b9a623f52f50d1fd707bb49ab499d2ab.lean/declarations/coe-mul--21577262eb6ad91daeaa522e.md) | 210 | `result-track:21577262eb6ad91daeaa522e7b3aaf294135c7a1b953667228c4b4cbb99be3e8` |
| 21 | `theorem` | [coeff_coe](../../../../mathematics/Algebra/LaurentSeries/Variant5fcd70352990afdbdea5a875b87b0fc8b9a623f52f50d1fd707bb49ab499d2ab.lean/declarations/coeff-coe--d01c0bef59f6b24bcc00f26b.md) | 214 | `result-track:d01c0bef59f6b24bcc00f26b4e80141ff6795db1b071de285108c46631a69fb9` |
| 22 | `theorem` | [coe_C](../../../../mathematics/Algebra/LaurentSeries/Variant5fcd70352990afdbdea5a875b87b0fc8b9a623f52f50d1fd707bb49ab499d2ab.lean/declarations/coe-c--d175d9531d94b63d001622d1.md) | 227 | `result-track:d175d9531d94b63d001622d10a5ed227ee044241c99679ebc4dbe13afa06f8d5` |
| 23 | `theorem` | [coe_X](../../../../mathematics/Algebra/LaurentSeries/Variant5fcd70352990afdbdea5a875b87b0fc8b9a623f52f50d1fd707bb49ab499d2ab.lean/declarations/coe-x--3041076396bd72f3da3082b9.md) | 233 | `result-track:3041076396bd72f3da3082b9b3923ef9133f90de99f4e8d144e32462905c813b` |
| 24 | `theorem` | [coe_smul](../../../../mathematics/Algebra/LaurentSeries/Variant5fcd70352990afdbdea5a875b87b0fc8b9a623f52f50d1fd707bb49ab499d2ab.lean/declarations/coe-smul--74ffb3a96dd23d3bd803ddb5.md) | 239 | `result-track:74ffb3a96dd23d3bd803ddb5e9540796ce8a72c45cb4767bb7438a6c8da0a8db` |
| 25 | `theorem` | [coe_pow](../../../../mathematics/Algebra/LaurentSeries/Variant5fcd70352990afdbdea5a875b87b0fc8b9a623f52f50d1fd707bb49ab499d2ab.lean/declarations/coe-pow--011f8cb4521291ffba7ab2b3.md) | 250 | `result-track:011f8cb4521291ffba7ab2b3bc1d4e6f0e336202c098534ebb38691064f41f6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
