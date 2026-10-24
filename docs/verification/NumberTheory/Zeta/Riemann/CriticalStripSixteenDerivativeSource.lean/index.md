# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSixteenDerivativeSource

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b8c1570d8e3aaf419e33610d00a93d0be37161a",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b8c1570d8e3aaf419e33610d00a93d0be37161a`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMellinTailDerivative`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinTailDerivative.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticPrimitive`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPowerTaylor`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPowerTaylor.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Data.Fin.VecNotation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Fin` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Region](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/declarations/region--198981fd955fb702ea1e1431.md) | 27 | `declaration-track:198981fd955fb702ea1e1431ed9aa778a6c824188df189380b207528032db4c9` |
| 2 | `def` | [factor](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/declarations/factor--d53441a41b1ee7c82eb96c2b.md) | 29 | `declaration-track:d53441a41b1ee7c82eb96c2be770f4c496d19e02974bea7b4e0ba94859445bdf` |
| 3 | `def` | [product](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/declarations/product--8df5da1cd961e6f50ac7ef23.md) | 30 | `declaration-track:8df5da1cd961e6f50ac7ef233fd233ded35b9a8aa768cc056ee877d8210adb69` |
| 4 | `def` | [productSlope](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/declarations/productslope--1ae6c0fe8ceedcd74346af14.md) | 33 | `declaration-track:1ae6c0fe8ceedcd74346af1483e88f01b768291ab700eaa2b1f01ad62d7f69ce` |
| 5 | `lemma` | [product_hasDerivAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/declarations/product-hasderivat--78c51cdc175913da3cc0c628.md) | 37 | `result-track:78c51cdc175913da3cc0c6285e9d198dd84e50ab1c507ae0ff448f1f1cf08dd2` |
| 6 | `lemma` | [product_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/declarations/product-norm-le--e354d80f9bf3b81c6dbcb025.md) | 45 | `result-track:e354d80f9bf3b81c6dbcb025d1059c01b5c43582019fe322fd051f612c914741` |
| 7 | `lemma` | [productSlope_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/declarations/productslope-norm-le--aac94d9812e88f36afaa580c.md) | 56 | `result-track:aac94d9812e88f36afaa580c83ce6d86caddc02a3b415ce247f5c711eca6aff1` |
| 8 | `lemma` | [product_four](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/declarations/product-four--883d20dfd18438bbb7c68f37.md) | 82 | `result-track:883d20dfd18438bbb7c68f373757caf9f514ce2fb40680535c4281b347929db3` |
| 9 | `lemma` | [product_six](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/declarations/product-six--efccb50dcd5c28b5e71ffb26.md) | 85 | `result-track:efccb50dcd5c28b5e71ffb26faf0eb48b04cbfd66f64eddbecb5b2fd322a0850` |
| 10 | `lemma` | [product_seven](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/declarations/product-seven--3c15b499a346b38ad16a6356.md) | 88 | `result-track:3c15b499a346b38ad16a63563823e967a049941e69756463734b7abc9789daec` |
| 11 | `lemma` | [multiplier_hasDerivAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/declarations/multiplier-hasderivat--c6240a1fb95bf21a60634f06.md) | 92 | `result-track:c6240a1fb95bf21a60634f06a53f6618cdb14d32653886ecc4c29e5db91e230e` |
| 12 | `def` | [base](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/declarations/base--5fefb2b73109e55a69f69829.md) | 97 | `declaration-track:5fefb2b73109e55a69f698291a34165b8a9d09bd8adca18fcd7e1538cc37bd86` |
| 13 | `def` | [power](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/declarations/power--7432ebd704951c5f367afb6c.md) | 98 | `declaration-track:7432ebd704951c5f367afb6cd5227f4b77f224127b4be3f9722159e656cdfc72` |
| 14 | `def` | [weight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/declarations/weight--dbaebe1549d6b2657c2f8d26.md) | 99 | `declaration-track:dbaebe1549d6b2657c2f8d267486282f2a99d8a41574058f7c54812de7648f32` |
| 15 | `def` | [weightSlope](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/declarations/weightslope--4c4bfc60d0842f5a719c0a0b.md) | 101 | `declaration-track:4c4bfc60d0842f5a719c0a0bfc13ff0d9a37725875e927053c2ad0cb78b5b1a3` |
| 16 | `def` | [value](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/declarations/value--9a71bf15e782898aedc0d959.md) | 104 | `declaration-track:9a71bf15e782898aedc0d959f3e3447c0cbb097e3f66d0bb9e633dc3ee3f874c` |
| 17 | `def` | [exactDerivative](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/declarations/exactderivative--ed010ac61be8713c96b0954c.md) | 106 | `declaration-track:ed010ac61be8713c96b0954c7b4e8e24ae35e3bf5c286fd30c630ed416908c72` |
| 18 | `lemma` | [base_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/declarations/base-bounds--d16409767d30d1d718a171be.md) | 110 | `result-track:d16409767d30d1d718a171beb18e8e927061be948321d54282cdffa5c603aa48` |
| 19 | `lemma` | [power_hasDerivAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/declarations/power-hasderivat--df0cf450f3a53072a3f8cfc6.md) | 116 | `result-track:df0cf450f3a53072a3f8cfc6482ffb8b2fdbcf2ba10814050fa51f45767bd71d` |
| 20 | `lemma` | [weight_hasDerivAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/declarations/weight-hasderivat--273d4fe31340dcf51ecdb3e2.md) | 127 | `result-track:273d4fe31340dcf51ecdb3e2c5d64c3e89817cd03a212a66d53dd56b63862724` |
| 21 | `lemma` | [value_hasDerivAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/declarations/value-hasderivat--48cb68e8eaa25c32c0238dd7.md) | 135 | `result-track:48cb68e8eaa25c32c0238dd7f7058fa337937b8ff091fa9643630b6465392862` |
| 22 | `lemma` | [finiteModel_sixteen](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/declarations/finitemodel-sixteen--92f862f6e69976781f59013e.md) | 150 | `result-track:92f862f6e69976781f59013e7f781ed3560bb1566428e4413c1391a85ba432cc` |
| 23 | `theorem` | [source_derivative_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/declarations/source-derivative-identity--ea5c64e8b8c11debd948dad3.md) | 169 | `result-track:ea5c64e8b8c11debd948dad3d4c01b91ff6b95383dad010526cb7973253b37d0` |
| 24 | `lemma` | [region_norms](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/declarations/region-norms--ba6d470626b9ab4e28953194.md) | 186 | `result-track:ba6d470626b9ab4e28953194908ce8a1f27fb868d4d93bf8d408c4b48f1d37c3` |
| 25 | `lemma` | [region_factors](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/declarations/region-factors--6d3a3bfdf87f392e5e47f26b.md) | 193 | `result-track:6d3a3bfdf87f392e5e47f26ba026931809239c2ac5884841be726068e7a876a2` |
| 26 | `lemma` | [region_weight_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/declarations/region-weight-bounds--4e14c1691d502e38cccf4a5a.md) | 200 | `result-track:4e14c1691d502e38cccf4a5abf85c052a95af3ddfde0fd14ff3e185e4635a631` |
| 27 | `theorem` | [derivative_source_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/declarations/derivative-source-error--9a530337304b351602948736.md) | 230 | `result-track:9a530337304b3516029487366332c5fc842008f27156a892422683feef7c4c98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
