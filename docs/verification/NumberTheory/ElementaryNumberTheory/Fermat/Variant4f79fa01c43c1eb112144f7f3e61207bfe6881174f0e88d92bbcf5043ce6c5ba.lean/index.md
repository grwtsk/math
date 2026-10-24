# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Fermat.Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a89e18be1143bcabb78ed0ac8dbe1b98ecf1e396",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a89e18be1143bcabb78ed0ac8dbe1b98ecf1e396`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LegendreSymbol.QuadraticReciprocity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LucasPrimality` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fermatNumber](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean/declarations/fermatnumber--12f46cd3c87047e1ffa1f998.md) | 31 | `declaration-track:12f46cd3c87047e1ffa1f998707e36c891b6b342663d4a53c7718b279e787f05` |
| 2 | `theorem` | [fermatNumber_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean/declarations/fermatnumber-zero--33a8bd131e1e86abffdb9322.md) | 33 | `result-track:33a8bd131e1e86abffdb9322106db4f35b2b4ffd7746d1cb2ca001961b78744d` |
| 3 | `theorem` | [fermatNumber_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean/declarations/fermatnumber-one--e194fc843779e021c4643f7e.md) | 34 | `result-track:e194fc843779e021c4643f7ed7b3be70b850a587cf37c27f2f5cf5bad550d540` |
| 4 | `theorem` | [fermatNumber_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean/declarations/fermatnumber-two--7ed0e2727d57ab47749a5e44.md) | 35 | `result-track:7ed0e2727d57ab47749a5e449117b5c4c03baf30ed38bf60ad5a41ebdde30aac` |
| 5 | `theorem` | [fermatNumber_strictMono](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean/declarations/fermatnumber-strictmono--187144fc204880bf2ab5717c.md) | 37 | `result-track:187144fc204880bf2ab5717c6ce90d0d6a4b99c6277341e99c1fc758628d1496` |
| 6 | `lemma` | [fermatNumber_mono](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean/declarations/fermatnumber-mono--821a0d0c8bf385052209e592.md) | 44 | `result-track:821a0d0c8bf385052209e592adb8fa8348a0fe63189804e0498754e798b697f0` |
| 7 | `lemma` | [fermatNumber_injective](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean/declarations/fermatnumber-injective--1ae5683d1abc6203d1530e07.md) | 45 | `result-track:1ae5683d1abc6203d1530e07ad933c3be4f6b93539b4bb339fbca4321ec055b0` |
| 8 | `lemma` | [three_le_fermatNumber](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean/declarations/three-le-fermatnumber--3fc927a0fe63bb902ab2d934.md) | 47 | `result-track:3fc927a0fe63bb902ab2d934ecabe516e60e35643fce540a46d3d09e9e374d37` |
| 9 | `lemma` | [two_lt_fermatNumber](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean/declarations/two-lt-fermatnumber--a9c795e96457a62b3691622c.md) | 48 | `result-track:a9c795e96457a62b3691622c06afe4809ba5de46823e1cf4f9c2f2376260c7a2` |
| 10 | `lemma` | [fermatNumber_ne_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean/declarations/fermatnumber-ne-one--cd6525d8bc0ed78158665828.md) | 50 | `result-track:cd6525d8bc0ed78158665828d57f28094a93f37f58445e9495c444519ddfd00b` |
| 11 | `theorem` | [odd_fermatNumber](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean/declarations/odd-fermatnumber--110b4101f1c4defcbea530f9.md) | 52 | `result-track:110b4101f1c4defcbea530f99b2e466ddfdc9db00fad08e90b76aad7fe46eb4f` |
| 12 | `theorem` | [prod_fermatNumber](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean/declarations/prod-fermatnumber--25df1a95cc72c040cf8347cd.md) | 55 | `result-track:25df1a95cc72c040cf8347cda821c1015e38174be9afc7909c7bd17307503c71` |
| 13 | `theorem` | [fermatNumber_eq_prod_add_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean/declarations/fermatnumber-eq-prod-add-two--d0c1994cc85f2683d95cf7d0.md) | 64 | `result-track:d0c1994cc85f2683d95cf7d00baa13d8e73b143b819554b33efedf5281b9512a` |
| 14 | `theorem` | [fermatNumber_succ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean/declarations/fermatnumber-succ--22ead8a07a9282a9f867950b.md) | 69 | `result-track:22ead8a07a9282a9f867950b9262d44ab623fa2497d853834ec8d5938ab5288f` |
| 15 | `theorem` | [two_mul_fermatNumber_sub_one_sq_le_fermatNumber_sq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean/declarations/two-mul-fermatnumber-sub-one-sq-le-fermatnumber-sq--b545974413220ce13d032911.md) | 72 | `result-track:b545974413220ce13d0329115fbeb082ba605b4d44093646be4e1d785247ada5` |
| 16 | `theorem` | [fermatNumber_eq_fermatNumber_sq_sub_two_mul_fermatNumber_sub_one_sq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean/declarations/fermatnumber-eq-fermatnumber-sq-sub-two-mul-fermatnumber-sub-one-sq--b9e2b12726361775b0ce5f17.md) | 79 | `result-track:b9e2b12726361775b0ce5f1732f7205206a2164615063242a324acb62d6acf4e` |
| 17 | `theorem` | [Int.fermatNumber_eq_fermatNumber_sq_sub_two_mul_fermatNumber_sub_one_sq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean/declarations/int-fermatnumber-eq-fermatnumber-sq-sub-two-mul-fermatnumber-sub-one-sq--1bffb06c267f12aed870633b.md) | 89 | `result-track:1bffb06c267f12aed870633bd56d7fc3d264e70858ec786d23a003f7c8d98e33` |
| 18 | `theorem` | [coprime_fermatNumber_fermatNumber](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean/declarations/coprime-fermatnumber-fermatnumber--a619c67b209cf9391019f3b9.md) | 103 | `result-track:a619c67b209cf9391019f3b9fb9261e2453787ea0a6d07ca118f50264f95d940` |
| 19 | `lemma` | [pairwise_coprime_fermatNumber](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean/declarations/pairwise-coprime-fermatnumber--bdc397129f3574549bf55e51.md) | 114 | `result-track:bdc397129f3574549bf55e51fde1ce307be56eb41ac4aee716eba546f20b54f6` |
| 20 | `theorem` | [pow_of_pow_add_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean/declarations/pow-of-pow-add-prime--2211f3399ea31e317376efa6.md) | 121 | `result-track:2211f3399ea31e317376efa671fe193d0aff891aa8c302fc6906f65ac995735d` |
| 21 | `lemma` | [pepin_primality](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean/declarations/pepin-primality--4ae1c90c582d2ffd026ee46c.md) | 132 | `result-track:4ae1c90c582d2ffd026ee46cd03220ce4f55d83bbdc7bdeb549d77f195ede044` |
| 22 | `lemma` | [pepin_primality'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean/declarations/pepin-primality--ca9c055d0e43aa5d8b3cf6e5.md) | 144 | `result-track:ca9c055d0e43aa5d8b3cf6e55250d8fefb6d3ead01bcd4902464048836f2e802` |
| 23 | `lemma` | [pow_pow_add_primeFactors_one_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean/declarations/pow-pow-add-primefactors-one-lt--eedab2bc5b9adfd45ad6c26f.md) | 153 | `result-track:eedab2bc5b9adfd45ad6c26f672d5892244fc5217dbb49c254ed012ea2c5f062` |
| 24 | `lemma` | [fermat_primeFactors_one_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean/declarations/fermat-primefactors-one-lt--4f1f5b1b3f0df34efa182b90.md) | 173 | `result-track:4f1f5b1b3f0df34efa182b900cf2d20b8b3a153589910e64b7fc5713f953d7ba` |
| 25 | `theorem` | [prime_of_pow_sub_one_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Fermat/Variant4f79fa01c43c1eb112144f7f3e61207bfe6881174f0e88d92bbcf5043ce6c5ba.lean/declarations/prime-of-pow-sub-one-prime--2a2aac2d74bf7a423899a266.md) | 198 | `result-track:2a2aac2d74bf7a423899a266df92cc1674e0effcdb6d3fcd8ff73a1e62d843aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
