# Verification target: GRWTSK.Algebra.RingTheory.Partition.Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06eca4e9e8f5368c23adfa93631e01d414ce4755",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06eca4e9e8f5368c23adfa93631e01d414ce4755`.

Source path: `GRWTSK/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.PowerSeries.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Partition` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Parity` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.NatAntidiagonal` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Tuple.NatAntidiagonal` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [partialOddGF](../../../../../mathematics/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/declarations/partialoddgf--82383922375612d2fa52b7a5.md) | 78 | `declaration-track:82383922375612d2fa52b7a5a9383f25f4ca912b276226b381fb3202ae81e96e` |
| 2 | `def` | [partialDistinctGF](../../../../../mathematics/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/declarations/partialdistinctgf--0c7a78122a93ce84ad0ad483.md) | 90 | `declaration-track:0c7a78122a93ce84ad0ad4834c9e6c2dbe8ba9c004db614ddfe512c2ecc04e97` |
| 3 | `def` | [cut](../../../../../mathematics/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/declarations/cut--eb816a1b07b057621f3289d0.md) | 100 | `declaration-track:eb816a1b07b057621f3289d064c8331f76274226fd22eb604e2580b9bbfe449a` |
| 4 | `theorem` | [mem_cut](../../../../../mathematics/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/declarations/mem-cut--8349d9f85379a33341632fe7.md) | 107 | `result-track:8349d9f85379a33341632fe7238b651c5386d1b56a075e7f6356adf064008de7` |
| 5 | `theorem` | [cut_equiv_antidiag](../../../../../mathematics/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/declarations/cut-equiv-antidiag--2dbf1c59fdca7adedd561f1f.md) | 125 | `result-track:2dbf1c59fdca7adedd561f1fa527d07533d751961d3f53873c855cb92df136fc` |
| 6 | `theorem` | [cut_univ_fin_eq_antidiagonalTuple](../../../../../mathematics/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/declarations/cut-univ-fin-eq-antidiagonaltuple--00d07c2ae65beeeffbaf9316.md) | 133 | `result-track:00d07c2ae65beeeffbaf9316e02b08ce5d004d3b423475502907b04915f6cfb5` |
| 7 | `theorem` | [cut_zero](../../../../../mathematics/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/declarations/cut-zero--af6f116022c7eaab82dfff47.md) | 139 | `result-track:af6f116022c7eaab82dfff475bef73e1bc6b61adf72eb2f175abd597af5d93ba` |
| 8 | `theorem` | [cut_empty_succ](../../../../../mathematics/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/declarations/cut-empty-succ--dbdff768ec71d349245560e3.md) | 151 | `result-track:dbdff768ec71d349245560e3a063c4d9fdb9a28d3e3bdacc1595e50e2ffe55b0` |
| 9 | `theorem` | [cut_insert](../../../../../mathematics/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/declarations/cut-insert--bba684152c0f5a633b7aca09.md) | 158 | `result-track:bba684152c0f5a633b7aca099f37340c783887a69ce2a83a9c6cede0f1bbe68a` |
| 10 | `theorem` | [coeff_prod_range](../../../../../mathematics/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/declarations/coeff-prod-range--ef7cc126cd3f912b556a97da.md) | 195 | `result-track:ef7cc126cd3f912b556a97dae0de95c60210eb0e96c7ed5f419dd149cd388fdb` |
| 11 | `def` | [indicatorSeries](../../../../../mathematics/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/declarations/indicatorseries--474bb9abcba9961738c118d1.md) | 230 | `declaration-track:474bb9abcba9961738c118d1ceb9307a8bc11c02eb09d1d8e21d6ae6fc841dfb` |
| 12 | `theorem` | [coeff_indicator](../../../../../mathematics/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/declarations/coeff-indicator--924b9dbf03b7ef8d89af297c.md) | 234 | `result-track:924b9dbf03b7ef8d89af297c4e7ac95c8790d78290669d0e64276f3759f7f8c2` |
| 13 | `theorem` | [coeff_indicator_pos](../../../../../mathematics/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/declarations/coeff-indicator-pos--4724f4e0512d2236cc2eaeca.md) | 239 | `result-track:4724f4e0512d2236cc2eaecab7fe5a37dce879747aeba7e7582d7e7ef684a5bb` |
| 14 | `theorem` | [coeff_indicator_neg](../../../../../mathematics/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/declarations/coeff-indicator-neg--af4723e75fc3c23e65fe8e0f.md) | 243 | `result-track:af4723e75fc3c23e65fe8e0f426312f86cf2773a5535d18f80c79f87ecaa0789` |
| 15 | `theorem` | [constantCoeff_indicator](../../../../../mathematics/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/declarations/constantcoeff-indicator--fd472ca9ce46efab16f43269.md) | 247 | `result-track:fd472ca9ce46efab16f43269a169f6f6ead5ed8f23418ff1a612be340a564e2c` |
| 16 | `theorem` | [two_series](../../../../../mathematics/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/declarations/two-series--4fa171cec9450fe78df278c9.md) | 252 | `result-track:4fa171cec9450fe78df278c9bd70be01fdad0ac52c1c81191f0c1eb24993d4b6` |
| 17 | `theorem` | [num_series'](../../../../../mathematics/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/declarations/num-series--5c304404ae832d3722814c95.md) | 262 | `result-track:5c304404ae832d3722814c95811eac98b7d3956c7feb67ef65e694fa9761ee15` |
| 18 | `def` | [mkOdd](../../../../../mathematics/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/declarations/mkodd--52a4f2445825662b18b3d42e.md) | 307 | `declaration-track:52a4f2445825662b18b3d42ea9154bebfcf4f9c783732ef548bbcdc526ba5b6c` |
| 19 | `theorem` | [partialGF_prop](../../../../../mathematics/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/declarations/partialgf-prop--87f392146c2ce1eff48d831b.md) | 312 | `result-track:87f392146c2ce1eff48d831b553718346721fc32c9b3633fe9831402ebbbeb72` |
| 20 | `theorem` | [partialOddGF_prop](../../../../../mathematics/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/declarations/partialoddgf-prop--502d7f463aa65dfdfd0e77b0.md) | 380 | `result-track:502d7f463aa65dfdfd0e77b0eb32a9296416e1fd5437a2bd72138c731b72af8a` |
| 21 | `theorem` | [oddGF_prop](../../../../../mathematics/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/declarations/oddgf-prop--17a59b2cba19fef563792a75.md) | 412 | `result-track:17a59b2cba19fef563792a7553e55cedcb5e16332e01f14407476e3e5af2f582` |
| 22 | `theorem` | [partialDistinctGF_prop](../../../../../mathematics/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/declarations/partialdistinctgf-prop--551a44a9eca7cb82d982af11.md) | 434 | `result-track:551a44a9eca7cb82d982af115fc3daefeb20244133c387990933dfb809b16c42` |
| 23 | `theorem` | [distinctGF_prop](../../../../../mathematics/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/declarations/distinctgf-prop--c05767044f555490f1a71921.md) | 462 | `result-track:c05767044f555490f1a719210b693f1136d0702fdeff3064ed6d06dc895af4f5` |
| 24 | `theorem` | [same_gf](../../../../../mathematics/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/declarations/same-gf--995b026abb9631b6a11ec6ea.md) | 480 | `result-track:995b026abb9631b6a11ec6ea00c32b14487d572b3658ee23918602a5fa06cf71` |
| 25 | `theorem` | [same_coeffs](../../../../../mathematics/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/declarations/same-coeffs--3f1f3830cbf379655e79dce8.md) | 519 | `result-track:3f1f3830cbf379655e79dce8b433757f271cbf3e23b5a98672efe79c173d8477` |
| 26 | `theorem` | [partition_theorem](../../../../../mathematics/Algebra/RingTheory/Partition/Variant05ce0cf80ac1d8374754dca8da733f641a7b57545919c7a9940b853d00a87600.lean/declarations/partition-theorem--244ac65b04acb81ad1e2a418.md) | 527 | `result-track:244ac65b04acb81ad1e2a418a86d9f3b839e7a3705b6a5f8b6bb5e63a0a913a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
