# Verification target: GRWTSK.NumberTheory.SelbergBounds.Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df3e7f3aed3d3cd5bb529222c640f2701efef8a6",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df3e7f3aed3d3cd5bb529222c640f2701efef8a6`.

Source path: `GRWTSK/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Primorial` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 9; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Mathlib.NumberTheory.Sieve.Selberg` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [prodDistinctPrimes_squarefree](../../../../mathematics/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean/declarations/proddistinctprimes-squarefree--93713f8d213d9a6fc29b7a48.md) | 30 | `result-track:93713f8d213d9a6fc29b7a480c2cacfb702719a6880cc2bf98ef43048f8722d4` |
| 2 | `lemma` | [primorial_squarefree](../../../../mathematics/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean/declarations/primorial-squarefree--ac3d068f00ab6cc73aaebe97.md) | 47 | `result-track:ac3d068f00ab6cc73aaebe97381bf67068d11d7f67d8de6e9bb3fb36c702020b` |
| 3 | `theorem` | [zeta_pos_of_prime](../../../../mathematics/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean/declarations/zeta-pos-of-prime--6cdc81435322a2d0286857c0.md) | 52 | `result-track:6cdc81435322a2d0286857c06ed9b3959eb7343a57ddeba97e070f45e5f7b9b9` |
| 4 | `theorem` | [zeta_lt_self_of_prime](../../../../mathematics/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean/declarations/zeta-lt-self-of-prime--208b775898600f29334c4b47.md) | 57 | `result-track:208b775898600f29334c4b476d694a2270d1202b55929aac0cf15eaabe1b6703` |
| 5 | `theorem` | [prime_dvd_primorial_iff](../../../../mathematics/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean/declarations/prime-dvd-primorial-iff--9d3190830d382e014b2244c5.md) | 63 | `result-track:9d3190830d382e014b2244c5fc1de991aa0db6cde88e28d2de3a88f63f695b20` |
| 6 | `theorem` | [siftedSum_eq](../../../../mathematics/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean/declarations/siftedsum-eq--8a6108596df59b1650bc25b0.md) | 79 | `result-track:8a6108596df59b1650bc25b0183decf964ab5582a27e7a70bb63bbf08cd74ab9` |
| 7 | `def` | [CompletelyMultiplicative](../../../../mathematics/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean/declarations/completelymultiplicative--0be6bd8a7c7f70bf625f4772.md) | 115 | `declaration-track:0be6bd8a7c7f70bf625f477228620b41314ec3607c41b9f5b53c7867eafa4e85` |
| 8 | `theorem` | [zeta](../../../../mathematics/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean/declarations/zeta--65f7435629d2a12184ee8f0a.md) | 120 | `result-track:65f7435629d2a12184ee8f0afe99cba8735c916b1416cda69b67a1b1116d2243` |
| 9 | `theorem` | [id](../../../../mathematics/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean/declarations/id--157ab196a878e3aa58684182.md) | 126 | `result-track:157ab196a878e3aa586841828e5278c482aca667942ca7daa14ef2cd97931a95` |
| 10 | `theorem` | [pmul](../../../../mathematics/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean/declarations/pmul--761879fc3c50655a8a485340.md) | 129 | `result-track:761879fc3c50655a8a4853408df23ee01d4e8d29ccc6c098d8e1b8a6663c274e` |
| 11 | `theorem` | [pdiv](../../../../mathematics/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean/declarations/pdiv--6ed9c5b501ea4a2f5c4433d6.md) | 137 | `result-track:6ed9c5b501ea4a2f5c4433d67087da94669d6a9a2a6f99f2c225cdfe3de9959a` |
| 12 | `theorem` | [isMultiplicative](../../../../mathematics/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean/declarations/ismultiplicative--0de065ef8e764ba0f2bbc84c.md) | 145 | `result-track:0de065ef8e764ba0f2bbc84c05ca6712f3d144c277806fd33c8fefbff56044c5` |
| 13 | `theorem` | [apply_pow](../../../../mathematics/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean/declarations/apply-pow--712f7d136977f434d127f3b5.md) | 149 | `result-track:712f7d136977f434d127f3b5dc1c9b5678e3f5120c2fb5bc9a8d216315676623` |
| 14 | `theorem` | [prod_factors_one_div_compMult_ge](../../../../mathematics/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean/declarations/prod-factors-one-div-compmult-ge--31ea74fab3159b2f5ed1586a.md) | 157 | `result-track:31ea74fab3159b2f5ed1586a240f800942e76415b8b17e495fe63232a760a87b` |
| 15 | `theorem` | [prod_factors_sum_pow_compMult](../../../../mathematics/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean/declarations/prod-factors-sum-pow-compmult--aeb518871459e58f60873649.md) | 190 | `result-track:aeb518871459e58f60873649a41bb4f804a7730fc66b21fc9f8d3307c3d4add1` |
| 16 | `theorem` | [prod_primes_dvd_of_dvd](../../../../mathematics/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean/declarations/prod-primes-dvd-of-dvd--b8af79fc6eb5563471f8459b.md) | 334 | `result-track:b8af79fc6eb5563471f8459b491cf07ef4770f36c2366faf61e93c385d840360` |
| 17 | `lemma` | [sqrt_le_self](../../../../mathematics/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean/declarations/sqrt-le-self--af9e2edf24b7b53dafce6748.md) | 339 | `result-track:af9e2edf24b7b53dafce67483b39a77dd9000369b7dfce6bdee326b1712221bc` |
| 18 | `lemma` | [Nat.squarefree_dvd_pow](../../../../mathematics/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean/declarations/nat-squarefree-dvd-pow--7c96300acb6059f918e3646f.md) | 346 | `result-track:7c96300acb6059f918e3646f246309b2d375c33ed22c81abca58f846334bf912` |
| 19 | `theorem` | [selbergBoundingSum_ge_sum_div](../../../../mathematics/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean/declarations/selbergboundingsum-ge-sum-div--c26fa51eeb532a5aa8201782.md) | 364 | `result-track:c26fa51eeb532a5aa8201782908b401ef5e5d1e1b574a3247deff391d93a138b` |
| 20 | `theorem` | [boundingSum_ge_sum](../../../../mathematics/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean/declarations/boundingsum-ge-sum--ec912a2acfdb12307f03b38e.md) | 464 | `result-track:ec912a2acfdb12307f03b38e670ff831af0d04c55c7b5a20e273d55050f85e4b` |
| 21 | `theorem` | [boundingSum_ge_log](../../../../mathematics/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean/declarations/boundingsum-ge-log--d9008dd86d2fa519948ccddd.md) | 496 | `result-track:d9008dd86d2fa519948ccddd5ce2800486a9294a779548313901489425b058c1` |
| 22 | `theorem` | [rem_sum_le_of_const](../../../../mathematics/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean/declarations/rem-sum-le-of-const--123fbbb83618c3e47e64713d.md) | 511 | `result-track:123fbbb83618c3e47e64713d19955fdefc8ad4929dfdebb9368e0ade3d024842` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
