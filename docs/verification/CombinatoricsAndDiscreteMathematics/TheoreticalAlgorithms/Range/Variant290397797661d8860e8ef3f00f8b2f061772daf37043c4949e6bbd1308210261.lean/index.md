# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Range.Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab4a24af4e18247faad0605d9796a5d8f980c200",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab4a24af4e18247faad0605d9796a5d8f980c200`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Chain` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Zip` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [range'_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261.lean/declarations/range-one--2551946df6925a36b76adf9b.md) | 33 | `result-track:2551946df6925a36b76adf9b8b7e7845130d902b8fd6386cf52837b58cef3d9f` |
| 2 | `theorem` | [pairwise_lt_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261.lean/declarations/pairwise-lt-range--736f425e00c66c8c94741b50.md) | 43 | `result-track:736f425e00c66c8c94741b50bf50a3e06c6e2b1a95614c205dc2b83a0a5c0ce0` |
| 3 | `theorem` | [nodup_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261.lean/declarations/nodup-range--ecf276f015ba5f82a8bcc06b.md) | 49 | `result-track:ecf276f015ba5f82a8bcc06b96ecee2161a0d88be3f3f2a069302ca253de28e0` |
| 4 | `theorem` | [nthLe_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261.lean/declarations/nthle-range--0a8db05795688b32e6d6233f.md) | 59 | `result-track:0a8db05795688b32e6d6233fb95b122dcc20877e465d0ec5079c567f2534b843` |
| 5 | `theorem` | [nthLe_range'_1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261.lean/declarations/nthle-range-1--19ea940412f1e682b812d49a.md) | 63 | `result-track:19ea940412f1e682b812d49a594136790b6574ac1435750a2c226aaebb488fbb` |
| 6 | `theorem` | [pairwise_lt_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261.lean/declarations/pairwise-lt-range--0c41d0cb71658e01ab9ce78f.md) | 76 | `result-track:0c41d0cb71658e01ab9ce78f6ec4fca2bff674c4a1f6dd44fb2558d8e3d4206f` |
| 7 | `theorem` | [pairwise_le_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261.lean/declarations/pairwise-le-range--c37e88c4bd04a2b0134a60db.md) | 80 | `result-track:c37e88c4bd04a2b0134a60dbb7ea667209a801e82a4c6acfacf4c016e077fa35` |
| 8 | `theorem` | [nodup_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261.lean/declarations/nodup-range--f731e6e5f471576240c75076.md) | 84 | `result-track:f731e6e5f471576240c7507632964517bd01278d0a9c1c7afbb40f182145cbdd` |
| 9 | `theorem` | [chain'_range_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261.lean/declarations/chain-range-succ--60da7fe8f83d40bb724b0406.md) | 95 | `result-track:60da7fe8f83d40bb724b0406bb2c646cc07a875646a833cd2187aec149ca4eba` |
| 10 | `theorem` | [chain_range_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261.lean/declarations/chain-range-succ--19de8b04c53fd65861ad2113.md) | 106 | `result-track:19de8b04c53fd65861ad21130f828e25db8d4c5e4667db82ed5068fba679f348` |
| 11 | `theorem` | [pairwise_gt_iota](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261.lean/declarations/pairwise-gt-iota--38c93dbbe171517adc7d72a7.md) | 116 | `result-track:38c93dbbe171517adc7d72a7cffb71d421e5ee4b8b3b8c901dedc8716e4acab0` |
| 12 | `theorem` | [nodup_iota](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261.lean/declarations/nodup-iota--71a8cb988d54dfe4e45f0fe7.md) | 120 | `result-track:71a8cb988d54dfe4e45f0fe790c923f2f7682609750317a12c0b58dc55ce7fed` |
| 13 | `def` | [finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261.lean/declarations/finrange--cb692ce9731844d5458ad366.md) | 128 | `declaration-track:cb692ce9731844d5458ad366ebd469f9e70699625ab0eaec0e001f68e97a9b32` |
| 14 | `theorem` | [finRange_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261.lean/declarations/finrange-zero--57a4bdea718cadf049d22521.md) | 133 | `result-track:57a4bdea718cadf049d225219efa0b2833791c1e3d1f2cc61d392c452863b489` |
| 15 | `theorem` | [mem_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261.lean/declarations/mem-finrange--d47a6471f69ced3ef8690719.md) | 138 | `result-track:d47a6471f69ced3ef8690719dbcf7d5da566e48994b9c8b0a286aa063052d3c5` |
| 16 | `theorem` | [nodup_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261.lean/declarations/nodup-finrange--ec6f84b8008edaabf6eda996.md) | 145 | `result-track:ec6f84b8008edaabf6eda9969d0a00a35875c83cfaa08f07607d599326ff2d6a` |
| 17 | `theorem` | [length_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261.lean/declarations/length-finrange--f40658e8683a3de32a2979e6.md) | 150 | `result-track:f40658e8683a3de32a2979e6c7f86b8310448fcff21306ad07bc20462d2dbd46` |
| 18 | `theorem` | [finRange_eq_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261.lean/declarations/finrange-eq-nil--5b3228f2833400aea8ccacc5.md) | 155 | `result-track:5b3228f2833400aea8ccacc5e13a85820799480aaa74eb63fd48ac2196c00348` |
| 19 | `theorem` | [prod_range_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261.lean/declarations/prod-range-succ--a92e5494a67a47d3566f0a05.md) | 160 | `result-track:a92e5494a67a47d3566f0a0537c631cd8b54fc9aa5527668e071d6c74dfa53ed` |
| 20 | `theorem` | [prod_range_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261.lean/declarations/prod-range-succ--6f10e0ca6e4dd407df21cd87.md) | 170 | `result-track:6f10e0ca6e4dd407df21cd87241e3236d48af604d5592b9b575a7f60fae753c4` |
| 21 | `theorem` | [enum_eq_zip_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261.lean/declarations/enum-eq-zip-range--c339470ec7c6e289a82b4d02.md) | 180 | `result-track:c339470ec7c6e289a82b4d02106a32333a888b326b5ab4e6ad3914524a7d73f1` |
| 22 | `theorem` | [unzip_enum_eq_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261.lean/declarations/unzip-enum-eq-prod--f9a184439b907d4677cb2733.md) | 185 | `result-track:f9a184439b907d4677cb2733e9a0717e01d4faeceb01f609bb2a7c12504f452e` |
| 23 | `theorem` | [enumFrom_eq_zip_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261.lean/declarations/enumfrom-eq-zip-range--919ae4cc0ec10626a2e8f207.md) | 189 | `result-track:919ae4cc0ec10626a2e8f207515f8eae2c98693b29304061e8977eae5079ec99` |
| 24 | `theorem` | [unzip_enumFrom_eq_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261.lean/declarations/unzip-enumfrom-eq-prod--138be2a7e9abd727ceb49b0c.md) | 194 | `result-track:138be2a7e9abd727ceb49b0cd6cdc505f8023555a3a01f521226781a3f155c0e` |
| 25 | `theorem` | [nthLe_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261.lean/declarations/nthle-range--5df017895b33de6eaf4cd929.md) | 201 | `result-track:5df017895b33de6eaf4cd9291a6fd866288cfe410ce83f0ae4097d31eca0de54` |
| 26 | `theorem` | [get_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261.lean/declarations/get-finrange--d405f0fcaab3c4434dca93ee.md) | 207 | `result-track:d405f0fcaab3c4434dca93ee91b410e6c8a846053c9cd545c868f0b3b815c37d` |
| 27 | `theorem` | [finRange_map_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261.lean/declarations/finrange-map-get--c15eedc0c5b14494e5508086.md) | 213 | `result-track:c15eedc0c5b14494e5508086427bf2b32fc13361af16a57ae3077b1c77438b52` |
| 28 | `theorem` | [nthLe_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant290397797661d8860e8ef3f00f8b2f061772daf37043c4949e6bbd1308210261.lean/declarations/nthle-finrange--d5717578f81b2cec2aa842ab.md) | 219 | `result-track:d5717578f81b2cec2aa842ab5d4f4bc32a28277bd1712bae58f255e1d655caad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
