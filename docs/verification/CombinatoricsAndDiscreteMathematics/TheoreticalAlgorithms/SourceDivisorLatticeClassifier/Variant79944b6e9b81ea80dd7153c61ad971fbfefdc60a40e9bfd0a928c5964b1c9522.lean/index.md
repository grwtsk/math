# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SourceDivisorLatticeClassifier.Variant79944b6e9b81ea80dd7153c61ad971fbfefdc60a40e9bfd0a928c5964b1c9522

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecb739a766407fa275978d2884b5358ea3dfdf05",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant79944b6e9b81ea80dd7153c61ad971fbfefdc60a40e9bfd0a928c5964b1c9522.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant79944b6e9b81ea80dd7153c61ad971fbfefdc60a40e9bfd0a928c5964b1c9522.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant79944b6e9b81ea80dd7153c61ad971fbfefdc60a40e9bfd0a928c5964b1c9522.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecb739a766407fa275978d2884b5358ea3dfdf05`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant79944b6e9b81ea80dd7153c61ad971fbfefdc60a40e9bfd0a928c5964b1c9522.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant79944b6e9b81ea80dd7153c61ad971fbfefdc60a40e9bfd0a928c5964b1c9522.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Powerset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divisorPattern](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant79944b6e9b81ea80dd7153c61ad971fbfefdc60a40e9bfd0a928c5964b1c9522.lean/declarations/divisorpattern--4ddde74e8b0272255f69dc7f.md) | 28 | `declaration-track:4ddde74e8b0272255f69dc7fcb23908e1c85cb31a282178cb00bb70fb01e48ed` |
| 2 | `def` | [restrictPattern](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant79944b6e9b81ea80dd7153c61ad971fbfefdc60a40e9bfd0a928c5964b1c9522.lean/declarations/restrictpattern--958f990398cf7ff23436b4d6.md) | 31 | `declaration-track:958f990398cf7ff23436b4d686c04ff8cd672b6530b35e9db83c7030b0578592` |
| 3 | `theorem` | [divisorPattern_restrict](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant79944b6e9b81ea80dd7153c61ad971fbfefdc60a40e9bfd0a928c5964b1c9522.lean/declarations/divisorpattern-restrict--8a7e04d5d96ed19e1a51330d.md) | 34 | `result-track:8a7e04d5d96ed19e1a51330d3ade00b5d4ed615cae4a198088d84842187b5258` |
| 4 | `def` | [observation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant79944b6e9b81ea80dd7153c61ad971fbfefdc60a40e9bfd0a928c5964b1c9522.lean/declarations/observation--323882534f484c534d0eebc2.md) | 46 | `declaration-track:323882534f484c534d0eebc281edeb189494b7029ffe76a1d63eadad3e3622af` |
| 5 | `theorem` | [divisorPattern_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant79944b6e9b81ea80dd7153c61ad971fbfefdc60a40e9bfd0a928c5964b1c9522.lean/declarations/divisorpattern-union--1ddc17d2e3aa6dccdbc0effe.md) | 50 | `result-track:1ddc17d2e3aa6dccdbc0effefc0f39ba261fc52afbdc38442e96763e6ba99997` |
| 6 | `theorem` | [union_pattern_eq_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant79944b6e9b81ea80dd7153c61ad971fbfefdc60a40e9bfd0a928c5964b1c9522.lean/declarations/union-pattern-eq-iff--d8220d48ba4bd523a355c5ed.md) | 57 | `result-track:d8220d48ba4bd523a355c5ed1c11c11b42a7b85ab2f89e0042b1fb2c988e4bf8` |
| 7 | `theorem` | [observation_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant79944b6e9b81ea80dd7153c61ad971fbfefdc60a40e9bfd0a928c5964b1c9522.lean/declarations/observation-union--54ac8cb83367cfce399b5738.md) | 71 | `result-track:54ac8cb83367cfce399b57382d41325ec49cc632452b16ac85839bda41ca90e6` |
| 8 | `theorem` | [observation_antitone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant79944b6e9b81ea80dd7153c61ad971fbfefdc60a40e9bfd0a928c5964b1c9522.lean/declarations/observation-antitone--974ad47597bb1a8692cf19d0.md) | 78 | `result-track:974ad47597bb1a8692cf19d0c2e2e61d1b4e8be365fbfb89add1b89a61e1dc91` |
| 9 | `theorem` | [observation_sup_le_inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant79944b6e9b81ea80dd7153c61ad971fbfefdc60a40e9bfd0a928c5964b1c9522.lean/declarations/observation-sup-le-inter--ae92e01d52eca95105f0c85a.md) | 87 | `result-track:ae92e01d52eca95105f0c85a66f433d44dc73636a014f0e286d99263c7a8ffbf` |
| 10 | `theorem` | [observation_two_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant79944b6e9b81ea80dd7153c61ad971fbfefdc60a40e9bfd0a928c5964b1c9522.lean/declarations/observation-two-bot--7da6c1a5b986c5a6d2e48e1d.md) | 92 | `result-track:7da6c1a5b986c5a6d2e48e1da0c45d6a54ac778bf4c2a689f877a60bae3cf073` |
| 11 | `theorem` | [observation_three_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant79944b6e9b81ea80dd7153c61ad971fbfefdc60a40e9bfd0a928c5964b1c9522.lean/declarations/observation-three-bot--bd6c7c0e3f8d554e17f03581.md) | 115 | `result-track:bd6c7c0e3f8d554e17f03581533bb389138c2d05dc058357bd96d18b06ccd13c` |
| 12 | `theorem` | [strict_observation_join](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant79944b6e9b81ea80dd7153c61ad971fbfefdc60a40e9bfd0a928c5964b1c9522.lean/declarations/strict-observation-join--d37837730102d30e2574f8c4.md) | 139 | `result-track:d37837730102d30e2574f8c4801116da4149d9845918a38c1e3394f7668f2a88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
