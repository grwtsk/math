# Verification target: GRWTSK.NumberTheory.SelbergBounds.Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08e79baa91f08a6ec633911aa9852c0096e8a252",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08e79baa91f08a6ec633911aa9852c0096e8a252`.

Source path: `GRWTSK/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Primorial` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 14; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Mathlib.NumberTheory.Sieve.Selberg` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [prodDistinctPrimes_squarefree](../../../../mathematics/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean/declarations/proddistinctprimes-squarefree--069d3ab18d09766eebc558f6.md) | 38 | `result-track:069d3ab18d09766eebc558f645835359fc5c39556d07607961164eb5aef28563` |
| 2 | `lemma` | [primorial_squarefree](../../../../mathematics/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean/declarations/primorial-squarefree--52c505da28485d002b6d3de0.md) | 55 | `result-track:52c505da28485d002b6d3de0ec685c83c7488b63bd529fe9db559786fa7a90a1` |
| 3 | `theorem` | [zeta_pos_of_prime](../../../../mathematics/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean/declarations/zeta-pos-of-prime--d3e4faccc4ff2e1b7f79acd2.md) | 60 | `result-track:d3e4faccc4ff2e1b7f79acd2958673dfa2df9dfe7b29db197a61a391a5d698b9` |
| 4 | `theorem` | [zeta_lt_self_of_prime](../../../../mathematics/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean/declarations/zeta-lt-self-of-prime--1761f6e530e506b41fe21c1e.md) | 65 | `result-track:1761f6e530e506b41fe21c1ea3a1e7a2ac405c943ad03a98a6a84d95cb739cd1` |
| 5 | `theorem` | [prime_dvd_primorial_iff](../../../../mathematics/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean/declarations/prime-dvd-primorial-iff--f0a66cd3f51b6062d5fb1bd7.md) | 71 | `result-track:f0a66cd3f51b6062d5fb1bd71b3082d5a1ea50e9d7b5abafa3a3da3e24ccbe13` |
| 6 | `theorem` | [siftedSum_eq](../../../../mathematics/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean/declarations/siftedsum-eq--8ae4237623c375d06f324f98.md) | 87 | `result-track:8ae4237623c375d06f324f98854e870db653cfda0752e8a86e601d1f55a8ebc9` |
| 7 | `def` | [CompletelyMultiplicative](../../../../mathematics/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean/declarations/completelymultiplicative--914e663b1c5012c3337e8bc8.md) | 123 | `declaration-track:914e663b1c5012c3337e8bc89b6cbc6ce4718e45a94cd63686cc409ee5da09e3` |
| 8 | `theorem` | [zeta](../../../../mathematics/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean/declarations/zeta--89bbdac483e37c7758ae50c8.md) | 128 | `result-track:89bbdac483e37c7758ae50c87cfd29deeb9c11924bc4a1d68d02dbdfeb55e151` |
| 9 | `theorem` | [id](../../../../mathematics/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean/declarations/id--5a856e0d5d47ce65c3aa0761.md) | 134 | `result-track:5a856e0d5d47ce65c3aa07615f2403f5a297eab3a4d374d245b86e6095bb536e` |
| 10 | `theorem` | [pmul](../../../../mathematics/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean/declarations/pmul--70f0c8d7635930051dfad1d9.md) | 137 | `result-track:70f0c8d7635930051dfad1d959cc19a2324eea621dfa901ee6f25ef3ea30b7a6` |
| 11 | `theorem` | [pdiv](../../../../mathematics/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean/declarations/pdiv--f1211a97786ffb46d4af4454.md) | 145 | `result-track:f1211a97786ffb46d4af445407d56acb5163ff334948cfa2fe873a2f6055ed29` |
| 12 | `theorem` | [isMultiplicative](../../../../mathematics/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean/declarations/ismultiplicative--b97b329e9de1872c5a59d662.md) | 153 | `result-track:b97b329e9de1872c5a59d6622fc60c08abcef190f88f48228b4502d770b04a2a` |
| 13 | `theorem` | [apply_pow](../../../../mathematics/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean/declarations/apply-pow--f2e4203e2643a834cbb41dd8.md) | 157 | `result-track:f2e4203e2643a834cbb41dd8fac85ac0d9bfc862826ac6eb722825330d1822ea` |
| 14 | `theorem` | [prod_factors_one_div_compMult_ge](../../../../mathematics/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean/declarations/prod-factors-one-div-compmult-ge--652b50fd6dd34f3e7a368f05.md) | 165 | `result-track:652b50fd6dd34f3e7a368f05605ba9f2698a501cca0c14b485f5f7178cd92c7f` |
| 15 | `theorem` | [prod_factors_sum_pow_compMult](../../../../mathematics/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean/declarations/prod-factors-sum-pow-compmult--fb3844cd717594d9afabd71e.md) | 198 | `result-track:fb3844cd717594d9afabd71e6d405d4c8b78999de3b4781200b5154c92064282` |
| 16 | `theorem` | [prod_primes_dvd_of_dvd](../../../../mathematics/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean/declarations/prod-primes-dvd-of-dvd--332d3d3b7bbc6d7f738bee59.md) | 342 | `result-track:332d3d3b7bbc6d7f738bee59d36589a338aa4d27843f46f3e2be3cae8d96903f` |
| 17 | `lemma` | [sqrt_le_self](../../../../mathematics/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean/declarations/sqrt-le-self--0b8b458f5066e1f1dd088312.md) | 347 | `result-track:0b8b458f5066e1f1dd088312e0e7d75f4ddc03047ccc7c9e926900ce68301859` |
| 18 | `lemma` | [Nat.squarefree_dvd_pow](../../../../mathematics/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean/declarations/nat-squarefree-dvd-pow--a1c676c1d7785188069ed760.md) | 354 | `result-track:a1c676c1d7785188069ed760986c9ba03bbef50870a593281c82e319789566b7` |
| 19 | `theorem` | [selbergBoundingSum_ge_sum_div](../../../../mathematics/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean/declarations/selbergboundingsum-ge-sum-div--cc16a9014d8fe8093866f16f.md) | 372 | `result-track:cc16a9014d8fe8093866f16fdbb693e2c21906fa1535e5054f60a5a07abd5e0e` |
| 20 | `theorem` | [boundingSum_ge_sum](../../../../mathematics/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean/declarations/boundingsum-ge-sum--cdb0703fadc5967b8d4e9500.md) | 472 | `result-track:cdb0703fadc5967b8d4e9500000fb2445230e5134b48bdcf51b5b4a1c8160395` |
| 21 | `theorem` | [boundingSum_ge_log](../../../../mathematics/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean/declarations/boundingsum-ge-log--08a53fbfb13b4db862150268.md) | 504 | `result-track:08a53fbfb13b4db862150268aed2f648cc36a76c2da758d80f6ae26a5597ca03` |
| 22 | `theorem` | [rem_sum_le_of_const](../../../../mathematics/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean/declarations/rem-sum-le-of-const--0839e90f2e1c35b9cd6732be.md) | 519 | `result-track:0839e90f2e1c35b9cd6732bea7782835c71c5a2c559d50348e38058b9e515525` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
