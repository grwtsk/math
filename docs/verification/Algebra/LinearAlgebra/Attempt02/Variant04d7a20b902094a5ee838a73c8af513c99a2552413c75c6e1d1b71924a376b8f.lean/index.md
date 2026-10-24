# Verification target: GRWTSK.Algebra.LinearAlgebra.Attempt02.Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c8cbfe4c57c1ac114ff696cc989fce205e27efa",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c8cbfe4c57c1ac114ff696cc989fce205e27efa`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gramPlus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean/declarations/gramplus--91af2a840c8f32cd8afb43a8.md) | 20 | `declaration-track:91af2a840c8f32cd8afb43a87f9300c6f5d9580f52cac738c6d915650ad45971` |
| 2 | `def` | [gramMinus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean/declarations/gramminus--6b223d58d78204d79cd43595.md) | 22 | `declaration-track:6b223d58d78204d79cd43595b54168b798918d977f5ca9f05ed4b1370d916ff9` |
| 3 | `def` | [pairwiseProfile](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean/declarations/pairwiseprofile--59aa999ca7944b6508a124b6.md) | 24 | `declaration-track:59aa999ca7944b6508a124b65a923c5bd9267b052cd6df87e27a75e134eb34d1` |
| 4 | `def` | [tripleCycle](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean/declarations/triplecycle--a621f70647c76b29889b1914.md) | 26 | `declaration-track:a621f70647c76b29889b19145f2dcb6f0caf6dc107cf3641b8ac1aaec306d296` |
| 5 | `theorem` | [gramPlus_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean/declarations/gramplus-hermitian--c85996983221e3b4dba407a4.md) | 28 | `result-track:c85996983221e3b4dba407a4a477f305d4c779cdf0efde1315b41d8da45f42ca` |
| 6 | `theorem` | [gramMinus_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean/declarations/gramminus-hermitian--8a1216a67715dd37f34f9dcd.md) | 31 | `result-track:8a1216a67715dd37f34f9dcdcdbda9f3d19102aed875e7240e8deb80fef5fbaa` |
| 7 | `theorem` | [gramPlus_energy](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean/declarations/gramplus-energy--21e0f09b0c95b7f638406109.md) | 35 | `result-track:21e0f09b0c95b7f6384061098a2a97fe5bc93f1c8f73d9a0693983bd943b0047` |
| 8 | `theorem` | [gramMinus_energy](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean/declarations/gramminus-energy--9de88bd326be484b028913b2.md) | 41 | `result-track:9de88bd326be484b028913b21cc627dfde428d22bfcfa80494ba3923cdec321b` |
| 9 | `theorem` | [sum_sq_pos](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean/declarations/sum-sq-pos--ea4c4b07ea8c9df73c11271f.md) | 48 | `result-track:ea4c4b07ea8c9df73c11271f8d8bd8082f47794716eba1f5bf4f3c30e36f9f07` |
| 10 | `theorem` | [gramPlus_posDef](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean/declarations/gramplus-posdef--2d60fe71f503141d224c03df.md) | 60 | `result-track:2d60fe71f503141d224c03df971c764a33b81cf8816e6754ec575343456bbf40` |
| 11 | `theorem` | [gramMinus_posDef](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean/declarations/gramminus-posdef--445a4118a478b7a5b2a0ea0f.md) | 65 | `result-track:445a4118a478b7a5b2a0ea0fbf06e3b54733c096bfc1acc4e7b56ac878965d26` |
| 12 | `theorem` | [positive_gram_factor](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean/declarations/positive-gram-factor--f679617eb621935d98c30f7b.md) | 71 | `result-track:f679617eb621935d98c30f7bde68df18ae6aee5d4e0a4a4324518ab852feead6` |
| 13 | `theorem` | [gramPlus_realizable](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean/declarations/gramplus-realizable--68cbecb96871f4e71b8fff86.md) | 77 | `result-track:68cbecb96871f4e71b8fff863832f9c68ac7379fe063fae7714920364133b202` |
| 14 | `theorem` | [gramMinus_realizable](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean/declarations/gramminus-realizable--e03cac3e901293277e918262.md) | 79 | `result-track:e03cac3e901293277e918262d3b257a5dda02f370777d40a1c2f965aadec5799` |
| 15 | `theorem` | [diagonals_equal](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean/declarations/diagonals-equal--3045a212d7c772ad980ecf32.md) | 82 | `result-track:3045a212d7c772ad980ecf328c55096612fbd5ae718ea2e9a8e1375b32825538` |
| 16 | `theorem` | [pairwise_equal](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean/declarations/pairwise-equal--498d9a5a9a26144acb0cf97b.md) | 85 | `result-track:498d9a5a9a26144acb0cf97ba901286e2200b4e57dd8c82bb990c49fc84aa4d2` |
| 17 | `theorem` | [triple_plus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean/declarations/triple-plus--c0e85047c9fa7c4fd1374458.md) | 88 | `result-track:c0e85047c9fa7c4fd137445877f9ce3f3e987475586f15ff77ddeff2f73a25cb` |
| 18 | `theorem` | [triple_minus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean/declarations/triple-minus--dfba8e0b0028d4f8edaabdaf.md) | 90 | `result-track:dfba8e0b0028d4f8edaabdaf513ce166d99e1dd4087ffdddf7e410584ee433d9` |
| 19 | `theorem` | [triple_distinct](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean/declarations/triple-distinct--6f2355fd1b35195cd281cb7a.md) | 92 | `result-track:6f2355fd1b35195cd281cb7abf1c7efe7c94c2634400beaaf50ba4f839573a03` |
| 20 | `theorem` | [det_plus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean/declarations/det-plus--615312117ad5b5b6b10ea599.md) | 96 | `result-track:615312117ad5b5b6b10ea59961ab3295ddcfef2281333a8350186c04ed86e195` |
| 21 | `theorem` | [det_minus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean/declarations/det-minus--9125d0eaa890a9b1e4326c86.md) | 98 | `result-track:9125d0eaa890a9b1e4326c869bc1eb8b9c237798e4961d0df3cb17a17da6f497` |
| 22 | `theorem` | [det_distinct](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean/declarations/det-distinct--8d75873b85b0e72005ed4e49.md) | 100 | `result-track:8d75873b85b0e72005ed4e49ae9d8dbd99a13eb7f0f60b86cd4406cee5f4b430` |
| 23 | `theorem` | [no_pairwise_triple_decoder](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean/declarations/no-pairwise-triple-decoder--f50af61140e7ec1502333e25.md) | 104 | `result-track:f50af61140e7ec1502333e251514d28a37a67512109263007f5289342fb132a5` |
| 24 | `theorem` | [no_pairwise_determinant_decoder](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant04d7a20b902094a5ee838a73c8af513c99a2552413c75c6e1d1b71924a376b8f.lean/declarations/no-pairwise-determinant-decoder--6372be5fd05c6237e88a35b5.md) | 113 | `result-track:6372be5fd05c6237e88a35b58e76c2b379c3cfd6084b506fb446e571a7021598` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
