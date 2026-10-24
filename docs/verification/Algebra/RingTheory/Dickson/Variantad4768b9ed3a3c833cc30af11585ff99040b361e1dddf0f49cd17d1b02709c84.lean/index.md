# Verification target: GRWTSK.Algebra.RingTheory.Dickson.Variantad4768b9ed3a3c833cc30af11585ff99040b361e1dddf0f49cd17d1b02709c84

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5ba48732b44e9e4e7e9f77653e25129bc8bf833",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Dickson/Variantad4768b9ed3a3c833cc30af11585ff99040b361e1dddf0f49cd17d1b02709c84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/Dickson/Variantad4768b9ed3a3c833cc30af11585ff99040b361e1dddf0f49cd17d1b02709c84.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/Dickson/Variantad4768b9ed3a3c833cc30af11585ff99040b361e1dddf0f49cd17d1b02709c84.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5ba48732b44e9e4e7e9f77653e25129bc8bf833`.

Source path: `GRWTSK/Algebra/RingTheory/Dickson/Variantad4768b9ed3a3c833cc30af11585ff99040b361e1dddf0f49cd17d1b02709c84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Dickson/Variantad4768b9ed3a3c833cc30af11585ff99040b361e1dddf0f49cd17d1b02709c84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Invertible` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Chebyshev` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.LocalRing` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dickson](../../../../../mathematics/Algebra/RingTheory/Dickson/Variantad4768b9ed3a3c833cc30af11585ff99040b361e1dddf0f49cd17d1b02709c84.lean/declarations/dickson--544d2f5fc921df40cbb3318e.md) | 69 | `declaration-track:544d2f5fc921df40cbb3318e0c5cfcd631c652debdb3a30acf06027d9e24f2d0` |
| 2 | `theorem` | [dickson_zero](../../../../../mathematics/Algebra/RingTheory/Dickson/Variantad4768b9ed3a3c833cc30af11585ff99040b361e1dddf0f49cd17d1b02709c84.lean/declarations/dickson-zero--52c50ce30b8a3bedae89e463.md) | 76 | `result-track:52c50ce30b8a3bedae89e463c109f2f9a30e1d1251b3714790316681d1dc9578` |
| 3 | `theorem` | [dickson_one](../../../../../mathematics/Algebra/RingTheory/Dickson/Variantad4768b9ed3a3c833cc30af11585ff99040b361e1dddf0f49cd17d1b02709c84.lean/declarations/dickson-one--3fb107ae83ed911d50f1f1d9.md) | 81 | `result-track:3fb107ae83ed911d50f1f1d9ad6e38a03a9cd33fec6688777aa688c978f72687` |
| 4 | `theorem` | [dickson_two](../../../../../mathematics/Algebra/RingTheory/Dickson/Variantad4768b9ed3a3c833cc30af11585ff99040b361e1dddf0f49cd17d1b02709c84.lean/declarations/dickson-two--be793ef281d71ac71ad72ba1.md) | 85 | `result-track:be793ef281d71ac71ad72ba1b2350085dfe9ac7e10e7009477c8e390e602f520` |
| 5 | `theorem` | [dickson_add_two](../../../../../mathematics/Algebra/RingTheory/Dickson/Variantad4768b9ed3a3c833cc30af11585ff99040b361e1dddf0f49cd17d1b02709c84.lean/declarations/dickson-add-two--bf5fd04524d0b5b72bd48786.md) | 90 | `result-track:bf5fd04524d0b5b72bd48786c2be1a649ac4e5aea2e78e97a2066fa85d7130a3` |
| 6 | `theorem` | [dickson_of_two_le](../../../../../mathematics/Algebra/RingTheory/Dickson/Variantad4768b9ed3a3c833cc30af11585ff99040b361e1dddf0f49cd17d1b02709c84.lean/declarations/dickson-of-two-le--36f490a4a4b4d7e2b0dd9571.md) | 94 | `result-track:36f490a4a4b4d7e2b0dd9571f445fc17c779f0c814f3e3e978b873eaebc3630a` |
| 7 | `theorem` | [map_dickson](../../../../../mathematics/Algebra/RingTheory/Dickson/Variantad4768b9ed3a3c833cc30af11585ff99040b361e1dddf0f49cd17d1b02709c84.lean/declarations/map-dickson--736e452e4549207384e63f87.md) | 103 | `result-track:736e452e4549207384e63f87b7eb627dea95b6b713730c5e303290e6eea28257` |
| 8 | `theorem` | [dickson_two_zero](../../../../../mathematics/Algebra/RingTheory/Dickson/Variantad4768b9ed3a3c833cc30af11585ff99040b361e1dddf0f49cd17d1b02709c84.lean/declarations/dickson-two-zero--7d9a1cf7c0331e01cdcd5388.md) | 113 | `result-track:7d9a1cf7c0331e01cdcd5388cbacc9660297dc2f45bb8a87acd106b0463cd92a` |
| 9 | `theorem` | [dickson_one_one_eval_add_inv](../../../../../mathematics/Algebra/RingTheory/Dickson/Variantad4768b9ed3a3c833cc30af11585ff99040b361e1dddf0f49cd17d1b02709c84.lean/declarations/dickson-one-one-eval-add-inv--56b224be07eb5c24d33647ad.md) | 137 | `result-track:56b224be07eb5c24d33647ad04064d73fa61b2fe830194722e5805827820e2a5` |
| 10 | `theorem` | [two_mul_C_half_eq_one](../../../../../mathematics/Algebra/RingTheory/Dickson/Variantad4768b9ed3a3c833cc30af11585ff99040b361e1dddf0f49cd17d1b02709c84.lean/declarations/two-mul-c-half-eq-one--f45c5ab655efe6f2962b89b7.md) | 155 | `result-track:f45c5ab655efe6f2962b89b770113e92871d8350388d3fb755fbc12d1e2bb042` |
| 11 | `theorem` | [C_half_mul_two_eq_one](../../../../../mathematics/Algebra/RingTheory/Dickson/Variantad4768b9ed3a3c833cc30af11585ff99040b361e1dddf0f49cd17d1b02709c84.lean/declarations/c-half-mul-two-eq-one--ef3e2c714adc1cb96b059391.md) | 158 | `result-track:ef3e2c714adc1cb96b0593912cb1232e59c9eecc1401cb3d53c9ba2007c8bad2` |
| 12 | `theorem` | [dickson_one_one_eq_chebyshev_T](../../../../../mathematics/Algebra/RingTheory/Dickson/Variantad4768b9ed3a3c833cc30af11585ff99040b361e1dddf0f49cd17d1b02709c84.lean/declarations/dickson-one-one-eq-chebyshev-t--35849de4d66d7f61066c2bdf.md) | 161 | `result-track:35849de4d66d7f61066c2bdfbddccda19be1ba0d95dadd21d2dccc581574ed50` |
| 13 | `theorem` | [chebyshev_T_eq_dickson_one_one](../../../../../mathematics/Algebra/RingTheory/Dickson/Variantad4768b9ed3a3c833cc30af11585ff99040b361e1dddf0f49cd17d1b02709c84.lean/declarations/chebyshev-t-eq-dickson-one-one--66ce89814b69bfdff9638285.md) | 176 | `result-track:66ce89814b69bfdff96382854074a6580612a669d5ff647566ae64c12aeeea25` |
| 14 | `theorem` | [dickson_one_one_mul](../../../../../mathematics/Algebra/RingTheory/Dickson/Variantad4768b9ed3a3c833cc30af11585ff99040b361e1dddf0f49cd17d1b02709c84.lean/declarations/dickson-one-one-mul--d53379ac3aa74ca4416681db.md) | 185 | `result-track:d53379ac3aa74ca4416681dbdd7818edb742758974e387670b3516719d9b71cb` |
| 15 | `theorem` | [dickson_one_one_comp_comm](../../../../../mathematics/Algebra/RingTheory/Dickson/Variantad4768b9ed3a3c833cc30af11585ff99040b361e1dddf0f49cd17d1b02709c84.lean/declarations/dickson-one-one-comp-comm--a3a99fc282630e19f8fd7a50.md) | 202 | `result-track:a3a99fc282630e19f8fd7a50726e17f11c6f567205fbbf52e7d10b336c6802ad` |
| 16 | `theorem` | [dickson_one_one_zmod_p](../../../../../mathematics/Algebra/RingTheory/Dickson/Variantad4768b9ed3a3c833cc30af11585ff99040b361e1dddf0f49cd17d1b02709c84.lean/declarations/dickson-one-one-zmod-p--7944286fe4ed0ee94131f869.md) | 207 | `result-track:7944286fe4ed0ee94131f86966afbe328b0d0324e474d43b7f8222eeb53f922c` |
| 17 | `theorem` | [dickson_one_one_charP](../../../../../mathematics/Algebra/RingTheory/Dickson/Variantad4768b9ed3a3c833cc30af11585ff99040b361e1dddf0f49cd17d1b02709c84.lean/declarations/dickson-one-one-charp--54bc6e35e8237fc04bcda73e.md) | 276 | `result-track:54bc6e35e8237fc04bcda73efcd223b0a7d72d062db9837169c9ba93b72a9bbc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
