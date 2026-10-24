# Verification target: GRWTSK.Algebra.Localization.Variant2844380e41075670804faf43dd98ed5564392027bb24d9e0f8ec408752f538f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f6135ce4543432d7837268995df030cdf15b3fd",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Localization/Variant2844380e41075670804faf43dd98ed5564392027bb24d9e0f8ec408752f538f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Localization/Variant2844380e41075670804faf43dd98ed5564392027bb24d9e0f8ec408752f538f3.lean/index.md) · [Full source](../../../../mathematics/Algebra/Localization/Variant2844380e41075670804faf43dd98ed5564392027bb24d9e0f8ec408752f538f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f6135ce4543432d7837268995df030cdf15b3fd`.

Source path: `GRWTSK/Algebra/Localization/Variant2844380e41075670804faf43dd98ed5564392027bb24d9e0f8ec408752f538f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Localization/Variant2844380e41075670804faf43dd98ed5564392027bb24d9e0f8ec408752f538f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Regular` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Ideal.iUnion_minimalPrimes](../../../../mathematics/Algebra/Localization/Variant2844380e41075670804faf43dd98ed5564392027bb24d9e0f8ec408752f538f3.lean/declarations/ideal-iunion-minimalprimes--2ecd453ae6d9a9f0f9dbb237.md) | 42 | `result-track:2ecd453ae6d9a9f0f9dbb237ad04526a7ef1509b78c1350cad73f3a8b73a843b` |
| 2 | `theorem` | [Ideal.exists_mul_mem_of_mem_minimalPrimes](../../../../mathematics/Algebra/Localization/Variant2844380e41075670804faf43dd98ed5564392027bb24d9e0f8ec408752f538f3.lean/declarations/ideal-exists-mul-mem-of-mem-minimalprimes--d498f3209b4117adf0edcc98.md) | 71 | `result-track:d498f3209b4117adf0edcc98e9ba4efa68b7d7322f86fefd52d19b3c85fd6316` |
| 3 | `theorem` | [IsSMulRegular.notMem_of_mem_minimalPrimes](../../../../mathematics/Algebra/Localization/Variant2844380e41075670804faf43dd98ed5564392027bb24d9e0f8ec408752f538f3.lean/declarations/issmulregular-notmem-of-mem-minimalprimes--c3df7f7e1ab01f123ef0af7a.md) | 83 | `result-track:c3df7f7e1ab01f123ef0af7a848e06a434f9609857ac56ad2b865c09966b0570` |
| 4 | `lemma` | [Ideal.disjoint_nonZeroDivisors_of_mem_minimalPrimes](../../../../mathematics/Algebra/Localization/Variant2844380e41075670804faf43dd98ed5564392027bb24d9e0f8ec408752f538f3.lean/declarations/ideal-disjoint-nonzerodivisors-of-mem-minimalprimes--b2619e48710f8501ce90d333.md) | 92 | `result-track:b2619e48710f8501ce90d333ad1c8879b862e2703633666fa0a77e34f9eb859e` |
| 5 | `lemma` | [notMem_nonZeroDivisors_of_mem_mem_minimalPrimes](../../../../mathematics/Algebra/Localization/Variant2844380e41075670804faf43dd98ed5564392027bb24d9e0f8ec408752f538f3.lean/declarations/notmem-nonzerodivisors-of-mem-mem-minimalprimes--eb8e56b863c4ef9e8eeb627c.md) | 99 | `result-track:eb8e56b863c4ef9e8eeb627c047447b6936d0730b99fa1c1b92ef687cdb5d34d` |
| 6 | `theorem` | [Ideal.exists_comap_eq_of_mem_minimalPrimes](../../../../mathematics/Algebra/Localization/Variant2844380e41075670804faf43dd98ed5564392027bb24d9e0f8ec408752f538f3.lean/declarations/ideal-exists-comap-eq-of-mem-minimalprimes--2a046e84d1635064e3e540be.md) | 104 | `result-track:2a046e84d1635064e3e540be3c151c0ce168ef1fd5e9a87d54c4a58a47943bb1` |
| 7 | `theorem` | [Ideal.exists_comap_eq_of_mem_minimalPrimes_of_injective](../../../../mathematics/Algebra/Localization/Variant2844380e41075670804faf43dd98ed5564392027bb24d9e0f8ec408752f538f3.lean/declarations/ideal-exists-comap-eq-of-mem-minimalprimes-of-injective--b3a3f66b9e7cfca305cdb9bb.md) | 110 | `result-track:b3a3f66b9e7cfca305cdb9bbfe74cbee92676da38c8df66e5126c642933aac00` |
| 8 | `theorem` | [Ideal.exists_minimalPrimes_comap_eq](../../../../mathematics/Algebra/Localization/Variant2844380e41075670804faf43dd98ed5564392027bb24d9e0f8ec408752f538f3.lean/declarations/ideal-exists-minimalprimes-comap-eq--d61d34e56aaf5acaf3d7078d.md) | 117 | `result-track:d61d34e56aaf5acaf3d7078dffb9227d5ef8f286847bae392dd6c5fccbf89115` |
| 9 | `theorem` | [Ideal.minimalPrimes_comap_subset](../../../../mathematics/Algebra/Localization/Variant2844380e41075670804faf43dd98ed5564392027bb24d9e0f8ec408752f538f3.lean/declarations/ideal-minimalprimes-comap-subset--3f863b6d8fe19d607e45f856.md) | 126 | `result-track:3f863b6d8fe19d607e45f856f6c181ae799029ce8a76e824f9609f55779d171a` |
| 10 | `theorem` | [Ideal.minimalPrimes_comap_of_surjective](../../../../mathematics/Algebra/Localization/Variant2844380e41075670804faf43dd98ed5564392027bb24d9e0f8ec408752f538f3.lean/declarations/ideal-minimalprimes-comap-of-surjective--9424ddf6291f60060f56f23c.md) | 136 | `result-track:9424ddf6291f60060f56f23c61c3af62383511e4d142557118a488f226084fa7` |
| 11 | `theorem` | [Ideal.comap_minimalPrimes_eq_of_surjective](../../../../mathematics/Algebra/Localization/Variant2844380e41075670804faf43dd98ed5564392027bb24d9e0f8ec408752f538f3.lean/declarations/ideal-comap-minimalprimes-eq-of-surjective--792480327a5049eefb93e02e.md) | 151 | `result-track:792480327a5049eefb93e02ee3929795d8a1c9cc7dd1ef8bb4e0f7dc3d54eaa7` |
| 12 | `lemma` | [Ideal.minimalPrimes_map_of_surjective](../../../../mathematics/Algebra/Localization/Variant2844380e41075670804faf43dd98ed5564392027bb24d9e0f8ec408752f538f3.lean/declarations/ideal-minimalprimes-map-of-surjective--552cb551d3f9dc5c1fb9eb9b.md) | 161 | `result-track:552cb551d3f9dc5c1fb9eb9bcf0b55012bde3b318f5bf7c67a0e1bffc687fb7f` |
| 13 | `theorem` | [Ideal.minimalPrimes_eq_comap](../../../../mathematics/Algebra/Localization/Variant2844380e41075670804faf43dd98ed5564392027bb24d9e0f8ec408752f538f3.lean/declarations/ideal-minimalprimes-eq-comap--89c851bcf43b9ea93332e9f0.md) | 170 | `result-track:89c851bcf43b9ea93332e9f001ec618f7681b087784eb9f238a23c0e138303eb` |
| 14 | `theorem` | [IsLocalization.minimalPrimes_map](../../../../mathematics/Algebra/Localization/Variant2844380e41075670804faf43dd98ed5564392027bb24d9e0f8ec408752f538f3.lean/declarations/islocalization-minimalprimes-map--0bdcded9aeab66d64bd05b06.md) | 181 | `result-track:0bdcded9aeab66d64bd05b061a076e57cc99733b6fb52848bfa21a0835bbc073` |
| 15 | `theorem` | [IsLocalization.minimalPrimes_comap](../../../../mathematics/Algebra/Localization/Variant2844380e41075670804faf43dd98ed5564392027bb24d9e0f8ec408752f538f3.lean/declarations/islocalization-minimalprimes-comap--923a1ee98d7367a8057809a9.md) | 206 | `result-track:923a1ee98d7367a8057809a99729d43a14012f355b6cc2a37239d21086a80fe9` |
| 16 | `theorem` | [IsLocalization.AtPrime.radical_map_of_mem_minimalPrimes](../../../../mathematics/Algebra/Localization/Variant2844380e41075670804faf43dd98ed5564392027bb24d9e0f8ec408752f538f3.lean/declarations/islocalization-atprime-radical-map-of-mem-minimalprimes--a4ff046cb1d3c32f7b24f7f7.md) | 212 | `result-track:a4ff046cb1d3c32f7b24f7f762ea0f75b5f1181ac6935248b9d2cb320306f51e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
