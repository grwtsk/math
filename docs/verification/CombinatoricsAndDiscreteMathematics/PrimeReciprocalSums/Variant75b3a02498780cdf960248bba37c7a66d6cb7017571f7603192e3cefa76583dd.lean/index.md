# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeReciprocalSums.Variant75b3a02498780cdf960248bba37c7a66d6cb7017571f7603192e3cefa76583dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c567074adf8ae3a901e7e43b367435a9fb5ce79b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeReciprocalSums/Variant75b3a02498780cdf960248bba37c7a66d6cb7017571f7603192e3cefa76583dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeReciprocalSums/Variant75b3a02498780cdf960248bba37c7a66d6cb7017571f7603192e3cefa76583dd.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeReciprocalSums/Variant75b3a02498780cdf960248bba37c7a66d6cb7017571f7603192e3cefa76583dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c567074adf8ae3a901e7e43b367435a9fb5ce79b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeReciprocalSums/Variant75b3a02498780cdf960248bba37c7a66d6cb7017571f7603192e3cefa76583dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PrimeReciprocalSums/Variant75b3a02498780cdf960248bba37c7a66d6cb7017571f7603192e3cefa76583dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.HarmonicPartialSums` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.AnalyticNumberTheory.PrimeExhaustion` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeReciprocalPartial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeReciprocalSums/Variant75b3a02498780cdf960248bba37c7a66d6cb7017571f7603192e3cefa76583dd.lean/declarations/primereciprocalpartial--3b7a531bc1250192e6d2bd8a.md) | 24 | `declaration-track:3b7a531bc1250192e6d2bd8a6341d1916c46c42d27ba2a376667ca7ab9a39029` |
| 2 | `theorem` | [primeReciprocalPartial_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeReciprocalSums/Variant75b3a02498780cdf960248bba37c7a66d6cb7017571f7603192e3cefa76583dd.lean/declarations/primereciprocalpartial-nonneg--b98bed2e1ede1a041a6c3fba.md) | 28 | `result-track:b98bed2e1ede1a041a6c3fba92dcbf5ecc4674d06fd8b0d872861d7da4ae56c8` |
| 3 | `theorem` | [primesUpTo_subset_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeReciprocalSums/Variant75b3a02498780cdf960248bba37c7a66d6cb7017571f7603192e3cefa76583dd.lean/declarations/primesupto-subset-of-le--3e916db37f0d215ddbde2af6.md) | 36 | `result-track:3e916db37f0d215ddbde2af6edef664981f408639fc29a6e466e6885b5cccf40` |
| 4 | `theorem` | [primeReciprocalPartial_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeReciprocalSums/Variant75b3a02498780cdf960248bba37c7a66d6cb7017571f7603192e3cefa76583dd.lean/declarations/primereciprocalpartial-mono--ceb035ead73c929ed7e5cc0f.md) | 44 | `result-track:ceb035ead73c929ed7e5cc0fb42700cac5dc01d1172e56ab36ae6c7dceb38024` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
