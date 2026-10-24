# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.FermatPsp.Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3d1a3a63870f31fa0ed99f1ad87004b000a2898",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3d1a3a63870f31fa0ed99f1ad87004b000a2898`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Finite.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Cofinite` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ProbablePrime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean/declarations/probableprime--509bec73803900b88d2fa4b2.md) | 59 | `declaration-track:509bec73803900b88d2fa4b2ab506a5ae68142263ca77f7cf3c7f858cb90cd62` |
| 2 | `def` | [FermatPsp](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean/declarations/fermatpsp--516703e97c93ea00cbe6d506.md) | 68 | `declaration-track:516703e97c93ea00cbe6d50612a66b36f30f8779035e1e08c8669bb001330dd3` |
| 3 | `instance` | [decidableProbablePrime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean/declarations/decidableprobableprime--3cbd5741ca5a8689ec62a86d.md) | 72 | `declaration-track:3cbd5741ca5a8689ec62a86d0ced945da58f33da0516933f0a8eef0659c05a05` |
| 4 | `instance` | [decidablePsp](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean/declarations/decidablepsp--1fec952183907b034855c108.md) | 76 | `declaration-track:1fec952183907b034855c108a52be30834a67fc9e8a90e01798eac2898338c42` |
| 5 | `theorem` | [coprime_of_probablePrime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean/declarations/coprime-of-probableprime--f5cde8cda44380e139059088.md) | 83 | `result-track:f5cde8cda44380e13905908838dbee3e60f9d01919f56435728a7c05ec0c2ff3` |
| 6 | `theorem` | [probablePrime_iff_modEq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean/declarations/probableprime-iff-modeq--73b294a011c5c233c01235c0.md) | 110 | `result-track:73b294a011c5c233c01235c0f0c26d34e1002d82e26ec52a54b469d9aab1a828` |
| 7 | `theorem` | [coprime_of_fermatPsp](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean/declarations/coprime-of-fermatpsp--0c9b7fc5fb50033d9365302f.md) | 128 | `result-track:0c9b7fc5fb50033d9365302fcd931a9c8c85ca4d08aa2c6113d7a3666784058c` |
| 8 | `theorem` | [fermatPsp_base_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean/declarations/fermatpsp-base-one--128e3726412c1c5bc1544752.md) | 135 | `result-track:128e3726412c1c5bc15447525afa6bca32cb4248ccd39da9555eff731f532791` |
| 9 | `theorem` | [pow_gt_exponent](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean/declarations/pow-gt-exponent--d1dd63fd52c325206d8f14ac.md) | 144 | `result-track:d1dd63fd52c325206d8f14ac86ade8168e4a7796c865e3c031ad0323e6a3f65c` |
| 10 | `theorem` | [a_id_helper](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean/declarations/a-id-helper--83fe0b99fa2ba268f6b0c24d.md) | 147 | `result-track:83fe0b99fa2ba268f6b0c24db7e447c63bfe38cb40d18d4dd8d3147be3281064` |
| 11 | `theorem` | [b_id_helper](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean/declarations/b-id-helper--3a19e4d51ab3f9176e986e1b.md) | 154 | `result-track:3a19e4d51ab3f9176e986e1b032692987cd597048e8c97a4b59697320f1d6e8f` |
| 12 | `theorem` | [AB_id_helper](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean/declarations/ab-id-helper--6cf9bd155024312149487208.md) | 162 | `result-track:6cf9bd155024312149487208d054db71c60b98d92aaea613a5006956a01c6cf9` |
| 13 | `theorem` | [bp_helper](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean/declarations/bp-helper--5a092314d0997ae76c055b57.md) | 172 | `result-track:5a092314d0997ae76c055b57efd194110973ee80e6411cb721e9f3e8ee5ea5f3` |
| 14 | `def` | [psp_from_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean/declarations/psp-from-prime--d28f27d02fb4ff9f5667364d.md) | 201 | `declaration-track:d28f27d02fb4ff9f5667364dff5be22149f5bcd04355ab1448a6be41b6c373ea` |
| 15 | `theorem` | [psp_from_prime_psp](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean/declarations/psp-from-prime-psp--9226fc969df31e85dd20beb1.md) | 210 | `result-track:9226fc969df31e85dd20beb1ad81a8ff88c9ba9b9cab24a7594d55cc4fd2932e` |
| 16 | `theorem` | [psp_from_prime_gt_p](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean/declarations/psp-from-prime-gt-p--a2ed16355ea8f1da4d6238a6.md) | 312 | `result-track:a2ed16355ea8f1da4d6238a6b09e86d389df5388ef6cd3f25d38a67dffcfa8b8` |
| 17 | `theorem` | [exists_infinite_pseudoprimes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean/declarations/exists-infinite-pseudoprimes--8cf297db043d0718dbbf0eb6.md) | 349 | `result-track:8cf297db043d0718dbbf0eb6a29f1f6103b843185023961b80d7f44ef62bcf9e` |
| 18 | `theorem` | [frequently_atTop_fermatPsp](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean/declarations/frequently-attop-fermatpsp--8d0bab8f78ac2ab482a20e05.md) | 385 | `result-track:8d0bab8f78ac2ab482a20e05213f79be25367f9846aa06b312e1b3dcf2faa30b` |
| 19 | `theorem` | [infinite_setOf_pseudoprimes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean/declarations/infinite-setof-pseudoprimes--e2b8555e2f1608b490944e91.md) | 394 | `result-track:e2b8555e2f1608b490944e91a72ec6621196933c59c5bed062bd31685ebd8cde` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
