# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Associated.Variantc6a11b8b85448cea5b4c7790224b4ac0aaeb3d805c4c97fbd56db895049f5200

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87fb9570516c4b23c5ccbd0433524661cc14e1c2",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Associated/Variantc6a11b8b85448cea5b4c7790224b4ac0aaeb3d805c4c97fbd56db895049f5200.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variantc6a11b8b85448cea5b4c7790224b4ac0aaeb3d805c4c97fbd56db895049f5200.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variantc6a11b8b85448cea5b4c7790224b4ac0aaeb3d805c4c97fbd56db895049f5200.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87fb9570516c4b23c5ccbd0433524661cc14e1c2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Associated/Variantc6a11b8b85448cea5b4c7790224b4ac0aaeb3d805c4c97fbd56db895049f5200.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Associated/Variantc6a11b8b85448cea5b4c7790224b4ac0aaeb3d805c4c97fbd56db895049f5200.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Associated` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Finsupp` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_mem_multiset_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variantc6a11b8b85448cea5b4c7790224b4ac0aaeb3d805c4c97fbd56db895049f5200.lean/declarations/exists-mem-multiset-dvd--ba45df1303fab05712d8a272.md) | 39 | `result-track:ba45df1303fab05712d8a272e9f2bb011c6fe15f16ed8e7eaa149f54c81f8e96` |
| 2 | `theorem` | [exists_mem_multiset_map_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variantc6a11b8b85448cea5b4c7790224b4ac0aaeb3d805c4c97fbd56db895049f5200.lean/declarations/exists-mem-multiset-map-dvd--7193e145f2249c7a237371f9.md) | 49 | `result-track:7193e145f2249c7a237371f95d497f8e3300f3c4938846565635d88771dbb9f0` |
| 3 | `theorem` | [exists_mem_finset_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variantc6a11b8b85448cea5b4c7790224b4ac0aaeb3d805c4c97fbd56db895049f5200.lean/declarations/exists-mem-finset-dvd--b3e187c690b4fc07d917d38c.md) | 55 | `result-track:b3e187c690b4fc07d917d38cb8c3be2cd1e97977607a5aba8475f7fe13de0418` |
| 4 | `theorem` | [exists_associated_mem_of_dvd_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variantc6a11b8b85448cea5b4c7790224b4ac0aaeb3d805c4c97fbd56db895049f5200.lean/declarations/exists-associated-mem-of-dvd-prod--d206453aaec2386e39618345.md) | 61 | `result-track:d206453aaec2386e39618345cec704a56b9b0ab4f33dd26c61232f26cde59a80` |
| 5 | `theorem` | [Multiset.prod_primes_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variantc6a11b8b85448cea5b4c7790224b4ac0aaeb3d805c4c97fbd56db895049f5200.lean/declarations/multiset-prod-primes-dvd--32206f86dc5461a16a8f67d4.md) | 72 | `result-track:32206f86dc5461a16a8f67d43970f85ef7b65a1f8f5c3129aa412c8a23eaa97a` |
| 6 | `theorem` | [Finset.prod_primes_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variantc6a11b8b85448cea5b4c7790224b4ac0aaeb3d805c4c97fbd56db895049f5200.lean/declarations/finset-prod-primes-dvd--ab99820f672a2a458bc5bc6e.md) | 93 | `result-track:ab99820f672a2a458bc5bc6e231243e3674d4b5cdc020b6567bf98e35caad7fb` |
| 7 | `theorem` | [prod_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variantc6a11b8b85448cea5b4c7790224b4ac0aaeb3d805c4c97fbd56db895049f5200.lean/declarations/prod-mk--f0f539d7d7802ec8b16da379.md) | 117 | `result-track:f0f539d7d7802ec8b16da379113944ee12449592c592d2e625d5c4f64fefe325` |
| 8 | `theorem` | [finset_prod_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variantc6a11b8b85448cea5b4c7790224b4ac0aaeb3d805c4c97fbd56db895049f5200.lean/declarations/finset-prod-mk--61263592958185263ca7f924.md) | 121 | `result-track:61263592958185263ca7f92497903b0556541d6e430dc1a5a35282dad3e8a0e8` |
| 9 | `theorem` | [rel_associated_iff_map_eq_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variantc6a11b8b85448cea5b4c7790224b4ac0aaeb3d805c4c97fbd56db895049f5200.lean/declarations/rel-associated-iff-map-eq-map--feac5eb0d4b2d488993d96c1.md) | 129 | `result-track:feac5eb0d4b2d488993d96c1a7ae570aafd39c57ef6f73e444774f6fbb76e9d4` |
| 10 | `theorem` | [prod_eq_one_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variantc6a11b8b85448cea5b4c7790224b4ac0aaeb3d805c4c97fbd56db895049f5200.lean/declarations/prod-eq-one-iff--0bc16685bfafa0f35657debd.md) | 135 | `result-track:0bc16685bfafa0f35657debda9fef2949faa4efd4657991b74dac928a229b124` |
| 11 | `theorem` | [prod_le_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variantc6a11b8b85448cea5b4c7790224b4ac0aaeb3d805c4c97fbd56db895049f5200.lean/declarations/prod-le-prod--11dcf6ac484b75cc02db5da5.md) | 141 | `result-track:11dcf6ac484b75cc02db5da55af0ac0d3a5d92e137a447c94e22e508388f58ee` |
| 12 | `theorem` | [exists_mem_multiset_le_of_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variantc6a11b8b85448cea5b4c7790224b4ac0aaeb3d805c4c97fbd56db895049f5200.lean/declarations/exists-mem-multiset-le-of-prime--50e6a635c93d6fc398b08bd4.md) | 155 | `result-track:50e6a635c93d6fc398b08bd46738c3526956a9814f508389dad4c81ba212ff4f` |
| 13 | `theorem` | [prod_ne_zero_of_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variantc6a11b8b85448cea5b4c7790224b4ac0aaeb3d805c4c97fbd56db895049f5200.lean/declarations/prod-ne-zero-of-prime--8bdf81287a5f5607e47ca44c.md) | 173 | `result-track:8bdf81287a5f5607e47ca44cf91271001e8ff78309d9623ff1bd10bcd81dcce7` |
| 14 | `theorem` | [Prime.dvd_finset_prod_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variantc6a11b8b85448cea5b4c7790224b4ac0aaeb3d805c4c97fbd56db895049f5200.lean/declarations/prime-dvd-finset-prod-iff--ffc923d90cbd0f2c52e4bcb6.md) | 186 | `result-track:ffc923d90cbd0f2c52e4bcb68f678b2f9656a7bbc51c58dafa504c047456aae8` |
| 15 | `theorem` | [Prime.dvd_finsupp_prod_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variantc6a11b8b85448cea5b4c7790224b4ac0aaeb3d805c4c97fbd56db895049f5200.lean/declarations/prime-dvd-finsupp-prod-iff--0a1b07f7bd7fbfdd6886aeac.md) | 191 | `result-track:0a1b07f7bd7fbfdd6886aeac9368b5bc00d28ee077f21968e1bc7cac3ca8ab0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
