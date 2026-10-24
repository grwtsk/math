# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SourcePrimeCumulative.Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0fd09a2fc8c4d54d792d926d57cb24f27538904",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0fd09a2fc8c4d54d792d926d57cb24f27538904`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourcePrimeDisclosureActual` — import line 6; external provider; requires a separately pinned dependency.
- `SourceDivisorCounterterms` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Max` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Module` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedDivisors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb.lean/declarations/weighteddivisors--1195e2431e80d80ed4bd6691.md) | 37 | `declaration-track:1195e2431e80d80ed4bd6691c2cbdd7c1f68c638e747f123a19c705f5ca7fd07` |
| 2 | `theorem` | [weightedDivisors_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb.lean/declarations/weighteddivisors-insert--b2aa38892e87bb25a4b2ae49.md) | 40 | `result-track:b2aa38892e87bb25a4b2ae495d3fbb6b892d471ad9549c5e7e43927093945fbc` |
| 3 | `theorem` | [weightedDivisors_coverage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb.lean/declarations/weighteddivisors-coverage--c5d95c91db974bfddbc8f83b.md) | 61 | `result-track:c5d95c91db974bfddbc8f83bf9c8120c528086691093ff3ae2bfb6324b77bedd` |
| 4 | `theorem` | [weightedDivisors_mixed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb.lean/declarations/weighteddivisors-mixed--569e8cf185f82ea168992ccb.md) | 90 | `result-track:569e8cf185f82ea168992ccb557cd1a6819ee6f62be818436fa12e7a14c2af80` |
| 5 | `theorem` | [weightedDivisors_largest_prime_ledger](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb.lean/declarations/weighteddivisors-largest-prime-ledger--c16cf961622c4d93d7fa4cfc.md) | 112 | `result-track:c16cf961622c4d93d7fa4cfcc7639384940c004ecba2d2612ba4b53d43a13e6a` |
| 6 | `def` | [alignedSource](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb.lean/declarations/alignedsource--b8851cef9dc8bca47e22c3e3.md) | 154 | `declaration-track:b8851cef9dc8bca47e22c3e3d70df6e1607267f9692ac7d50b4be9f2ef446c3f` |
| 7 | `theorem` | [alignedSource_eq_actual_remainders](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb.lean/declarations/alignedsource-eq-actual-remainders--cb5e1e5276a5ee88e539120b.md) | 158 | `result-track:cb5e1e5276a5ee88e539120bcce41abce305816db41bc3005afb28a70b4c679a` |
| 8 | `theorem` | [alignedSource_fresh_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb.lean/declarations/alignedsource-fresh-prime--24e5b3eebc75b34abddb4a6c.md) | 165 | `result-track:24e5b3eebc75b34abddb4a6ca2aa1cb320419ff2862b56a36fa4e6772e0d99ed` |
| 9 | `theorem` | [alignedSource_mixed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb.lean/declarations/alignedsource-mixed--ea885468aa5fd55f2754b4bc.md) | 173 | `result-track:ea885468aa5fd55f2754b4bcb538126b3ba5fd9423c908a453cfbdc41d5a0ec2` |
| 10 | `theorem` | [alignedSource_cumulative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb.lean/declarations/alignedsource-cumulative--1366b2f8823a1047cbe5b691.md) | 185 | `result-track:1366b2f8823a1047cbe5b6912b179108c1cbf902542da81c8ffa51b4d440ee4d` |
| 11 | `theorem` | [alignedSource_coverage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb.lean/declarations/alignedsource-coverage--95afd826896158124bf86355.md) | 197 | `result-track:95afd826896158124bf863554eeab5635cdd940863af3606f8fea0b8c03e0a00` |
| 12 | `def` | [physicalDisclosedCovariance](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb.lean/declarations/physicaldisclosedcovariance--793328d289cef1ed77b799fa.md) | 208 | `declaration-track:793328d289cef1ed77b799fac91a75556869e533c914bdfdb4051025ebc73dd9` |
| 13 | `theorem` | [physicalDisclosedCovariance_eq_actual_divisors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb.lean/declarations/physicaldisclosedcovariance-eq-actual-divisors--e877f7ef2fc203d5fe3a1e39.md) | 214 | `result-track:e877f7ef2fc203d5fe3a1e3976b6a430f8d52074d9e805de3e062046673339ca` |
| 14 | `def` | [deferredMain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb.lean/declarations/deferredmain--9132adeba918b4b3142e50c3.md) | 237 | `declaration-track:9132adeba918b4b3142e50c36df13e8f42b2e115366ba8a5a44c58a491b9b460` |
| 15 | `theorem` | [actual_fixed_main_reconstruction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb.lean/declarations/actual-fixed-main-reconstruction--6362c37e2a8e7b60cd40aabf.md) | 241 | `result-track:6362c37e2a8e7b60cd40aabfd665b2a83e118ee130513b49daf491e2cc181efe` |
| 16 | `theorem` | [deferredMain_coverage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb.lean/declarations/deferredmain-coverage--e11cd71212b478cc99d809b6.md) | 249 | `result-track:e11cd71212b478cc99d809b6bb2b7bdaa32f443c70740d16449543002360988a` |
| 17 | `theorem` | [actual_cumulative_small_prime_identity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb.lean/declarations/actual-cumulative-small-prime-identity--a0b9e15ff27164a1df39da54.md) | 261 | `result-track:a0b9e15ff27164a1df39da54e7e638ea17de26cf89c34fd69d41b3c4c267cb32` |
| 18 | `theorem` | [all_real_prime_cumulative_identity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb.lean/declarations/all-real-prime-cumulative-identity--157b06ea69d0806c89918695.md) | 273 | `result-track:157b06ea69d0806c899186956235feeb2bbf6f5d6f12cda290da0913e771d381` |
| 19 | `theorem` | [weightedDivisors_reciprocal_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb.lean/declarations/weighteddivisors-reciprocal-insert--4a2d3cc02328b27571f1cc4c.md) | 285 | `result-track:4a2d3cc02328b27571f1cc4c1ef9b40bd732159133e917079ec1b9778ce669fb` |
| 20 | `theorem` | [actual_small_prime_mean_increases](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb.lean/declarations/actual-small-prime-mean-increases--1ad34e474a8f6d7701de8183.md) | 304 | `result-track:1ad34e474a8f6d7701de8183858f4a16c5f8d17563160868660f812f40355f77` |
| 21 | `def` | [maskedMoebius](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb.lean/declarations/maskedmoebius--6c64675b8fada381fe827930.md) | 338 | `declaration-track:6c64675b8fada381fe827930dddd27d4f4439217f2067f08af0019dee92a94d3` |
| 22 | `def` | [restrictedMertens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb.lean/declarations/restrictedmertens--709218939395240fb229d944.md) | 341 | `declaration-track:709218939395240fb229d944bde8227d97429e69ac8270030bfa0e2c7bb1a507` |
| 23 | `theorem` | [weightedDivisors_summation_by_parts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb.lean/declarations/weighteddivisors-summation-by-parts--dc3dc5f14538ef38c84a260a.md) | 346 | `result-track:dc3dc5f14538ef38c84a260adf05853bf8b7b266138560b6866eff12ab0c24b2` |
| 24 | `theorem` | [actual_prime_block_summation_by_parts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb.lean/declarations/actual-prime-block-summation-by-parts--373be6c278a960c0636a232e.md) | 371 | `result-track:373be6c278a960c0636a232ef02cc9dccfc176840f45689393f27efe4fc14c19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
