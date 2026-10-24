# Verification target: GRWTSK.Algebra.Basic.Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d00f7211e7c5d083e0ed110a599d691fb21114e2",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d00f7211e7c5d083e0ed110a599d691fb21114e2`.

Source path: `GRWTSK/Algebra/Basic/Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.FinitePresentation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FiniteStability` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Cotangent` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Nilpotent` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Away.AdjoinRoot` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Away.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [FormallySmooth](../../../../mathematics/Algebra/Basic/Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean/declarations/formallysmooth--c4fdf94112f32d1b1e26c9d4.md) | 46 | `declaration-track:c4fdf94112f32d1b1e26c9d44c659252f39db1de0f046195f3bc78ab3612930f` |
| 2 | `theorem` | [exists_lift](../../../../mathematics/Algebra/Basic/Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean/declarations/exists-lift--a9c6f0faa00f9ff834848128.md) | 62 | `result-track:a9c6f0faa00f9ff83484812890a18c404d31eb8742aecaed868d87faf2d6a6a4` |
| 3 | `def` | [lift](../../../../mathematics/Algebra/Basic/Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean/declarations/lift--f82311b79c9c7d21d9c13a86.md) | 86 | `declaration-track:f82311b79c9c7d21d9c13a864624469e75d971384394a2f8257dbf3235307f6e` |
| 4 | `theorem` | [comp_lift](../../../../mathematics/Algebra/Basic/Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean/declarations/comp-lift--0377a36ee0fb7e3c578ac15d.md) | 91 | `result-track:0377a36ee0fb7e3c578ac15d0e8bf213996fa73216372418595f5ec69d30f347` |
| 5 | `theorem` | [mk_lift](../../../../mathematics/Algebra/Basic/Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean/declarations/mk-lift--64cf9515cea0ec475676bf75.md) | 96 | `result-track:64cf9515cea0ec475676bf75f47c5d77c91b3b7609a078f344ebbabaad7e25b9` |
| 6 | `def` | [liftOfSurjective](../../../../mathematics/Algebra/Basic/Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean/declarations/liftofsurjective--1c2f4434c66f850632cf19e3.md) | 104 | `declaration-track:1c2f4434c66f850632cf19e32dbc6b64b6a6b25c5b4f37cac5bcec50e85c07b8` |
| 7 | `theorem` | [liftOfSurjective_apply](../../../../mathematics/Algebra/Basic/Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean/declarations/liftofsurjective-apply--c10aed90a7827289c5312b9d.md) | 110 | `result-track:c10aed90a7827289c5312b9d54c0406b909361d6f6f57d3384aac3291b06dddc` |
| 8 | `theorem` | [comp_liftOfSurjective](../../../../mathematics/Algebra/Basic/Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean/declarations/comp-liftofsurjective--9ebe6abd114b25b14cc3c431.md) | 121 | `result-track:9ebe6abd114b25b14cc3c431c8be9c9f5717e4f42c926e2e9525019be05c3057` |
| 9 | `theorem` | [of_equiv](../../../../mathematics/Algebra/Basic/Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean/declarations/of-equiv--e459a53c7a0214b217cd6757.md) | 133 | `result-track:e459a53c7a0214b217cd675738404b2107d87adf69b5a3bc1a1bc1ebc876bc60` |
| 10 | `theorem` | [iff_of_equiv](../../../../mathematics/Algebra/Basic/Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean/declarations/iff-of-equiv--7f88ebdd75078afd8cfca885.md) | 140 | `result-track:7f88ebdd75078afd8cfca8857b51a692b7a29276813e8b0dff5ef88470a844ce` |
| 11 | `instance` | [mvPolynomial](../../../../mathematics/Algebra/Basic/Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean/declarations/mvpolynomial--6e2b93462556afe174776190.md) | 151 | `declaration-track:6e2b93462556afe17477619061dfbafb931d0221d8a0594bd0c993fda30a895c` |
| 12 | `instance` | [polynomial](../../../../mathematics/Algebra/Basic/Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean/declarations/polynomial--b7fbfc2a339fb178fb78af3e.md) | 162 | `declaration-track:b7fbfc2a339fb178fb78af3e48a07e53b8e7f675a2a8c83ec9a1b68a377de01e` |
| 13 | `theorem` | [comp](../../../../mathematics/Algebra/Basic/Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean/declarations/comp--704bc47231feeeb7471585ea.md) | 173 | `result-track:704bc47231feeeb7471585eafd891fe0725e3435ec5289d9104045fd7b2eec02` |
| 14 | `theorem` | [of_split](../../../../mathematics/Algebra/Basic/Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean/declarations/of-split--882d685bae9b3558ee1dceb5.md) | 192 | `result-track:882d685bae9b3558ee1dceb582bb6369f549abedfbddff16833eff53b24c38aa` |
| 15 | `theorem` | [iff_split_surjection](../../../../mathematics/Algebra/Basic/Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean/declarations/iff-split-surjection--5159566af800c0a8a917c7bc.md) | 220 | `result-track:5159566af800c0a8a917c7bcb715e9fbb0cea20b9360fdccb85d21af504262da` |
| 16 | `instance` | [base_change](../../../../mathematics/Algebra/Basic/Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean/declarations/base-change--23e692f21b307e11579de64f.md) | 254 | `declaration-track:23e692f21b307e11579de64f67a8a85043be6175d3c7287a8ed98790b0b5eff8` |
| 17 | `theorem` | [of_isLocalization](../../../../mathematics/Algebra/Basic/Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean/declarations/of-islocalization--9f177794ca9f6627fdf223b3.md) | 281 | `result-track:9f177794ca9f6627fdf223b3fd0268b88365162fa44944e20ae74264ae22a0bc` |
| 18 | `theorem` | [localization_base](../../../../mathematics/Algebra/Basic/Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean/declarations/localization-base--322502e31e84b7860a72d0a0.md) | 297 | `result-track:322502e31e84b7860a72d0a06b3e72fbd52077321ba663e8819af9984bbd1e17` |
| 19 | `theorem` | [localization_map](../../../../mathematics/Algebra/Basic/Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean/declarations/localization-map--5db2afef25156b4d379e62ec.md) | 318 | `result-track:5db2afef25156b4d379e62ec90ba767e349f93bd86e72195739c0854ff18c61f` |
| 20 | `class` | [Smooth](../../../../mathematics/Algebra/Basic/Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean/declarations/smooth--0cef7fe722126d40a2ade082.md) | 335 | `declaration-track:0cef7fe722126d40a2ade082528f6b6cadb4c7b2fbb50215c8e8beda10899bb4` |
| 21 | `theorem` | [of_equiv](../../../../mathematics/Algebra/Basic/Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean/declarations/of-equiv--1f890b00570d537908ffc528.md) | 349 | `result-track:1f890b00570d537908ffc5284df8437ab92821a7d48a9342d35ca8f597960d98` |
| 22 | `theorem` | [of_isLocalization_Away](../../../../mathematics/Algebra/Basic/Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean/declarations/of-islocalization-away--56d19649e672d27e651279e5.md) | 354 | `result-track:56d19649e672d27e651279e57e2c7b42bfacd092d15f4ad5e1a7dc430751b165` |
| 23 | `theorem` | [comp](../../../../mathematics/Algebra/Basic/Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean/declarations/comp--b4a3f5d199e84aa16b60a434.md) | 363 | `result-track:b4a3f5d199e84aa16b60a4346429b5a3c9a4c1650301fcf7afd2159d357da149` |
| 24 | `instance` | [baseChange](../../../../mathematics/Algebra/Basic/Variant1b53c975649780f2040922e8f1769d10cff7c13d27e1b7ce6ce10a8875bd6c97.lean/declarations/basechange--61ff26f74875413e976e7794.md) | 368 | `declaration-track:61ff26f74875413e976e7794489709fed6ae4a004dfc42828e34ca13b20e25da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
