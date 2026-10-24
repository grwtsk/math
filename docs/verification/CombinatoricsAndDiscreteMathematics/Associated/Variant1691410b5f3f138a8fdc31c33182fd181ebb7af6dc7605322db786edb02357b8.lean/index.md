# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Associated.Variant1691410b5f3f138a8fdc31c33182fd181ebb7af6dc7605322db786edb02357b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fd93a82a6899d7edc6b5792f69837d6a0b9510e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Associated/Variant1691410b5f3f138a8fdc31c33182fd181ebb7af6dc7605322db786edb02357b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant1691410b5f3f138a8fdc31c33182fd181ebb7af6dc7605322db786edb02357b8.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant1691410b5f3f138a8fdc31c33182fd181ebb7af6dc7605322db786edb02357b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fd93a82a6899d7edc6b5792f69837d6a0b9510e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Associated/Variant1691410b5f3f138a8fdc31c33182fd181ebb7af6dc7605322db786edb02357b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Associated/Variant1691410b5f3f138a8fdc31c33182fd181ebb7af6dc7605322db786edb02357b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Finsupp.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Membership` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Associated` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_mem_multiset_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant1691410b5f3f138a8fdc31c33182fd181ebb7af6dc7605322db786edb02357b8.lean/declarations/exists-mem-multiset-dvd--1140b3036f183c5252de1fcd.md) | 37 | `result-track:1140b3036f183c5252de1fcd649259af7ad0d2f75f19da392001327c92ac7d28` |
| 2 | `theorem` | [exists_mem_multiset_map_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant1691410b5f3f138a8fdc31c33182fd181ebb7af6dc7605322db786edb02357b8.lean/declarations/exists-mem-multiset-map-dvd--c54fa24bcbfade6a7259a234.md) | 46 | `result-track:c54fa24bcbfade6a7259a23458cc053e8615b970a758a5e5a2f3d60ebdec8395` |
| 3 | `theorem` | [exists_mem_finset_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant1691410b5f3f138a8fdc31c33182fd181ebb7af6dc7605322db786edb02357b8.lean/declarations/exists-mem-finset-dvd--981174d528d6812f40d66e5a.md) | 51 | `result-track:981174d528d6812f40d66e5a6396d55345f8c872ec45d98ac6a6e25fb8876667` |
| 4 | `theorem` | [Prod.associated_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant1691410b5f3f138a8fdc31c33182fd181ebb7af6dc7605322db786edb02357b8.lean/declarations/prod-associated-iff--5e771a87a3ec2670006e88da.md) | 57 | `result-track:5e771a87a3ec2670006e88da9edbc04cbc6ab675531c436986202b43843524b9` |
| 5 | `theorem` | [Associated.prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant1691410b5f3f138a8fdc31c33182fd181ebb7af6dc7605322db786edb02357b8.lean/declarations/associated-prod--d1e1f72c1cac35f8253fca92.md) | 64 | `result-track:d1e1f72c1cac35f8253fca924064eed0f21f99708fe29b85899deaaac1bf2e44` |
| 6 | `theorem` | [exists_associated_mem_of_dvd_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant1691410b5f3f138a8fdc31c33182fd181ebb7af6dc7605322db786edb02357b8.lean/declarations/exists-associated-mem-of-dvd-prod--7c52cceb79eeeb2cb80d2730.md) | 77 | `result-track:7c52cceb79eeeb2cb80d2730490a1f55b821a47fb3edd85020b7f75a6002fbe7` |
| 7 | `theorem` | [divisor_closure_eq_closure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant1691410b5f3f138a8fdc31c33182fd181ebb7af6dc7605322db786edb02357b8.lean/declarations/divisor-closure-eq-closure--10a0eba6da663c6060c8fdea.md) | 90 | `result-track:10a0eba6da663c6060c8fdead70591fe691ef3cc397ffb6b7528bbc52431dfa3` |
| 8 | `theorem` | [Multiset.prod_primes_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant1691410b5f3f138a8fdc31c33182fd181ebb7af6dc7605322db786edb02357b8.lean/declarations/multiset-prod-primes-dvd--e09b5cb7eadaef84f1cacd50.md) | 127 | `result-track:e09b5cb7eadaef84f1cacd5090d918660bd34394238b3b84be0491133723bfc5` |
| 9 | `theorem` | [Finset.prod_primes_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant1691410b5f3f138a8fdc31c33182fd181ebb7af6dc7605322db786edb02357b8.lean/declarations/finset-prod-primes-dvd--25db222cf81b79fc24f4e2c4.md) | 148 | `result-track:25db222cf81b79fc24f4e2c46a4e6cdb22c04c159b10601aea5b50836e41e854` |
| 10 | `theorem` | [prod_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant1691410b5f3f138a8fdc31c33182fd181ebb7af6dc7605322db786edb02357b8.lean/declarations/prod-mk--2c2aafdf732ba5c7fbd432ae.md) | 164 | `result-track:2c2aafdf732ba5c7fbd432ae07cb6a828a052fd4546a946225ca494114804ecd` |
| 11 | `theorem` | [finset_prod_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant1691410b5f3f138a8fdc31c33182fd181ebb7af6dc7605322db786edb02357b8.lean/declarations/finset-prod-mk--35a79d2fb86e1efc08c6ebf4.md) | 167 | `result-track:35a79d2fb86e1efc08c6ebf4e666276b1bbd2e69620b0b3922da0f7a93c5ce99` |
| 12 | `theorem` | [rel_associated_iff_map_eq_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant1691410b5f3f138a8fdc31c33182fd181ebb7af6dc7605322db786edb02357b8.lean/declarations/rel-associated-iff-map-eq-map--5262bb90131821b6c64c9814.md) | 172 | `result-track:5262bb90131821b6c64c981456293168af132c1f34a72764788690118b09ca23` |
| 13 | `theorem` | [prod_eq_one_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant1691410b5f3f138a8fdc31c33182fd181ebb7af6dc7605322db786edb02357b8.lean/declarations/prod-eq-one-iff--1be7dcf62bf2e016f868cdc5.md) | 177 | `result-track:1be7dcf62bf2e016f868cdc5bad34005da1e3b178ddf043883a1e55c838c4885` |
| 14 | `theorem` | [prod_le_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant1691410b5f3f138a8fdc31c33182fd181ebb7af6dc7605322db786edb02357b8.lean/declarations/prod-le-prod--1fe0499136ed26b4d4aea10f.md) | 182 | `result-track:1fe0499136ed26b4d4aea10f920fba918de0dd1b400dac9843547cb22868f933` |
| 15 | `theorem` | [exists_mem_multiset_le_of_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant1691410b5f3f138a8fdc31c33182fd181ebb7af6dc7605322db786edb02357b8.lean/declarations/exists-mem-multiset-le-of-prime--d0bc7b7ecc7d570692db2046.md) | 195 | `result-track:d0bc7b7ecc7d570692db204602b48685fa71f3c300c644cadcc1f54e26114545` |
| 16 | `theorem` | [prod_ne_zero_of_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant1691410b5f3f138a8fdc31c33182fd181ebb7af6dc7605322db786edb02357b8.lean/declarations/prod-ne-zero-of-prime--e397f9c8b2d47901f3220f51.md) | 212 | `result-track:e397f9c8b2d47901f3220f51ce4fd66e04f7673e27d154b0910a2ae995f6c790` |
| 17 | `theorem` | [Prime.dvd_finset_prod_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant1691410b5f3f138a8fdc31c33182fd181ebb7af6dc7605322db786edb02357b8.lean/declarations/prime-dvd-finset-prod-iff--f01859e5935417798e299da9.md) | 224 | `result-track:f01859e5935417798e299da9909f9bb5647ffc54a39225122b45caa32afd77e1` |
| 18 | `theorem` | [Prime.not_dvd_finset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant1691410b5f3f138a8fdc31c33182fd181ebb7af6dc7605322db786edb02357b8.lean/declarations/prime-not-dvd-finset-prod--bcf3678b24583cc375974efb.md) | 228 | `result-track:bcf3678b24583cc375974efb661146b1df707a25ac758e7374b2b4aa149f73a6` |
| 19 | `theorem` | [Prime.dvd_finsuppProd_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant1691410b5f3f138a8fdc31c33182fd181ebb7af6dc7605322db786edb02357b8.lean/declarations/prime-dvd-finsuppprod-iff--1ac4ad7b04257ab86680e48f.md) | 232 | `result-track:1ac4ad7b04257ab86680e48fbc55db4ad5d8170379150ad4e81cec009f48e284` |
| 20 | `theorem` | [Prime.not_dvd_finsuppProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Associated/Variant1691410b5f3f138a8fdc31c33182fd181ebb7af6dc7605322db786edb02357b8.lean/declarations/prime-not-dvd-finsuppprod--2b23c25fa36b44aff89e31ee.md) | 238 | `result-track:2b23c25fa36b44aff89e31eea654dda53e8df46e829da977d70142cb3c68de48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
