# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Fermat.Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a4cc10eaec9d5557201350faaf5ce9cbc315c11",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a4cc10eaec9d5557201350faaf5ce9cbc315c11`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LegendreSymbol.QuadraticReciprocity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LucasPrimality` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fermatNumber](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/declarations/fermatnumber--e6413563a16aa9074b1c30b8.md) | 39 | `declaration-track:e6413563a16aa9074b1c30b839c74d793e425a3a1f6f77aa40d7207dcf865858` |
| 2 | `theorem` | [fermatNumber_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/declarations/fermatnumber-zero--78a7373bfeb2090f7ee87baf.md) | 41 | `result-track:78a7373bfeb2090f7ee87baf737b9d4841a77906b6bb72cf0f4d5419d315fa63` |
| 3 | `theorem` | [fermatNumber_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/declarations/fermatnumber-one--74ae1448b5919f54569c433b.md) | 42 | `result-track:74ae1448b5919f54569c433b455547a55499328774163725a9e21a4fc95758bc` |
| 4 | `theorem` | [fermatNumber_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/declarations/fermatnumber-two--e58f22cb4faf2ae6e27ea15a.md) | 43 | `result-track:e58f22cb4faf2ae6e27ea15a9cf6ea948cfa048ad784b28d385eb2317c5b6936` |
| 5 | `theorem` | [fermatNumber_strictMono](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/declarations/fermatnumber-strictmono--831f38bab536dff4787f065d.md) | 45 | `result-track:831f38bab536dff4787f065d7d87c73ad6c0e05ab21af4cb76e87ce8f2720da5` |
| 6 | `lemma` | [fermatNumber_mono](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/declarations/fermatnumber-mono--68d25e779430323e12972a94.md) | 52 | `result-track:68d25e779430323e12972a944410cb81b86552cea0954d20ad88289697e7bbf6` |
| 7 | `lemma` | [fermatNumber_injective](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/declarations/fermatnumber-injective--2121d886dff4c13c51fc7d53.md) | 53 | `result-track:2121d886dff4c13c51fc7d531872c646ea27646ac01e0d57df6e5127d9967627` |
| 8 | `lemma` | [three_le_fermatNumber](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/declarations/three-le-fermatnumber--20a90ef4be9c74132574a010.md) | 55 | `result-track:20a90ef4be9c74132574a0100b324aeb088ff44746ce3a908a14b68d44abd3b9` |
| 9 | `lemma` | [two_lt_fermatNumber](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/declarations/two-lt-fermatnumber--3c2a764ff15203535e2eb1e6.md) | 56 | `result-track:3c2a764ff15203535e2eb1e626223ebff22c86923ba851824237681852633dbe` |
| 10 | `lemma` | [fermatNumber_ne_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/declarations/fermatnumber-ne-one--0855922dcc5881119729bb4d.md) | 58 | `result-track:0855922dcc5881119729bb4d9bbca86bb081ede0a863da3b8ff03ae19a0333ae` |
| 11 | `theorem` | [odd_fermatNumber](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/declarations/odd-fermatnumber--ca2dd62243a4d2a1b8a659d3.md) | 60 | `result-track:ca2dd62243a4d2a1b8a659d34bbb7cbe5302c02ddc723204084ff89be6235629` |
| 12 | `theorem` | [prod_fermatNumber](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/declarations/prod-fermatnumber--02bd6fe10bcf546a2a8375a7.md) | 63 | `result-track:02bd6fe10bcf546a2a8375a7a206d98789f7fd931e1d31b4f92dfa0d32f9808c` |
| 13 | `theorem` | [fermatNumber_eq_prod_add_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/declarations/fermatnumber-eq-prod-add-two--ab6bca74cd3dd5d3fe642168.md) | 72 | `result-track:ab6bca74cd3dd5d3fe642168bb31728545191a5393466095feb3840eda9a0a01` |
| 14 | `theorem` | [fermatNumber_succ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/declarations/fermatnumber-succ--477401c8048dabc8ffea266e.md) | 77 | `result-track:477401c8048dabc8ffea266ebb8922f449f7abcae242b6ac352bfbe577471a6a` |
| 15 | `theorem` | [two_mul_fermatNumber_sub_one_sq_le_fermatNumber_sq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/declarations/two-mul-fermatnumber-sub-one-sq-le-fermatnumber-sq--2b1cab1b7f8362e6ab3e980f.md) | 80 | `result-track:2b1cab1b7f8362e6ab3e980fcd07b4c47a00a2b0f661c22fff92e5334d67d834` |
| 16 | `theorem` | [fermatNumber_eq_fermatNumber_sq_sub_two_mul_fermatNumber_sub_one_sq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/declarations/fermatnumber-eq-fermatnumber-sq-sub-two-mul-fermatnumber-sub-one-sq--d69387d415ff689130300721.md) | 87 | `result-track:d69387d415ff68913030072119cee6ca7af2d447a35043705379bd2a5169f8c6` |
| 17 | `theorem` | [Int.fermatNumber_eq_fermatNumber_sq_sub_two_mul_fermatNumber_sub_one_sq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/declarations/int-fermatnumber-eq-fermatnumber-sq-sub-two-mul-fermatnumber-sub-one-sq--138bffc3ea47eea3324fe46b.md) | 97 | `result-track:138bffc3ea47eea3324fe46b749e1d474207226aeee39403cf7ca494f36bbf86` |
| 18 | `theorem` | [coprime_fermatNumber_fermatNumber](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/declarations/coprime-fermatnumber-fermatnumber--3826c29e4196157af8eb28e0.md) | 111 | `result-track:3826c29e4196157af8eb28e01c4c96e0c17b9ea8b5418e09e1cafd462cdbf5dc` |
| 19 | `lemma` | [pairwise_coprime_fermatNumber](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/declarations/pairwise-coprime-fermatnumber--c76833ba7d39c68e786028d5.md) | 122 | `result-track:c76833ba7d39c68e786028d562c5c5d4ed16287e0cb4b603fb4e87285428eb41` |
| 20 | `theorem` | [pow_of_pow_add_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/declarations/pow-of-pow-add-prime--8db348e3fb8fae7b9a6431d5.md) | 129 | `result-track:8db348e3fb8fae7b9a6431d516da6a6fca4c81fd0e465cdee6b5e8b425b93ea0` |
| 21 | `lemma` | [pepin_primality](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/declarations/pepin-primality--82d7f999a896aab84215a1d4.md) | 140 | `result-track:82d7f999a896aab84215a1d4419f9a57eb8eb115cd89c2ec418b9d579f7e67ac` |
| 22 | `lemma` | [pepin_primality'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/declarations/pepin-primality--433ce276bda71a16ecb6cdac.md) | 152 | `result-track:433ce276bda71a16ecb6cdac36b3e58d2a55554fd1e3d7b8c893ad97ff349f33` |
| 23 | `lemma` | [pow_pow_add_primeFactors_one_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/declarations/pow-pow-add-primefactors-one-lt--ee5495e9bc4aeb6f123e6857.md) | 161 | `result-track:ee5495e9bc4aeb6f123e68576ec094aed41ea165fd6984f9df74681057992d11` |
| 24 | `lemma` | [fermat_primeFactors_one_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/declarations/fermat-primefactors-one-lt--29beee59be62f7cd06897291.md) | 181 | `result-track:29beee59be62f7cd06897291b5b0b42c540f22c2b1d20130cb82e3a22d178888` |
| 25 | `theorem` | [prime_of_pow_sub_one_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/declarations/prime-of-pow-sub-one-prime--af40a5c993717579457d3168.md) | 206 | `result-track:af40a5c993717579457d31680a5e925344395d10c14c4f12f3464019c82e5570` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
