# Verification target: GRWTSK.Algebra.RingTheory.Radical.Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c81498ae46e0d563802f0256975b88aa105b46d",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c81498ae46e0d563802f0256975b88aa105b46d`.

Source path: `GRWTSK/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Finset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coprime.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.NormalizedFactors` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeFactors](../../../../../mathematics/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean/declarations/primefactors--4fe95e305eddf6619d490486.md) | 66 | `declaration-track:4fe95e305eddf6619d4904863500b419eb4f555d838577e043e70519afab0316` |
| 2 | `theorem` | [_root_.GRWTSK.Algebra.RingTheory.PrimeFactors.Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.Associated.primeFactors_eq](../../../../../mathematics/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean/declarations/root-grwtsk-algebra-ringtheory-primefactors-variant484547e188f6e204f7b85--662061fc8d200ab38bd5b860.md) | 69 | `result-track:662061fc8d200ab38bd5b86047f334674d6972ea565f892427c629e51f67b9c9` |
| 3 | `def` | [radical](../../../../../mathematics/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean/declarations/radical--0e6ede55a2c5cb72cd11cc7d.md) | 79 | `declaration-track:0e6ede55a2c5cb72cd11cc7d926172d1e87cd2deeb7826d6b177704e701393dd` |
| 4 | `theorem` | [radical_zero_eq](../../../../../mathematics/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean/declarations/radical-zero-eq--50e1bb57edf9af47a3549168.md) | 83 | `result-track:50e1bb57edf9af47a35491683f37e1b13d5fe1bec891a9aa18d3ad48c6f6b945` |
| 5 | `theorem` | [radical_one_eq](../../../../../mathematics/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean/declarations/radical-one-eq--078046cc47ca227df1390614.md) | 88 | `result-track:078046cc47ca227df1390614f08bb9beafaa026fb80298eb1856eef1ffd03124` |
| 6 | `theorem` | [radical_eq_of_associated](../../../../../mathematics/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean/declarations/radical-eq-of-associated--8c388f56cc8f389c4b009dd9.md) | 92 | `result-track:8c388f56cc8f389c4b009dd9bb508bd9185160ed84256a987656cdfd49ba705e` |
| 7 | `theorem` | [radical_of_isUnit](../../../../../mathematics/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean/declarations/radical-of-isunit--83041ce1462f28e43712c0b6.md) | 96 | `result-track:83041ce1462f28e43712c0b685f9e325ce93334cd88368920b576b11626eacfe` |
| 8 | `theorem` | [radical_mul_of_isUnit_left](../../../../../mathematics/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean/declarations/radical-mul-of-isunit-left--b03120a06119cccc30ac452e.md) | 99 | `result-track:b03120a06119cccc30ac452ef0d229a3b05fdbc63a963edfe619b6a2e0b333cc` |
| 9 | `theorem` | [radical_mul_of_isUnit_right](../../../../../mathematics/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean/declarations/radical-mul-of-isunit-right--77d25e8d90ba47b321e8cf0a.md) | 102 | `result-track:77d25e8d90ba47b321e8cf0aa1bd85ba3b778a9139b36e1de06360b282b16133` |
| 10 | `theorem` | [primeFactors_pow](../../../../../mathematics/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean/declarations/primefactors-pow--3bb8c4ae322db7f04abfae41.md) | 105 | `result-track:3bb8c4ae322db7f04abfae415176726c20f535c9551001fb1c3fa31994e544b2` |
| 11 | `theorem` | [radical_pow](../../../../../mathematics/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean/declarations/radical-pow--05b100ef987d74d01117d16c.md) | 108 | `result-track:05b100ef987d74d01117d16c71049a03b00a8e454b03ae12fca36d695792d3cc` |
| 12 | `theorem` | [radical_dvd_self](../../../../../mathematics/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean/declarations/radical-dvd-self--d85873e5034531e36021e73e.md) | 111 | `result-track:d85873e5034531e36021e73e01a20964d6ea35e685ad606b1e4974cd6097368a` |
| 13 | `theorem` | [radical_of_prime](../../../../../mathematics/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean/declarations/radical-of-prime--f5693f6f882c728b5bd41f55.md) | 121 | `result-track:f5693f6f882c728b5bd41f55320f83adfc046ca4c298bfb5d41c0b7974e3d189` |
| 14 | `theorem` | [radical_pow_of_prime](../../../../../mathematics/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean/declarations/radical-pow-of-prime--f6c3611abfc760c334e14cc1.md) | 126 | `result-track:f6c3611abfc760c334e14cc1015f3a3233ede91da03a54e2175039ae535e5da2` |
| 15 | `theorem` | [radical_ne_zero](../../../../../mathematics/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean/declarations/radical-ne-zero--3d20309e64900424ec906634.md) | 131 | `result-track:3d20309e64900424ec906634f413e643a5f484eb8475b68ff9eb861d8418fe08` |
| 16 | `theorem` | [disjoint_normalizedFactors](../../../../../mathematics/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean/declarations/disjoint-normalizedfactors--68ac74df44f73d8041f4bd66.md) | 149 | `result-track:68ac74df44f73d8041f4bd66b83b81edbd341ca9d10f82260596365bbe3ee821` |
| 17 | `theorem` | [disjoint_primeFactors](../../../../../mathematics/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean/declarations/disjoint-primefactors--b8c4a03ab848ac8db351442a.md) | 159 | `result-track:b8c4a03ab848ac8db351442ab0cc13a16dcd20da8619c1f5e7c5bb390c43e2aa` |
| 18 | `theorem` | [mul_primeFactors_disjUnion](../../../../../mathematics/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean/declarations/mul-primefactors-disjunion--1881169cbfc1a82cf5fd5d9e.md) | 164 | `result-track:1881169cbfc1a82cf5fd5d9efedbbd565d0d68dcd5beec369ec3120d80d521ed` |
| 19 | `theorem` | [radical_neg_one](../../../../../mathematics/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean/declarations/radical-neg-one--f572bc0a99ed3eda4a0f0a77.md) | 174 | `result-track:f572bc0a99ed3eda4a0f0a77269df62c90930169b3ae9eaf18864c934114ef57` |
| 20 | `theorem` | [radical_mul](../../../../../mathematics/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean/declarations/radical-mul--cb5f1cca5522074acc98d24d.md) | 178 | `result-track:cb5f1cca5522074acc98d24df0f33591f9951297858ccd4c2a6fc0eadf6250d9` |
| 21 | `theorem` | [radical_neg](../../../../../mathematics/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean/declarations/radical-neg--7f197faba37894ecae24e5f0.md) | 190 | `result-track:7f197faba37894ecae24e5f0fba5ba27c20cd70949101011d72951b21ad7799e` |
| 22 | `def` | [divRadical](../../../../../mathematics/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean/declarations/divradical--8fcd079796b82b1920b19ff9.md) | 201 | `declaration-track:8fcd079796b82b1920b19ff99fd3a2ca10df058e4979c6084954455d5d936504` |
| 23 | `theorem` | [radical_mul_divRadical](../../../../../mathematics/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean/declarations/radical-mul-divradical--bf8b97669492926699d53981.md) | 203 | `result-track:bf8b97669492926699d53981f5fcb9e16c987f5aac152c494dab91ce87b99742` |
| 24 | `theorem` | [divRadical_mul_radical](../../../../../mathematics/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean/declarations/divradical-mul-radical--e3f050216cb60353b7fe7927.md) | 207 | `result-track:e3f050216cb60353b7fe7927a2861ebb13d920bad483fcb2a2bd6e98cf8a53ff` |
| 25 | `theorem` | [divRadical_ne_zero](../../../../../mathematics/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean/declarations/divradical-ne-zero--fee3db2dee1b5a15025edd02.md) | 211 | `result-track:fee3db2dee1b5a15025edd02c7db8e97a76aab575dc3ca25e35928ed4a099f1f` |
| 26 | `theorem` | [divRadical_isUnit](../../../../../mathematics/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean/declarations/divradical-isunit--99cfa03eba96e134412e764a.md) | 215 | `result-track:99cfa03eba96e134412e764a2b9d223515b5b7d31b58ef79af977ba2cf8fea73` |
| 27 | `theorem` | [eq_divRadical](../../../../../mathematics/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean/declarations/eq-divradical--bdb4351c7b70f670e6a01af9.md) | 218 | `result-track:bdb4351c7b70f670e6a01af993cf3974f20e671badd243c47bad1e69459be01f` |
| 28 | `theorem` | [divRadical_mul](../../../../../mathematics/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean/declarations/divradical-mul--ba67740f55e3b194c4731339.md) | 222 | `result-track:ba67740f55e3b194c4731339fd81ccbd21cdd56fcc40ab3b951c74ce62a69348` |
| 29 | `theorem` | [divRadical_dvd_self](../../../../../mathematics/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean/declarations/divradical-dvd-self--02263f7e8ebd1cffc71dbbb1.md) | 228 | `result-track:02263f7e8ebd1cffc71dbbb18942b326bc3a3df0e9873b924c23e7ec17ebdc97` |
| 30 | `theorem` | [_root_.GRWTSK.Algebra.RingTheory.PrimeFactors.Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.IsCoprime.divRadical](../../../../../mathematics/Algebra/RingTheory/Radical/Variantf8e96f6100b62b5342f9d2717c2e587639759fb81b62261235a04ccd5eef406d.lean/declarations/root-grwtsk-algebra-ringtheory-primefactors-variant484547e188f6e204f7b85--2b779ee47729b60dc9295037.md) | 231 | `result-track:2b779ee47729b60dc9295037206aa7a0a024bbd413689ac8304dd28e26f88642` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
