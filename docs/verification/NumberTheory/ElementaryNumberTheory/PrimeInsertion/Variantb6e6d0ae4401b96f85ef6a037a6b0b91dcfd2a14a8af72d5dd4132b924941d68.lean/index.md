# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.PrimeInsertion.Variantb6e6d0ae4401b96f85ef6a037a6b0b91dcfd2a14a8af72d5dd4132b924941d68

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdd6e7d0f329c551e9b0facacdf63686f49357c5",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb6e6d0ae4401b96f85ef6a037a6b0b91dcfd2a14a8af72d5dd4132b924941d68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb6e6d0ae4401b96f85ef6a037a6b0b91dcfd2a14a8af72d5dd4132b924941d68.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb6e6d0ae4401b96f85ef6a037a6b0b91dcfd2a14a8af72d5dd4132b924941d68.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdd6e7d0f329c551e9b0facacdf63686f49357c5`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb6e6d0ae4401b96f85ef6a037a6b0b91dcfd2a14a8af72d5dd4132b924941d68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb6e6d0ae4401b96f85ef6a037a6b0b91dcfd2a14a8af72d5dd4132b924941d68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSupportedBlock` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Powerset` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [assignment_pair_sum_insert](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb6e6d0ae4401b96f85ef6a037a6b0b91dcfd2a14a8af72d5dd4132b924941d68.lean/declarations/assignment-pair-sum-insert--4bc02a9a6891383dd4ba22db.md) | 22 | `result-track:4bc02a9a6891383dd4ba22db0533766f916926db01fcac744feb3457b3071340` |
| 2 | `theorem` | [supportedPairs_sum_insert](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb6e6d0ae4401b96f85ef6a037a6b0b91dcfd2a14a8af72d5dd4132b924941d68.lean/declarations/supportedpairs-sum-insert--52256e58a8aa5473cb372234.md) | 81 | `result-track:52256e58a8aa5473cb3722343b57c7a1f4364805c602864101781434fe2a00ec` |
| 3 | `def` | [rectangularContribution](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb6e6d0ae4401b96f85ef6a037a6b0b91dcfd2a14a8af72d5dd4132b924941d68.lean/declarations/rectangularcontribution--37141c6ce02c2f40dbd089b8.md) | 102 | `declaration-track:37141c6ce02c2f40dbd089b8d75dd7aba6f4cd9ff7a4bf1a15db1dfcc614ffe8` |
| 4 | `theorem` | [inserted_prime_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb6e6d0ae4401b96f85ef6a037a6b0b91dcfd2a14a8af72d5dd4132b924941d68.lean/declarations/inserted-prime-coprime--eccd6788d016a252937b0bae.md) | 107 | `result-track:eccd6788d016a252937b0bae5849f7f3996f7f843fa4b578b715f1e80d282163` |
| 5 | `theorem` | [inserted_left_term](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb6e6d0ae4401b96f85ef6a037a6b0b91dcfd2a14a8af72d5dd4132b924941d68.lean/declarations/inserted-left-term--c9a97167bff1c4d8562d4814.md) | 120 | `result-track:c9a97167bff1c4d8562d48143a7e02d8781b9a36b7d87969e61e8e87d6187336` |
| 6 | `theorem` | [supportedPairs_swap_mem](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb6e6d0ae4401b96f85ef6a037a6b0b91dcfd2a14a8af72d5dd4132b924941d68.lean/declarations/supportedpairs-swap-mem--5e65a8698b43d42ba4371cbb.md) | 144 | `result-track:5e65a8698b43d42ba4371cbb2fd68ee8edf90ee321012607928b684ac63c463d` |
| 7 | `theorem` | [rectangularContribution_swap](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb6e6d0ae4401b96f85ef6a037a6b0b91dcfd2a14a8af72d5dd4132b924941d68.lean/declarations/rectangularcontribution-swap--9a7c829d4ae014832d8f0a97.md) | 152 | `result-track:9a7c829d4ae014832d8f0a974e0065182d82c2282a45a00bd3afd38689d2ce33` |
| 8 | `theorem` | [inserted_right_term](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb6e6d0ae4401b96f85ef6a037a6b0b91dcfd2a14a8af72d5dd4132b924941d68.lean/declarations/inserted-right-term--e67c1277d63ef01bcd2c4ef4.md) | 162 | `result-track:e67c1277d63ef01bcd2c4ef430f5706882f0a37dee5026ca60255bec5f719611` |
| 9 | `theorem` | [rectangularContribution_insert](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb6e6d0ae4401b96f85ef6a037a6b0b91dcfd2a14a8af72d5dd4132b924941d68.lean/declarations/rectangularcontribution-insert--e57868bdde72cd8d50b00822.md) | 179 | `result-track:e57868bdde72cd8d50b008226dde9b4330bd68f7663ad7dec83db7e6aea7e598` |
| 10 | `theorem` | [squareContribution_insert](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb6e6d0ae4401b96f85ef6a037a6b0b91dcfd2a14a8af72d5dd4132b924941d68.lean/declarations/squarecontribution-insert--4190219843120e4e75b6d6c7.md) | 219 | `result-track:4190219843120e4e75b6d6c77b965b96df2645a1ef1c3e7f48a489e2b99c80fb` |
| 11 | `theorem` | [thetaRemainder_square_insert](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb6e6d0ae4401b96f85ef6a037a6b0b91dcfd2a14a8af72d5dd4132b924941d68.lean/declarations/thetaremainder-square-insert--36c1c4afa93a10b585ec12eb.md) | 231 | `result-track:36c1c4afa93a10b585ec12eb9a5eb274f05f54b93e768aada98570fa219a781d` |
| 12 | `theorem` | [rectangular_scale_indices](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb6e6d0ae4401b96f85ef6a037a6b0b91dcfd2a14a8af72d5dd4132b924941d68.lean/declarations/rectangular-scale-indices--442acbaf03b37f2118a87fb6.md) | 240 | `result-track:442acbaf03b37f2118a87fb6b8cceb35fbd6b0f4ed972ca6bd2dfb5dc61fb20a` |
| 13 | `theorem` | [rectangle_sum_eq_classes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb6e6d0ae4401b96f85ef6a037a6b0b91dcfd2a14a8af72d5dd4132b924941d68.lean/declarations/rectangle-sum-eq-classes--843104b3fb94e9fcf6db06bf.md) | 255 | `result-track:843104b3fb94e9fcf6db06bf589322a628062caf6956ceec25de99760a552fe8` |
| 14 | `theorem` | [primeSupportedBlock_eq_rectangles](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb6e6d0ae4401b96f85ef6a037a6b0b91dcfd2a14a8af72d5dd4132b924941d68.lean/declarations/primesupportedblock-eq-rectangles--6643393b91067291f97b2a7c.md) | 276 | `result-track:6643393b91067291f97b2a7c1c725527f8f5f23459200eb3eb8ea10853ce1dd4` |
| 15 | `theorem` | [primeSupportedBlock_insert](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb6e6d0ae4401b96f85ef6a037a6b0b91dcfd2a14a8af72d5dd4132b924941d68.lean/declarations/primesupportedblock-insert--cd050a2c6072ffccad9501b9.md) | 286 | `result-track:cd050a2c6072ffccad9501b9bc1477000d9f8301aac32469bf21811060fdafdf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
