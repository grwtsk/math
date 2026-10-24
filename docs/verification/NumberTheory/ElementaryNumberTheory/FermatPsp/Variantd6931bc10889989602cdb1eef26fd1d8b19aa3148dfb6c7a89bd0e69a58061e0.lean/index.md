# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.FermatPsp.Variantd6931bc10889989602cdb1eef26fd1d8b19aa3148dfb6c7a89bd0e69a58061e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d296139b4fae7418e5ceb12be7223ca02424d031",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Variantd6931bc10889989602cdb1eef26fd1d8b19aa3148dfb6c7a89bd0e69a58061e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variantd6931bc10889989602cdb1eef26fd1d8b19aa3148dfb6c7a89bd0e69a58061e0.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variantd6931bc10889989602cdb1eef26fd1d8b19aa3148dfb6c7a89bd0e69a58061e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d296139b4fae7418e5ceb12be7223ca02424d031`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Variantd6931bc10889989602cdb1eef26fd1d8b19aa3148dfb6c7a89bd0e69a58061e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/FermatPsp/Variantd6931bc10889989602cdb1eef26fd1d8b19aa3148dfb6c7a89bd0e69a58061e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Cofinite` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ProbablePrime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variantd6931bc10889989602cdb1eef26fd1d8b19aa3148dfb6c7a89bd0e69a58061e0.lean/declarations/probableprime--f4176edc100c163460d6e037.md) | 58 | `declaration-track:f4176edc100c163460d6e0377f76dea30a58c0d5492fc851b6c4f6ae51c0426e` |
| 2 | `def` | [FermatPsp](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variantd6931bc10889989602cdb1eef26fd1d8b19aa3148dfb6c7a89bd0e69a58061e0.lean/declarations/fermatpsp--355ea1997c238daec1dc3efb.md) | 66 | `declaration-track:355ea1997c238daec1dc3efb3742394f9351f135996a9752908c8201ac725838` |
| 3 | `instance` | [decidableProbablePrime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variantd6931bc10889989602cdb1eef26fd1d8b19aa3148dfb6c7a89bd0e69a58061e0.lean/declarations/decidableprobableprime--6c6a0f9b3800524a1ec72d46.md) | 69 | `declaration-track:6c6a0f9b3800524a1ec72d46c2c659743819cdc5a0dcff46e63d127034c28b2f` |
| 4 | `instance` | [decidablePsp](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variantd6931bc10889989602cdb1eef26fd1d8b19aa3148dfb6c7a89bd0e69a58061e0.lean/declarations/decidablepsp--f9d2d4999b5a9eb585f3157f.md) | 72 | `declaration-track:f9d2d4999b5a9eb585f3157f6c4a2a38d576272dcef0bfe906e9b34732faee96` |
| 5 | `theorem` | [coprime_of_probablePrime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variantd6931bc10889989602cdb1eef26fd1d8b19aa3148dfb6c7a89bd0e69a58061e0.lean/declarations/coprime-of-probableprime--3a368256b5152cc04b92efae.md) | 78 | `result-track:3a368256b5152cc04b92efaedd85ebc42a70a0ac99de8d43cc01c059c4f05b40` |
| 6 | `theorem` | [probablePrime_iff_modEq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variantd6931bc10889989602cdb1eef26fd1d8b19aa3148dfb6c7a89bd0e69a58061e0.lean/declarations/probableprime-iff-modeq--544de33ab0f4cde6047445b2.md) | 104 | `result-track:544de33ab0f4cde6047445b2358fbcaac65466060041fbb8d8720d912ae8eba3` |
| 7 | `theorem` | [coprime_of_fermatPsp](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variantd6931bc10889989602cdb1eef26fd1d8b19aa3148dfb6c7a89bd0e69a58061e0.lean/declarations/coprime-of-fermatpsp--e0ad6be122c2aa9a2c1ca95f.md) | 121 | `result-track:e0ad6be122c2aa9a2c1ca95f78064bdb725b55b42f75295177c99619e2541e9d` |
| 8 | `theorem` | [fermatPsp_base_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variantd6931bc10889989602cdb1eef26fd1d8b19aa3148dfb6c7a89bd0e69a58061e0.lean/declarations/fermatpsp-base-one--8900ab17440dcb4a9d1fd0ce.md) | 127 | `result-track:8900ab17440dcb4a9d1fd0ce5c18acec17ce278899de929a018c6b4df7d546b6` |
| 9 | `theorem` | [a_id_helper](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variantd6931bc10889989602cdb1eef26fd1d8b19aa3148dfb6c7a89bd0e69a58061e0.lean/declarations/a-id-helper--d707c2df8d0e2c62e13890e1.md) | 135 | `result-track:d707c2df8d0e2c62e13890e1c45b3a16584c7e1c7e2bcab35d9f9e779ec46511` |
| 10 | `theorem` | [b_id_helper](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variantd6931bc10889989602cdb1eef26fd1d8b19aa3148dfb6c7a89bd0e69a58061e0.lean/declarations/b-id-helper--89bba1bc5963849b3699c905.md) | 141 | `result-track:89bba1bc5963849b3699c905e3590af713a13139df88bb395819f7db02baea9e` |
| 11 | `theorem` | [AB_id_helper](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variantd6931bc10889989602cdb1eef26fd1d8b19aa3148dfb6c7a89bd0e69a58061e0.lean/declarations/ab-id-helper--17235c0012e4e913067fee7e.md) | 149 | `result-track:17235c0012e4e913067fee7efe167ed1962cd22d830a61ba4a972b8cb3286508` |
| 12 | `theorem` | [bp_helper](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variantd6931bc10889989602cdb1eef26fd1d8b19aa3148dfb6c7a89bd0e69a58061e0.lean/declarations/bp-helper--10a84051cf9987999abfd96b.md) | 158 | `result-track:10a84051cf9987999abfd96bda25c4f08b291a4e13710867ef04c542bc80e801` |
| 13 | `def` | [psp_from_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variantd6931bc10889989602cdb1eef26fd1d8b19aa3148dfb6c7a89bd0e69a58061e0.lean/declarations/psp-from-prime--d3365ca045f9ebca1fc793dc.md) | 187 | `declaration-track:d3365ca045f9ebca1fc793dc5df3382358f13253af0a28bb8ea533b51e35c639` |
| 14 | `theorem` | [psp_from_prime_psp](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variantd6931bc10889989602cdb1eef26fd1d8b19aa3148dfb6c7a89bd0e69a58061e0.lean/declarations/psp-from-prime-psp--41ceea051b6ace915661cd75.md) | 196 | `result-track:41ceea051b6ace915661cd75411c0b479808d3b30c20d780831faf7e01550a13` |
| 15 | `theorem` | [psp_from_prime_gt_p](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variantd6931bc10889989602cdb1eef26fd1d8b19aa3148dfb6c7a89bd0e69a58061e0.lean/declarations/psp-from-prime-gt-p--e3a73575fd6336c3419362c3.md) | 293 | `result-track:e3a73575fd6336c3419362c308ac6123d10448820031ef11d0d1e0cc780b8c35` |
| 16 | `theorem` | [exists_infinite_pseudoprimes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variantd6931bc10889989602cdb1eef26fd1d8b19aa3148dfb6c7a89bd0e69a58061e0.lean/declarations/exists-infinite-pseudoprimes--4d313a900de981ccf9efb3dc.md) | 327 | `result-track:4d313a900de981ccf9efb3dcb6d9eb3bf5715b3c8873c47c2ff0c058daab33eb` |
| 17 | `theorem` | [frequently_atTop_fermatPsp](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variantd6931bc10889989602cdb1eef26fd1d8b19aa3148dfb6c7a89bd0e69a58061e0.lean/declarations/frequently-attop-fermatpsp--b8493ba7bf2960789a810397.md) | 361 | `result-track:b8493ba7bf2960789a8103975bad676d98380170305daa1c794a0fdc31d1d34c` |
| 18 | `theorem` | [infinite_setOf_pseudoprimes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variantd6931bc10889989602cdb1eef26fd1d8b19aa3148dfb6c7a89bd0e69a58061e0.lean/declarations/infinite-setof-pseudoprimes--354bbd83e3ae41b92a0e733c.md) | 369 | `result-track:354bbd83e3ae41b92a0e733c5a18f87d5b8ec09dd4862354b1fa8340c457d981` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
