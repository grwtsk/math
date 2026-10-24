# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Weight.Variant4dc2abece132982c53eff4f927b8c62a54c83b7f26fee1a7756dec1e51c2da47

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d36ad13c596b07c4b8344a57d60ab248f707ad5c",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Weight/Variant4dc2abece132982c53eff4f927b8c62a54c83b7f26fee1a7756dec1e51c2da47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variant4dc2abece132982c53eff4f927b8c62a54c83b7f26fee1a7756dec1e51c2da47.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variant4dc2abece132982c53eff4f927b8c62a54c83b7f26fee1a7756dec1e51c2da47.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d36ad13c596b07c4b8344a57d60ab248f707ad5c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Weight/Variant4dc2abece132982c53eff4f927b8c62a54c83b7f26fee1a7756dec1e51c2da47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Weight/Variant4dc2abece132982c53eff4f927b8c62a54c83b7f26fee1a7756dec1e51c2da47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Antidiagonal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.LinearCombination` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variant4dc2abece132982c53eff4f927b8c62a54c83b7f26fee1a7756dec1e51c2da47.lean/declarations/weight--9cd3978735b0ce458f21bed6.md) | 73 | `declaration-track:9cd3978735b0ce458f21bed6f79cc1da073740591f635ffe858f5a6e7c9e7f44` |
| 2 | `theorem` | [weight_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variant4dc2abece132982c53eff4f927b8c62a54c83b7f26fee1a7756dec1e51c2da47.lean/declarations/weight-apply--e9c4eabbf1be9e3d19b29c63.md) | 76 | `result-track:e9c4eabbf1be9e3d19b29c631204fa04010b40e0741ff62e17c66545ae5de56b` |
| 3 | `theorem` | [weight_single_index](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variant4dc2abece132982c53eff4f927b8c62a54c83b7f26fee1a7756dec1e51c2da47.lean/declarations/weight-single-index--787d76a739925ccc651b423c.md) | 79 | `result-track:787d76a739925ccc651b423ceb0fb7573e72f41cab751a94f8dc9aee312a9059` |
| 4 | `theorem` | [weight_single_one_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variant4dc2abece132982c53eff4f927b8c62a54c83b7f26fee1a7756dec1e51c2da47.lean/declarations/weight-single-one-apply--3a6dd5c806cf524f4b711478.md) | 83 | `result-track:3a6dd5c806cf524f4b711478f6bf2c468c7dd3ff7435c45ee4b3b4b563fa05b9` |
| 5 | `theorem` | [weight_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variant4dc2abece132982c53eff4f927b8c62a54c83b7f26fee1a7756dec1e51c2da47.lean/declarations/weight-single--ec7494ed8c9b09e00b21fc30.md) | 87 | `result-track:ec7494ed8c9b09e00b21fc30cd4e40f229b22a5ca1b920a650ffb7bc681df8e1` |
| 6 | `class` | [NonTorsionWeight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variant4dc2abece132982c53eff4f927b8c62a54c83b7f26fee1a7756dec1e51c2da47.lean/declarations/nontorsionweight--b2a55089c170a4ed5b50c70f.md) | 93 | `declaration-track:b2a55089c170a4ed5b50c70ff923dcd8e5676ee9f763e095a2658ea95b6a7bf2` |
| 7 | `theorem` | [nonTorsionWeight_of](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variant4dc2abece132982c53eff4f927b8c62a54c83b7f26fee1a7756dec1e51c2da47.lean/declarations/nontorsionweight-of--73af2b1b9d67857890245dff.md) | 98 | `result-track:73af2b1b9d67857890245dff2050ab32306557c4afca59fb29a8f88d22ca84fe` |
| 8 | `theorem` | [NonTorsionWeight.ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variant4dc2abece132982c53eff4f927b8c62a54c83b7f26fee1a7756dec1e51c2da47.lean/declarations/nontorsionweight-ne-zero--baf631fe536149acc93dbc35.md) | 105 | `result-track:baf631fe536149acc93dbc35dc5ed7412953df8bef2284b364b4e4e18de24645` |
| 9 | `lemma` | [weight_sub_single_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variant4dc2abece132982c53eff4f927b8c62a54c83b7f26fee1a7756dec1e51c2da47.lean/declarations/weight-sub-single-add--fe40d72648d11e91ed073308.md) | 112 | `result-track:fe40d72648d11e91ed073308612d4bcfe450e6b9af85cccc1aec730f6842c861` |
| 10 | `theorem` | [le_weight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variant4dc2abece132982c53eff4f927b8c62a54c83b7f26fee1a7756dec1e51c2da47.lean/declarations/le-weight--a17270c29e618ccbaa3b638e.md) | 122 | `result-track:a17270c29e618ccbaa3b638e57471173e6104ecd5bbb4c3a286b57851940c3de` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variant4dc2abece132982c53eff4f927b8c62a54c83b7f26fee1a7756dec1e51c2da47.lean/declarations/instance--ed2014eb57ecc34b39e20485.md) | 139 | `declaration-track:ed2014eb57ecc34b39e204851365983be9ee2fa62ef646ac2695e0f241428114` |
| 12 | `theorem` | [le_weight_of_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variant4dc2abece132982c53eff4f927b8c62a54c83b7f26fee1a7756dec1e51c2da47.lean/declarations/le-weight-of-ne-zero--eebfd4c7f3d8d13efdd22e12.md) | 145 | `result-track:eebfd4c7f3d8d13efdd22e12fdcbb16306227e04444c8d736dcd0214bb30db73` |
| 13 | `theorem` | [le_weight_of_ne_zero'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variant4dc2abece132982c53eff4f927b8c62a54c83b7f26fee1a7756dec1e51c2da47.lean/declarations/le-weight-of-ne-zero--05329a54bc30005f75921d9c.md) | 164 | `result-track:05329a54bc30005f75921d9c2aec40691b5c11f3595725ec6add1a71f19e2a96` |
| 14 | `theorem` | [weight_eq_zero_iff_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variant4dc2abece132982c53eff4f927b8c62a54c83b7f26fee1a7756dec1e51c2da47.lean/declarations/weight-eq-zero-iff-eq-zero--6a0a06a4b1cfc3a38aadbc2c.md) | 169 | `result-track:6a0a06a4b1cfc3a38aadbc2c1e6b6aa069c66e0b4aa4142c52274238e9746fd9` |
| 15 | `theorem` | [finite_of_nat_weight_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variant4dc2abece132982c53eff4f927b8c62a54c83b7f26fee1a7756dec1e51c2da47.lean/declarations/finite-of-nat-weight-le--bb44a7768c1b1ce7b2fdca79.md) | 184 | `result-track:bb44a7768c1b1ce7b2fdca796be437f078f60bc0aa5546bdec2e3a27346850f2` |
| 16 | `def` | [degree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variant4dc2abece132982c53eff4f927b8c62a54c83b7f26fee1a7756dec1e51c2da47.lean/declarations/degree--c324046f237139735bfdc01e.md) | 208 | `declaration-track:c324046f237139735bfdc01e3ee38321c130976aba66832cba6d4bede8f41b85` |
| 17 | `theorem` | [degree_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variant4dc2abece132982c53eff4f927b8c62a54c83b7f26fee1a7756dec1e51c2da47.lean/declarations/degree-add--c13c3199a8de3c984b0a2036.md) | 211 | `result-track:c13c3199a8de3c984b0a2036559de7a7dc2ac2ebd25471773e5b1376ccdb15f1` |
| 18 | `theorem` | [degree_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variant4dc2abece132982c53eff4f927b8c62a54c83b7f26fee1a7756dec1e51c2da47.lean/declarations/degree-single--5991e3d114425b0c4398cb88.md) | 215 | `result-track:5991e3d114425b0c4398cb88624b56493eb50061079653a50e4bcd3526de1a33` |
| 19 | `theorem` | [degree_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variant4dc2abece132982c53eff4f927b8c62a54c83b7f26fee1a7756dec1e51c2da47.lean/declarations/degree-zero--bf21f2881b56723093ce8858.md) | 219 | `result-track:bf21f2881b56723093ce8858f55b5be620b76c0dc7d2bf70e682275246406b28` |
| 20 | `lemma` | [degree_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variant4dc2abece132982c53eff4f927b8c62a54c83b7f26fee1a7756dec1e51c2da47.lean/declarations/degree-eq-zero-iff--41a3707294bf4f6582840055.md) | 221 | `result-track:41a3707294bf4f65828400552ad819a1cd2210c62e027de1b906178b8e6a2e57` |
| 21 | `theorem` | [le_degree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variant4dc2abece132982c53eff4f927b8c62a54c83b7f26fee1a7756dec1e51c2da47.lean/declarations/le-degree--8c5707fa50ac92847a4632a6.md) | 228 | `result-track:8c5707fa50ac92847a4632a663aaddb0d3d9981dc48f68976c840e92313158ef` |
| 22 | `theorem` | [degree_eq_weight_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variant4dc2abece132982c53eff4f927b8c62a54c83b7f26fee1a7756dec1e51c2da47.lean/declarations/degree-eq-weight-one--58f5f4c855082f4181f962e7.md) | 237 | `result-track:58f5f4c855082f4181f962e7be53c58dbf5dc5eaed3ffe093759a95e3fc66105` |
| 23 | `theorem` | [finite_of_degree_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Weight/Variant4dc2abece132982c53eff4f927b8c62a54c83b7f26fee1a7756dec1e51c2da47.lean/declarations/finite-of-degree-le--260d58b000f25b4248df6581.md) | 242 | `result-track:260d58b000f25b4248df658195f7df6d678908111d3859bd3f9c11632ae6c297` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
