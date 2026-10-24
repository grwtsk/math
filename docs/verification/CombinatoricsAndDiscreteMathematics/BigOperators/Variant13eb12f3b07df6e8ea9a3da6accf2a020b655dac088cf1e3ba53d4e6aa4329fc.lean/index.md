# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bf478d512f22fb33302c1b669ca17baeb45c022",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bf478d512f22fb33302c1b669ca17baeb45c022`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Option` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Powerset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sigma` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sum` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Vector` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Option` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_bool](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean/declarations/prod-bool--06166948ce1cf20d5e5f39b7.md) | 47 | `result-track:06166948ce1cf20d5e5f39b7ddaed0f543cc3801f1bdf578e98602b54be5286c` |
| 2 | `theorem` | [card_eq_sum_ones](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean/declarations/card-eq-sum-ones--43af1808d6152b97f9e4ac7e.md) | 51 | `result-track:43af1808d6152b97f9e4ac7ebc343058828c7c68468d4a6dd4cacae2172fd77e` |
| 3 | `theorem` | [prod_extend_by_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean/declarations/prod-extend-by-one--803eb3dfba79fc29d2afd850.md) | 62 | `result-track:803eb3dfba79fc29d2afd85031f09c563a8bf8cccd02539627b6ffaba0b7382c` |
| 4 | `theorem` | [prod_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean/declarations/prod-eq-one--b446424f397b6e81c8b6f931.md) | 75 | `result-track:b446424f397b6e81c8b6f931abc7521e1cb112bdae4d84206ca09ef8eae8aa4c` |
| 5 | `theorem` | [prod_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean/declarations/prod-congr--e74f4a7fbd541806434b3940.md) | 81 | `result-track:e74f4a7fbd541806434b394029bff387cd9c5b3a701d41948614474e28f640dc` |
| 6 | `theorem` | [prod_eq_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean/declarations/prod-eq-single--6a23cb3570238f229cb78604.md) | 87 | `result-track:6a23cb3570238f229cb7860474c073a5db7e25619cfe5d5c4f9acd132ade691f` |
| 7 | `theorem` | [prod_eq_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean/declarations/prod-eq-mul--a45f75c392393ea5790de520.md) | 93 | `result-track:a45f75c392393ea5790de5208badfba3246d83926f389395fb3a448b6768543f` |
| 8 | `theorem` | [eq_of_subsingleton_of_prod_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean/declarations/eq-of-subsingleton-of-prod-eq--c977cda018509034b7a98b68.md) | 104 | `result-track:c977cda018509034b7a98b685e7dfb5da8fa2d76fa9cff261d4ee08723bfc67d` |
| 9 | `theorem` | [Fintype.prod_option](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean/declarations/fintype-prod-option--e47575710b4b329cd675df99.md) | 121 | `result-track:e47575710b4b329cd675df9958de9207fcdf641ffdc4b95ddf8a3924abee1d4b` |
| 10 | `theorem` | [Fintype.card_sigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean/declarations/fintype-card-sigma--e82b28ffcb25bad6c5c3fc00.md) | 131 | `result-track:e82b28ffcb25bad6c5c3fc00c641a2e1cddb0c07ee2733c469187506a33d8e09` |
| 11 | `theorem` | [Finset.card_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean/declarations/finset-card-pi--939c02d762fcc0f653edb579.md) | 137 | `result-track:939c02d762fcc0f653edb579ec803717d530a1c0f47526452bc4564cca6ce335` |
| 12 | `theorem` | [Fintype.card_piFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean/declarations/fintype-card-pifinset--6423e17e1e6c69a14762a720.md) | 143 | `result-track:6423e17e1e6c69a14762a7206a1926a7c7941c725b96f6896c65581d9894bb90` |
| 13 | `theorem` | [Fintype.card_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean/declarations/fintype-card-pi--d8b7d837490ae636e2855648.md) | 148 | `result-track:d8b7d837490ae636e2855648747195afafbbb419f10c1497b6d12eda57d9c3b9` |
| 14 | `theorem` | [Fintype.card_fun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean/declarations/fintype-card-fun--7d987766b2e04abafce69fd0.md) | 155 | `result-track:7d987766b2e04abafce69fd0a010021141f57c592d26e18cb8095c42650a027c` |
| 15 | `theorem` | [card_vector](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean/declarations/card-vector--5749b63ecc426c737fed3864.md) | 161 | `result-track:5749b63ecc426c737fed38644f0dcd502b0d981095034533764abea61e98822e` |
| 16 | `theorem` | [Finset.prod_attach_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean/declarations/finset-prod-attach-univ--98415fe043ded4aaaf688c4c.md) | 166 | `result-track:98415fe043ded4aaaf688c4c82fba7451f73d1eec0fba183a7b58387aee77474` |
| 17 | `theorem` | [Finset.prod_univ_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean/declarations/finset-prod-univ-pi--8af99c8c9490097293f5bded.md) | 180 | `result-track:8af99c8c9490097293f5bded7c40da07c2623364e6900afb3e947b404e12d610` |
| 18 | `theorem` | [Finset.prod_univ_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean/declarations/finset-prod-univ-sum--ded812a1db79c33cac36bf59.md) | 196 | `result-track:ded812a1db79c33cac36bf599e97221be37ed2aa6cff4d41859d58e26a1cbdf4` |
| 19 | `theorem` | [Fintype.sum_pow_mul_eq_add_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean/declarations/fintype-sum-pow-mul-eq-add-pow--786b2c2f916e99e28cb74d1a.md) | 206 | `result-track:786b2c2f916e99e28cb74d1ad7e1326f5faab7740872c2cecab41004bcb9b3f1` |
| 20 | `theorem` | [Function.Bijective.prod_comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean/declarations/function-bijective-prod-comp--255916cdce0bebe118a98a5c.md) | 213 | `result-track:255916cdce0bebe118a98a5c58be4a1338478e7c99a0136599e01f89440d1419` |
| 21 | `theorem` | [Equiv.prod_comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean/declarations/equiv-prod-comp--812bb9c219d79dc9b163a639.md) | 220 | `result-track:812bb9c219d79dc9b163a6394f6ccb47ce524f3c20f4547212ae40aed775c530` |
| 22 | `theorem` | [Equiv.prod_comp'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean/declarations/equiv-prod-comp--5dd21b776170529a002f25b6.md) | 227 | `result-track:5dd21b776170529a002f25b6fe300d47a649e88300b52399a0018337c4069dfb` |
| 23 | `theorem` | [Fin.prod_univ_eq_prod_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean/declarations/fin-prod-univ-eq-prod-range--804824a27af594ed3c1d10d3.md) | 235 | `result-track:804824a27af594ed3c1d10d33d4e4224f36736b0508092429988630c652ebaae` |
| 24 | `theorem` | [Finset.prod_fin_eq_prod_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean/declarations/finset-prod-fin-eq-prod-range--a1533e7140f950a174347e98.md) | 245 | `result-track:a1533e7140f950a174347e98b809185dc62ad5db9fac133cc43dc784d36d5d41` |
| 25 | `theorem` | [Finset.prod_toFinset_eq_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean/declarations/finset-prod-tofinset-eq-subtype--e32f0b634d61be8cf02b06c7.md) | 254 | `result-track:e32f0b634d61be8cf02b06c76c92f3bcb169d18896bb337996601fac775e0157` |
| 26 | `theorem` | [Finset.prod_fiberwise](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean/declarations/finset-prod-fiberwise--16b8a0932e025a6f9033a006.md) | 262 | `result-track:16b8a0932e025a6f9033a006b5340c514a4869faccf8879f2d87f7e9ae5619c1` |
| 27 | `theorem` | [Fintype.prod_fiberwise](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean/declarations/fintype-prod-fiberwise--12f80e088834824cfe4e1402.md) | 269 | `result-track:12f80e088834824cfe4e1402d12ea6d044a7e3e1859f9260f52068b394a32b5c` |
| 28 | `theorem` | [Fintype.prod_dite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean/declarations/fintype-prod-dite--1d6b5f9591efc20eb2d13edf.md) | 276 | `result-track:1d6b5f9591efc20eb2d13edf72726a43bd27fe9ff9dc2b9a4b127aa7b1f57e96` |
| 29 | `theorem` | [Fintype.prod_sum_elim](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean/declarations/fintype-prod-sum-elim--39608e5959dcb6088ab8f482.md) | 293 | `result-track:39608e5959dcb6088ab8f4824f716b7d5b364b5b0ec052a19e004a55cbec902f` |
| 30 | `theorem` | [Fintype.prod_sum_type](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant13eb12f3b07df6e8ea9a3da6accf2a020b655dac088cf1e3ba53d4e6aa4329fc.lean/declarations/fintype-prod-sum-type--2a38ca2bbfa6399c83f9da7e.md) | 300 | `result-track:2a38ca2bbfa6399c83f9da7ea86633e50ee310be87fe6e74fb4ef503ab578656` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
